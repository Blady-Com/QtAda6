-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qfile.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with OS.PathLike;
limited with QtAda6.QtCore.QObject;
limited with QtAda6.QtCore.QByteArray;
limited with QtAda6.QtCore.QIODeviceBase.OpenModeFlag;
limited with QtAda6.QtCore.QFileDevice.FileHandleFlag;
limited with QtAda6.QtCore.QFileDevice.Permission;
with QtAda6.QtCore.QFileDevice;
package QtAda6.QtCore.QFile is
   type Union_str_bytes_os_PathLike is access Any;
   type Union_QtAda6_QtCore_QByteArray_bytes is access Any;
   type Tuple_bool_str is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new QtAda6.QtCore.QFileDevice.Inst with null record;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (name_P : Union_str_bytes_os_PathLike) return Class;
   function Create
     (name_P : Union_str_bytes_os_PathLike; parent_P : access QtAda6.QtCore.QObject.Inst'Class) return Class;
   function Create (parent_P : access QtAda6.QtCore.QObject.Inst'Class) return Class;
   function copy (fileName_P : str; newName_P : str) return bool;
   function copy (self : access Inst; newName_P : Union_str_bytes_os_PathLike) return bool;
   function decodeName (localFileName_P : bytes) return str;
   function decodeName (localFileName_P : Union_QtAda6_QtCore_QByteArray_bytes) return str;
   function encodeName (fileName_P : str) return access QtAda6.QtCore.QByteArray.Inst'Class;
   function exists (fileName_P : str) return bool;
   function exists (self : access Inst) return bool;
   function fileName (self : access Inst) return str;
   function link (fileName_P : str; newName_P : str) return bool;
   function link (self : access Inst; newName_P : Union_str_bytes_os_PathLike) return bool;
   function moveToTrash (fileName_P : str) return Tuple_bool_str;
   function moveToTrash (self : access Inst) return bool;
   function open
     (self          : access Inst; fd_P : int; ioFlags_P : access QtAda6.QtCore.QIODeviceBase.OpenModeFlag.Inst'Class;
      handleFlags_P : access QtAda6.QtCore.QFileDevice.FileHandleFlag.Inst'Class) return bool;
   function open (self : access Inst; flags_P : access QtAda6.QtCore.QIODeviceBase.OpenModeFlag.Inst'Class) return bool;
   function open
     (self          : access Inst; flags_P : access QtAda6.QtCore.QIODeviceBase.OpenModeFlag.Inst'Class;
      permissions_P : access QtAda6.QtCore.QFileDevice.Permission.Inst'Class) return bool;
   function permissions
     (filename_P : Union_str_bytes_os_PathLike) return access QtAda6.QtCore.QFileDevice.Permission.Inst'Class;
   function permissions (self : access Inst) return access QtAda6.QtCore.QFileDevice.Permission.Inst'Class;
   function remove (fileName_P : str) return bool;
   function remove (self : access Inst) return bool;
   function rename (oldName_P : str; newName_P : str) return bool;
   function rename (self : access Inst; newName_P : Union_str_bytes_os_PathLike) return bool;
   function resize (filename_P : str; sz_P : int) return bool;
   function resize (self : access Inst; sz_P : int) return bool;
   procedure setFileName (self : access Inst; name_P : Union_str_bytes_os_PathLike);
   function setPermissions
     (filename_P       : Union_str_bytes_os_PathLike;
      permissionSpec_P : access QtAda6.QtCore.QFileDevice.Permission.Inst'Class) return bool;
   function setPermissions
     (self : access Inst; permissionSpec_P : access QtAda6.QtCore.QFileDevice.Permission.Inst'Class) return bool;
   function size (self : access Inst) return int;
   function symLinkTarget (fileName_P : str) return str;
   function symLinkTarget (self : access Inst) return str;
end QtAda6.QtCore.QFile;