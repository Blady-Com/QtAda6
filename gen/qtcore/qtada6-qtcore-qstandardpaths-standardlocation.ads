-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qstandardpaths-standardlocation.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtCore.QStandardPaths.StandardLocation is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.Enum with null record;
   procedure Finalize (Self : in out Class);
   function DesktopLocation return Class;-- 0x0
   function DocumentsLocation return Class;-- 0x1
   function FontsLocation return Class;-- 0x2
   function ApplicationsLocation return Class;-- 0x3
   function MusicLocation return Class;-- 0x4
   function MoviesLocation return Class;-- 0x5
   function PicturesLocation return Class;-- 0x6
   function TempLocation return Class;-- 0x7
   function HomeLocation return Class;-- 0x8
   function AppLocalDataLocation return Class;-- 0x9
   function CacheLocation return Class;-- 0xa
   function GenericDataLocation return Class;-- 0xb
   function RuntimeLocation return Class;-- 0xc
   function ConfigLocation return Class;-- 0xd
   function DownloadLocation return Class;-- 0xe
   function GenericCacheLocation return Class;-- 0xf
   function GenericConfigLocation return Class;-- 0x10
   function AppDataLocation return Class;-- 0x11
   function AppConfigLocation return Class;-- 0x12
   function PublicShareLocation return Class;-- 0x13
   function TemplatesLocation return Class;-- 0x14
end QtAda6.QtCore.QStandardPaths.StandardLocation;
