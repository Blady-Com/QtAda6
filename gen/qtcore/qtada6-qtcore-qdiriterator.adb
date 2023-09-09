-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qdiriterator.adb
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
with QtAda6.QtCore.QDir;
with QtAda6.QtCore.QDirIterator.IteratorFlag;
with QtAda6.QtCore.QDir.Filter;
with QtAda6.QtCore.QFileInfo;
package body QtAda6.QtCore.QDirIterator is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create
     (dir_P : Union_QtAda6_QtCore_QDir_str; flags_P : access QtAda6.QtCore.QDirIterator.IteratorFlag.Inst'Class)
      return Class
   is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDirIterator");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, No_Value);
      Tuple_SetItem (Args, 1, flags_P.Python_Proxy);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create
     (path_P  : str; filter_P : access QtAda6.QtCore.QDir.Filter.Inst'Class;
      flags_P : access QtAda6.QtCore.QDirIterator.IteratorFlag.Inst'Class) return Class
   is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDirIterator");
      Args  := Tuple_New (3);
      Tuple_SetItem (Args, 0, Unicode_FromString (path_P));
      Tuple_SetItem (Args, 1, filter_P.Python_Proxy);
      Tuple_SetItem (Args, 2, flags_P.Python_Proxy);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (path_P : str; flags_P : access QtAda6.QtCore.QDirIterator.IteratorFlag.Inst'Class) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDirIterator");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (path_P));
      Tuple_SetItem (Args, 1, flags_P.Python_Proxy);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create
     (path_P  : str; nameFilters_P : Sequence_str; filters_P : access QtAda6.QtCore.QDir.Filter.Inst'Class;
      flags_P : access QtAda6.QtCore.QDirIterator.IteratorFlag.Inst'Class) return Class
   is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDirIterator");
      Args  := Tuple_New (4);
      Tuple_SetItem (Args, 0, Unicode_FromString (path_P));
      Tuple_SetItem (Args, 1, No_Value);
      Tuple_SetItem (Args, 2, filters_P.Python_Proxy);
      Tuple_SetItem (Args, 3, flags_P.Python_Proxy);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function fileInfo (self : access Inst) return access QtAda6.QtCore.QFileInfo.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QFileInfo.Class := new QtAda6.QtCore.QFileInfo.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "fileInfo");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fileInfo;
   function fileName (self : access Inst) return str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "fileName");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end fileName;
   function filePath (self : access Inst) return str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "filePath");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end filePath;
   function hasNext (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hasNext");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end hasNext;
   function next (self : access Inst) return str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "next");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end next;
   function nextFileInfo (self : access Inst) return access QtAda6.QtCore.QFileInfo.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QFileInfo.Class := new QtAda6.QtCore.QFileInfo.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "nextFileInfo");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end nextFileInfo;
   function path (self : access Inst) return str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "path");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end path;
end QtAda6.QtCore.QDirIterator;
