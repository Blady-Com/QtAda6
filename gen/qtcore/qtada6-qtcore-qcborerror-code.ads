-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qcborerror-code.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Enum;
package QtAda6.QtCore.QCborError.Code is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Enum.Inst with null record;
   procedure Finalize (Self : in out Class);
   NoError           : QCborError.Code.Class;-- 0x0
   UnknownError      : QCborError.Code.Class;-- 0x1
   AdvancePastEnd    : QCborError.Code.Class;-- 0x3
   InputOutputError  : QCborError.Code.Class;-- 0x4
   GarbageAtEnd      : QCborError.Code.Class;-- 0x100
   EndOfFile         : QCborError.Code.Class;-- 0x101
   UnexpectedBreak   : QCborError.Code.Class;-- 0x102
   UnknownType       : QCborError.Code.Class;-- 0x103
   IllegalType       : QCborError.Code.Class;-- 0x104
   IllegalNumber     : QCborError.Code.Class;-- 0x105
   IllegalSimpleType : QCborError.Code.Class;-- 0x106
   InvalidUtf8String : QCborError.Code.Class;-- 0x204
   DataTooLarge      : QCborError.Code.Class;-- 0x400
   NestingTooDeep    : QCborError.Code.Class;-- 0x401
   UnsupportedType   : QCborError.Code.Class;-- 0x402
end QtAda6.QtCore.QCborError.Code;
