-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qfontcombobox-fontfilter.adb
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
package body QtAda6.QtWidgets.QFontComboBox.FontFilter is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function AllFonts return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QFontComboBox");
      Enum_Class   := Object_GetAttrString (Parent_Class, "FontFilter");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "AllFonts"));
   end AllFonts;
   function ScalableFonts return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QFontComboBox");
      Enum_Class   := Object_GetAttrString (Parent_Class, "FontFilter");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ScalableFonts"));
   end ScalableFonts;
   function NonScalableFonts return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QFontComboBox");
      Enum_Class   := Object_GetAttrString (Parent_Class, "FontFilter");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "NonScalableFonts"));
   end NonScalableFonts;
   function MonospacedFonts return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QFontComboBox");
      Enum_Class   := Object_GetAttrString (Parent_Class, "FontFilter");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "MonospacedFonts"));
   end MonospacedFonts;
   function ProportionalFonts return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QFontComboBox");
      Enum_Class   := Object_GetAttrString (Parent_Class, "FontFilter");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ProportionalFonts"));
   end ProportionalFonts;
end QtAda6.QtWidgets.QFontComboBox.FontFilter;
