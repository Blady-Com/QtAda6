-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qstandardpaths-standardlocation.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Enum;
package QtAda6.QtCore.QStandardPaths.StandardLocation is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Enum.Inst with null record;
   procedure Finalize (Self : in out Class);
   DesktopLocation       : QStandardPaths.StandardLocation.Class;-- 0x0
   DocumentsLocation     : QStandardPaths.StandardLocation.Class;-- 0x1
   FontsLocation         : QStandardPaths.StandardLocation.Class;-- 0x2
   ApplicationsLocation  : QStandardPaths.StandardLocation.Class;-- 0x3
   MusicLocation         : QStandardPaths.StandardLocation.Class;-- 0x4
   MoviesLocation        : QStandardPaths.StandardLocation.Class;-- 0x5
   PicturesLocation      : QStandardPaths.StandardLocation.Class;-- 0x6
   TempLocation          : QStandardPaths.StandardLocation.Class;-- 0x7
   HomeLocation          : QStandardPaths.StandardLocation.Class;-- 0x8
   AppLocalDataLocation  : QStandardPaths.StandardLocation.Class;-- 0x9
   CacheLocation         : QStandardPaths.StandardLocation.Class;-- 0xa
   GenericDataLocation   : QStandardPaths.StandardLocation.Class;-- 0xb
   RuntimeLocation       : QStandardPaths.StandardLocation.Class;-- 0xc
   ConfigLocation        : QStandardPaths.StandardLocation.Class;-- 0xd
   DownloadLocation      : QStandardPaths.StandardLocation.Class;-- 0xe
   GenericCacheLocation  : QStandardPaths.StandardLocation.Class;-- 0xf
   GenericConfigLocation : QStandardPaths.StandardLocation.Class;-- 0x10
   AppDataLocation       : QStandardPaths.StandardLocation.Class;-- 0x11
   AppConfigLocation     : QStandardPaths.StandardLocation.Class;-- 0x12
   PublicShareLocation   : QStandardPaths.StandardLocation.Class;-- 0x13
   TemplatesLocation     : QStandardPaths.StandardLocation.Class;-- 0x14
end QtAda6.QtCore.QStandardPaths.StandardLocation;
