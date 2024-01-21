-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qstorageinfo.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QDir;
limited with QtAda6.QtCore.QByteArray;
package QtAda6.QtCore.QStorageInfo is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   type UNION_QtAda6_QtCore_QDirstr is new Any;
   subtype LIST_QtAda6_QtCore_QStorageInfo is QtAda6.QtCore.QStorageInfo.Class_Array;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (dir_P : UNION_QtAda6_QtCore_QDirstr) return Class;
   function Create (other_P : access QtAda6.QtCore.QStorageInfo.Inst'Class) return Class;
   function Create (path_P : str) return Class;
   procedure U_copy_U;
   function blockSize (self : access Inst) return int;
   function bytesAvailable (self : access Inst) return int;
   function bytesFree (self : access Inst) return int;
   function bytesTotal (self : access Inst) return int;
   function device (self : access Inst) return access QtAda6.QtCore.QByteArray.Inst'Class;
   function displayName (self : access Inst) return str;
   function fileSystemType (self : access Inst) return access QtAda6.QtCore.QByteArray.Inst'Class;
   function isReadOnly (self : access Inst) return bool;
   function isReady (self : access Inst) return bool;
   function isRoot (self : access Inst) return bool;
   function isValid (self : access Inst) return bool;
   function mountedVolumes return LIST_QtAda6_QtCore_QStorageInfo;
   function name (self : access Inst) return str;
   procedure refresh (self : access Inst);
   function root return access QtAda6.QtCore.QStorageInfo.Inst'Class;
   function rootPath (self : access Inst) return str;
   procedure setPath (self : access Inst; path_P : str);
   function subvolume (self : access Inst) return access QtAda6.QtCore.QByteArray.Inst'Class;
   procedure swap (self : access Inst; other_P : access QtAda6.QtCore.QStorageInfo.Inst'Class);
end QtAda6.QtCore.QStorageInfo;
