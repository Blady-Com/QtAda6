-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qt-itemflag.adb
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
package body QtAda6.QtCore.Qt.ItemFlag is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function NoItemFlags return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ItemFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "NoItemFlags"));
   end NoItemFlags;
   function ItemIsSelectable return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ItemFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ItemIsSelectable"));
   end ItemIsSelectable;
   function ItemIsEditable return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ItemFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ItemIsEditable"));
   end ItemIsEditable;
   function ItemIsDragEnabled return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ItemFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ItemIsDragEnabled"));
   end ItemIsDragEnabled;
   function ItemIsDropEnabled return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ItemFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ItemIsDropEnabled"));
   end ItemIsDropEnabled;
   function ItemIsUserCheckable return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ItemFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ItemIsUserCheckable"));
   end ItemIsUserCheckable;
   function ItemIsEnabled return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ItemFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ItemIsEnabled"));
   end ItemIsEnabled;
   function ItemIsAutoTristate return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ItemFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ItemIsAutoTristate"));
   end ItemIsAutoTristate;
   function ItemNeverHasChildren return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ItemFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ItemNeverHasChildren"));
   end ItemNeverHasChildren;
   function ItemIsUserTristate return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ItemFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ItemIsUserTristate"));
   end ItemIsUserTristate;
end QtAda6.QtCore.Qt.ItemFlag;
