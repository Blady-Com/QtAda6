-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qjsonparseerror-parseerror.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Enum;
package QtAda6.QtCore.QJsonParseError.ParseError is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Enum.Inst with null record;
   procedure Finalize (Self : in out Class);
   NoError               : QJsonParseError.ParseError.Class;-- 0x0
   UnterminatedObject    : QJsonParseError.ParseError.Class;-- 0x1
   MissingNameSeparator  : QJsonParseError.ParseError.Class;-- 0x2
   UnterminatedArray     : QJsonParseError.ParseError.Class;-- 0x3
   MissingValueSeparator : QJsonParseError.ParseError.Class;-- 0x4
   IllegalValue          : QJsonParseError.ParseError.Class;-- 0x5
   TerminationByNumber   : QJsonParseError.ParseError.Class;-- 0x6
   IllegalNumber         : QJsonParseError.ParseError.Class;-- 0x7
   IllegalEscapeSequence : QJsonParseError.ParseError.Class;-- 0x8
   IllegalUTF8String     : QJsonParseError.ParseError.Class;-- 0x9
   UnterminatedString    : QJsonParseError.ParseError.Class;-- 0xa
   MissingObject         : QJsonParseError.ParseError.Class;-- 0xb
   DeepNesting           : QJsonParseError.ParseError.Class;-- 0xc
   DocumentTooLarge      : QJsonParseError.ParseError.Class;-- 0xd
   GarbageAtEnd          : QJsonParseError.ParseError.Class;-- 0xe
end QtAda6.QtCore.QJsonParseError.ParseError;
