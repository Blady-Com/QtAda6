-------------------------------------------------------------------------------
-- NAME (main)                  : test_04.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Test program for QtAda6
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------

with QtAda6.QtWidgets.QApplication;

with Ada.Exceptions; use Ada.Exceptions;
with Interfaces.C;   use Interfaces.C;

with Py;
with Py.Test_04_Module;

with UXStrings;         use UXStrings;
with UXStrings.Text_IO; use UXStrings.Text_IO;

with Test_04_MyWidget;

procedure Test_04 is

   -- Test program inspired from Qt for Python examples
   -- https://doc.qt.io/qtforpython-6/quickstart.html
   -- Execution: % PYTHONPATH=$PWD/tests bin/test_04

begin
   --  1. initialize Python interpreter and create external modules
   Py.Load;
   Py.Test_04_Module.Create;
   Py.Initialize;
   declare
      --  2. take the global interpreter lock
      GIL : Py.Global_Interpreter_Lock;
   begin
      --  3. initialize QtAda6
      QtAda6.Initialize;

      Put_Line ("PySide version: " & QtAda6.Version);

      declare
         use Py;
         --  4. declare QTAda6 objects and initialize them
         app     : QtAda6.QtWidgets.QApplication.Class := QtAda6.QtWidgets.QApplication.Create ((1 => ""));
         ModuleA : constant Handle                     := Import_ImportModule ("test_04_module");
         MethodA : constant Handle                     := Object_GetAttrString (ModuleA, "test_04_magic");
         widget  : Test_04_MyWidget.Class              := Test_04_MyWidget.Create (MethodA);

          -- Local magic subprogram for callback usage
         procedure L_Magic is
         begin
            widget.Magic;
         end L_Magic;

      begin
         --  5. call QtAda6 API

         -- Set callback which will be called by test_04_module
         Py.Test_04_Module.Set (L_Magic'Unrestricted_Access);

         widget.resize (200, 100);
         widget.show;

         Put_Line (QtAda6.Image (QtAda6.QtWidgets.QApplication.exec));

         --  6. finalize QtAda6 objects
         QtAda6.QtWidgets.QApplication.Finalize (app);
         Test_04_MyWidget.Finalize (widget);
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
end Test_04;
