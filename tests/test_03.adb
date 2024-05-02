-------------------------------------------------------------------------------
-- NAME (main)                  : test_03.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Test program for QtAda6
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with QtAda6.QtCore.QCoreApplication;
with QtAda6.QtGui.QGuiApplication;
with QtAda6.QtGui.QPainter;

with Ada.Characters.Latin_1; use Ada.Characters.Latin_1;
with Ada.Exceptions;         use Ada.Exceptions;
with Interfaces.C;           use Interfaces.C;

with Py;
with Py.Test_03_Module;

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
   Py.Test_03_Module.Create;
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
         use Py;
         --  4. declare QTAda6 objects and initialize them
         --      app = QGuiApplication(sys.argv)
         --      clock = AnalogClockWindow()
         app    : QtAda6.QtGui.QGuiApplication.Class := QtAda6.QtGui.QGuiApplication.Create ((1 => ""));
         clock  : Test_03_AnalogClockWindow.Class    := Test_03_AnalogClockWindow.Create;
         CodeB  : Handle;
         Args   : Handle;
         Result : Handle;

         -- Local render subprogram for callback usage
         procedure L_Render (p : access QtAda6.QtGui.QPainter.Inst'Class) is
         begin
            clock.render (p);
         end L_Render;

      begin
         --  5. call QtAda6 API
--           clock.show;

--  Python code still needed for inherited class in test_03_acw.py
--  "from PySide6.QtCore import QTimer, QTime" & LF &
--  "from PySide6.QtGui import QPainter, QRasterWindow" & LF &
--  "class ACW(QRasterWindow):" & LF &
--  "    def __init__(self):" & LF &
--  "        super().__init__()" & LF &
--  "        self.setTitle(""Analog Clock"")" & LF &
--  "        self.resize(200, 200)" & LF &
--  "        self._timer = QTimer(self)" & LF &
--  "        self._timer.timeout.connect(self.update)" & LF &
--  "        self._timer.start(1000)" & LF &
--  "    def paintEvent(self, e):" & LF &
--  "        with QPainter(self) as p:" & LF &
--  "            self.render(p)" & LF &
--  "    def render(self, p):" & LF &
--  "        test_03_render (p)" & LF &
--  "clock = None" & LF &
--  "def Code ():" & LF &
--  "    global clock" & LF &
--  "    clock = ACW()" & LF &
--  "    clock.show()",

         -- Set callback which will be called by test_03_module
         Py.Test_03_Module.Set (L_Render'Unrestricted_Access);

         CodeB  := Compile ("import test_03_acw" & LF & "def B():" & LF & "   test_03_acw.Code()", "hello.py");
         Args   := Tuple_New (0);
         Result := Object_CallObject (CodeB, Args, True);

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
