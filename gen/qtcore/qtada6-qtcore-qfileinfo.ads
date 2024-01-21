-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qfileinfo.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QDir;
limited with QtAda6.QtCore.QFileDevice;
limited with QtAda6.QtCore.QDateTime;
package QtAda6.QtCore.QFileInfo is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   type UNION_QtAda6_QtCore_QDirstr is new Any;
   type UNION_strbytesos_PathLike is new Any;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (dir_P : UNION_QtAda6_QtCore_QDirstr; file_P : UNION_strbytesos_PathLike) return Class;
   function Create (file_P : UNION_strbytesos_PathLike) return Class;
   function Create (file_P : access QtAda6.QtCore.QFileDevice.Inst'Class) return Class;
   function Create (fileinfo_P : access QtAda6.QtCore.QFileInfo.Inst'Class) return Class;
   procedure U_copy_U;
   function U_reduce_U (self : access Inst) return access Object'Class;
   function absoluteDir (self : access Inst) return access QtAda6.QtCore.QDir.Inst'Class;
   function absoluteFilePath (self : access Inst) return str;
   function absolutePath (self : access Inst) return str;
   function baseName (self : access Inst) return str;
   function birthTime (self : access Inst) return access QtAda6.QtCore.QDateTime.Inst'Class;
   function bundleName (self : access Inst) return str;
   function caching (self : access Inst) return bool;
   function canonicalFilePath (self : access Inst) return str;
   function canonicalPath (self : access Inst) return str;
   function completeBaseName (self : access Inst) return str;
   function completeSuffix (self : access Inst) return str;
   function dir (self : access Inst) return access QtAda6.QtCore.QDir.Inst'Class;
   function exists (file_P : str) return bool;
   function exists (self : access Inst) return bool;
   function fileName (self : access Inst) return str;
   function filePath (self : access Inst) return str;
   function group (self : access Inst) return str;
   function groupId (self : access Inst) return int;
   function isAbsolute (self : access Inst) return bool;
   function isAlias (self : access Inst) return bool;
   function isBundle (self : access Inst) return bool;
   function isDir (self : access Inst) return bool;
   function isExecutable (self : access Inst) return bool;
   function isFile (self : access Inst) return bool;
   function isHidden (self : access Inst) return bool;
   function isJunction (self : access Inst) return bool;
   function isNativePath (self : access Inst) return bool;
   function isReadable (self : access Inst) return bool;
   function isRelative (self : access Inst) return bool;
   function isRoot (self : access Inst) return bool;
   function isShortcut (self : access Inst) return bool;
   function isSymLink (self : access Inst) return bool;
   function isSymbolicLink (self : access Inst) return bool;
   function isWritable (self : access Inst) return bool;
   function junctionTarget (self : access Inst) return str;
   function lastModified (self : access Inst) return access QtAda6.QtCore.QDateTime.Inst'Class;
   function lastRead (self : access Inst) return access QtAda6.QtCore.QDateTime.Inst'Class;
   function makeAbsolute (self : access Inst) return bool;
   function metadataChangeTime (self : access Inst) return access QtAda6.QtCore.QDateTime.Inst'Class;
   function owner (self : access Inst) return str;
   function ownerId (self : access Inst) return int;
   function path (self : access Inst) return str;
   procedure refresh (self : access Inst);
   procedure setCaching (self : access Inst; on_P : bool);
   procedure setFile (self : access Inst; dir_P : UNION_QtAda6_QtCore_QDirstr; file_P : str);
   procedure setFile (self : access Inst; file_P : UNION_strbytesos_PathLike);
   procedure setFile (self : access Inst; file_P : access QtAda6.QtCore.QFileDevice.Inst'Class);
   function size (self : access Inst) return int;
   procedure stat (self : access Inst);
   function suffix (self : access Inst) return str;
   procedure swap (self : access Inst; other_P : access QtAda6.QtCore.QFileInfo.Inst'Class);
   function symLinkTarget (self : access Inst) return str;
end QtAda6.QtCore.QFileInfo;
