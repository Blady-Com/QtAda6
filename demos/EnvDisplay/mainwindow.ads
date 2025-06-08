-------------------------------------------------------------------------------
-- NAME (spec)                  : mainwindow.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Main window management
-- NOTES                        : Ada 2022, QtAda6
--
-- COPYRIGHT                    : (c) Pascal Pignard 2025
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.chez.com
-------------------------------------------------------------------------------

with QtAda6.QtWidgets.QMainWindow;
with QtAda6.QtWidgets.QWidget;

with UI_MainWindow;

package MainWindow is

   type MainWindow_Type is new QtAda6.QtWidgets.QMainWindow.Inst with private;
   type MainWindow_Access is access all MainWindow_Type;
   type Class is access all MainWindow_Type'Class;

   function Create (Parent : access QtAda6.QtWidgets.QWidget.Inst'Class := null) return Class;
   procedure Finalize (This : in out Class);

   procedure On_Action_Environment_Variables_Triggered (This : in out MainWindow_Type; Checked : in Boolean);
   procedure On_Action_Launch_Directory_Triggered (This : in out MainWindow_Type; Checked : in Boolean);
   procedure On_Action_Arguments_Triggered (This : in out MainWindow_Type; Checked : in Boolean);

private

   type MainWindow_Type is new QtAda6.QtWidgets.QMainWindow.Inst with record
      ui : UI_MainWindow.UI_MainWindow;
   end record;

   procedure Display_Environment_Variables (This : in out MainWindow_Type);
   procedure Display_Launch_Directory (This : in out MainWindow_Type);
   procedure Display_Arguments (This : in out MainWindow_Type);

end MainWindow;
