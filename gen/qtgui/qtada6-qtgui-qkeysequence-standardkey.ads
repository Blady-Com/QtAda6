-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qkeysequence-standardkey.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtGui.QKeySequence.StandardKey is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.Enum with null record;
   procedure Finalize (Self : in out Class);
   function UnknownKey return Class;-- 0x0
   function HelpContents return Class;-- 0x1
   function WhatsThis return Class;-- 0x2
   function Open return Class;-- 0x3
   function Close return Class;-- 0x4
   function Save return Class;-- 0x5
   function New_K return Class;-- 0x6
   function Delete return Class;-- 0x7
   function Cut return Class;-- 0x8
   function Copy return Class;-- 0x9
   function Paste return Class;-- 0xa
   function Undo return Class;-- 0xb
   function Redo return Class;-- 0xc
   function Back return Class;-- 0xd
   function Forward return Class;-- 0xe
   function Refresh return Class;-- 0xf
   function ZoomIn return Class;-- 0x10
   function ZoomOut return Class;-- 0x11
   function Print return Class;-- 0x12
   function AddTab return Class;-- 0x13
   function NextChild return Class;-- 0x14
   function PreviousChild return Class;-- 0x15
   function Find return Class;-- 0x16
   function FindNext return Class;-- 0x17
   function FindPrevious return Class;-- 0x18
   function Replace return Class;-- 0x19
   function SelectAll return Class;-- 0x1a
   function Bold return Class;-- 0x1b
   function Italic return Class;-- 0x1c
   function Underline return Class;-- 0x1d
   function MoveToNextChar return Class;-- 0x1e
   function MoveToPreviousChar return Class;-- 0x1f
   function MoveToNextWord return Class;-- 0x20
   function MoveToPreviousWord return Class;-- 0x21
   function MoveToNextLine return Class;-- 0x22
   function MoveToPreviousLine return Class;-- 0x23
   function MoveToNextPage return Class;-- 0x24
   function MoveToPreviousPage return Class;-- 0x25
   function MoveToStartOfLine return Class;-- 0x26
   function MoveToEndOfLine return Class;-- 0x27
   function MoveToStartOfBlock return Class;-- 0x28
   function MoveToEndOfBlock return Class;-- 0x29
   function MoveToStartOfDocument return Class;-- 0x2a
   function MoveToEndOfDocument return Class;-- 0x2b
   function SelectNextChar return Class;-- 0x2c
   function SelectPreviousChar return Class;-- 0x2d
   function SelectNextWord return Class;-- 0x2e
   function SelectPreviousWord return Class;-- 0x2f
   function SelectNextLine return Class;-- 0x30
   function SelectPreviousLine return Class;-- 0x31
   function SelectNextPage return Class;-- 0x32
   function SelectPreviousPage return Class;-- 0x33
   function SelectStartOfLine return Class;-- 0x34
   function SelectEndOfLine return Class;-- 0x35
   function SelectStartOfBlock return Class;-- 0x36
   function SelectEndOfBlock return Class;-- 0x37
   function SelectStartOfDocument return Class;-- 0x38
   function SelectEndOfDocument return Class;-- 0x39
   function DeleteStartOfWord return Class;-- 0x3a
   function DeleteEndOfWord return Class;-- 0x3b
   function DeleteEndOfLine return Class;-- 0x3c
   function InsertParagraphSeparator return Class;-- 0x3d
   function InsertLineSeparator return Class;-- 0x3e
   function SaveAs return Class;-- 0x3f
   function Preferences return Class;-- 0x40
   function Quit return Class;-- 0x41
   function FullScreen return Class;-- 0x42
   function Deselect return Class;-- 0x43
   function DeleteCompleteLine return Class;-- 0x44
   function Backspace return Class;-- 0x45
   function Cancel return Class;-- 0x46
end QtAda6.QtGui.QKeySequence.StandardKey;
