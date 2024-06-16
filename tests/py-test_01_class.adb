with Ada.Unchecked_Deallocation;

package body Py.Test_01_Class is

   test_01_class_Python_Proxy : Handle;

   --------------
   -- Finalize --
   --------------

   procedure Finalize (Self : in out Class_A) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst_A, Inst_A_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_A_Access (Self));
   end Finalize;

   ------------
   -- Create --
   ------------

   function Create (V : long) return Class_A is
      Args  : Handle;
      Class : Handle;
      Inst  : Handle;
   begin
      Class := Object_GetAttrString (test_01_class_Python_Proxy, "PCA");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (V));
      Inst := Object_CallObject (Class, Args, True);
      return new Inst_A'(Python_Proxy => Inst);
   end Create;

   --------
   -- GA --
   --------

   function GA (Self : Inst_A) return long is
      Method, Args : Handle;
   begin
      Method := Object_GetAttrString (Self.Python_Proxy, "GA");
      Args   := Tuple_New (0);
      return Long_AsLong (Object_CallObject (Method, Args, True));
   end GA;

   ---------
   -- SQR --
   ---------

   function SQR (Self : Inst_A) return long is
      Method, Args : Handle;
   begin
      Method := Object_GetAttrString (Self.Python_Proxy, "SQR");
      Args   := Tuple_New (0);
      return Long_AsLong (Object_CallObject (Method, Args, True));
   end SQR;

   --------
   -- VC --
   --------

   function VC (Self : Inst_A; Height : long) return long is
      Method, Args : Handle;
   begin
      Method := Object_GetAttrString (Self.Python_Proxy, "VC");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (Height));
      return Long_AsLong (Object_CallObject (Method, Args, True));
   end VC;

   --------------
   -- Finalize --
   --------------

   procedure Finalize (Self : in out Class_B) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst_B, Inst_B_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_B_Access (Self));
   end Finalize;

   ------------
   -- Create --
   ------------

   function Create (V : long) return Class_B is
      Args  : Handle;
      Class : Handle;
      Inst  : Handle;
   begin
      Class := Object_GetAttrString (test_01_class_Python_Proxy, "PCB");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (V));
      Inst := Object_CallObject (Class, Args, True);
      return new Inst_B'(Python_Proxy => Inst);
   end Create;

   --------
   -- GA --
   --------

   function Super_GA (Self : Inst_B) return long is
      Method, Args : Handle;
   begin
      Method := Object_Super (Self.Python_Proxy, "GA");
      Args   := Tuple_New (0);
      return Long_AsLong (Object_CallObject (Method, Args, True));
   end Super_GA;

   --------
   -- VC --
   --------

   function Super_VC (Self : Inst_B; Height : long) return long is
      Method, Args : Handle;
   begin
      Method := Object_Super (Self.Python_Proxy, "VC");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (Height));
      return Long_AsLong (Object_CallObject (Method, Args, True));
   end Super_VC;

   --------------
   -- Finalize --
   --------------

   procedure Finalize (Self : in out Class_C) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst_C, Inst_C_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_C_Access (Self));
   end Finalize;

   -----------------
   -- Internal_GA --
   -----------------

   function Internal_GA (Self : Object; Arg : Object) return Object;
   pragma Convention (C, Internal_GA);

   function Internal_GA (Self : Object; Arg : Object) return Object is
      Val         : long;
      Method      : Handle;
      Handle_Self : Handle;
   begin
      Handle_Self.Ptr := Self;
      Links.IncRef (Handle_Self.Ptr); -- Borrowed reference
      Method := Object_Super (Handle_Self, "GA");
      Val    := Links.Long_AsLong (Links.Object_CallObject (Method.Ptr, Arg)) + 5;
      return Links.Long_FromLong (Val);
   exception
      when Python_Error =>
         return Null_Object;
      when others =>
         Throw_ValueError ("Error in Internal_GA");
         return Null_Object;
   end Internal_GA;

   -----------------
   -- Internal_VC --
   -----------------

   function Internal_VC (Self : Object; Arg : Object) return Object;
   pragma Convention (C, Internal_VC);

   function Internal_VC (Self : Object; Arg : Object) return Object is
      Val         : long;
      Method      : Handle;
      Handle_Self : Handle;
   begin
      Handle_Self.Ptr := Self;
      Links.IncRef (Handle_Self.Ptr); -- Borrowed reference
      Method := Object_Super (Handle_Self, "VC");
      Val    := Links.Long_AsLong (Links.Object_CallObject (Method.Ptr, Arg)) + 5;
      return Links.Long_FromLong (Val);
   exception
      when Python_Error =>
         return Null_Object;
      when others =>
         Throw_ValueError ("Error in Internal_VC");
         return Null_Object;
   end Internal_VC;

   ------------
   -- Create --
   ------------

   PCC_Methods : array (1 .. 3) of aliased MethodDef :=
     ((Name => New_String ("GA"),
       Meth => (False, Internal_GA'Access),
       Flags => METH_NOARGS,
       Doc  => New_String ("Redefined GA")),
      (Name => New_String ("VC"),
       Meth => (False, Internal_VC'Access),
       Flags => METH_VARARGS,
       Doc  => New_String ("Redefined VC")),
      End_Method);
   Doc   : aliased char_array                  := "Class PCC derived from Class PCA" & nul;
   Slots : array (1 .. 5) of aliased Type_Slot :=
     ((tp_doc, (tp_doc, To_Chars_Ptr (Doc'Access))),
      (tp_new, (tp_new, null)),
      (tp_base, (tp_base, Null_Object)),
      (tp_methods, (tp_methods, PCC_Methods (1)'Access)),
      End_Slot);

   function Create_PCC return Handle is
      Result : Handle;
      Class  : Handle;
   begin
      Class                  := Object_GetAttrString (test_01_class_Python_Proxy, "PCA");
      Slots (3).Func.tp_base := Class.Ptr;
      Result.Ptr             :=
        Links.Type_FromSpec
          ((Name  => New_String ("PCC"),
            Basic_Size => int (Object_HeadSize + (Inst_C'Size + 7) / 8),
            Item_Size => 0,
            Flags => TPFLAGS_DEFAULT + TPFLAGS_HEAPTYPE,
            Slots => Slots (Slots'First)'Unchecked_Access));
      if Result.Ptr = Null_Object then
         Check_Error;
      end if;
      return Result;
   end Create_PCC;

   function Create (V : long) return Class_C is
      Args  : Handle;
      Class : Handle;
      Inst  : Handle;
   begin
      Class := Create_PCC;
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (V));
      Inst := Object_CallObject (Class, Args, True);
      return new Inst_C'(Python_Proxy => Inst);
   end Create;

   --------
   -- GA --
   --------

   function GA (Self : Inst_C) return long is
      Method, Args : Handle;
   begin
      Method := Object_GetAttrString (Self.Python_Proxy, "GA");
      Args   := Tuple_New (0);
      return Long_AsLong (Object_CallObject (Method, Args, True));
   end GA;

   --------
   -- VC --
   --------

   function VC (Self : Inst_C; Height : long) return long is
      Method, Args : Handle;
   begin
      Method := Object_GetAttrString (Self.Python_Proxy, "VC");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (Height));
      return Long_AsLong (Object_CallObject (Method, Args, True));
   end VC;

   ----------------
   -- Initialize --
   ----------------

   procedure Initialize is
   begin
      test_01_class_Python_Proxy := Py.Import_ImportModule ("test_01_class");
   end Initialize;

   --------------
   -- Finalize --
   --------------

   procedure Finalize is
   begin
      Py.Invalidate (test_01_class_Python_Proxy);
   end Finalize;

end Py.Test_01_Class;
