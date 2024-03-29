-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qstandardpaths-standardlocation.adb
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
package body QtAda6.QtCore.QStandardPaths.StandardLocation is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function DesktopLocation return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QStandardPaths");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "DesktopLocation"));
   end DesktopLocation;
   function DocumentsLocation return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QStandardPaths");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "DocumentsLocation"));
   end DocumentsLocation;
   function FontsLocation return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QStandardPaths");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "FontsLocation"));
   end FontsLocation;
   function ApplicationsLocation return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QStandardPaths");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ApplicationsLocation"));
   end ApplicationsLocation;
   function MusicLocation return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QStandardPaths");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "MusicLocation"));
   end MusicLocation;
   function MoviesLocation return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QStandardPaths");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "MoviesLocation"));
   end MoviesLocation;
   function PicturesLocation return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QStandardPaths");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PicturesLocation"));
   end PicturesLocation;
   function TempLocation return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QStandardPaths");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "TempLocation"));
   end TempLocation;
   function HomeLocation return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QStandardPaths");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "HomeLocation"));
   end HomeLocation;
   function AppLocalDataLocation return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QStandardPaths");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "AppLocalDataLocation"));
   end AppLocalDataLocation;
   function CacheLocation return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QStandardPaths");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "CacheLocation"));
   end CacheLocation;
   function GenericDataLocation return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QStandardPaths");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "GenericDataLocation"));
   end GenericDataLocation;
   function RuntimeLocation return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QStandardPaths");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "RuntimeLocation"));
   end RuntimeLocation;
   function ConfigLocation return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QStandardPaths");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ConfigLocation"));
   end ConfigLocation;
   function DownloadLocation return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QStandardPaths");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "DownloadLocation"));
   end DownloadLocation;
   function GenericCacheLocation return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QStandardPaths");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "GenericCacheLocation"));
   end GenericCacheLocation;
   function GenericConfigLocation return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QStandardPaths");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "GenericConfigLocation"));
   end GenericConfigLocation;
   function AppDataLocation return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QStandardPaths");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "AppDataLocation"));
   end AppDataLocation;
   function AppConfigLocation return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QStandardPaths");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "AppConfigLocation"));
   end AppConfigLocation;
   function PublicShareLocation return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QStandardPaths");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PublicShareLocation"));
   end PublicShareLocation;
   function TemplatesLocation return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QStandardPaths");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "TemplatesLocation"));
   end TemplatesLocation;
end QtAda6.QtCore.QStandardPaths.StandardLocation;
