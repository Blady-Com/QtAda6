-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qtextcursor-moveoperation.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtGui.QTextCursor.MoveOperation is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.Enum with null record;
   procedure Finalize (Self : in out Class);
   function NoMove return Class;-- 0x0
   function Start return Class;-- 0x1
   function Up return Class;-- 0x2
   function StartOfLine return Class;-- 0x3
   function StartOfBlock return Class;-- 0x4
   function StartOfWord return Class;-- 0x5
   function PreviousBlock return Class;-- 0x6
   function PreviousCharacter return Class;-- 0x7
   function PreviousWord return Class;-- 0x8
   function Left return Class;-- 0x9
   function WordLeft return Class;-- 0xa
   function End_K return Class;-- 0xb
   function Down return Class;-- 0xc
   function EndOfLine return Class;-- 0xd
   function EndOfWord return Class;-- 0xe
   function EndOfBlock return Class;-- 0xf
   function NextBlock return Class;-- 0x10
   function NextCharacter return Class;-- 0x11
   function NextWord return Class;-- 0x12
   function Right return Class;-- 0x13
   function WordRight return Class;-- 0x14
   function NextCell return Class;-- 0x15
   function PreviousCell return Class;-- 0x16
   function NextRow return Class;-- 0x17
   function PreviousRow return Class;-- 0x18
end QtAda6.QtGui.QTextCursor.MoveOperation;
