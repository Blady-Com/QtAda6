-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qjsonvalue-type_k.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Enum;
package QtAda6.QtCore.QJsonValue.Type_K is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Enum.Inst with null record;
   procedure Finalize (Self : in out Class);
   Null_K    : QJsonValue.Type_K.Class;-- 0x0
   Bool      : QJsonValue.Type_K.Class;-- 0x1
   Double    : QJsonValue.Type_K.Class;-- 0x2
   String    : QJsonValue.Type_K.Class;-- 0x3
   Array_K   : QJsonValue.Type_K.Class;-- 0x4
   Object    : QJsonValue.Type_K.Class;-- 0x5
   Undefined : QJsonValue.Type_K.Class;-- 0x80
end QtAda6.QtCore.QJsonValue.Type_K;
