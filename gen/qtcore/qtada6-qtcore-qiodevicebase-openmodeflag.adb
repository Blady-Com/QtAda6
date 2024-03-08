-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qiodevicebase-openmodeflag.adb
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
package body QtAda6.QtCore.QIODeviceBase.OpenModeFlag is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function NotOpen return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QIODeviceBase");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "NotOpen"));
   end NotOpen;
   function ReadOnly return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QIODeviceBase");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ReadOnly"));
   end ReadOnly;
   function WriteOnly return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QIODeviceBase");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WriteOnly"));
   end WriteOnly;
   function ReadWrite return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QIODeviceBase");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ReadWrite"));
   end ReadWrite;
   function Append return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QIODeviceBase");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Append"));
   end Append;
   function Truncate return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QIODeviceBase");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Truncate"));
   end Truncate;
   function Text return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QIODeviceBase");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Text"));
   end Text;
   function Unbuffered return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QIODeviceBase");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Unbuffered"));
   end Unbuffered;
   function NewOnly return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QIODeviceBase");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "NewOnly"));
   end NewOnly;
   function ExistingOnly return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QIODeviceBase");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ExistingOnly"));
   end ExistingOnly;
end QtAda6.QtCore.QIODeviceBase.OpenModeFlag;
