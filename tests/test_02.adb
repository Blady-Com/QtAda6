-------------------------------------------------------------------------------
-- NAME (body)                  : test_02.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Test program for QtAda6
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with QtAda6.QtCore.QDate;
with QtAda6.QtCore.QDir;
with QtAda6.QtCore.QSysInfo;
with QtAda6.QtCore.QProcessEnvironment;
with QtAda6.QtCore.Qt.PenStyle;
with QtAda6.QtCore.Qt.Orientation;

with Ada.Exceptions; use Ada.Exceptions;
with Interfaces.C;   use Interfaces.C;

with Py;

with UXStrings;         use UXStrings;
with UXStrings.Text_IO; use UXStrings.Text_IO;

procedure Test_02 is

begin
   --  1. initialize Python interpreter
   Py.Load;
   Py.Initialize;
   declare
      --  2. take the global interpreter lock
      GIL : Py.Global_Interpreter_Lock;
   begin
      --  3. initialize QtAda6
      QtAda6.Initialize;

      Put_Line ("PySide version: " & QtAda6.Version);
      Put_Line ("QtCore version: " & QtAda6.QtCore.qVersion);

      declare
         use type QtAda6.QtCore.Qt.Orientation.Class;
         --  4. declare QTAda6 objects and initialize them
         MD : QtAda6.QtCore.QDate.Class               := QtAda6.QtCore.QDate.currentDate;
         CF : QtAda6.QtCore.QDir.Class                := QtAda6.QtCore.QDir.current;
         ME : QtAda6.QtCore.QProcessEnvironment.Class := QtAda6.QtCore.QProcessEnvironment.systemEnvironment;
         PS : QtAda6.QtCore.Qt.PenStyle.Class         := QtAda6.QtCore.Qt.PenStyle.DashDotLine;
      begin
         --  5. call QtAda6 API
         Put_Line ("Today: " & QtAda6.Image (MD.day));
         Put_Line ("Current folder: " & CF.path);
         Put_Line ("Current machine: " & QtAda6.QtCore.QSysInfo.machineHostName);
         if ME.contains ("HOME") then
            Put_Line ("HOME: " & ME.value ("HOME", "none"));
         end if;
         Put_Line
           ("DashDotLine: " & QtAda6.Image (Py.Long_AsLong (Py.Object_GetAttrString (PS.Python_Proxy, "value"))));
         Put_Line
           ("Horizontal value: " &
            QtAda6.image (QtAda6.QtCore.Qt.Orientation.Value (QtAda6.QtCore.Qt.Orientation.Horizontal)));
         Put_Line
           ("Horizontal name: " & (QtAda6.QtCore.Qt.Orientation.Image (QtAda6.QtCore.Qt.Orientation.Horizontal)));
         Put_Line
           ("Horizontal or Vertical value: " &
            QtAda6.image
              (QtAda6.QtCore.Qt.Orientation.Value
                 (QtAda6.QtCore.Qt.Orientation.Horizontal or QtAda6.QtCore.Qt.Orientation.Vertical)));
         --  6. finalize QtAda6 objects
         QtAda6.QtCore.QDate.Finalize (MD);
         QtAda6.QtCore.QDir.Finalize (CF);
         QtAda6.QtCore.QProcessEnvironment.Finalize (ME);
         QtAda6.QtCore.Qt.PenStyle.Finalize (PS);
      end;

      --  7. finalize QtAda6
      QtAda6.Finalize;
   end;
   --  8. finalize Python interpreter
   if Py.FinalizeEx < 0 then
      Put_Line ("Python finalization error");
   end if;
   Put_Line ("Exiting");
exception
   when Error : others =>
      Put_Line ("Error: " & From_UTF_8 (Exception_Information (Error)));
end Test_02;
