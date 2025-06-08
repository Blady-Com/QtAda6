-------------------------------------------------------------------------------
-- NAME (spec)                  : ui_mainwindow.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Main window user interface
-- NOTES                        : Ada 2022, QtAda6
--
-- COPYRIGHT                    : (c) Pascal Pignard 2025
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.chez.com
-------------------------------------------------------------------------------

-- /********************************************************************************
-- ** Form generated from reading UI file 'MainWindow.ui'
-- **
-- ** Created by: Qt User Interface Compiler version 6.7.0
-- **
-- ** WARNING! All changes made in this file will be lost when recompiling UI file!
-- ********************************************************************************/

with QtAda6.QtGui.QAction;
with QtAda6.QtWidgets.QWidget;
with QtAda6.QtWidgets.QVBoxLayout;
with QtAda6.QtWidgets.QLabel;
with QtAda6.QtWidgets.QTableView;
with QtAda6.QtWidgets.QTextBrowser;
with QtAda6.QtWidgets.QListView;
with QtAda6.QtWidgets.QMenuBar;
with QtAda6.QtWidgets.QMenu;
with QtAda6.QtWidgets.QStatusBar;
with QtAda6.QtWidgets.QMainWindow;

package UI_MainWindow is

   type UI_MainWindow is tagged record
      Action_Environment_Variables    : QtAda6.QtGui.QAction.Class;
      Action_Launch_Directory         : QtAda6.QtGui.QAction.Class;
      Action_Arguments                : QtAda6.QtGui.QAction.Class;
      Central_Widget                  : QtAda6.QtWidgets.QWidget.Class;
      Vertical_Layout                 : QtAda6.QtWidgets.QVBoxLayout.Class;
      Environment_Variable_Label      : QtAda6.QtWidgets.QLabel.Class;
      Environment_Variable_Table_View : QtAda6.QtWidgets.QTableView.Class;
      Launch_Directory_Label          : QtAda6.QtWidgets.QLabel.Class;
      Launch_Directory_Text_Browser   : QtAda6.QtWidgets.QTextBrowser.Class;
      Argument_Label                  : QtAda6.QtWidgets.QLabel.Class;
      Argument_List_View              : QtAda6.QtWidgets.QListView.Class;
      Menu_Bar                        : QtAda6.QtWidgets.QMenuBar.Class;
      Menu_Window                     : QtAda6.QtWidgets.QMenu.Class;
      Status_Bar                      : QtAda6.QtWidgets.QStatusBar.Class;
   end record;

   procedure Setup_UI (This : in out UI_MainWindow; Main_Window : QtAda6.QtWidgets.QMainWindow.Class);

   procedure Retranslate_UI (This : in out UI_MainWindow; Main_Window : QtAda6.QtWidgets.QMainWindow.Class);

end UI_MainWindow;
