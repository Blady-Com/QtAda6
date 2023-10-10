-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qtextcursor-moveoperation.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Enum;
package QtAda6.QtGui.QTextCursor.MoveOperation is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Enum.Inst with null record;
   procedure Finalize (Self : in out Class);
   NoMove            : QTextCursor.MoveOperation.Class;-- 0x0
   Start             : QTextCursor.MoveOperation.Class;-- 0x1
   Up                : QTextCursor.MoveOperation.Class;-- 0x2
   StartOfLine       : QTextCursor.MoveOperation.Class;-- 0x3
   StartOfBlock      : QTextCursor.MoveOperation.Class;-- 0x4
   StartOfWord       : QTextCursor.MoveOperation.Class;-- 0x5
   PreviousBlock     : QTextCursor.MoveOperation.Class;-- 0x6
   PreviousCharacter : QTextCursor.MoveOperation.Class;-- 0x7
   PreviousWord      : QTextCursor.MoveOperation.Class;-- 0x8
   Left              : QTextCursor.MoveOperation.Class;-- 0x9
   WordLeft          : QTextCursor.MoveOperation.Class;-- 0xa
   End_K             : QTextCursor.MoveOperation.Class;-- 0xb
   Down              : QTextCursor.MoveOperation.Class;-- 0xc
   EndOfLine         : QTextCursor.MoveOperation.Class;-- 0xd
   EndOfWord         : QTextCursor.MoveOperation.Class;-- 0xe
   EndOfBlock        : QTextCursor.MoveOperation.Class;-- 0xf
   NextBlock         : QTextCursor.MoveOperation.Class;-- 0x10
   NextCharacter     : QTextCursor.MoveOperation.Class;-- 0x11
   NextWord          : QTextCursor.MoveOperation.Class;-- 0x12
   Right             : QTextCursor.MoveOperation.Class;-- 0x13
   WordRight         : QTextCursor.MoveOperation.Class;-- 0x14
   NextCell          : QTextCursor.MoveOperation.Class;-- 0x15
   PreviousCell      : QTextCursor.MoveOperation.Class;-- 0x16
   NextRow           : QTextCursor.MoveOperation.Class;-- 0x17
   PreviousRow       : QTextCursor.MoveOperation.Class;-- 0x18
end QtAda6.QtGui.QTextCursor.MoveOperation;
