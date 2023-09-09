-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qfiledevice.adb
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
with QtAda6.QtCore.QIODevice;
with QtAda6.QtCore.QObject;
with QtAda6.QtCore.QFileDevice.FileError;
with QtAda6.QtCore.QFileDevice.FileTime;
with QtAda6.QtCore.QDateTime;
with QtAda6.QtCore.QFileDevice.MemoryMapFlag;
with QtAda6.QtCore.QFileDevice.Permission;
package body QtAda6.QtCore.QFileDevice is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QFileDevice");
      Args  := Tuple_New (0);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (parent_P : access QtAda6.QtCore.QObject.Inst'Class) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QFileDevice");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, parent_P.Python_Proxy);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function atEnd (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "atEnd");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end atEnd;
   procedure close (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "close");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end close;
   function error_F (self : access Inst) return access QtAda6.QtCore.QFileDevice.FileError.Inst'Class is
      Method, Args, Result : Handle;
      Ret : constant QtAda6.QtCore.QFileDevice.FileError.Class := new QtAda6.QtCore.QFileDevice.FileError.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "error");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end error_F;
   function fileName (self : access Inst) return str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "fileName");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end fileName;
   function fileTime_F
     (self : access Inst; time_P : access QtAda6.QtCore.QFileDevice.FileTime.Inst'Class)
      return access QtAda6.QtCore.QDateTime.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QDateTime.Class := new QtAda6.QtCore.QDateTime.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "fileTime");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, time_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fileTime_F;
   function flush (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "flush");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end flush;
   function handle_F (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "handle");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end handle_F;
   function isSequential (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isSequential");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isSequential;
   function map_F
     (self    : access Inst; offset_P : int; size_P : int;
      flags_P : access QtAda6.QtCore.QFileDevice.MemoryMapFlag.Inst'Class) return Object
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "map");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (offset_P));
      Tuple_SetItem (Args, 1, Long_FromLong (size_P));
      Tuple_SetItem (Args, 2, flags_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return (Python_Proxy => Result);
   end map_F;
   function permissions (self : access Inst) return access QtAda6.QtCore.QFileDevice.Permission.Inst'Class is
      Method, Args, Result : Handle;
      Ret : constant QtAda6.QtCore.QFileDevice.Permission.Class := new QtAda6.QtCore.QFileDevice.Permission.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "permissions");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end permissions;
   function pos (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "pos");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end pos;
   function readData (self : access Inst; maxlen_P : int) return Object is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "readData");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (maxlen_P));
      Result := Object_CallObject (Method, Args, True);
      return (Python_Proxy => Result);
   end readData;
   function readLineData (self : access Inst; maxlen_P : int) return Object is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "readLineData");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (maxlen_P));
      Result := Object_CallObject (Method, Args, True);
      return (Python_Proxy => Result);
   end readLineData;
   function resize (self : access Inst; sz_P : int) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "resize");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (sz_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end resize;
   function seek (self : access Inst; offset_P : int) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "seek");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (offset_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end seek;
   function setFileTime
     (self       : access Inst; newDate_P : access QtAda6.QtCore.QDateTime.Inst'Class;
      fileTime_P : access QtAda6.QtCore.QFileDevice.FileTime.Inst'Class) return bool
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFileTime");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, newDate_P.Python_Proxy);
      Tuple_SetItem (Args, 1, fileTime_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end setFileTime;
   function setPermissions
     (self : access Inst; permissionSpec_P : access QtAda6.QtCore.QFileDevice.Permission.Inst'Class) return bool
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPermissions");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, permissionSpec_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end setPermissions;
   function size (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "size");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end size;
   function unmap (self : access Inst; address_P : bytes) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "unmap");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Bytes_FromString (String (address_P)));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end unmap;
   procedure unsetError (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "unsetError");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end unsetError;
   function writeData (self : access Inst; data_P : bytes; len_P : int) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "writeData");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Bytes_FromString (String (data_P)));
      Tuple_SetItem (Args, 1, Long_FromLong (len_P));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end writeData;
end QtAda6.QtCore.QFileDevice;
