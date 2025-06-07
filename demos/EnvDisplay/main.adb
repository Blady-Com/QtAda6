
with Ada.Text_IO;
with Qt.Core.Application;
with Qt.Core.Debug;
with MainWindow;

procedure Main is
   argc : Integer := 0;
   argv : Qt.Core.Application.Argv_Type;
begin
   Qt.Core.Application.Initialize (argc, argv);

   declare
      main_window : MainWindow.Main_Window;
   begin
      main_window.Show;
   end;

   Qt.Core.Debug.Qdebug ("Start application");
   Qt.Core.Application.Exec;
end Main;

