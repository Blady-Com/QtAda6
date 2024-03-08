-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qdiriterator.adb
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
with QtAda6.QtCore.QDirIterator.IteratorFlag;
with QtAda6.QtCore.QDir.Filter;
with QtAda6.QtCore.QFileInfo;
package body QtAda6.QtCore.QDirIterator is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create
     (dir_P : UNION_QtAda6_QtCore_QDir_str; flags_P : access QtAda6.QtCore.QDirIterator.IteratorFlag.Inst'Class := null)
      return Class
   is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDirIterator");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if dir_P /= null then dir_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if flags_P /= null then
         Dict_SetItemString (Dict, "flags", flags_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (path_P  : str; filter_P : access QtAda6.QtCore.QDir.Filter.Inst'Class;
      flags_P : access QtAda6.QtCore.QDirIterator.IteratorFlag.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDirIterator");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (path_P));
      Tuple_SetItem (Args, 1, (if filter_P /= null then filter_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if flags_P /= null then
         Dict_SetItemString (Dict, "flags", flags_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (path_P : str; flags_P : access QtAda6.QtCore.QDirIterator.IteratorFlag.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDirIterator");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (path_P));
      Dict := Dict_New;
      if flags_P /= null then
         Dict_SetItemString (Dict, "flags", flags_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (path_P  : str; nameFilters_P : SEQUENCE_str; filters_P : access QtAda6.QtCore.QDir.Filter.Inst'Class := null;
      flags_P : access QtAda6.QtCore.QDirIterator.IteratorFlag.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDirIterator");
      List  := List_New (nameFilters_P'Length);
      for ind in nameFilters_P'Range loop
         List_SetItem (List, ssize_t (ind - nameFilters_P'First), Unicode_FromString (nameFilters_P (ind)));
      end loop;
      Args := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (path_P));
      Tuple_SetItem (Args, 1, List);
      Dict := Dict_New;
      if filters_P /= null then
         Dict_SetItemString (Dict, "filters", filters_P.Python_Proxy);
      end if;
      if flags_P /= null then
         Dict_SetItemString (Dict, "flags", flags_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function fileInfo (self : access Inst) return access QtAda6.QtCore.QFileInfo.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QFileInfo.Class := new QtAda6.QtCore.QFileInfo.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "fileInfo");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fileInfo;
   function fileName (self : access Inst) return str is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "fileName");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end fileName;
   function filePath (self : access Inst) return str is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "filePath");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end filePath;
   function hasNext (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hasNext");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end hasNext;
   function next (self : access Inst) return str is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "next");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end next;
   function nextFileInfo (self : access Inst) return access QtAda6.QtCore.QFileInfo.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QFileInfo.Class := new QtAda6.QtCore.QFileInfo.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "nextFileInfo");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end nextFileInfo;
   function path (self : access Inst) return str is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "path");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end path;
end QtAda6.QtCore.QDirIterator;
