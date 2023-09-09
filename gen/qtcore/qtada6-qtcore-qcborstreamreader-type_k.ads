-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qcborstreamreader-type_k.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Enum;
package QtAda6.QtCore.QCborStreamReader.Type_K is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Enum.Inst with null record;
   procedure Finalize (Self : in out Class);
   UnsignedInteger : QCborStreamReader.Type_K.Class;-- 0x0
   NegativeInteger : QCborStreamReader.Type_K.Class;-- 0x20
   ByteArray       : QCborStreamReader.Type_K.Class;-- 0x40
   ByteString      : QCborStreamReader.Type_K.Class;-- 0x40
   String          : QCborStreamReader.Type_K.Class;-- 0x60
   TextString      : QCborStreamReader.Type_K.Class;-- 0x60
   Array_K         : QCborStreamReader.Type_K.Class;-- 0x80
   Map             : QCborStreamReader.Type_K.Class;-- 0xa0
   Tag             : QCborStreamReader.Type_K.Class;-- 0xc0
   SimpleType      : QCborStreamReader.Type_K.Class;-- 0xe0
   Float16         : QCborStreamReader.Type_K.Class;-- 0xf9
   HalfFloat       : QCborStreamReader.Type_K.Class;-- 0xf9
   Float           : QCborStreamReader.Type_K.Class;-- 0xfa
   Double          : QCborStreamReader.Type_K.Class;-- 0xfb
   Invalid         : QCborStreamReader.Type_K.Class;-- 0xff
end QtAda6.QtCore.QCborStreamReader.Type_K;
