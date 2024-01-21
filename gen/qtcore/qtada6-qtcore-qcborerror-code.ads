-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qcborerror-code.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtCore.QCborError.Code is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.Enum with null record;
   procedure Finalize (Self : in out Class);
   function NoError return Class;-- 0x0
   function UnknownError return Class;-- 0x1
   function AdvancePastEnd return Class;-- 0x3
   function InputOutputError return Class;-- 0x4
   function GarbageAtEnd return Class;-- 0x100
   function EndOfFile return Class;-- 0x101
   function UnexpectedBreak return Class;-- 0x102
   function UnknownType return Class;-- 0x103
   function IllegalType return Class;-- 0x104
   function IllegalNumber return Class;-- 0x105
   function IllegalSimpleType return Class;-- 0x106
   function InvalidUtf8String return Class;-- 0x204
   function DataTooLarge return Class;-- 0x400
   function NestingTooDeep return Class;-- 0x401
   function UnsupportedType return Class;-- 0x402
end QtAda6.QtCore.QCborError.Code;
