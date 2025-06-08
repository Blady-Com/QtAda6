-------------------------------------------------------------------------------
-- NAME (body)                  : ui_mainwindow.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Main window user interface
-- NOTES                        : Ada 2022, QtAda6
--
-- COPYRIGHT                    : (c) Pascal Pignard 2025
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.chez.com
-------------------------------------------------------------------------------

with QtAda6.QtCore.QMetaObject;
with QtAda6.QtWidgets.QAbstractItemView.SelectionMode;

package body UI_MainWindow is
   use QtAda6.QtWidgets;
   use QtAda6.QtGui;
   use type QtAda6.int;

   procedure Setup_Ui (This : in out UI_MainWindow; Main_Window : QtAda6.QtWidgets.QMainWindow.Class) is
   begin
      if Main_Window.objectName.Is_Empty then
         Main_Window.SetObjectName ("MainWindow");
      end if;

      Main_Window.resize (800, 600);

      This.Action_Environment_Variables := QAction.Create (Main_Window);
      This.Action_Environment_Variables.SetObjectName ("actionEnvironment_variables");
      This.Action_Environment_Variables.setCheckable (True);
      This.Action_Environment_Variables.setChecked (True);

      This.Action_Launch_Directory := QAction.Create (Main_Window);
      This.Action_Launch_Directory.SetObjectName ("actionLaunch_directory");
      This.Action_Launch_Directory.setCheckable (True);
      This.Action_Launch_Directory.setChecked (True);

      This.Action_Arguments := QAction.Create (Main_Window);
      This.Action_Arguments.SetObjectName ("actionArguments");
      This.Action_Arguments.setCheckable (True);
      This.Action_Arguments.setChecked (True);

      This.Central_Widget := QWidget.Create (Main_Window);
      This.Central_Widget.SetObjectName ("centralwidget");

      This.Vertical_Layout := QVBoxLayout.Create (This.Central_Widget);
      This.Vertical_Layout.SetObjectName ("verticalLayout");
      This.Vertical_Layout.setContentsMargins (0, -1, 0, 0);

      This.Environment_Variable_Label := QLabel.Create (This.Central_Widget);
      This.Environment_Variable_Label.SetObjectName ("environmentVariableLabel");
      This.Environment_Variable_Label.setIndent (9);

      This.Vertical_Layout.addWidget (arg_1_P => QWidget.Inst_Access (This.Environment_Variable_Label));

      This.Environment_Variable_Table_View := QTableView.Create (This.Central_Widget);
      This.Environment_Variable_Table_View.SetObjectName ("environmentVariableTableView");
      This.Environment_Variable_Table_View.setAlternatingRowColors (True);
      This.Environment_Variable_Table_View.setSelectionMode
        (QtAda6.QtWidgets.QAbstractItemView.SelectionMode.SingleSelection);
      This.Environment_Variable_Table_View.horizontalHeader.setStretchLastSection (True);

      This.Vertical_Layout.addWidget (arg_1_P => QWidget.Inst_Access (This.Environment_Variable_Table_View));

      This.Launch_Directory_Label := QLabel.Create (This.Central_Widget);
      This.Launch_Directory_Label.SetObjectName ("launchDirectoryLabel");
      This.Launch_Directory_Label.setIndent (9);

      This.Vertical_Layout.addWidget (arg_1_P => QWidget.Inst_Access (This.Launch_Directory_Label));

      This.Launch_Directory_Text_Browser := QTextBrowser.Create (This.Central_Widget);
      This.Launch_Directory_Text_Browser.SetObjectName ("launchDirectoryTextBrowser");

      This.Vertical_Layout.addWidget (arg_1_P => QWidget.Inst_Access (This.Launch_Directory_Text_Browser));

      This.Argument_Label := QLabel.Create (This.Central_Widget);
      This.Argument_Label.SetObjectName ("argumentLabel");
      This.Argument_Label.setIndent (9);

      This.Vertical_Layout.addWidget (arg_1_P => QWidget.Inst_Access (This.Argument_Label));

      This.Argument_List_View := QListView.Create (This.Central_Widget);
      This.Argument_List_View.SetObjectName ("argumentListView");
      This.Argument_List_View.setAlternatingRowColors (True);
      This.Argument_List_View.setWordWrap (True);

      This.Vertical_Layout.addWidget (arg_1_P => QWidget.Inst_Access (This.Argument_List_View));

      Main_Window.setCentralWidget (This.Central_Widget);
      This.Menu_Bar := QMenuBar.Create (Main_Window);
      This.Menu_Bar.SetObjectName ("menubar");
      This.Menu_Bar.setGeometry (0, 0, 800, 21);
      This.Menu_Window := QMenu.Create (This.Menu_Bar);
      This.Menu_Window.SetObjectName ("menuWindow");
      Main_Window.setMenuBar (This.Menu_Bar);
      This.Status_Bar := QStatusBar.Create (Main_Window);
      This.Status_Bar.SetObjectName ("statusbar");
      Main_Window.setStatusBar (This.Status_Bar);

      This.Menu_Bar.addAction (This.Menu_Window.menuAction);
      This.Menu_Window.addAction (This.Action_Environment_Variables);
      This.Menu_Window.addAction (This.Action_Launch_Directory);
      This.Menu_Window.addAction (This.Action_Arguments);

      This.Retranslate_UI (Main_Window);

      QtAda6.QtCore.QMetaObject.connectSlotsByName (Main_Window);
   end Setup_Ui;

   procedure Retranslate_Ui (This : in out UI_MainWindow; Main_Window : QtAda6.QtWidgets.QMainWindow.Class) is
   begin
      Main_Window.SetWindowTitle ("EnvDisplay");
      This.Action_Environment_Variables.setText ("Environment variables");
      This.Action_Launch_Directory.setText ("Launch directory");
      This.Action_Arguments.setText ("Arguments");
      This.Environment_Variable_Label.setText
        ("<html><head/><body><p><span style='' font-size:18pt; font-weight:600;''>Environment variables</span></p></body></html>");
      This.Launch_Directory_Label.setText
        ("<html><head/><body><p><span style='' font-size:18pt; font-weight:600;''>Launch directory</span></p></body></html>");
      This.Argument_Label.setText
        ("<html><head/><body><p><span style='' font-size:18pt; font-weight:600;''>Arguments</span></p></body></html>");
      This.Menu_Window.setTitle ("Window");
   end Retranslate_Ui;

end UI_MainWindow;
