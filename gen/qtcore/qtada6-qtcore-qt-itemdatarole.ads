-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qt-itemdatarole.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.IntEnum;
package QtAda6.QtCore.Qt.ItemDataRole is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.IntEnum.Inst with null record;
   procedure Finalize (Self : in out Class);
   DisplayRole               : Qt.ItemDataRole.Class;-- 0x0
   DecorationRole            : Qt.ItemDataRole.Class;-- 0x1
   EditRole                  : Qt.ItemDataRole.Class;-- 0x2
   ToolTipRole               : Qt.ItemDataRole.Class;-- 0x3
   StatusTipRole             : Qt.ItemDataRole.Class;-- 0x4
   WhatsThisRole             : Qt.ItemDataRole.Class;-- 0x5
   FontRole                  : Qt.ItemDataRole.Class;-- 0x6
   TextAlignmentRole         : Qt.ItemDataRole.Class;-- 0x7
   BackgroundRole            : Qt.ItemDataRole.Class;-- 0x8
   ForegroundRole            : Qt.ItemDataRole.Class;-- 0x9
   CheckStateRole            : Qt.ItemDataRole.Class;-- 0xa
   AccessibleTextRole        : Qt.ItemDataRole.Class;-- 0xb
   AccessibleDescriptionRole : Qt.ItemDataRole.Class;-- 0xc
   SizeHintRole              : Qt.ItemDataRole.Class;-- 0xd
   InitialSortOrderRole      : Qt.ItemDataRole.Class;-- 0xe
   DisplayPropertyRole       : Qt.ItemDataRole.Class;-- 0x1b
   DecorationPropertyRole    : Qt.ItemDataRole.Class;-- 0x1c
   ToolTipPropertyRole       : Qt.ItemDataRole.Class;-- 0x1d
   StatusTipPropertyRole     : Qt.ItemDataRole.Class;-- 0x1e
   WhatsThisPropertyRole     : Qt.ItemDataRole.Class;-- 0x1f
   UserRole                  : Qt.ItemDataRole.Class;-- 0x100
end QtAda6.QtCore.Qt.ItemDataRole;
