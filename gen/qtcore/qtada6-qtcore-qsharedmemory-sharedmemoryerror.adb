-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qsharedmemory-sharedmemoryerror.adb
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
package body QtAda6.QtCore.QSharedMemory.SharedMemoryError is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function NoError return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QSharedMemory");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SharedMemoryError");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "NoError"));
   end NoError;
   function PermissionDenied return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QSharedMemory");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SharedMemoryError");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PermissionDenied"));
   end PermissionDenied;
   function InvalidSize return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QSharedMemory");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SharedMemoryError");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "InvalidSize"));
   end InvalidSize;
   function KeyError return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QSharedMemory");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SharedMemoryError");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "KeyError"));
   end KeyError;
   function AlreadyExists return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QSharedMemory");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SharedMemoryError");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "AlreadyExists"));
   end AlreadyExists;
   function NotFound return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QSharedMemory");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SharedMemoryError");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "NotFound"));
   end NotFound;
   function LockError return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QSharedMemory");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SharedMemoryError");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "LockError"));
   end LockError;
   function OutOfResources return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QSharedMemory");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SharedMemoryError");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "OutOfResources"));
   end OutOfResources;
   function UnknownError return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QSharedMemory");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SharedMemoryError");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "UnknownError"));
   end UnknownError;
end QtAda6.QtCore.QSharedMemory.SharedMemoryError;
