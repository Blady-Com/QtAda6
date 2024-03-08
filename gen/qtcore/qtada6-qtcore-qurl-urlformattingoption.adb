-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qurl-urlformattingoption.adb
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
package body QtAda6.QtCore.QUrl.UrlFormattingOption is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function None_U return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QUrl");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "None_"));
   end None_U;
   function RemoveScheme return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QUrl");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "RemoveScheme"));
   end RemoveScheme;
   function RemovePassword return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QUrl");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "RemovePassword"));
   end RemovePassword;
   function RemoveUserInfo return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QUrl");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "RemoveUserInfo"));
   end RemoveUserInfo;
   function RemovePort return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QUrl");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "RemovePort"));
   end RemovePort;
   function RemoveAuthority return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QUrl");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "RemoveAuthority"));
   end RemoveAuthority;
   function RemovePath return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QUrl");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "RemovePath"));
   end RemovePath;
   function RemoveQuery return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QUrl");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "RemoveQuery"));
   end RemoveQuery;
   function RemoveFragment return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QUrl");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "RemoveFragment"));
   end RemoveFragment;
   function PreferLocalFile return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QUrl");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PreferLocalFile"));
   end PreferLocalFile;
   function StripTrailingSlash return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QUrl");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "StripTrailingSlash"));
   end StripTrailingSlash;
   function RemoveFilename return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QUrl");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "RemoveFilename"));
   end RemoveFilename;
   function NormalizePathSegments return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QUrl");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "NormalizePathSegments"));
   end NormalizePathSegments;
end QtAda6.QtCore.QUrl.UrlFormattingOption;
