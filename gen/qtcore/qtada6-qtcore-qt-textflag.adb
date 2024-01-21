-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qt-textflag.adb
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
package body QtAda6.QtCore.Qt.TextFlag is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function TextSingleLine return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "TextFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "TextSingleLine"));
   end TextSingleLine;
   function TextDontClip return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "TextFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "TextDontClip"));
   end TextDontClip;
   function TextExpandTabs return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "TextFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "TextExpandTabs"));
   end TextExpandTabs;
   function TextShowMnemonic return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "TextFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "TextShowMnemonic"));
   end TextShowMnemonic;
   function TextWordWrap return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "TextFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "TextWordWrap"));
   end TextWordWrap;
   function TextWrapAnywhere return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "TextFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "TextWrapAnywhere"));
   end TextWrapAnywhere;
   function TextDontPrint return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "TextFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "TextDontPrint"));
   end TextDontPrint;
   function TextHideMnemonic return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "TextFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "TextHideMnemonic"));
   end TextHideMnemonic;
   function TextJustificationForced return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "TextFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "TextJustificationForced"));
   end TextJustificationForced;
   function TextForceLeftToRight return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "TextFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "TextForceLeftToRight"));
   end TextForceLeftToRight;
   function TextForceRightToLeft return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "TextFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "TextForceRightToLeft"));
   end TextForceRightToLeft;
   function TextLongestVariant return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "TextFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "TextLongestVariant"));
   end TextLongestVariant;
   function TextIncludeTrailingSpaces return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "TextFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "TextIncludeTrailingSpaces"));
   end TextIncludeTrailingSpaces;
end QtAda6.QtCore.Qt.TextFlag;
