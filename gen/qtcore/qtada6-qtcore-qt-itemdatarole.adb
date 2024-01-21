-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qt-itemdatarole.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Py; use Py;
with Ada.Unchecked_Deallocation;
package body QtAda6.QtCore.Qt.ItemDataRole is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function DisplayRole return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ItemDataRole");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "DisplayRole"));
   end DisplayRole;
   function DecorationRole return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ItemDataRole");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "DecorationRole"));
   end DecorationRole;
   function EditRole return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ItemDataRole");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "EditRole"));
   end EditRole;
   function ToolTipRole return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ItemDataRole");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ToolTipRole"));
   end ToolTipRole;
   function StatusTipRole return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ItemDataRole");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "StatusTipRole"));
   end StatusTipRole;
   function WhatsThisRole return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ItemDataRole");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "WhatsThisRole"));
   end WhatsThisRole;
   function FontRole return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ItemDataRole");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "FontRole"));
   end FontRole;
   function TextAlignmentRole return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ItemDataRole");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "TextAlignmentRole"));
   end TextAlignmentRole;
   function BackgroundRole return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ItemDataRole");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "BackgroundRole"));
   end BackgroundRole;
   function ForegroundRole return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ItemDataRole");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ForegroundRole"));
   end ForegroundRole;
   function CheckStateRole return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ItemDataRole");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "CheckStateRole"));
   end CheckStateRole;
   function AccessibleTextRole return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ItemDataRole");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "AccessibleTextRole"));
   end AccessibleTextRole;
   function AccessibleDescriptionRole return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ItemDataRole");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "AccessibleDescriptionRole"));
   end AccessibleDescriptionRole;
   function SizeHintRole return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ItemDataRole");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SizeHintRole"));
   end SizeHintRole;
   function InitialSortOrderRole return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ItemDataRole");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "InitialSortOrderRole"));
   end InitialSortOrderRole;
   function DisplayPropertyRole return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ItemDataRole");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "DisplayPropertyRole"));
   end DisplayPropertyRole;
   function DecorationPropertyRole return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ItemDataRole");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "DecorationPropertyRole"));
   end DecorationPropertyRole;
   function ToolTipPropertyRole return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ItemDataRole");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ToolTipPropertyRole"));
   end ToolTipPropertyRole;
   function StatusTipPropertyRole return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ItemDataRole");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "StatusTipPropertyRole"));
   end StatusTipPropertyRole;
   function WhatsThisPropertyRole return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ItemDataRole");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "WhatsThisPropertyRole"));
   end WhatsThisPropertyRole;
   function UserRole return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ItemDataRole");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "UserRole"));
   end UserRole;
end QtAda6.QtCore.Qt.ItemDataRole;
