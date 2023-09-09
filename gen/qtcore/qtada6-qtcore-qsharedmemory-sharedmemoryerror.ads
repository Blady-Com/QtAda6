-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qsharedmemory-sharedmemoryerror.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Enum;
package QtAda6.QtCore.QSharedMemory.SharedMemoryError is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Enum.Inst with null record;
   procedure Finalize (Self : in out Class);
   NoError          : QSharedMemory.SharedMemoryError.Class;-- 0x0
   PermissionDenied : QSharedMemory.SharedMemoryError.Class;-- 0x1
   InvalidSize      : QSharedMemory.SharedMemoryError.Class;-- 0x2
   KeyError         : QSharedMemory.SharedMemoryError.Class;-- 0x3
   AlreadyExists    : QSharedMemory.SharedMemoryError.Class;-- 0x4
   NotFound         : QSharedMemory.SharedMemoryError.Class;-- 0x5
   LockError        : QSharedMemory.SharedMemoryError.Class;-- 0x6
   OutOfResources   : QSharedMemory.SharedMemoryError.Class;-- 0x7
   UnknownError     : QSharedMemory.SharedMemoryError.Class;-- 0x8
end QtAda6.QtCore.QSharedMemory.SharedMemoryError;
