-- /********************************************************************************
-- ** Form generated from reading UI file 'MainWindow.ui'
-- **
-- ** Created by: Qt User Interface Compiler version 6.7.0
-- **
-- ** WARNING! All changes made in this file will be lost when recompiling UI file!
-- ********************************************************************************/

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Containers.Vectors;
with Ada.Text_IO; use Ada.Text_IO;

package UI_MainWindow is

   type Ui_MainWindow is tagged private;

   procedure Setup_Ui (This : in out Ui_MainWindow; MainWindow : in out QMainWindow'Class);

   procedure Retranslate_Ui (This : in out Ui_MainWindow; Main_Window : QMainWindow);

   private

      type Ui_MainWindow is tagged record
         ActionEnvironment_Variables : QAction;
         ActionLaunch_Directory : QAction;
         ActionArguments : QAction;
         CentralWidget : QWidget;
         VerticalLayout : QVBoxLayout;
         EnvironmentVariableLabel : QLabel;
         EnvironmentVariableTableView : QTableView;
         LaunchDirectoryLabel : QLabel;
         LaunchDirectoryTextBrowser : QTextBrowser;
         ArgumentLabel : QLabel;
         ArgumentListView : QListView;
         MenuBar : QMenuBar;
         MenuWindow : QMenu;
         StatusBar : QStatusBar;
      end record;

end;

package body UI_MainWindow is

   procedure Setup_Ui (This : in out Ui_MainWindow; MainWindow : in out QMainWindow) is
   begin
   if MainWindow.Object_Name.Is_Empty then
      MainWindow.Set_Object_Name ("MainWindow");
   end if;

      MainWindow.Resize (800, 600);

      This.Action_Environment_Variables.Object_Name := To_Unbounded_String ("actionEnvironment_variables");
      This.Action_Environment_Variables.Is_Checkable := True;
      This.Action_Environment_Variables.Is_Checked := True;

      This.Action_Launch_Directory.Object_Name := To_Unbounded_String ("actionLaunch_directory");
      This.Action_Launch_Directory.Is_Checkable := True;
      This.Action_Launch_Directory.Is_Checked := True;

      This.Action_Arguments.Object_Name := To_Unbounded_String ("actionArguments");
      This.Action_Arguments.Is_Checkable := True;
      This.Action_Arguments.Is_Checked := True;

      This.Central_Widget := QWidget.Create (MainWindow);
      This.Vertical_Layout := QVBoxLayout.Create (This.Central_Widget);

      This.Environment_Variable_Label := QLabel.Create (This.Central_Widget);
      This.Environment_Variable_Label.Set_Object_Name ("environmentVariableLabel");
      This.Environment_Variable_Label.Set_Indent (9);
      This.Vertical_Layout.Add_Widget (This.Environment_Variable_Label);

      This.Environment_Variable_Table_View := QTableView.Create (This.Central_Widget);
      This.Environment_Variable_Table_View.Set_Object_Name ("environmentVariableTableView");
      This.Environment_Variable_Table_View.Set_Alternating_Row_Colors (True);
      This.Environment_Variable_Table_View.Set_Selection_Mode (QAbstractItemView.Single_Selection);
      This.Environment_Variable_Table_View.Horizontal_Header.Set_Stretch_Last_Section (True);
      This.Vertical_Layout.Add_Widget (This.Environment_Variable_Table_View);

      This.Launch_Directory_Label := QLabel.Create (This.Central_Widget);
      This.Launch_Directory_Label.Set_Object_Name ("launchDirectoryLabel");
      This.Launch_Directory_Label.Set_Indent (9);
      This.Vertical_Layout.Add_Widget (This.Launch_Directory_Label);

      This.Launch_Directory_Text_Browser := QTextBrowser.Create (This.Central_Widget);
      This.Launch_Directory_Text_Browser.Set_Object_Name ("launchDirectoryTextBrowser");
      This.Vertical_Layout.Add_Widget (This.Launch_Directory_Text_Browser);

      This.Argument_Label := QLabel.Create (This.Central_Widget);
      This.Argument_Label.Set_Object_Name ("argumentLabel");
      This.Argument_Label.Set_Indent (9);
      This.Vertical_Layout.Add_Widget (This.Argument_Label);

      This.Argument_List_View := QListView.Create (This.Central_Widget);
      This.Argument_List_View.Set_Object_Name ("argumentListView");
      This.Argument_List_View.Set_Alternating_Row_Colors (True);
      This.Argument_List_View.Set_Word_Wrap (True);
      This.Vertical_Layout.Add_Widget (This.Argument_List_View);


      Main_Window.Set_Central_Widget (This.Central_Widget'Access);
      This.Menu_Bar := new QMenuBar_Type (Main_Window);
      This.Menu_Bar.Set_Object_Name ("menubar");
      This.Menu_Bar.Set_Geometry (0, 0, 800, 21);
      This.Menu_Window := new QMenu_Type (This.Menu_Bar);
      This.Menu_Window.Set_Object_Name ("menuWindow");
      Main_Window.Set_Menu_Bar (This.Menu_Bar'Access);
      This.Status_Bar := new QStatusBar_Type (Main_Window);
      This.Status_Bar.Set_Object_Name ("statusbar");
      Main_Window.Set_Status_Bar (This.Status_Bar'Access);

      This.Menu_Bar.Add_Action (This.Menu_Window.Menu_Action);
      This.Menu_Window.Add_Action (This.Action_Environment_Variables'Access);
      This.Menu_Window.Add_Action (This.Action_Launch_Directory'Access);
      This.Menu_Window.Add_Action (This.Action_Arguments'Access);

      This.Retranslate_Ui (Main_Window);

      GNAT.OS_Lib.Connect_Slots_By_Name (Main_Window);
   end Setup_Ui;

   procedure Retranslate_Ui (This : in out Ui_MainWindow; Main_Window : QMainWindow) is
   begin
      Main_Window.Window_Title := To_Unbounded_String ("EnvDisplay");
      This.Action_Environment_Variables.Text := To_Unbounded_String ("Environment variables");
      This.Action_Launch_Directory.Text := To_Unbounded_String ("Launch directory");
      This.Action_Arguments.Text := To_Unbounded_String ("Arguments");
      This.Environment_Variable_Label.Text := To_Unbounded_String ("<html><head/><body><p><span style='' font-size:18pt; font-weight:600;''>Environment variables</span></p></body></html>");
      This.Launch_Directory_Label.Text := To_Unbounded_String ("<html><head/><body><p><span style='' font-size:18pt; font-weight:600;''>Launch directory</span></p></body></html>");
      This.Argument_Label.Text := To_Unbounded_String ("<html><head/><body><p><span style='' font-size:18pt; font-weight:600;''>Arguments</span></p></body></html>");
      This.Window_Menu.Text := To_Unbounded_String ("Window");
   end Retranslate_Ui;

end UI_MainWindow;
