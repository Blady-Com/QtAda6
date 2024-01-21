-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qcborvalue-type_k.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtCore.QCborValue.Type_K is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.Enum with null record;
   procedure Finalize (Self : in out Class);
   function Invalid return Class;-- -0x1
   function Integer return Class;-- 0x0
   function ByteArray return Class;-- 0x40
   function String return Class;-- 0x60
   function Array_K return Class;-- 0x80
   function Map return Class;-- 0xa0
   function Tag return Class;-- 0xc0
   function SimpleType return Class;-- 0x100
   function False_U return Class;-- 0x114
   function True_U return Class;-- 0x115
   function Null_K return Class;-- 0x116
   function Undefined return Class;-- 0x117
   function Double return Class;-- 0x202
   function DateTime return Class;-- 0x10000
   function Url return Class;-- 0x10020
   function RegularExpression return Class;-- 0x10023
   function Uuid return Class;-- 0x10025
end QtAda6.QtCore.QCborValue.Type_K;
