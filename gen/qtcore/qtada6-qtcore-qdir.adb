-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qdir.adb
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
with QtAda6.QtCore.QDir.SortFlag;
with QtAda6.QtCore.QDir.Filter;
with QtAda6.QtCore.QFileInfo;
package body QtAda6.QtCore.QDir is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create (arg_1_P : access QtAda6.QtCore.QDir.Inst'Class) return Class is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDir");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (arg_1_P : str) return Class is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDir");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (arg_1_P));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (path_P : bytes) return Class is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDir");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, Bytes_FromString (Standard.String (path_P.all)));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (path_P : OS.PathLike) return Class is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDir");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, OS.PathLike_conv_A2P_is_not_supported);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (path_P : NoneType) return Class is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDir");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, NoneType_conv_A2P_is_not_supported);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (path_P   : str; nameFilter_P : str; sort_P : access QtAda6.QtCore.QDir.SortFlag.Inst'Class := null;
      filter_P : access QtAda6.QtCore.QDir.Filter.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDir");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (path_P));
      Tuple_SetItem (Args, 1, Unicode_FromString (nameFilter_P));
      Dict := Dict_New;
      if sort_P /= null then
         Dict_SetItemString (Dict, "sort", sort_P.Python_Proxy);
      end if;
      if filter_P /= null then
         Dict_SetItemString (Dict, "filter", filter_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (path_P   : bytes; nameFilter_P : str; sort_P : access QtAda6.QtCore.QDir.SortFlag.Inst'Class := null;
      filter_P : access QtAda6.QtCore.QDir.Filter.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDir");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, Bytes_FromString (Standard.String (path_P.all)));
      Tuple_SetItem (Args, 1, Unicode_FromString (nameFilter_P));
      Dict := Dict_New;
      if sort_P /= null then
         Dict_SetItemString (Dict, "sort", sort_P.Python_Proxy);
      end if;
      if filter_P /= null then
         Dict_SetItemString (Dict, "filter", filter_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (path_P   : OS.PathLike; nameFilter_P : str; sort_P : access QtAda6.QtCore.QDir.SortFlag.Inst'Class := null;
      filter_P : access QtAda6.QtCore.QDir.Filter.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDir");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, OS.PathLike_conv_A2P_is_not_supported);
      Tuple_SetItem (Args, 1, Unicode_FromString (nameFilter_P));
      Dict := Dict_New;
      if sort_P /= null then
         Dict_SetItemString (Dict, "sort", sort_P.Python_Proxy);
      end if;
      if filter_P /= null then
         Dict_SetItemString (Dict, "filter", filter_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   procedure U_copy_U is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDir");
      Method := Object_GetAttrString (Class, "__copy__");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end U_copy_U;
   function U_reduce_U (self : access Inst) return access Object'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__reduce__");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return null;
   end U_reduce_U;
   function absoluteFilePath (self : access Inst; fileName_P : str) return str is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "absoluteFilePath");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (fileName_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end absoluteFilePath;
   function absolutePath (self : access Inst) return str is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "absolutePath");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end absolutePath;
   procedure addSearchPath (prefix_P : str; path_P : str) is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDir");
      Method := Object_GetAttrString (Class, "addSearchPath");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (prefix_P));
      Tuple_SetItem (Args, 1, Unicode_FromString (path_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end addSearchPath;
   procedure addSearchPath (prefix_P : str; path_P : bytes) is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDir");
      Method := Object_GetAttrString (Class, "addSearchPath");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (prefix_P));
      Tuple_SetItem (Args, 1, Bytes_FromString (Standard.String (path_P.all)));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end addSearchPath;
   procedure addSearchPath (prefix_P : str; path_P : OS.PathLike) is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDir");
      Method := Object_GetAttrString (Class, "addSearchPath");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (prefix_P));
      Tuple_SetItem (Args, 1, OS.PathLike_conv_A2P_is_not_supported);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end addSearchPath;
   function canonicalPath (self : access Inst) return str is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "canonicalPath");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end canonicalPath;
   function cd (self : access Inst; dirName_P : str) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "cd");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (dirName_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end cd;
   function cdUp (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "cdUp");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end cdUp;
   function cleanPath (path_P : str) return str is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDir");
      Method := Object_GetAttrString (Class, "cleanPath");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (path_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end cleanPath;
   function current return access QtAda6.QtCore.QDir.Inst'Class is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QDir.Class := new QtAda6.QtCore.QDir.Inst;
   begin
      Class            := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDir");
      Method           := Object_GetAttrString (Class, "current");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end current;
   function currentPath return str is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDir");
      Method := Object_GetAttrString (Class, "currentPath");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end currentPath;
   function dirName (self : access Inst) return str is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "dirName");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end dirName;
   function drives return LIST_QtAda6_QtCore_QFileInfo is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDir");
      Method := Object_GetAttrString (Class, "drives");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Ret : LIST_QtAda6_QtCore_QFileInfo (1 .. Natural (List_Size (Result))) do
         for Ind in Ret'Range loop
            Ret (Ind).Python_Proxy := List_GetItem (Result, ssize_t (Ind - Ret'First));
         end loop;
      end return;
   end drives;
   function entryInfoList
     (self   : access Inst; filters_P : access QtAda6.QtCore.QDir.Filter.Inst'Class := null;
      sort_P : access QtAda6.QtCore.QDir.SortFlag.Inst'Class := null) return LIST_QtAda6_QtCore_QFileInfo
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "entryInfoList");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      if filters_P /= null then
         Dict_SetItemString (Dict, "filters", filters_P.Python_Proxy);
      end if;
      if sort_P /= null then
         Dict_SetItemString (Dict, "sort", sort_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return Ret : LIST_QtAda6_QtCore_QFileInfo (1 .. Natural (List_Size (Result))) do
         for Ind in Ret'Range loop
            Ret (Ind).Python_Proxy := List_GetItem (Result, ssize_t (Ind - Ret'First));
         end loop;
      end return;
   end entryInfoList;
   function entryInfoList
     (self : access Inst; nameFilters_P : SEQUENCE_str; filters_P : access QtAda6.QtCore.QDir.Filter.Inst'Class := null;
      sort_P : access QtAda6.QtCore.QDir.SortFlag.Inst'Class := null) return LIST_QtAda6_QtCore_QFileInfo
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "entryInfoList");
      Args   := Tuple_New (1);
      List   := List_New (nameFilters_P'Length);
      for ind in nameFilters_P'Range loop
         List_SetItem (List, ssize_t (ind - nameFilters_P'First), Unicode_FromString (nameFilters_P (ind)));
      end loop;
      Tuple_SetItem (Args, 0, List);
      Dict := Dict_New;
      if filters_P /= null then
         Dict_SetItemString (Dict, "filters", filters_P.Python_Proxy);
      end if;
      if sort_P /= null then
         Dict_SetItemString (Dict, "sort", sort_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return Ret : LIST_QtAda6_QtCore_QFileInfo (1 .. Natural (List_Size (Result))) do
         for Ind in Ret'Range loop
            Ret (Ind).Python_Proxy := List_GetItem (Result, ssize_t (Ind - Ret'First));
         end loop;
      end return;
   end entryInfoList;
   function entryList
     (self   : access Inst; filters_P : access QtAda6.QtCore.QDir.Filter.Inst'Class := null;
      sort_P : access QtAda6.QtCore.QDir.SortFlag.Inst'Class := null) return LIST_str
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "entryList");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      if filters_P /= null then
         Dict_SetItemString (Dict, "filters", filters_P.Python_Proxy);
      end if;
      if sort_P /= null then
         Dict_SetItemString (Dict, "sort", sort_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return Ret : LIST_str (1 .. Natural (List_Size (Result))) do
         for Ind in Ret'Range loop
            Ret (Ind) := As_String (List_GetItem (Result, ssize_t (Ind - Ret'First)));
         end loop;
      end return;
   end entryList;
   function entryList
     (self : access Inst; nameFilters_P : SEQUENCE_str; filters_P : access QtAda6.QtCore.QDir.Filter.Inst'Class := null;
      sort_P : access QtAda6.QtCore.QDir.SortFlag.Inst'Class := null) return LIST_str
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "entryList");
      Args   := Tuple_New (1);
      List   := List_New (nameFilters_P'Length);
      for ind in nameFilters_P'Range loop
         List_SetItem (List, ssize_t (ind - nameFilters_P'First), Unicode_FromString (nameFilters_P (ind)));
      end loop;
      Tuple_SetItem (Args, 0, List);
      Dict := Dict_New;
      if filters_P /= null then
         Dict_SetItemString (Dict, "filters", filters_P.Python_Proxy);
      end if;
      if sort_P /= null then
         Dict_SetItemString (Dict, "sort", sort_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return Ret : LIST_str (1 .. Natural (List_Size (Result))) do
         for Ind in Ret'Range loop
            Ret (Ind) := As_String (List_GetItem (Result, ssize_t (Ind - Ret'First)));
         end loop;
      end return;
   end entryList;
   function exists (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "exists");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end exists;
   function exists (self : access Inst; name_P : str) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "exists");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (name_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end exists;
   function filePath (self : access Inst; fileName_P : str) return str is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "filePath");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (fileName_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end filePath;
   function filter_F (self : access Inst) return access QtAda6.QtCore.QDir.Filter.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QDir.Filter.Class := new QtAda6.QtCore.QDir.Filter.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "filter");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end filter_F;
   function fromNativeSeparators (pathName_P : str) return str is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDir");
      Method := Object_GetAttrString (Class, "fromNativeSeparators");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (pathName_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end fromNativeSeparators;
   function home return access QtAda6.QtCore.QDir.Inst'Class is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QDir.Class := new QtAda6.QtCore.QDir.Inst;
   begin
      Class            := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDir");
      Method           := Object_GetAttrString (Class, "home");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end home;
   function homePath return str is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDir");
      Method := Object_GetAttrString (Class, "homePath");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end homePath;
   function isAbsolute (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isAbsolute");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isAbsolute;
   function isAbsolutePath (path_P : str) return bool is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDir");
      Method := Object_GetAttrString (Class, "isAbsolutePath");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (path_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isAbsolutePath;
   function isEmpty (self : access Inst; filters_P : access QtAda6.QtCore.QDir.Filter.Inst'Class := null) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isEmpty");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      if filters_P /= null then
         Dict_SetItemString (Dict, "filters", filters_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isEmpty;
   function isReadable (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isReadable");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isReadable;
   function isRelative (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isRelative");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isRelative;
   function isRelativePath (path_P : str) return bool is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDir");
      Method := Object_GetAttrString (Class, "isRelativePath");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (path_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isRelativePath;
   function isRoot (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isRoot");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isRoot;
   function listSeparator return str is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDir");
      Method := Object_GetAttrString (Class, "listSeparator");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end listSeparator;
   function makeAbsolute (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "makeAbsolute");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end makeAbsolute;
   function match (filter_P : str; fileName_P : str) return bool is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDir");
      Method := Object_GetAttrString (Class, "match");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (filter_P));
      Tuple_SetItem (Args, 1, Unicode_FromString (fileName_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end match;
   function match (filters_P : SEQUENCE_str; fileName_P : str) return bool is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDir");
      Method := Object_GetAttrString (Class, "match");
      Args   := Tuple_New (2);
      List   := List_New (filters_P'Length);
      for ind in filters_P'Range loop
         List_SetItem (List, ssize_t (ind - filters_P'First), Unicode_FromString (filters_P (ind)));
      end loop;
      Tuple_SetItem (Args, 0, List);
      Tuple_SetItem (Args, 1, Unicode_FromString (fileName_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end match;
   function mkdir (self : access Inst; dirName_P : str) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mkdir");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (dirName_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end mkdir;
   function mkpath (self : access Inst; dirPath_P : str) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mkpath");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (dirPath_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end mkpath;
   function nameFilters (self : access Inst) return LIST_str is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "nameFilters");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Ret : LIST_str (1 .. Natural (List_Size (Result))) do
         for Ind in Ret'Range loop
            Ret (Ind) := As_String (List_GetItem (Result, ssize_t (Ind - Ret'First)));
         end loop;
      end return;
   end nameFilters;
   function nameFiltersFromString (nameFilter_P : str) return LIST_str is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDir");
      Method := Object_GetAttrString (Class, "nameFiltersFromString");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (nameFilter_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Ret : LIST_str (1 .. Natural (List_Size (Result))) do
         for Ind in Ret'Range loop
            Ret (Ind) := As_String (List_GetItem (Result, ssize_t (Ind - Ret'First)));
         end loop;
      end return;
   end nameFiltersFromString;
   function path (self : access Inst) return str is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "path");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end path;
   procedure refresh (self : access Inst) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "refresh");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end refresh;
   function relativeFilePath (self : access Inst; fileName_P : str) return str is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "relativeFilePath");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (fileName_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end relativeFilePath;
   function remove (self : access Inst; fileName_P : str) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "remove");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (fileName_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end remove;
   function removeRecursively (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "removeRecursively");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end removeRecursively;
   function rename (self : access Inst; oldName_P : str; newName_P : str) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "rename");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (oldName_P));
      Tuple_SetItem (Args, 1, Unicode_FromString (newName_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end rename;
   function rmdir (self : access Inst; dirName_P : str) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "rmdir");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (dirName_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end rmdir;
   function rmpath (self : access Inst; dirPath_P : str) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "rmpath");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (dirPath_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end rmpath;
   function root return access QtAda6.QtCore.QDir.Inst'Class is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QDir.Class := new QtAda6.QtCore.QDir.Inst;
   begin
      Class            := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDir");
      Method           := Object_GetAttrString (Class, "root");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end root;
   function rootPath return str is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDir");
      Method := Object_GetAttrString (Class, "rootPath");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end rootPath;
   function searchPaths (prefix_P : str) return LIST_str is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDir");
      Method := Object_GetAttrString (Class, "searchPaths");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (prefix_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Ret : LIST_str (1 .. Natural (List_Size (Result))) do
         for Ind in Ret'Range loop
            Ret (Ind) := As_String (List_GetItem (Result, ssize_t (Ind - Ret'First)));
         end loop;
      end return;
   end searchPaths;
   function separator return str is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDir");
      Method := Object_GetAttrString (Class, "separator");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end separator;
   function setCurrent (path_P : str) return bool is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDir");
      Method := Object_GetAttrString (Class, "setCurrent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (path_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end setCurrent;
   procedure setFilter (self : access Inst; filter_P : access QtAda6.QtCore.QDir.Filter.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFilter");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if filter_P /= null then filter_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setFilter;
   procedure setNameFilters (self : access Inst; nameFilters_P : SEQUENCE_str) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setNameFilters");
      Args   := Tuple_New (1);
      List   := List_New (nameFilters_P'Length);
      for ind in nameFilters_P'Range loop
         List_SetItem (List, ssize_t (ind - nameFilters_P'First), Unicode_FromString (nameFilters_P (ind)));
      end loop;
      Tuple_SetItem (Args, 0, List);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setNameFilters;
   procedure setPath (self : access Inst; path_P : str) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPath");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (path_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPath;
   procedure setPath (self : access Inst; path_P : bytes) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPath");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Bytes_FromString (Standard.String (path_P.all)));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPath;
   procedure setPath (self : access Inst; path_P : OS.PathLike) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPath");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, OS.PathLike_conv_A2P_is_not_supported);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPath;
   procedure setSearchPaths (prefix_P : str; searchPaths_P : SEQUENCE_str) is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDir");
      Method := Object_GetAttrString (Class, "setSearchPaths");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (prefix_P));
      List := List_New (searchPaths_P'Length);
      for ind in searchPaths_P'Range loop
         List_SetItem (List, ssize_t (ind - searchPaths_P'First), Unicode_FromString (searchPaths_P (ind)));
      end loop;
      Tuple_SetItem (Args, 1, List);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setSearchPaths;
   procedure setSorting (self : access Inst; sort_P : access QtAda6.QtCore.QDir.SortFlag.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setSorting");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if sort_P /= null then sort_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setSorting;
   function sorting (self : access Inst) return access QtAda6.QtCore.QDir.SortFlag.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QDir.SortFlag.Class := new QtAda6.QtCore.QDir.SortFlag.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "sorting");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end sorting;
   procedure swap (self : access Inst; other_P : access QtAda6.QtCore.QDir.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "swap");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if other_P /= null then other_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end swap;
   procedure swap (self : access Inst; other_P : str) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "swap");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (other_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end swap;
   function temp return access QtAda6.QtCore.QDir.Inst'Class is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QDir.Class := new QtAda6.QtCore.QDir.Inst;
   begin
      Class            := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDir");
      Method           := Object_GetAttrString (Class, "temp");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end temp;
   function tempPath return str is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDir");
      Method := Object_GetAttrString (Class, "tempPath");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end tempPath;
   function toNativeSeparators (pathName_P : str) return str is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDir");
      Method := Object_GetAttrString (Class, "toNativeSeparators");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (pathName_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end toNativeSeparators;
end QtAda6.QtCore.QDir;
