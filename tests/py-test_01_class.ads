package Py.Test_01_Class is

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
   function VC (Self : Inst_A; Height : long) return long;

   type Inst_B is new Inst_A with null record;
   type Inst_B_Access is access all Inst_B;
   type Class_B is access all Inst_B'Class;

   procedure Finalize (Self : in out Class_B);
   function Create (V : long) return Class_B;
   function Super_GA (Self : Inst_B) return long;
   function Super_VC (Self : Inst_B; Height : long) return long;

   type Inst_C is new Inst_A with null record;
   type Inst_C_Access is access all Inst_C;
   type Class_C is access all Inst_C'Class;

   procedure Finalize (Self : in out Class_C);
   function Create (V : long) return Class_C;
   function GA (Self : Inst_C) return long;
   function VC (Self : Inst_C; Height : long) return long;

end Py.Test_01_Class;
