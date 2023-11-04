-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qtreewidgetitemiterator-iteratorflag.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Flag;
package QtAda6.QtWidgets.QTreeWidgetItemIterator.IteratorFlag is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Flag.Inst with null record;
   procedure Finalize (Self : in out Class);
   All_K         : QTreeWidgetItemIterator.IteratorFlag.Class;-- 0x0
   Hidden        : QTreeWidgetItemIterator.IteratorFlag.Class;-- 0x1
   NotHidden     : QTreeWidgetItemIterator.IteratorFlag.Class;-- 0x2
   Selected      : QTreeWidgetItemIterator.IteratorFlag.Class;-- 0x4
   Unselected    : QTreeWidgetItemIterator.IteratorFlag.Class;-- 0x8
   Selectable    : QTreeWidgetItemIterator.IteratorFlag.Class;-- 0x10
   NotSelectable : QTreeWidgetItemIterator.IteratorFlag.Class;-- 0x20
   DragEnabled   : QTreeWidgetItemIterator.IteratorFlag.Class;-- 0x40
   DragDisabled  : QTreeWidgetItemIterator.IteratorFlag.Class;-- 0x80
   DropEnabled   : QTreeWidgetItemIterator.IteratorFlag.Class;-- 0x100
   DropDisabled  : QTreeWidgetItemIterator.IteratorFlag.Class;-- 0x200
   HasChildren   : QTreeWidgetItemIterator.IteratorFlag.Class;-- 0x400
   NoChildren    : QTreeWidgetItemIterator.IteratorFlag.Class;-- 0x800
   Checked       : QTreeWidgetItemIterator.IteratorFlag.Class;-- 0x1000
   NotChecked    : QTreeWidgetItemIterator.IteratorFlag.Class;-- 0x2000
   Enabled       : QTreeWidgetItemIterator.IteratorFlag.Class;-- 0x4000
   Disabled      : QTreeWidgetItemIterator.IteratorFlag.Class;-- 0x8000
   Editable      : QTreeWidgetItemIterator.IteratorFlag.Class;-- 0x10000
   NotEditable   : QTreeWidgetItemIterator.IteratorFlag.Class;-- 0x20000
   UserFlag      : QTreeWidgetItemIterator.IteratorFlag.Class;-- 0x1000000
end QtAda6.QtWidgets.QTreeWidgetItemIterator.IteratorFlag;
