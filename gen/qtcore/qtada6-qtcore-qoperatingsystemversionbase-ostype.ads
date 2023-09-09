-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qoperatingsystemversionbase-ostype.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Enum;
package QtAda6.QtCore.QOperatingSystemVersionBase.OSType is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Enum.Inst with null record;
   procedure Finalize (Self : in out Class);
   Unknown : QOperatingSystemVersionBase.OSType.Class;-- 0x0
   Windows : QOperatingSystemVersionBase.OSType.Class;-- 0x1
   MacOS   : QOperatingSystemVersionBase.OSType.Class;-- 0x2
   IOS     : QOperatingSystemVersionBase.OSType.Class;-- 0x3
   TvOS    : QOperatingSystemVersionBase.OSType.Class;-- 0x4
   WatchOS : QOperatingSystemVersionBase.OSType.Class;-- 0x5
   Android : QOperatingSystemVersionBase.OSType.Class;-- 0x6
end QtAda6.QtCore.QOperatingSystemVersionBase.OSType;
