-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qcborstreamreader-type_k.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtCore.QCborStreamReader.Type_K is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.Enum with null record;
   procedure Finalize (Self : in out Class);
   function UnsignedInteger return Class;-- 0x0
   function NegativeInteger return Class;-- 0x20
   function ByteArray return Class;-- 0x40
   function ByteString return Class;-- 0x40
   function String return Class;-- 0x60
   function TextString return Class;-- 0x60
   function Array_K return Class;-- 0x80
   function Map return Class;-- 0xa0
   function Tag return Class;-- 0xc0
   function SimpleType return Class;-- 0xe0
   function Float16 return Class;-- 0xf9
   function HalfFloat return Class;-- 0xf9
   function Float return Class;-- 0xfa
   function Double return Class;-- 0xfb
   function Invalid return Class;-- 0xff
end QtAda6.QtCore.QCborStreamReader.Type_K;
