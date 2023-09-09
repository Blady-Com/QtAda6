-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-quuid-version.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Enum;
package QtAda6.QtCore.QUuid.Version is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Enum.Inst with null record;
   procedure Finalize (Self : in out Class);
   VerUnknown    : QUuid.Version.Class;-- -0x1
   Time          : QUuid.Version.Class;-- 0x1
   EmbeddedPOSIX : QUuid.Version.Class;-- 0x2
   Md5           : QUuid.Version.Class;-- 0x3
   Name          : QUuid.Version.Class;-- 0x3
   Random        : QUuid.Version.Class;-- 0x4
   Sha1          : QUuid.Version.Class;-- 0x5
end QtAda6.QtCore.QUuid.Version;
