-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qjsonvalue-type_k.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtCore.QJsonValue.Type_K is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.Enum with null record;
   procedure Finalize (Self : in out Class);
   function Null_K return Class;-- 0x0
   function Bool return Class;-- 0x1
   function Double return Class;-- 0x2
   function String return Class;-- 0x3
   function Array_K return Class;-- 0x4
   function Object return Class;-- 0x5
   function Undefined return Class;-- 0x80
end QtAda6.QtCore.QJsonValue.Type_K;
