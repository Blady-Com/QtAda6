-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qdatastream-version.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.IntEnum;
package QtAda6.QtCore.QDataStream.Version is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.IntEnum.Inst with null record;
   procedure Finalize (Self : in out Class);
   Qt_1_0                    : QDataStream.Version.Class;-- 0x1
   Qt_2_0                    : QDataStream.Version.Class;-- 0x2
   Qt_2_1                    : QDataStream.Version.Class;-- 0x3
   Qt_3_0                    : QDataStream.Version.Class;-- 0x4
   Qt_3_1                    : QDataStream.Version.Class;-- 0x5
   Qt_3_3                    : QDataStream.Version.Class;-- 0x6
   Qt_4_0                    : QDataStream.Version.Class;-- 0x7
   Qt_4_1                    : QDataStream.Version.Class;-- 0x7
   Qt_4_2                    : QDataStream.Version.Class;-- 0x8
   Qt_4_3                    : QDataStream.Version.Class;-- 0x9
   Qt_4_4                    : QDataStream.Version.Class;-- 0xa
   Qt_4_5                    : QDataStream.Version.Class;-- 0xb
   Qt_4_6                    : QDataStream.Version.Class;-- 0xc
   Qt_4_7                    : QDataStream.Version.Class;-- 0xc
   Qt_4_8                    : QDataStream.Version.Class;-- 0xc
   Qt_4_9                    : QDataStream.Version.Class;-- 0xc
   Qt_5_0                    : QDataStream.Version.Class;-- 0xd
   Qt_5_1                    : QDataStream.Version.Class;-- 0xe
   Qt_5_2                    : QDataStream.Version.Class;-- 0xf
   Qt_5_3                    : QDataStream.Version.Class;-- 0xf
   Qt_5_4                    : QDataStream.Version.Class;-- 0x10
   Qt_5_5                    : QDataStream.Version.Class;-- 0x10
   Qt_5_10                   : QDataStream.Version.Class;-- 0x11
   Qt_5_11                   : QDataStream.Version.Class;-- 0x11
   Qt_5_6                    : QDataStream.Version.Class;-- 0x11
   Qt_5_7                    : QDataStream.Version.Class;-- 0x11
   Qt_5_8                    : QDataStream.Version.Class;-- 0x11
   Qt_5_9                    : QDataStream.Version.Class;-- 0x11
   Qt_5_12                   : QDataStream.Version.Class;-- 0x12
   Qt_5_13                   : QDataStream.Version.Class;-- 0x13
   Qt_5_14                   : QDataStream.Version.Class;-- 0x13
   Qt_5_15                   : QDataStream.Version.Class;-- 0x13
   Qt_6_0                    : QDataStream.Version.Class;-- 0x14
   Qt_6_1                    : QDataStream.Version.Class;-- 0x14
   Qt_6_2                    : QDataStream.Version.Class;-- 0x14
   Qt_6_3                    : QDataStream.Version.Class;-- 0x14
   Qt_6_4                    : QDataStream.Version.Class;-- 0x14
   Qt_6_5                    : QDataStream.Version.Class;-- 0x14
   Qt_DefaultCompiledVersion : QDataStream.Version.Class;-- 0x14
end QtAda6.QtCore.QDataStream.Version;
