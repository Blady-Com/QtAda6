-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qjsonparseerror-parseerror.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtCore.QJsonParseError.ParseError is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.Enum with null record;
   procedure Finalize (Self : in out Class);
   function NoError return Class;-- 0x0
   function UnterminatedObject return Class;-- 0x1
   function MissingNameSeparator return Class;-- 0x2
   function UnterminatedArray return Class;-- 0x3
   function MissingValueSeparator return Class;-- 0x4
   function IllegalValue return Class;-- 0x5
   function TerminationByNumber return Class;-- 0x6
   function IllegalNumber return Class;-- 0x7
   function IllegalEscapeSequence return Class;-- 0x8
   function IllegalUTF8String return Class;-- 0x9
   function UnterminatedString return Class;-- 0xa
   function MissingObject return Class;-- 0xb
   function DeepNesting return Class;-- 0xc
   function DocumentTooLarge return Class;-- 0xd
   function GarbageAtEnd return Class;-- 0xe
end QtAda6.QtCore.QJsonParseError.ParseError;
