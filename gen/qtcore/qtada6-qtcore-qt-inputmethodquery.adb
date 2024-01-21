-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qt-inputmethodquery.adb
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
package body QtAda6.QtCore.Qt.InputMethodQuery is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function ImEnabled return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "InputMethodQuery");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ImEnabled"));
   end ImEnabled;
   function ImCursorRectangle return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "InputMethodQuery");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ImCursorRectangle"));
   end ImCursorRectangle;
   function ImFont return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "InputMethodQuery");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ImFont"));
   end ImFont;
   function ImCursorPosition return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "InputMethodQuery");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ImCursorPosition"));
   end ImCursorPosition;
   function ImSurroundingText return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "InputMethodQuery");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ImSurroundingText"));
   end ImSurroundingText;
   function ImCurrentSelection return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "InputMethodQuery");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ImCurrentSelection"));
   end ImCurrentSelection;
   function ImMaximumTextLength return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "InputMethodQuery");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ImMaximumTextLength"));
   end ImMaximumTextLength;
   function ImAnchorPosition return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "InputMethodQuery");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ImAnchorPosition"));
   end ImAnchorPosition;
   function ImHints return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "InputMethodQuery");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ImHints"));
   end ImHints;
   function ImPreferredLanguage return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "InputMethodQuery");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ImPreferredLanguage"));
   end ImPreferredLanguage;
   function ImAbsolutePosition return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "InputMethodQuery");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ImAbsolutePosition"));
   end ImAbsolutePosition;
   function ImTextBeforeCursor return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "InputMethodQuery");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ImTextBeforeCursor"));
   end ImTextBeforeCursor;
   function ImTextAfterCursor return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "InputMethodQuery");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ImTextAfterCursor"));
   end ImTextAfterCursor;
   function ImEnterKeyType return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "InputMethodQuery");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ImEnterKeyType"));
   end ImEnterKeyType;
   function ImAnchorRectangle return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "InputMethodQuery");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ImAnchorRectangle"));
   end ImAnchorRectangle;
   function ImQueryInput return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "InputMethodQuery");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ImQueryInput"));
   end ImQueryInput;
   function ImInputItemClipRectangle return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "InputMethodQuery");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ImInputItemClipRectangle"));
   end ImInputItemClipRectangle;
   function ImReadOnly return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "InputMethodQuery");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ImReadOnly"));
   end ImReadOnly;
   function ImPlatformData return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "InputMethodQuery");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ImPlatformData"));
   end ImPlatformData;
   function ImQueryAll return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "InputMethodQuery");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ImQueryAll"));
   end ImQueryAll;
end QtAda6.QtCore.Qt.InputMethodQuery;
