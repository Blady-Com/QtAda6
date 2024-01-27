-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qtreewidgetitemiterator-iteratorflag.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtWidgets.QTreeWidgetItemIterator.IteratorFlag is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.Flag with null record;
   procedure Finalize (Self : in out Class);
   function All_K return Class;-- 0x0
   function Hidden return Class;-- 0x1
   function NotHidden return Class;-- 0x2
   function Selected return Class;-- 0x4
   function Unselected return Class;-- 0x8
   function Selectable return Class;-- 0x10
   function NotSelectable return Class;-- 0x20
   function DragEnabled return Class;-- 0x40
   function DragDisabled return Class;-- 0x80
   function DropEnabled return Class;-- 0x100
   function DropDisabled return Class;-- 0x200
   function HasChildren return Class;-- 0x400
   function NoChildren return Class;-- 0x800
   function Checked return Class;-- 0x1000
   function NotChecked return Class;-- 0x2000
   function Enabled return Class;-- 0x4000
   function Disabled return Class;-- 0x8000
   function Editable return Class;-- 0x10000
   function NotEditable return Class;-- 0x20000
   function UserFlag return Class;-- 0x1000000
end QtAda6.QtWidgets.QTreeWidgetItemIterator.IteratorFlag;
