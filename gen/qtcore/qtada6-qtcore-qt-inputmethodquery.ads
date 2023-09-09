-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qt-inputmethodquery.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Flag;
package QtAda6.QtCore.Qt.InputMethodQuery is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Flag.Inst with null record;
   procedure Finalize (Self : in out Class);
   ImEnabled                : Qt.InputMethodQuery.Class;-- 0x1
   ImCursorRectangle        : Qt.InputMethodQuery.Class;-- 0x2
   ImFont                   : Qt.InputMethodQuery.Class;-- 0x4
   ImCursorPosition         : Qt.InputMethodQuery.Class;-- 0x8
   ImSurroundingText        : Qt.InputMethodQuery.Class;-- 0x10
   ImCurrentSelection       : Qt.InputMethodQuery.Class;-- 0x20
   ImMaximumTextLength      : Qt.InputMethodQuery.Class;-- 0x40
   ImAnchorPosition         : Qt.InputMethodQuery.Class;-- 0x80
   ImHints                  : Qt.InputMethodQuery.Class;-- 0x100
   ImPreferredLanguage      : Qt.InputMethodQuery.Class;-- 0x200
   ImAbsolutePosition       : Qt.InputMethodQuery.Class;-- 0x400
   ImTextBeforeCursor       : Qt.InputMethodQuery.Class;-- 0x800
   ImTextAfterCursor        : Qt.InputMethodQuery.Class;-- 0x1000
   ImEnterKeyType           : Qt.InputMethodQuery.Class;-- 0x2000
   ImAnchorRectangle        : Qt.InputMethodQuery.Class;-- 0x4000
   ImQueryInput             : Qt.InputMethodQuery.Class;-- 0x40ba
   ImInputItemClipRectangle : Qt.InputMethodQuery.Class;-- 0x8000
   ImReadOnly               : Qt.InputMethodQuery.Class;-- 0x10000
   ImPlatformData           : Qt.InputMethodQuery.Class;-- 0x80000000
   ImQueryAll               : Qt.InputMethodQuery.Class;-- 0xffffffff
end QtAda6.QtCore.Qt.InputMethodQuery;
