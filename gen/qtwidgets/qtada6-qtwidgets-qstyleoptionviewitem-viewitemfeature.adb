-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qstyleoptionviewitem-viewitemfeature.adb
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
package body QtAda6.QtWidgets.QStyleOptionViewItem.ViewItemFeature is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function None_U return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyleOptionViewItem");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ViewItemFeature");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "None_"));
   end None_U;
   function WrapText return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyleOptionViewItem");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ViewItemFeature");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "WrapText"));
   end WrapText;
   function Alternate return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyleOptionViewItem");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ViewItemFeature");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Alternate"));
   end Alternate;
   function HasCheckIndicator return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyleOptionViewItem");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ViewItemFeature");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "HasCheckIndicator"));
   end HasCheckIndicator;
   function HasDisplay return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyleOptionViewItem");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ViewItemFeature");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "HasDisplay"));
   end HasDisplay;
   function HasDecoration return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyleOptionViewItem");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ViewItemFeature");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "HasDecoration"));
   end HasDecoration;
end QtAda6.QtWidgets.QStyleOptionViewItem.ViewItemFeature;
