-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qsystemsemaphore-systemsemaphoreerror.adb
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
package body QtAda6.QtCore.QSystemSemaphore.SystemSemaphoreError is
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
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QSystemSemaphore");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "NoError"));
   end NoError;
   function PermissionDenied return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QSystemSemaphore");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PermissionDenied"));
   end PermissionDenied;
   function KeyError return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QSystemSemaphore");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "KeyError"));
   end KeyError;
   function AlreadyExists return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QSystemSemaphore");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "AlreadyExists"));
   end AlreadyExists;
   function NotFound return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QSystemSemaphore");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "NotFound"));
   end NotFound;
   function OutOfResources return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QSystemSemaphore");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "OutOfResources"));
   end OutOfResources;
   function UnknownError return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QSystemSemaphore");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "UnknownError"));
   end UnknownError;
end QtAda6.QtCore.QSystemSemaphore.SystemSemaphoreError;
