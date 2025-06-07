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
