-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qtreewidgetitemiterator-iteratorflag.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Py; use Py;
with Ada.Unchecked_Deallocation;
package body QtAda6.QtWidgets.QTreeWidgetItemIterator.IteratorFlag is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function All_K return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QTreeWidgetItemIterator");
      Enum_Class   := Object_GetAttrString (Parent_Class, "IteratorFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "All"));
   end All_K;
   function Hidden return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QTreeWidgetItemIterator");
      Enum_Class   := Object_GetAttrString (Parent_Class, "IteratorFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Hidden"));
   end Hidden;
   function NotHidden return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QTreeWidgetItemIterator");
      Enum_Class   := Object_GetAttrString (Parent_Class, "IteratorFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "NotHidden"));
   end NotHidden;
   function Selected return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QTreeWidgetItemIterator");
      Enum_Class   := Object_GetAttrString (Parent_Class, "IteratorFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Selected"));
   end Selected;
   function Unselected return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QTreeWidgetItemIterator");
      Enum_Class   := Object_GetAttrString (Parent_Class, "IteratorFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Unselected"));
   end Unselected;
   function Selectable return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QTreeWidgetItemIterator");
      Enum_Class   := Object_GetAttrString (Parent_Class, "IteratorFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Selectable"));
   end Selectable;
   function NotSelectable return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QTreeWidgetItemIterator");
      Enum_Class   := Object_GetAttrString (Parent_Class, "IteratorFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "NotSelectable"));
   end NotSelectable;
   function DragEnabled return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QTreeWidgetItemIterator");
      Enum_Class   := Object_GetAttrString (Parent_Class, "IteratorFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "DragEnabled"));
   end DragEnabled;
   function DragDisabled return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QTreeWidgetItemIterator");
      Enum_Class   := Object_GetAttrString (Parent_Class, "IteratorFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "DragDisabled"));
   end DragDisabled;
   function DropEnabled return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QTreeWidgetItemIterator");
      Enum_Class   := Object_GetAttrString (Parent_Class, "IteratorFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "DropEnabled"));
   end DropEnabled;
   function DropDisabled return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QTreeWidgetItemIterator");
      Enum_Class   := Object_GetAttrString (Parent_Class, "IteratorFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "DropDisabled"));
   end DropDisabled;
   function HasChildren return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QTreeWidgetItemIterator");
      Enum_Class   := Object_GetAttrString (Parent_Class, "IteratorFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "HasChildren"));
   end HasChildren;
   function NoChildren return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QTreeWidgetItemIterator");
      Enum_Class   := Object_GetAttrString (Parent_Class, "IteratorFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "NoChildren"));
   end NoChildren;
   function Checked return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QTreeWidgetItemIterator");
      Enum_Class   := Object_GetAttrString (Parent_Class, "IteratorFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Checked"));
   end Checked;
   function NotChecked return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QTreeWidgetItemIterator");
      Enum_Class   := Object_GetAttrString (Parent_Class, "IteratorFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "NotChecked"));
   end NotChecked;
   function Enabled return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QTreeWidgetItemIterator");
      Enum_Class   := Object_GetAttrString (Parent_Class, "IteratorFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Enabled"));
   end Enabled;
   function Disabled return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QTreeWidgetItemIterator");
      Enum_Class   := Object_GetAttrString (Parent_Class, "IteratorFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Disabled"));
   end Disabled;
   function Editable return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QTreeWidgetItemIterator");
      Enum_Class   := Object_GetAttrString (Parent_Class, "IteratorFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Editable"));
   end Editable;
   function NotEditable return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QTreeWidgetItemIterator");
      Enum_Class   := Object_GetAttrString (Parent_Class, "IteratorFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "NotEditable"));
   end NotEditable;
   function UserFlag return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QTreeWidgetItemIterator");
      Enum_Class   := Object_GetAttrString (Parent_Class, "IteratorFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "UserFlag"));
   end UserFlag;
end QtAda6.QtWidgets.QTreeWidgetItemIterator.IteratorFlag;
