-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qdir.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QDir.SortFlag;
limited with QtAda6.QtCore.QDir.Filter;
limited with QtAda6.QtCore.QFileInfo;
package QtAda6.QtCore.QDir is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   subtype LIST_QtAda6_QtCore_QFileInfo is QtAda6.QtCore.QFileInfo.Class_Array;
   type SEQUENCE_str is array (Positive range <>) of str;
   type LIST_str is array (Positive range <>) of str;
   procedure Finalize (Self : in out Class);
   function Create (arg_1_P : access QtAda6.QtCore.QDir.Inst'Class) return Class;
   function Create (arg_1_P : str) return Class;
-- function Create(path_P : str) return Class;
   function Create (path_P : bytes) return Class;
   function Create (path_P : OS.PathLike) return Class;
   function Create (path_P : NoneType) return Class;
   function Create
     (path_P   : str; nameFilter_P : str; sort_P : access QtAda6.QtCore.QDir.SortFlag.Inst'Class := null;
      filter_P : access QtAda6.QtCore.QDir.Filter.Inst'Class := null) return Class;
   function Create
     (path_P   : bytes; nameFilter_P : str; sort_P : access QtAda6.QtCore.QDir.SortFlag.Inst'Class := null;
      filter_P : access QtAda6.QtCore.QDir.Filter.Inst'Class := null) return Class;
   function Create
     (path_P   : OS.PathLike; nameFilter_P : str; sort_P : access QtAda6.QtCore.QDir.SortFlag.Inst'Class := null;
      filter_P : access QtAda6.QtCore.QDir.Filter.Inst'Class := null) return Class;
   procedure U_copy_U;
   function U_reduce_U (self : access Inst) return access Object'Class;
   function absoluteFilePath (self : access Inst; fileName_P : str) return str;
   function absolutePath (self : access Inst) return str;
   procedure addSearchPath (prefix_P : str; path_P : str);
   procedure addSearchPath (prefix_P : str; path_P : bytes);
   procedure addSearchPath (prefix_P : str; path_P : OS.PathLike);
   function canonicalPath (self : access Inst) return str;
   function cd (self : access Inst; dirName_P : str) return bool;
   function cdUp (self : access Inst) return bool;
   function cleanPath (path_P : str) return str;
   function current return access QtAda6.QtCore.QDir.Inst'Class;
   function currentPath return str;
   function dirName (self : access Inst) return str;
   function drives return LIST_QtAda6_QtCore_QFileInfo;
   function entryInfoList
     (self   : access Inst; filters_P : access QtAda6.QtCore.QDir.Filter.Inst'Class := null;
      sort_P : access QtAda6.QtCore.QDir.SortFlag.Inst'Class := null) return LIST_QtAda6_QtCore_QFileInfo;
   function entryInfoList
     (self : access Inst; nameFilters_P : SEQUENCE_str; filters_P : access QtAda6.QtCore.QDir.Filter.Inst'Class := null;
      sort_P : access QtAda6.QtCore.QDir.SortFlag.Inst'Class := null) return LIST_QtAda6_QtCore_QFileInfo;
   function entryList
     (self   : access Inst; filters_P : access QtAda6.QtCore.QDir.Filter.Inst'Class := null;
      sort_P : access QtAda6.QtCore.QDir.SortFlag.Inst'Class := null) return LIST_str;
   function entryList
     (self : access Inst; nameFilters_P : SEQUENCE_str; filters_P : access QtAda6.QtCore.QDir.Filter.Inst'Class := null;
      sort_P : access QtAda6.QtCore.QDir.SortFlag.Inst'Class := null) return LIST_str;
   function exists (self : access Inst) return bool;
   function exists (self : access Inst; name_P : str) return bool;
   function filePath (self : access Inst; fileName_P : str) return str;
   function filter_F (self : access Inst) return access QtAda6.QtCore.QDir.Filter.Inst'Class;
   function fromNativeSeparators (pathName_P : str) return str;
   function home return access QtAda6.QtCore.QDir.Inst'Class;
   function homePath return str;
   function isAbsolute (self : access Inst) return bool;
   function isAbsolutePath (path_P : str) return bool;
   function isEmpty (self : access Inst; filters_P : access QtAda6.QtCore.QDir.Filter.Inst'Class := null) return bool;
   function isReadable (self : access Inst) return bool;
   function isRelative (self : access Inst) return bool;
   function isRelativePath (path_P : str) return bool;
   function isRoot (self : access Inst) return bool;
   function listSeparator return str;
   function makeAbsolute (self : access Inst) return bool;
   function match (filter_P : str; fileName_P : str) return bool;
   function match (filters_P : SEQUENCE_str; fileName_P : str) return bool;
   function mkdir (self : access Inst; dirName_P : str) return bool;
   function mkpath (self : access Inst; dirPath_P : str) return bool;
   function nameFilters (self : access Inst) return LIST_str;
   function nameFiltersFromString (nameFilter_P : str) return LIST_str;
   function path (self : access Inst) return str;
   procedure refresh (self : access Inst);
   function relativeFilePath (self : access Inst; fileName_P : str) return str;
   function remove (self : access Inst; fileName_P : str) return bool;
   function removeRecursively (self : access Inst) return bool;
   function rename (self : access Inst; oldName_P : str; newName_P : str) return bool;
   function rmdir (self : access Inst; dirName_P : str) return bool;
   function rmpath (self : access Inst; dirPath_P : str) return bool;
   function root return access QtAda6.QtCore.QDir.Inst'Class;
   function rootPath return str;
   function searchPaths (prefix_P : str) return LIST_str;
   function separator return str;
   function setCurrent (path_P : str) return bool;
   procedure setFilter (self : access Inst; filter_P : access QtAda6.QtCore.QDir.Filter.Inst'Class);
   procedure setNameFilters (self : access Inst; nameFilters_P : SEQUENCE_str);
   procedure setPath (self : access Inst; path_P : str);
   procedure setPath (self : access Inst; path_P : bytes);
   procedure setPath (self : access Inst; path_P : OS.PathLike);
   procedure setSearchPaths (prefix_P : str; searchPaths_P : SEQUENCE_str);
   procedure setSorting (self : access Inst; sort_P : access QtAda6.QtCore.QDir.SortFlag.Inst'Class);
   function sorting (self : access Inst) return access QtAda6.QtCore.QDir.SortFlag.Inst'Class;
   procedure swap (self : access Inst; other_P : access QtAda6.QtCore.QDir.Inst'Class);
   procedure swap (self : access Inst; other_P : str);
   function temp return access QtAda6.QtCore.QDir.Inst'Class;
   function tempPath return str;
   function toNativeSeparators (pathName_P : str) return str;
end QtAda6.QtCore.QDir;
