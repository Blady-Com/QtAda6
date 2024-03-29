-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qfiledevice-fileerror.adb
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
package body QtAda6.QtCore.QFileDevice.FileError is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function NoError return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QFileDevice");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "NoError"));
   end NoError;
   function ReadError return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QFileDevice");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ReadError"));
   end ReadError;
   function WriteError return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QFileDevice");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WriteError"));
   end WriteError;
   function FatalError return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QFileDevice");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "FatalError"));
   end FatalError;
   function ResourceError return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QFileDevice");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ResourceError"));
   end ResourceError;
   function OpenError return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QFileDevice");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "OpenError"));
   end OpenError;
   function AbortError return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QFileDevice");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "AbortError"));
   end AbortError;
   function TimeOutError return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QFileDevice");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "TimeOutError"));
   end TimeOutError;
   function UnspecifiedError return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QFileDevice");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "UnspecifiedError"));
   end UnspecifiedError;
   function RemoveError return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QFileDevice");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "RemoveError"));
   end RemoveError;
   function RenameError return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QFileDevice");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "RenameError"));
   end RenameError;
   function PositionError return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QFileDevice");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PositionError"));
   end PositionError;
   function ResizeError return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QFileDevice");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ResizeError"));
   end ResizeError;
   function PermissionsError return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QFileDevice");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PermissionsError"));
   end PermissionsError;
   function CopyError return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QFileDevice");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "CopyError"));
   end CopyError;
end QtAda6.QtCore.QFileDevice.FileError;
