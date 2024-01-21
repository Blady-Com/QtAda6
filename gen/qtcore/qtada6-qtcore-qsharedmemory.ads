-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qsharedmemory.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QSharedMemory.AccessMode;
limited with QtAda6.QtCore.QSharedMemory.SharedMemoryError;
with QtAda6.QtCore.QObject;
package QtAda6.QtCore.QSharedMemory is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtCore.QObject.Inst with null record;
   procedure Finalize (Self : in out Class);
   function Create (key_P : str; parent_P : access QtAda6.QtCore.QObject.Inst'Class := null) return Class;
   function Create (parent_P : access QtAda6.QtCore.QObject.Inst'Class := null) return Class;
   function attach
     (self : access Inst; mode_P : access QtAda6.QtCore.QSharedMemory.AccessMode.Inst'Class := null) return bool;
   function constData (self : access Inst) return int;
   function create
     (self : access Inst; size_P : int; mode_P : access QtAda6.QtCore.QSharedMemory.AccessMode.Inst'Class := null)
      return bool;
   function data (self : access Inst) return int;
   function detach (self : access Inst) return bool;
   function error_F (self : access Inst) return access QtAda6.QtCore.QSharedMemory.SharedMemoryError.Inst'Class;
   function errorString (self : access Inst) return str;
   function isAttached (self : access Inst) return bool;
   function key (self : access Inst) return str;
   function lock (self : access Inst) return bool;
   function nativeKey (self : access Inst) return str;
   procedure setKey (self : access Inst; key_P : str);
   procedure setNativeKey (self : access Inst; key_P : str);
   function size (self : access Inst) return int;
   function unlock (self : access Inst) return bool;
end QtAda6.QtCore.QSharedMemory;
