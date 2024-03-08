-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qfiledevice.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QObject;
limited with QtAda6.QtCore.QFileDevice.FileError;
limited with QtAda6.QtCore.QFileDevice.FileTime;
limited with QtAda6.QtCore.QDateTime;
limited with QtAda6.QtCore.QFileDevice.MemoryMapFlag;
limited with QtAda6.QtCore.QFileDevice.Permission;
with QtAda6.QtCore.QIODevice;
package QtAda6.QtCore.QFileDevice is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtCore.QIODevice.Inst with null record;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (parent_P : access QtAda6.QtCore.QObject.Inst'Class) return Class;
   function atEnd (self : access Inst) return bool;
   procedure close (self : access Inst);
   function error (self : access Inst) return access QtAda6.QtCore.QFileDevice.FileError.Inst'Class;
   function fileName (self : access Inst) return str;
   function fileTime_F
     (self : access Inst; time_P : access QtAda6.QtCore.QFileDevice.FileTime.Inst'Class)
      return access QtAda6.QtCore.QDateTime.Inst'Class;
   function flush (self : access Inst) return bool;
   function handle_F (self : access Inst) return int;
   function isSequential (self : access Inst) return bool;
   function map
     (self    : access Inst; offset_P : int; size_P : int;
      flags_P : access QtAda6.QtCore.QFileDevice.MemoryMapFlag.Inst'Class := null) return access Object'Class;
   function permissions (self : access Inst) return access QtAda6.QtCore.QFileDevice.Permission.Inst'Class;
   function pos (self : access Inst) return int;
   function readData (self : access Inst; maxlen_P : int) return access Object'Class;
   function readLineData (self : access Inst; maxlen_P : int) return access Object'Class;
   function resize (self : access Inst; sz_P : int) return bool;
   function seek (self : access Inst; offset_P : int) return bool;
   function setFileTime
     (self       : access Inst; newDate_P : access QtAda6.QtCore.QDateTime.Inst'Class;
      fileTime_P : access QtAda6.QtCore.QFileDevice.FileTime.Inst'Class) return bool;
   function setPermissions
     (self : access Inst; permissionSpec_P : access QtAda6.QtCore.QFileDevice.Permission.Inst'Class) return bool;
   function size (self : access Inst) return int;
   function unmap (self : access Inst; address_P : bytes) return bool;
   procedure unsetError (self : access Inst);
   function writeData (self : access Inst; data_P : bytes; len_P : int) return int;
end QtAda6.QtCore.QFileDevice;
