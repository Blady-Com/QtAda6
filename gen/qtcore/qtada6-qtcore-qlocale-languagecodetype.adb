-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qlocale-languagecodetype.adb
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
package body QtAda6.QtCore.QLocale.LanguageCodeType is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function AnyLanguageCode return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "LanguageCodeType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "AnyLanguageCode"));
   end AnyLanguageCode;
   function ISO639Alpha2 return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "LanguageCodeType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ISO639Alpha2"));
   end ISO639Alpha2;
   function ISO639Part1 return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "LanguageCodeType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ISO639Part1"));
   end ISO639Part1;
   function ISO639Part2B return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "LanguageCodeType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ISO639Part2B"));
   end ISO639Part2B;
   function ISO639Part2T return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "LanguageCodeType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ISO639Part2T"));
   end ISO639Part2T;
   function ISO639Part2 return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "LanguageCodeType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ISO639Part2"));
   end ISO639Part2;
   function ISO639Part3 return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "LanguageCodeType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ISO639Part3"));
   end ISO639Part3;
   function ISO639Alpha3 return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "LanguageCodeType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ISO639Alpha3"));
   end ISO639Alpha3;
   function ISO639 return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "LanguageCodeType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ISO639"));
   end ISO639;
   function LegacyLanguageCode return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "LanguageCodeType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "LegacyLanguageCode"));
   end LegacyLanguageCode;
end QtAda6.QtCore.QLocale.LanguageCodeType;
