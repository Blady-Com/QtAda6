-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-quuid-version.adb
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
package body QtAda6.QtCore.QUuid.Version is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function VerUnknown return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QUuid");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Version");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "VerUnknown"));
   end VerUnknown;
   function Time return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QUuid");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Version");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Time"));
   end Time;
   function EmbeddedPOSIX return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QUuid");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Version");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "EmbeddedPOSIX"));
   end EmbeddedPOSIX;
   function Md5 return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QUuid");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Version");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Md5"));
   end Md5;
   function Name return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QUuid");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Version");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Name"));
   end Name;
   function Random return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QUuid");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Version");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Random"));
   end Random;
   function Sha1 return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QUuid");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Version");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Sha1"));
   end Sha1;
end QtAda6.QtCore.QUuid.Version;
