-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qcborvalue-type_k.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Enum;
package QtAda6.QtCore.QCborValue.Type_K is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Enum.Inst with null record;
   procedure Finalize (Self : in out Class);
   Invalid           : QCborValue.Type_K.Class;-- -0x1
   Integer           : QCborValue.Type_K.Class;-- 0x0
   ByteArray         : QCborValue.Type_K.Class;-- 0x40
   String            : QCborValue.Type_K.Class;-- 0x60
   Array_K           : QCborValue.Type_K.Class;-- 0x80
   Map               : QCborValue.Type_K.Class;-- 0xa0
   Tag               : QCborValue.Type_K.Class;-- 0xc0
   SimpleType        : QCborValue.Type_K.Class;-- 0x100
   False_U           : QCborValue.Type_K.Class;-- 0x114
   True_U            : QCborValue.Type_K.Class;-- 0x115
   Null_K            : QCborValue.Type_K.Class;-- 0x116
   Undefined         : QCborValue.Type_K.Class;-- 0x117
   Double            : QCborValue.Type_K.Class;-- 0x202
   DateTime          : QCborValue.Type_K.Class;-- 0x10000
   Url               : QCborValue.Type_K.Class;-- 0x10020
   RegularExpression : QCborValue.Type_K.Class;-- 0x10023
   Uuid              : QCborValue.Type_K.Class;-- 0x10025
end QtAda6.QtCore.QCborValue.Type_K;
