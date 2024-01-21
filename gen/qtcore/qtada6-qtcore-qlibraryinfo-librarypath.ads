-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qlibraryinfo-librarypath.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtCore.QLibraryInfo.LibraryPath is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.Enum with null record;
   procedure Finalize (Self : in out Class);
   function PrefixPath return Class;-- 0x0
   function DocumentationPath return Class;-- 0x1
   function HeadersPath return Class;-- 0x2
   function LibrariesPath return Class;-- 0x3
   function LibraryExecutablesPath return Class;-- 0x4
   function BinariesPath return Class;-- 0x5
   function PluginsPath return Class;-- 0x6
   function Qml2ImportsPath return Class;-- 0x7
   function QmlImportsPath return Class;-- 0x7
   function ArchDataPath return Class;-- 0x8
   function DataPath return Class;-- 0x9
   function TranslationsPath return Class;-- 0xa
   function ExamplesPath return Class;-- 0xb
   function TestsPath return Class;-- 0xc
   function SettingsPath return Class;-- 0x64
end QtAda6.QtCore.QLibraryInfo.LibraryPath;
