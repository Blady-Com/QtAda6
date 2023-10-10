-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qkeysequence-standardkey.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Enum;
package QtAda6.QtGui.QKeySequence.StandardKey is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Enum.Inst with null record;
   procedure Finalize (Self : in out Class);
   UnknownKey               : QKeySequence.StandardKey.Class;-- 0x0
   HelpContents             : QKeySequence.StandardKey.Class;-- 0x1
   WhatsThis                : QKeySequence.StandardKey.Class;-- 0x2
   Open                     : QKeySequence.StandardKey.Class;-- 0x3
   Close                    : QKeySequence.StandardKey.Class;-- 0x4
   Save                     : QKeySequence.StandardKey.Class;-- 0x5
   New_K                    : QKeySequence.StandardKey.Class;-- 0x6
   Delete                   : QKeySequence.StandardKey.Class;-- 0x7
   Cut                      : QKeySequence.StandardKey.Class;-- 0x8
   Copy                     : QKeySequence.StandardKey.Class;-- 0x9
   Paste                    : QKeySequence.StandardKey.Class;-- 0xa
   Undo                     : QKeySequence.StandardKey.Class;-- 0xb
   Redo                     : QKeySequence.StandardKey.Class;-- 0xc
   Back                     : QKeySequence.StandardKey.Class;-- 0xd
   Forward                  : QKeySequence.StandardKey.Class;-- 0xe
   Refresh                  : QKeySequence.StandardKey.Class;-- 0xf
   ZoomIn                   : QKeySequence.StandardKey.Class;-- 0x10
   ZoomOut                  : QKeySequence.StandardKey.Class;-- 0x11
   Print                    : QKeySequence.StandardKey.Class;-- 0x12
   AddTab                   : QKeySequence.StandardKey.Class;-- 0x13
   NextChild                : QKeySequence.StandardKey.Class;-- 0x14
   PreviousChild            : QKeySequence.StandardKey.Class;-- 0x15
   Find                     : QKeySequence.StandardKey.Class;-- 0x16
   FindNext                 : QKeySequence.StandardKey.Class;-- 0x17
   FindPrevious             : QKeySequence.StandardKey.Class;-- 0x18
   Replace                  : QKeySequence.StandardKey.Class;-- 0x19
   SelectAll                : QKeySequence.StandardKey.Class;-- 0x1a
   Bold                     : QKeySequence.StandardKey.Class;-- 0x1b
   Italic                   : QKeySequence.StandardKey.Class;-- 0x1c
   Underline                : QKeySequence.StandardKey.Class;-- 0x1d
   MoveToNextChar           : QKeySequence.StandardKey.Class;-- 0x1e
   MoveToPreviousChar       : QKeySequence.StandardKey.Class;-- 0x1f
   MoveToNextWord           : QKeySequence.StandardKey.Class;-- 0x20
   MoveToPreviousWord       : QKeySequence.StandardKey.Class;-- 0x21
   MoveToNextLine           : QKeySequence.StandardKey.Class;-- 0x22
   MoveToPreviousLine       : QKeySequence.StandardKey.Class;-- 0x23
   MoveToNextPage           : QKeySequence.StandardKey.Class;-- 0x24
   MoveToPreviousPage       : QKeySequence.StandardKey.Class;-- 0x25
   MoveToStartOfLine        : QKeySequence.StandardKey.Class;-- 0x26
   MoveToEndOfLine          : QKeySequence.StandardKey.Class;-- 0x27
   MoveToStartOfBlock       : QKeySequence.StandardKey.Class;-- 0x28
   MoveToEndOfBlock         : QKeySequence.StandardKey.Class;-- 0x29
   MoveToStartOfDocument    : QKeySequence.StandardKey.Class;-- 0x2a
   MoveToEndOfDocument      : QKeySequence.StandardKey.Class;-- 0x2b
   SelectNextChar           : QKeySequence.StandardKey.Class;-- 0x2c
   SelectPreviousChar       : QKeySequence.StandardKey.Class;-- 0x2d
   SelectNextWord           : QKeySequence.StandardKey.Class;-- 0x2e
   SelectPreviousWord       : QKeySequence.StandardKey.Class;-- 0x2f
   SelectNextLine           : QKeySequence.StandardKey.Class;-- 0x30
   SelectPreviousLine       : QKeySequence.StandardKey.Class;-- 0x31
   SelectNextPage           : QKeySequence.StandardKey.Class;-- 0x32
   SelectPreviousPage       : QKeySequence.StandardKey.Class;-- 0x33
   SelectStartOfLine        : QKeySequence.StandardKey.Class;-- 0x34
   SelectEndOfLine          : QKeySequence.StandardKey.Class;-- 0x35
   SelectStartOfBlock       : QKeySequence.StandardKey.Class;-- 0x36
   SelectEndOfBlock         : QKeySequence.StandardKey.Class;-- 0x37
   SelectStartOfDocument    : QKeySequence.StandardKey.Class;-- 0x38
   SelectEndOfDocument      : QKeySequence.StandardKey.Class;-- 0x39
   DeleteStartOfWord        : QKeySequence.StandardKey.Class;-- 0x3a
   DeleteEndOfWord          : QKeySequence.StandardKey.Class;-- 0x3b
   DeleteEndOfLine          : QKeySequence.StandardKey.Class;-- 0x3c
   InsertParagraphSeparator : QKeySequence.StandardKey.Class;-- 0x3d
   InsertLineSeparator      : QKeySequence.StandardKey.Class;-- 0x3e
   SaveAs                   : QKeySequence.StandardKey.Class;-- 0x3f
   Preferences              : QKeySequence.StandardKey.Class;-- 0x40
   Quit                     : QKeySequence.StandardKey.Class;-- 0x41
   FullScreen               : QKeySequence.StandardKey.Class;-- 0x42
   Deselect                 : QKeySequence.StandardKey.Class;-- 0x43
   DeleteCompleteLine       : QKeySequence.StandardKey.Class;-- 0x44
   Backspace                : QKeySequence.StandardKey.Class;-- 0x45
   Cancel                   : QKeySequence.StandardKey.Class;-- 0x46
end QtAda6.QtGui.QKeySequence.StandardKey;
