-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qcborsimpletype.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Enum;
package QtAda6.QtCore.QCborSimpleType is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Enum.Inst with null record;
   procedure Finalize (Self : in out Class);
   False_U   : QCborSimpleType.Class;-- 0x14
   True_U    : QCborSimpleType.Class;-- 0x15
   Null_K    : QCborSimpleType.Class;-- 0x16
   Undefined : QCborSimpleType.Class;-- 0x17
end QtAda6.QtCore.QCborSimpleType;
