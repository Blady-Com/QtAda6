-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qt-itemdatarole.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtCore.Qt.ItemDataRole is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.IntEnum with null record;
   procedure Finalize (Self : in out Class);
   function DisplayRole return Class;-- 0x0
   function DecorationRole return Class;-- 0x1
   function EditRole return Class;-- 0x2
   function ToolTipRole return Class;-- 0x3
   function StatusTipRole return Class;-- 0x4
   function WhatsThisRole return Class;-- 0x5
   function FontRole return Class;-- 0x6
   function TextAlignmentRole return Class;-- 0x7
   function BackgroundRole return Class;-- 0x8
   function ForegroundRole return Class;-- 0x9
   function CheckStateRole return Class;-- 0xa
   function AccessibleTextRole return Class;-- 0xb
   function AccessibleDescriptionRole return Class;-- 0xc
   function SizeHintRole return Class;-- 0xd
   function InitialSortOrderRole return Class;-- 0xe
   function DisplayPropertyRole return Class;-- 0x1b
   function DecorationPropertyRole return Class;-- 0x1c
   function ToolTipPropertyRole return Class;-- 0x1d
   function StatusTipPropertyRole return Class;-- 0x1e
   function WhatsThisPropertyRole return Class;-- 0x1f
   function UserRole return Class;-- 0x100
end QtAda6.QtCore.Qt.ItemDataRole;
