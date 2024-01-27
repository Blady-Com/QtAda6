-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qmainwindow-dockoption.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtWidgets.QMainWindow.DockOption is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.Flag with null record;
   procedure Finalize (Self : in out Class);
   function AnimatedDocks return Class;-- 0x1
   function AllowNestedDocks return Class;-- 0x2
   function AllowTabbedDocks return Class;-- 0x4
   function ForceTabbedDocks return Class;-- 0x8
   function VerticalTabs return Class;-- 0x10
   function GroupedDragging return Class;-- 0x20
end QtAda6.QtWidgets.QMainWindow.DockOption;
