-------------------------------------------------------------------------------
-- NAME (body)                  : mainwindow.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Main window management
-- NOTES                        : Ada 2022, QtAda6
--
-- COPYRIGHT                    : (c) Pascal Pignard 2025
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.chez.com
-------------------------------------------------------------------------------

with Ada.Directories;
with Ada.Unchecked_Deallocation;

with EnvironmentVariableTableModel;
with ArgumentListModel;

with UXStrings;

with QtAda6.QtGui.QTextCursor;

with Proxy_Class;
with Py;

package body MainWindow is

   package MainWindow_Proxy_Class is new Proxy_Class ("MainWindow_Type", MainWindow_Type, MainWindow_Access);

   function Create (Parent : access QtAda6.QtWidgets.QWidget.Inst'Class := null) return Class is
      use Py;
      Python_Class : constant Handle := MainWindow_Proxy_Class.Derive_Class ("PySide6.QtWidgets", "QMainWindow");
      Args         : Handle;
   begin
      return This : constant Class := new MainWindow_Type do
         if Parent = null then
            Args := Tuple_New (0);
         else
            Args := Tuple_New (1);
            Tuple_SetItem (Args, 0, Parent.Python_Proxy);
         end if;
         MainWindow_Proxy_Class.Init (MainWindow_Access (This), Python_Class, Args, True);

         This.ui.Setup_UI (QtAda6.QtWidgets.QMainWindow.Class (This));

         This.Display_Environment_Variables;
         This.Display_Launch_Directory;
         This.Display_Arguments;
      end return;
   end Create;

   procedure Finalize (This : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (MainWindow_Type, MainWindow_Access);
   begin
      Py.Invalidate (This.Python_Proxy);
      Free (MainWindow_Access (This));
   end Finalize;

   procedure Display_Environment_Variables (This : in out MainWindow_Type) is
   begin
      This.ui.Environment_Variable_Table_View.setModel (EnvironmentVariableTableModel.Create);
      This.ui.Environment_Variable_Table_View.resizeColumnsToContents;
   end Display_Environment_Variables;

   procedure Display_Launch_Directory (This : in out MainWindow_Type) is
      Current_Path : constant QtAda6.str := UXStrings.From_UTF_8 (Ada.Directories.Current_Directory);
      cursor       : QtAda6.QtGui.QTextCursor.Class;
   begin
      This.ui.Launch_Directory_Text_Browser.setText (Current_Path);
      cursor := This.ui.Launch_Directory_Text_Browser.textCursor;
      cursor.setPosition (0);
      This.ui.Launch_Directory_Text_Browser.setTextCursor (cursor);
   end Display_Launch_Directory;

   procedure Display_Arguments (This : in out MainWindow_Type) is
   begin
      This.ui.Argument_List_View.setModel (ArgumentListModel.Create);
   end Display_Arguments;

   procedure On_Action_Environment_Variables_Triggered (This : in out MainWindow_Type; Checked : Boolean) is
   begin
      This.ui.Environment_Variable_Label.setVisible (Checked);
      This.ui.Environment_Variable_Table_View.setVisible (Checked);
   end On_Action_Environment_Variables_Triggered;

   procedure On_Action_Launch_Directory_Triggered (This : in out MainWindow_Type; Checked : Boolean) is
   begin
      This.ui.Launch_Directory_Label.setVisible (Checked);
      This.ui.Launch_Directory_Text_Browser.setVisible (Checked);
   end On_Action_Launch_Directory_Triggered;

   procedure On_Action_Arguments_Triggered (This : in out MainWindow_Type; Checked : Boolean) is
   begin
      This.ui.Argument_Label.setVisible (Checked);
      This.ui.Argument_List_View.setVisible (Checked);
   end On_Action_Arguments_Triggered;

end MainWindow;
