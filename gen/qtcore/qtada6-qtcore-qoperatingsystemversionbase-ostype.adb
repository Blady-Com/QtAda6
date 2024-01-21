-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qoperatingsystemversionbase-ostype.adb
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
package body QtAda6.QtCore.QOperatingSystemVersionBase.OSType is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Unknown return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QOperatingSystemVersionBase");
      Enum_Class   := Object_GetAttrString (Parent_Class, "OSType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Unknown"));
   end Unknown;
   function Windows return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QOperatingSystemVersionBase");
      Enum_Class   := Object_GetAttrString (Parent_Class, "OSType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Windows"));
   end Windows;
   function MacOS return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QOperatingSystemVersionBase");
      Enum_Class   := Object_GetAttrString (Parent_Class, "OSType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "MacOS"));
   end MacOS;
   function IOS return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QOperatingSystemVersionBase");
      Enum_Class   := Object_GetAttrString (Parent_Class, "OSType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "IOS"));
   end IOS;
   function TvOS return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QOperatingSystemVersionBase");
      Enum_Class   := Object_GetAttrString (Parent_Class, "OSType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "TvOS"));
   end TvOS;
   function WatchOS return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QOperatingSystemVersionBase");
      Enum_Class   := Object_GetAttrString (Parent_Class, "OSType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "WatchOS"));
   end WatchOS;
   function Android return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QOperatingSystemVersionBase");
      Enum_Class   := Object_GetAttrString (Parent_Class, "OSType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Android"));
   end Android;
end QtAda6.QtCore.QOperatingSystemVersionBase.OSType;
