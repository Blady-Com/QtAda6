-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qt-inputmethodhint.adb
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
package body QtAda6.QtCore.Qt.InputMethodHint is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function ImhNone return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "InputMethodHint");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ImhNone"));
   end ImhNone;
   function ImhHiddenText return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "InputMethodHint");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ImhHiddenText"));
   end ImhHiddenText;
   function ImhSensitiveData return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "InputMethodHint");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ImhSensitiveData"));
   end ImhSensitiveData;
   function ImhNoAutoUppercase return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "InputMethodHint");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ImhNoAutoUppercase"));
   end ImhNoAutoUppercase;
   function ImhPreferNumbers return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "InputMethodHint");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ImhPreferNumbers"));
   end ImhPreferNumbers;
   function ImhPreferUppercase return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "InputMethodHint");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ImhPreferUppercase"));
   end ImhPreferUppercase;
   function ImhPreferLowercase return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "InputMethodHint");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ImhPreferLowercase"));
   end ImhPreferLowercase;
   function ImhNoPredictiveText return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "InputMethodHint");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ImhNoPredictiveText"));
   end ImhNoPredictiveText;
   function ImhDate return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "InputMethodHint");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ImhDate"));
   end ImhDate;
   function ImhTime return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "InputMethodHint");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ImhTime"));
   end ImhTime;
   function ImhPreferLatin return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "InputMethodHint");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ImhPreferLatin"));
   end ImhPreferLatin;
   function ImhMultiLine return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "InputMethodHint");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ImhMultiLine"));
   end ImhMultiLine;
   function ImhNoEditMenu return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "InputMethodHint");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ImhNoEditMenu"));
   end ImhNoEditMenu;
   function ImhNoTextHandles return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "InputMethodHint");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ImhNoTextHandles"));
   end ImhNoTextHandles;
   function ImhDigitsOnly return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "InputMethodHint");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ImhDigitsOnly"));
   end ImhDigitsOnly;
   function ImhFormattedNumbersOnly return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "InputMethodHint");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ImhFormattedNumbersOnly"));
   end ImhFormattedNumbersOnly;
   function ImhUppercaseOnly return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "InputMethodHint");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ImhUppercaseOnly"));
   end ImhUppercaseOnly;
   function ImhLowercaseOnly return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "InputMethodHint");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ImhLowercaseOnly"));
   end ImhLowercaseOnly;
   function ImhDialableCharactersOnly return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "InputMethodHint");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ImhDialableCharactersOnly"));
   end ImhDialableCharactersOnly;
   function ImhEmailCharactersOnly return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "InputMethodHint");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ImhEmailCharactersOnly"));
   end ImhEmailCharactersOnly;
   function ImhUrlCharactersOnly return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "InputMethodHint");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ImhUrlCharactersOnly"));
   end ImhUrlCharactersOnly;
   function ImhLatinOnly return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "InputMethodHint");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ImhLatinOnly"));
   end ImhLatinOnly;
   function ImhExclusiveInputMask return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "InputMethodHint");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ImhExclusiveInputMask"));
   end ImhExclusiveInputMask;
end QtAda6.QtCore.Qt.InputMethodHint;
