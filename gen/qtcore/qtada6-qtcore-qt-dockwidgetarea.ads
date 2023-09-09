-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qt-dockwidgetarea.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Flag;
package QtAda6.QtCore.Qt.DockWidgetArea is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Flag.Inst with null record;
   procedure Finalize (Self : in out Class);
   NoDockWidgetArea     : Qt.DockWidgetArea.Class;-- 0x0
   LeftDockWidgetArea   : Qt.DockWidgetArea.Class;-- 0x1
   RightDockWidgetArea  : Qt.DockWidgetArea.Class;-- 0x2
   TopDockWidgetArea    : Qt.DockWidgetArea.Class;-- 0x4
   BottomDockWidgetArea : Qt.DockWidgetArea.Class;-- 0x8
   AllDockWidgetAreas   : Qt.DockWidgetArea.Class;-- 0xf
   DockWidgetArea_Mask  : Qt.DockWidgetArea.Class;-- 0xf
end QtAda6.QtCore.Qt.DockWidgetArea;
