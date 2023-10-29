package body Py.Test_03_Module is

   -- Module creation inspired from Simple Components Python examples

   Module_Name : aliased char_array := "test_03_module" & nul;
   Module_Doc  : aliased char_array := "Test 03 Python module" & nul;

   Operation_Name : aliased char_array := "test_03_render" & nul;
   Operation_Doc  : aliased char_array := "Test 03 render" & nul;

   Render_Callback : Callback_Type;

   function No_Value return Object is
   begin
      Links.IncRef (Links.None);
      return Links.None;
   end No_Value;

   procedure Set (Callback : Callback_Type) is
   begin
      Render_Callback := Callback;
   end Set;

   function Test_03_Render (Self : Object; Args : Object; Keywords : Object) return Object;
   pragma Convention (C, Test_03_Render);

   function Test_03_Render (Self : Object; Args : Object; Keywords : Object) return Object is
      PH : Handle;
      PG : aliased QtAda6.QtGui.QPainter.Inst;
   begin
      PH.Ptr := Links.Tuple_GetItem (Args, 0);
      PG     := (Python_Proxy => PH);
      Render_Callback (PG'Access);
      return No_Value;
   exception
      when Python_Error =>
         return Null_Object;
      when Error : others =>
         Throw_SystemError (Error);
         return Null_Object;
   end Test_03_Render;

   Methods : array (1 .. 2) of aliased MethodDef :=
     ((Name  => To_Chars_Ptr (Operation_Name'Access), Meth => (True, Test_03_Render'Access),
       Flags => METH_VARARGS + METH_KEYWORDS, Doc => To_Chars_Ptr (Operation_Doc'Access)),
      End_Method);

   ModuleDef_HEAD_INIT : constant ModuleDef_Base :=
     (Base => (1, Null_Object), Init => null, Index => 0, Copy => Null_Object);

   Module : constant ModuleDef :=
     (Base => ModuleDef_HEAD_INIT, Name => To_Chars_Ptr (Module_Name'Access), Doc => To_Chars_Ptr (Module_Doc'Access),
      Size => -1, Methods => Methods (1)'Access, Slots => null, Traverse => null, Clear => null, Free => null);

   function Module_Init return Object;
   pragma Convention (C, Module_Init);

   function Module_Init return Object is
      Result : Object;
   begin
      Result := Module_Create (Module);
      return Result;
   end Module_Init;

   procedure Create is
   begin
      if 0 > Import_AppendInittab (Module_Name, Module_Init'Access) then
         Raise_Exception (Python_Error'Identity, "Cannot append test module");
      end if;
   end Create;

end Py.Test_03_Module;
