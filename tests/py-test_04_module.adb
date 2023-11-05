package body Py.Test_04_Module is

   -- Module creation inspired from Simple Components Python examples

   Module_Name : aliased char_array := "test_04_module" & nul;
   Module_Doc  : aliased char_array := "Test 04 Python module" & nul;

   Operation_Name : aliased char_array := "test_04_magic" & nul;
   Operation_Doc  : aliased char_array := "Test 04 magic" & nul;

   Magic_Callback : Callback_Type;

   function No_Value return Object is
   begin
      Links.IncRef (Links.None);
      return Links.None;
   end No_Value;

   procedure Set (Callback : Callback_Type) is
   begin
      Magic_Callback := Callback;
   end Set;

   function Test_04_Magic (Self : Object; Args : Object; Keywords : Object) return Object;
   pragma Convention (C, Test_04_Magic);

   function Test_04_Magic (Self : Object; Args : Object; Keywords : Object) return Object is
   begin
      Magic_Callback.all;
      return No_Value;
   exception
      when Python_Error =>
         return Null_Object;
      when Error : others =>
         Throw_SystemError (Error);
         return Null_Object;
   end Test_04_Magic;

   Methods : array (1 .. 2) of aliased MethodDef :=
     ((Name  => To_Chars_Ptr (Operation_Name'Access), Meth => (True, Test_04_Magic'Access),
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

end Py.Test_04_Module;
