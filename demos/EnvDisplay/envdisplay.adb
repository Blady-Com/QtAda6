-------------------------------------------------------------------------------
-- NAME (main)                  : envdisplay.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Display execution environnement
-- NOTES                        : Ada 2022, QtAda6
--
-- COPYRIGHT                    : (c) Pascal Pignard 2025
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.chez.com
-------------------------------------------------------------------------------

with QtAda6.QtWidgets.QApplication;
with QtAda6.QtCore;

with MainWindow;

with Py;
with Py.Proxy_Module;

with UXStrings;         use UXStrings;
with UXStrings.Text_IO; use UXStrings.Text_IO;

with Ada.Exceptions; use Ada.Exceptions;
with Interfaces.C;   use Interfaces.C;

with Ada.Text_IO;

procedure EnvDisplay is

begin
   --  1. initialize Python interpreter and create external modules
   Py.Load;
   Py.Proxy_Module.Create;
   Py.Initialize;
   declare
      --  2. take the global interpreter lock
      GIL : Py.Global_Interpreter_Lock;
   begin
      --  3. initialize QtAda6
      QtAda6.Initialize;

      Put_Line ("PySide version: " & QtAda6.Version);

      declare
         --  4. declare QTAda6 objects and initialize them
         application : QtAda6.QtWidgets.QApplication.Class :=
           QtAda6.QtWidgets.QApplication.Create (QtAda6.QtWidgets.QApplication.SEQUENCE_str (QtAda6.argv));
         main_window : MainWindow.Class := MainWindow.Create;
      begin
          --  5. call QtAda6 API
         main_window.show;

         QtAda6.QtCore.qDebug ("Start application");
         Put_Line (QtAda6.Image (QtAda6.QtWidgets.QApplication.exec));

         --  6. finalize QtAda6 objects
         QtAda6.QtWidgets.QApplication.Finalize (application);
         MainWindow.Finalize (main_window);
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
end EnvDisplay;
