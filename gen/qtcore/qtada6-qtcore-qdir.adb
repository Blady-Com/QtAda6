-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qdir.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Py; use Py;
with Ada.Unchecked_Deallocation;
with OS.PathLike;
with QtAda6.QtCore.QDir.SortFlag;
with QtAda6.QtCore.QDir.Filter;
with QtAda6.QtCore.QFileInfo;
package body QtAda6.QtCore.QDir is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create (arg_1_P : Union_QtAda6_QtCore_QDir_str) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDir");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (path_P : Union_str_bytes_os_PathLike_NoneType) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDir");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create
     (path_P : Union_str_bytes_os_PathLike; nameFilter_P : str; sort_P : access QtAda6.QtCore.QDir.SortFlag.Inst'Class;
      filter_P : access QtAda6.QtCore.QDir.Filter.Inst'Class) return Class
   is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDir");
      Args  := Tuple_New (4);
      Tuple_SetItem (Args, 0, No_Value);
      Tuple_SetItem (Args, 1, Unicode_FromString (nameFilter_P));
      Tuple_SetItem (Args, 2, sort_P.Python_Proxy);
      Tuple_SetItem (Args, 3, filter_P.Python_Proxy);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   procedure U_copy_U is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDir");
      Method := Object_GetAttrString (Class, "__copy__");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end U_copy_U;
   function U_reduce_U (self : access Inst) return Object is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__reduce__");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return (Python_Proxy => Result);
   end U_reduce_U;
   function absoluteFilePath (self : access Inst; fileName_P : str) return str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "absoluteFilePath");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (fileName_P));
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end absoluteFilePath;
   function absolutePath (self : access Inst) return str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "absolutePath");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end absolutePath;
   procedure addSearchPath (prefix_P : str; path_P : Union_str_bytes_os_PathLike) is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDir");
      Method := Object_GetAttrString (Class, "addSearchPath");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (prefix_P));
      Tuple_SetItem (Args, 1, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end addSearchPath;
   function canonicalPath (self : access Inst) return str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "canonicalPath");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end canonicalPath;
   function cd (self : access Inst; dirName_P : str) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "cd");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (dirName_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end cd;
   function cdUp (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "cdUp");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end cdUp;
   function cleanPath (path_P : str) return str is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDir");
      Method := Object_GetAttrString (Class, "cleanPath");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (path_P));
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end cleanPath;
   function current return access QtAda6.QtCore.QDir.Inst'Class is
      Class, Method, Args, Result : Handle;
      Ret                         : constant QtAda6.QtCore.QDir.Class := new QtAda6.QtCore.QDir.Inst;
   begin
      Class            := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDir");
      Method           := Object_GetAttrString (Class, "current");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end current;
   function currentPath return str is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDir");
      Method := Object_GetAttrString (Class, "currentPath");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end currentPath;
   function dirName (self : access Inst) return str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "dirName");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end dirName;
   function drives return List_QtAda6_QtCore_QFileInfo is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDir");
      Method := Object_GetAttrString (Class, "drives");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end drives;
   function entryInfoList
     (self   : access Inst; filters_P : access QtAda6.QtCore.QDir.Filter.Inst'Class;
      sort_P : access QtAda6.QtCore.QDir.SortFlag.Inst'Class) return List_QtAda6_QtCore_QFileInfo
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "entryInfoList");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, filters_P.Python_Proxy);
      Tuple_SetItem (Args, 1, sort_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end entryInfoList;
   function entryInfoList
     (self   : access Inst; nameFilters_P : Sequence_str; filters_P : access QtAda6.QtCore.QDir.Filter.Inst'Class;
      sort_P : access QtAda6.QtCore.QDir.SortFlag.Inst'Class) return List_QtAda6_QtCore_QFileInfo
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "entryInfoList");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, No_Value);
      Tuple_SetItem (Args, 1, filters_P.Python_Proxy);
      Tuple_SetItem (Args, 2, sort_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end entryInfoList;
   function entryList
     (self   : access Inst; filters_P : access QtAda6.QtCore.QDir.Filter.Inst'Class;
      sort_P : access QtAda6.QtCore.QDir.SortFlag.Inst'Class) return List_str
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "entryList");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, filters_P.Python_Proxy);
      Tuple_SetItem (Args, 1, sort_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end entryList;
   function entryList
     (self   : access Inst; nameFilters_P : Sequence_str; filters_P : access QtAda6.QtCore.QDir.Filter.Inst'Class;
      sort_P : access QtAda6.QtCore.QDir.SortFlag.Inst'Class) return List_str
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "entryList");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, No_Value);
      Tuple_SetItem (Args, 1, filters_P.Python_Proxy);
      Tuple_SetItem (Args, 2, sort_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end entryList;
   function exists (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "exists");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end exists;
   function exists (self : access Inst; name_P : str) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "exists");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (name_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end exists;
   function filePath (self : access Inst; fileName_P : str) return str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "filePath");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (fileName_P));
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end filePath;
   function filter_F (self : access Inst) return access QtAda6.QtCore.QDir.Filter.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QDir.Filter.Class := new QtAda6.QtCore.QDir.Filter.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "filter");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end filter_F;
   function fromNativeSeparators (pathName_P : str) return str is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDir");
      Method := Object_GetAttrString (Class, "fromNativeSeparators");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (pathName_P));
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end fromNativeSeparators;
   function home return access QtAda6.QtCore.QDir.Inst'Class is
      Class, Method, Args, Result : Handle;
      Ret                         : constant QtAda6.QtCore.QDir.Class := new QtAda6.QtCore.QDir.Inst;
   begin
      Class            := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDir");
      Method           := Object_GetAttrString (Class, "home");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end home;
   function homePath return str is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDir");
      Method := Object_GetAttrString (Class, "homePath");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end homePath;
   function isAbsolute (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isAbsolute");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isAbsolute;
   function isAbsolutePath (path_P : str) return bool is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDir");
      Method := Object_GetAttrString (Class, "isAbsolutePath");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (path_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isAbsolutePath;
   function isEmpty (self : access Inst; filters_P : access QtAda6.QtCore.QDir.Filter.Inst'Class) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isEmpty");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, filters_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isEmpty;
   function isReadable (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isReadable");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isReadable;
   function isRelative (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isRelative");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isRelative;
   function isRelativePath (path_P : str) return bool is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDir");
      Method := Object_GetAttrString (Class, "isRelativePath");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (path_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isRelativePath;
   function isRoot (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isRoot");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isRoot;
   function listSeparator return str is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDir");
      Method := Object_GetAttrString (Class, "listSeparator");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end listSeparator;
   function makeAbsolute (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "makeAbsolute");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end makeAbsolute;
   function match (filter_P : str; fileName_P : str) return bool is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDir");
      Method := Object_GetAttrString (Class, "match");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (filter_P));
      Tuple_SetItem (Args, 1, Unicode_FromString (fileName_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end match;
   function match (filters_P : Sequence_str; fileName_P : str) return bool is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDir");
      Method := Object_GetAttrString (Class, "match");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, No_Value);
      Tuple_SetItem (Args, 1, Unicode_FromString (fileName_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end match;
   function mkdir (self : access Inst; dirName_P : str) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mkdir");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (dirName_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end mkdir;
   function mkpath (self : access Inst; dirPath_P : str) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mkpath");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (dirPath_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end mkpath;
   function nameFilters (self : access Inst) return List_str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "nameFilters");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end nameFilters;
   function nameFiltersFromString (nameFilter_P : str) return List_str is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDir");
      Method := Object_GetAttrString (Class, "nameFiltersFromString");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (nameFilter_P));
      Result := Object_CallObject (Method, Args, True);
      return null;
   end nameFiltersFromString;
   function path (self : access Inst) return str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "path");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end path;
   procedure refresh (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "refresh");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end refresh;
   function relativeFilePath (self : access Inst; fileName_P : str) return str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "relativeFilePath");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (fileName_P));
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end relativeFilePath;
   function remove (self : access Inst; fileName_P : str) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "remove");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (fileName_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end remove;
   function removeRecursively (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "removeRecursively");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end removeRecursively;
   function rename (self : access Inst; oldName_P : str; newName_P : str) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "rename");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (oldName_P));
      Tuple_SetItem (Args, 1, Unicode_FromString (newName_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end rename;
   function rmdir (self : access Inst; dirName_P : str) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "rmdir");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (dirName_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end rmdir;
   function rmpath (self : access Inst; dirPath_P : str) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "rmpath");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (dirPath_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end rmpath;
   function root return access QtAda6.QtCore.QDir.Inst'Class is
      Class, Method, Args, Result : Handle;
      Ret                         : constant QtAda6.QtCore.QDir.Class := new QtAda6.QtCore.QDir.Inst;
   begin
      Class            := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDir");
      Method           := Object_GetAttrString (Class, "root");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end root;
   function rootPath return str is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDir");
      Method := Object_GetAttrString (Class, "rootPath");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end rootPath;
   function searchPaths (prefix_P : str) return List_str is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDir");
      Method := Object_GetAttrString (Class, "searchPaths");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (prefix_P));
      Result := Object_CallObject (Method, Args, True);
      return null;
   end searchPaths;
   function separator return str is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDir");
      Method := Object_GetAttrString (Class, "separator");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end separator;
   function setCurrent (path_P : str) return bool is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDir");
      Method := Object_GetAttrString (Class, "setCurrent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (path_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end setCurrent;
   procedure setFilter (self : access Inst; filter_P : access QtAda6.QtCore.QDir.Filter.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFilter");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, filter_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setFilter;
   procedure setNameFilters (self : access Inst; nameFilters_P : Sequence_str) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setNameFilters");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end setNameFilters;
   procedure setPath (self : access Inst; path_P : Union_str_bytes_os_PathLike) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPath");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end setPath;
   procedure setSearchPaths (prefix_P : str; searchPaths_P : Sequence_str) is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDir");
      Method := Object_GetAttrString (Class, "setSearchPaths");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (prefix_P));
      Tuple_SetItem (Args, 1, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end setSearchPaths;
   procedure setSorting (self : access Inst; sort_P : access QtAda6.QtCore.QDir.SortFlag.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setSorting");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, sort_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setSorting;
   function sorting (self : access Inst) return access QtAda6.QtCore.QDir.SortFlag.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QDir.SortFlag.Class := new QtAda6.QtCore.QDir.SortFlag.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "sorting");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end sorting;
   procedure swap (self : access Inst; other_P : Union_QtAda6_QtCore_QDir_str) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "swap");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end swap;
   function temp return access QtAda6.QtCore.QDir.Inst'Class is
      Class, Method, Args, Result : Handle;
      Ret                         : constant QtAda6.QtCore.QDir.Class := new QtAda6.QtCore.QDir.Inst;
   begin
      Class            := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDir");
      Method           := Object_GetAttrString (Class, "temp");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end temp;
   function tempPath return str is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDir");
      Method := Object_GetAttrString (Class, "tempPath");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end tempPath;
   function toNativeSeparators (pathName_P : str) return str is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDir");
      Method := Object_GetAttrString (Class, "toNativeSeparators");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (pathName_P));
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end toNativeSeparators;
end QtAda6.QtCore.QDir;
