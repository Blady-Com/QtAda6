-------------------------------------------------------------------------------
-- NAME (body)                  : test_01.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Test program for QtAda6
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Ada.Characters.Latin_1; use Ada.Characters.Latin_1;
with Ada.Exceptions;         use Ada.Exceptions;
with Ada.Text_IO;            use Ada.Text_IO;
with Interfaces.C;           use Interfaces.C;

with Py.Load_Python_Library;

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
   end;
   if Py.FinalizeEx < 0 then
      Put_Line ("Python finalization error");
   end if;
   Put_Line ("Exiting");
exception
   when Error : others =>
      Put_Line ("Error: " & Exception_Information (Error));
end Test_01;
