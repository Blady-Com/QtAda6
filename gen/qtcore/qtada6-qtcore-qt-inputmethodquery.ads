-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qt-inputmethodquery.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtCore.Qt.InputMethodQuery is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.Flag with null record;
   procedure Finalize (Self : in out Class);
   function ImEnabled return Class;-- 0x1
   function ImCursorRectangle return Class;-- 0x2
   function ImFont return Class;-- 0x4
   function ImCursorPosition return Class;-- 0x8
   function ImSurroundingText return Class;-- 0x10
   function ImCurrentSelection return Class;-- 0x20
   function ImMaximumTextLength return Class;-- 0x40
   function ImAnchorPosition return Class;-- 0x80
   function ImHints return Class;-- 0x100
   function ImPreferredLanguage return Class;-- 0x200
   function ImAbsolutePosition return Class;-- 0x400
   function ImTextBeforeCursor return Class;-- 0x800
   function ImTextAfterCursor return Class;-- 0x1000
   function ImEnterKeyType return Class;-- 0x2000
   function ImAnchorRectangle return Class;-- 0x4000
   function ImQueryInput return Class;-- 0x40ba
   function ImInputItemClipRectangle return Class;-- 0x8000
   function ImReadOnly return Class;-- 0x10000
   function ImPlatformData return Class;-- 0x80000000
   function ImQueryAll return Class;-- 0xffffffff
end QtAda6.QtCore.Qt.InputMethodQuery;
