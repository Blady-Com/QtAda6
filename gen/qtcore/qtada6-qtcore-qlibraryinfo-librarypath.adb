-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qlibraryinfo-librarypath.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Py; use Py;
with Ada.Unchecked_Deallocation;
package body QtAda6.QtCore.QLibraryInfo.LibraryPath is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function PrefixPath return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLibraryInfo");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PrefixPath"));
   end PrefixPath;
   function DocumentationPath return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLibraryInfo");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "DocumentationPath"));
   end DocumentationPath;
   function HeadersPath return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLibraryInfo");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "HeadersPath"));
   end HeadersPath;
   function LibrariesPath return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLibraryInfo");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "LibrariesPath"));
   end LibrariesPath;
   function LibraryExecutablesPath return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLibraryInfo");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "LibraryExecutablesPath"));
   end LibraryExecutablesPath;
   function BinariesPath return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLibraryInfo");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "BinariesPath"));
   end BinariesPath;
   function PluginsPath return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLibraryInfo");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PluginsPath"));
   end PluginsPath;
   function Qml2ImportsPath return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLibraryInfo");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Qml2ImportsPath"));
   end Qml2ImportsPath;
   function QmlImportsPath return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLibraryInfo");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "QmlImportsPath"));
   end QmlImportsPath;
   function ArchDataPath return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLibraryInfo");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ArchDataPath"));
   end ArchDataPath;
   function DataPath return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLibraryInfo");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "DataPath"));
   end DataPath;
   function TranslationsPath return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLibraryInfo");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "TranslationsPath"));
   end TranslationsPath;
   function ExamplesPath return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLibraryInfo");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ExamplesPath"));
   end ExamplesPath;
   function TestsPath return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLibraryInfo");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "TestsPath"));
   end TestsPath;
   function SettingsPath return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLibraryInfo");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SettingsPath"));
   end SettingsPath;
end QtAda6.QtCore.QLibraryInfo.LibraryPath;
