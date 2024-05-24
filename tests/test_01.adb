-------------------------------------------------------------------------------
-- NAME (body)                  : test_01.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Test program for QtAda6
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Ada.Characters.Latin_1; use Ada.Characters.Latin_1;
with Ada.Exceptions;         use Ada.Exceptions;
with Ada.Text_IO;            use Ada.Text_IO;
with Interfaces.C;           use Interfaces.C;

with Py.Load_Python_Library;

with Py.Class_Extras.Test_01_Class;

procedure Test_01 is

   function Python_Version return String is
      use Py;
      Code   : Handle;
      Args   : Handle;
      Result : Handle;
   begin
      Code   := Compile ("import sys" & LF & "def Code():" & LF & "   return sys.version", "test.py");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Code, Args, True);
      return "Python version: " & As_String (Result);
   end Python_Version;

   function Python_CWD return String is
      use Py;
      Code   : Handle;
      Args   : Handle;
      Result : Handle;
   begin
      Code   := Compile ("import os" & LF & "def Code():" & LF & "   return os.getcwd()", "test.py");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Code, Args, True);
      return "Python CWD: " & As_String (Result);
   end Python_CWD;

   function PySide6_Version return String is
      use Py;
      Code   : Handle;
      Args   : Handle;
      Result : Handle;
   begin
      Code   := Compile ("import PySide6" & LF & "def Code():" & LF & "   return PySide6.__version__", "test.py");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Code, Args, True);
      return "PySide6 version: " & As_String (Result);
   end PySide6_Version;

   function Python_Enum (aClass, aEnum : String) return String is
      use Py;
      Code   : Handle;
      Args   : Handle;
      Result : Handle;
      Module : Handle;
      Class  : Handle;
      Enum   : Handle;
   begin
      Module := Import_ImportModule ("test_01_enum");
      Class  := Object_GetAttrString (Module, aClass);
      Enum   := Object_GetAttrString (Class, aEnum);
      return "Python Enum: " & Long_AsLong (Object_GetAttrString (Enum, "value"))'Image;
   end Python_Enum;

   procedure Python_Type is
      use Py;
      Code   : Handle;
      Args   : Handle;
      Result : Handle;
   begin
      Code := Compile ("def Code(P):" & LF & "   print (type(P))", "test.py");
      Args := Tuple_New (1);
--        Tuple_SetItem (Args, 0, Long_FromLong(33));
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Code, Args, True);
   end Python_Type;

   procedure Python_Class (V : long) is
      use Py.Class_Extras.Test_01_Class;
      A : Class_A := Create (V);
      C : Class_C := Create (V + 3);
   begin
      Put_Line ("PCA.GA: " & A.GA'Image);
      Put_Line ("PCA.SQR: " & A.SQR'Image);
      Finalize (A);
      Put_Line ("PCC.GA: " & C.GA'Image);
      Put_Line ("PCC.SQR: " & C.SQR'Image);
      Finalize (C);
   end Python_Class;

begin
   Put_Line (Py.Load_Python_Library.Get_Python_Path);
   Put_Line (Py.Load_Python_Library.Get_Default_Name);
   Put_Line (Py.Load_Python_Library.Get_Extension);
   Py.Load (Py.Load_Python_Library.Get_Python_Path & Py.Load_Python_Library.Get_Default_Name);
   Py.Initialize;
   declare
      GIL : Py.Global_Interpreter_Lock;
   begin
      Put_Line (Python_Version);
      Put_Line (Python_CWD);
      Put_Line (PySide6_Version);
      Put_Line (Python_Enum ("ColorE", "BLUE"));
      Put_Line (Python_Enum ("NumberIE", "TWO"));
      Put_Line (Python_Enum ("ColorF", "RED"));
      Put_Line (Python_Enum ("ColorIF", "GREEN"));
      Python_Type;
      Py.Class_Extras.Test_01_Class.Initialize;
      Python_Class (5);
--        Python_Class (9);
      Py.Class_Extras.Test_01_Class.Finalize;
   end;
   if Py.FinalizeEx < 0 then
      Put_Line ("Python finalization error");
   end if;
   Put_Line ("Exiting");
exception
   when Error : others =>
      Put_Line ("Error: " & Exception_Information (Error));
end Test_01;
