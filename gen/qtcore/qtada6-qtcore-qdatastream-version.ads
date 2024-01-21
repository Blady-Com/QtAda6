-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qdatastream-version.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtCore.QDataStream.Version is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.IntEnum with null record;
   procedure Finalize (Self : in out Class);
   function Qt_1_0 return Class;-- 0x1
   function Qt_2_0 return Class;-- 0x2
   function Qt_2_1 return Class;-- 0x3
   function Qt_3_0 return Class;-- 0x4
   function Qt_3_1 return Class;-- 0x5
   function Qt_3_3 return Class;-- 0x6
   function Qt_4_0 return Class;-- 0x7
   function Qt_4_1 return Class;-- 0x7
   function Qt_4_2 return Class;-- 0x8
   function Qt_4_3 return Class;-- 0x9
   function Qt_4_4 return Class;-- 0xa
   function Qt_4_5 return Class;-- 0xb
   function Qt_4_6 return Class;-- 0xc
   function Qt_4_7 return Class;-- 0xc
   function Qt_4_8 return Class;-- 0xc
   function Qt_4_9 return Class;-- 0xc
   function Qt_5_0 return Class;-- 0xd
   function Qt_5_1 return Class;-- 0xe
   function Qt_5_2 return Class;-- 0xf
   function Qt_5_3 return Class;-- 0xf
   function Qt_5_4 return Class;-- 0x10
   function Qt_5_5 return Class;-- 0x10
   function Qt_5_10 return Class;-- 0x11
   function Qt_5_11 return Class;-- 0x11
   function Qt_5_6 return Class;-- 0x11
   function Qt_5_7 return Class;-- 0x11
   function Qt_5_8 return Class;-- 0x11
   function Qt_5_9 return Class;-- 0x11
   function Qt_5_12 return Class;-- 0x12
   function Qt_5_13 return Class;-- 0x13
   function Qt_5_14 return Class;-- 0x13
   function Qt_5_15 return Class;-- 0x13
   function Qt_6_0 return Class;-- 0x14
   function Qt_6_1 return Class;-- 0x14
   function Qt_6_2 return Class;-- 0x14
   function Qt_6_3 return Class;-- 0x14
   function Qt_6_4 return Class;-- 0x14
   function Qt_6_5 return Class;-- 0x14
   function Qt_DefaultCompiledVersion return Class;-- 0x14
end QtAda6.QtCore.QDataStream.Version;
