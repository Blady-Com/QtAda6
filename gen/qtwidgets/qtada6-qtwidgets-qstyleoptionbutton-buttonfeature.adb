-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qstyleoptionbutton-buttonfeature.adb
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
package body QtAda6.QtWidgets.QStyleOptionButton.ButtonFeature is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function None_U return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyleOptionButton");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ButtonFeature");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "None_"));
   end None_U;
   function Flat return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyleOptionButton");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ButtonFeature");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Flat"));
   end Flat;
   function HasMenu return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyleOptionButton");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ButtonFeature");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "HasMenu"));
   end HasMenu;
   function DefaultButton return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyleOptionButton");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ButtonFeature");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "DefaultButton"));
   end DefaultButton;
   function AutoDefaultButton return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyleOptionButton");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ButtonFeature");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "AutoDefaultButton"));
   end AutoDefaultButton;
   function CommandLinkButton return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyleOptionButton");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ButtonFeature");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "CommandLinkButton"));
   end CommandLinkButton;
end QtAda6.QtWidgets.QStyleOptionButton.ButtonFeature;
