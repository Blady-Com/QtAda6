-------------------------------------------------------------------------------
-- NAME (main)                  : test_03.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Test program for QtAda6
-- NOTES                        : Ada 2022, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2025
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.chez.com
-------------------------------------------------------------------------------

with QtAda6.QtCore.QCoreApplication;
with QtAda6.QtGui.QGuiApplication;

with Ada.Exceptions;         use Ada.Exceptions;
with Interfaces.C;           use Interfaces.C;

with Py;
with Py.Proxy_Module;

with UXStrings;         use UXStrings;
with UXStrings.Text_IO; use UXStrings.Text_IO;

with Test_03_AnalogClockWindow;

procedure Test_03 is

   -- Test program inspired from Qt for Python examples
   -- https://doc.qt.io/qtforpython-6/examples/example_gui_analogclock.html
   -- Execution: % PYTHONPATH=$PWD/tests bin/test_03

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
      Put_Line ("QtCore version: " & QtAda6.QtCore.qVersion);

      declare
         --  4. declare QTAda6 objects and initialize them
         --      app = QGuiApplication(sys.argv)
         --      clock = AnalogClockWindow()
         app    : QtAda6.QtGui.QGuiApplication.Class := QtAda6.QtGui.QGuiApplication.Create ((1 => ""));
         clock  : Test_03_AnalogClockWindow.Class    := Test_03_AnalogClockWindow.Create;

      begin
         --  5. call QtAda6 API
         clock.show;

         Put_Line (QtAda6.Image (QtAda6.QtCore.QCoreApplication.exec));

         --  6. finalize QtAda6 objects
         QtAda6.QtGui.QGuiApplication.Finalize (app);
         Test_03_AnalogClockWindow.Finalize (clock);
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
end Test_03;
