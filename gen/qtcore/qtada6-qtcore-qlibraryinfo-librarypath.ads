-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qlibraryinfo-librarypath.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Enum;
package QtAda6.QtCore.QLibraryInfo.LibraryPath is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Enum.Inst with null record;
   procedure Finalize (Self : in out Class);
   PrefixPath             : QLibraryInfo.LibraryPath.Class;-- 0x0
   DocumentationPath      : QLibraryInfo.LibraryPath.Class;-- 0x1
   HeadersPath            : QLibraryInfo.LibraryPath.Class;-- 0x2
   LibrariesPath          : QLibraryInfo.LibraryPath.Class;-- 0x3
   LibraryExecutablesPath : QLibraryInfo.LibraryPath.Class;-- 0x4
   BinariesPath           : QLibraryInfo.LibraryPath.Class;-- 0x5
   PluginsPath            : QLibraryInfo.LibraryPath.Class;-- 0x6
   Qml2ImportsPath        : QLibraryInfo.LibraryPath.Class;-- 0x7
   QmlImportsPath         : QLibraryInfo.LibraryPath.Class;-- 0x7
   ArchDataPath           : QLibraryInfo.LibraryPath.Class;-- 0x8
   DataPath               : QLibraryInfo.LibraryPath.Class;-- 0x9
   TranslationsPath       : QLibraryInfo.LibraryPath.Class;-- 0xa
   ExamplesPath           : QLibraryInfo.LibraryPath.Class;-- 0xb
   TestsPath              : QLibraryInfo.LibraryPath.Class;-- 0xc
   SettingsPath           : QLibraryInfo.LibraryPath.Class;-- 0x64
end QtAda6.QtCore.QLibraryInfo.LibraryPath;
