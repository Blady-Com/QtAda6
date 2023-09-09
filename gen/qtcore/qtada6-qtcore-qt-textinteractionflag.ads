-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qt-textinteractionflag.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Flag;
package QtAda6.QtCore.Qt.TextInteractionFlag is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Flag.Inst with null record;
   procedure Finalize (Self : in out Class);
   NoTextInteraction         : Qt.TextInteractionFlag.Class;-- 0x0
   TextSelectableByMouse     : Qt.TextInteractionFlag.Class;-- 0x1
   TextSelectableByKeyboard  : Qt.TextInteractionFlag.Class;-- 0x2
   LinksAccessibleByMouse    : Qt.TextInteractionFlag.Class;-- 0x4
   LinksAccessibleByKeyboard : Qt.TextInteractionFlag.Class;-- 0x8
   TextBrowserInteraction    : Qt.TextInteractionFlag.Class;-- 0xd
   TextEditable              : Qt.TextInteractionFlag.Class;-- 0x10
   TextEditorInteraction     : Qt.TextInteractionFlag.Class;-- 0x13
end QtAda6.QtCore.Qt.TextInteractionFlag;
