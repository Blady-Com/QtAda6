package Py.Class_Extras.Test_01_Class is

   procedure Initialize;
   procedure Finalize;

   type Inst_A is tagged record
      Python_Proxy : Py.Handle;
   end record;
   type Inst_A_Access is access all Inst_A;
   type Class_A is access all Inst_A'Class;

   procedure Finalize (Self : in out Class_A);
   function Create (V : long) return Class_A;
   function GA (Self : Inst_A) return long;
   function SQR (Self : Inst_A) return long;

   type Inst_C is new Inst_A with null record;
   type Inst_C_Access is access all Inst_C;
   type Class_C is access all Inst_C'Class;

   procedure Finalize (Self : in out Class_C);
   function Create (V : long) return Class_C;
   function GA (Self : Inst_C) return long;

end Py.Class_Extras.Test_01_Class;
