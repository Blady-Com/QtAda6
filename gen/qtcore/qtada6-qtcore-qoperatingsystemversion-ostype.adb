-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qoperatingsystemversion-ostype.adb
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
package body QtAda6.QtCore.QOperatingSystemVersion.OSType is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Unknown return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QOperatingSystemVersion");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Unknown"));
   end Unknown;
   function Windows return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QOperatingSystemVersion");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Windows"));
   end Windows;
   function MacOS return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QOperatingSystemVersion");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "MacOS"));
   end MacOS;
   function IOS return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QOperatingSystemVersion");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "IOS"));
   end IOS;
   function TvOS return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QOperatingSystemVersion");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "TvOS"));
   end TvOS;
   function WatchOS return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QOperatingSystemVersion");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WatchOS"));
   end WatchOS;
   function Android return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QOperatingSystemVersion");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Android"));
   end Android;
end QtAda6.QtCore.QOperatingSystemVersion.OSType;
