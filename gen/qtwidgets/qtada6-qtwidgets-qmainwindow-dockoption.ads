-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qmainwindow-dockoption.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Flag;
package QtAda6.QtWidgets.QMainWindow.DockOption is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Flag.Inst with null record;
   procedure Finalize (Self : in out Class);
   AnimatedDocks    : QMainWindow.DockOption.Class;-- 0x1
   AllowNestedDocks : QMainWindow.DockOption.Class;-- 0x2
   AllowTabbedDocks : QMainWindow.DockOption.Class;-- 0x4
   ForceTabbedDocks : QMainWindow.DockOption.Class;-- 0x8
   VerticalTabs     : QMainWindow.DockOption.Class;-- 0x10
   GroupedDragging  : QMainWindow.DockOption.Class;-- 0x20
end QtAda6.QtWidgets.QMainWindow.DockOption;
