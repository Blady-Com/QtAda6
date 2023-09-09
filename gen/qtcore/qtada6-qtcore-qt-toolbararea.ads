-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qt-toolbararea.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Flag;
package QtAda6.QtCore.Qt.ToolBarArea is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Flag.Inst with null record;
   procedure Finalize (Self : in out Class);
   NoToolBarArea     : Qt.ToolBarArea.Class;-- 0x0
   LeftToolBarArea   : Qt.ToolBarArea.Class;-- 0x1
   RightToolBarArea  : Qt.ToolBarArea.Class;-- 0x2
   TopToolBarArea    : Qt.ToolBarArea.Class;-- 0x4
   BottomToolBarArea : Qt.ToolBarArea.Class;-- 0x8
   AllToolBarAreas   : Qt.ToolBarArea.Class;-- 0xf
   ToolBarArea_Mask  : Qt.ToolBarArea.Class;-- 0xf
end QtAda6.QtCore.Qt.ToolBarArea;
