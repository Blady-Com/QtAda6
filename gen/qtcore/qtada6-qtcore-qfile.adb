-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qfile.adb
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
with QtAda6.QtCore.QFileDevice;
with OS.PathLike;
with QtAda6.QtCore.QObject;
with QtAda6.QtCore.QByteArray;
with QtAda6.QtCore.QIODeviceBase.OpenModeFlag;
with QtAda6.QtCore.QFileDevice.FileHandleFlag;
with QtAda6.QtCore.QFileDevice.Permission;
package body QtAda6.QtCore.QFile is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QFile");
      Args  := Tuple_New (0);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (name_P : Union_str_bytes_os_PathLike) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QFile");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create
     (name_P : Union_str_bytes_os_PathLike; parent_P : access QtAda6.QtCore.QObject.Inst'Class) return Class
   is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QFile");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, No_Value);
      Tuple_SetItem (Args, 1, parent_P.Python_Proxy);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (parent_P : access QtAda6.QtCore.QObject.Inst'Class) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QFile");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, parent_P.Python_Proxy);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function copy (fileName_P : str; newName_P : str) return bool is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QFile");
      Method := Object_GetAttrString (Class, "copy");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (fileName_P));
      Tuple_SetItem (Args, 1, Unicode_FromString (newName_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end copy;
   function copy (self : access Inst; newName_P : Union_str_bytes_os_PathLike) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "copy");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end copy;
   function decodeName (localFileName_P : bytes) return str is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QFile");
      Method := Object_GetAttrString (Class, "decodeName");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Bytes_FromString (String (localFileName_P)));
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end decodeName;
   function decodeName (localFileName_P : Union_QtAda6_QtCore_QByteArray_bytes) return str is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QFile");
      Method := Object_GetAttrString (Class, "decodeName");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end decodeName;
   function encodeName (fileName_P : str) return access QtAda6.QtCore.QByteArray.Inst'Class is
      Class, Method, Args, Result : Handle;
      Ret                         : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QFile");
      Method := Object_GetAttrString (Class, "encodeName");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (fileName_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end encodeName;
   function exists (fileName_P : str) return bool is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QFile");
      Method := Object_GetAttrString (Class, "exists");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (fileName_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end exists;
   function exists (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "exists");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end exists;
   function fileName (self : access Inst) return str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "fileName");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end fileName;
   function link (fileName_P : str; newName_P : str) return bool is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QFile");
      Method := Object_GetAttrString (Class, "link");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (fileName_P));
      Tuple_SetItem (Args, 1, Unicode_FromString (newName_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end link;
   function link (self : access Inst; newName_P : Union_str_bytes_os_PathLike) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "link");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end link;
   function moveToTrash (fileName_P : str) return Tuple_bool_str is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QFile");
      Method := Object_GetAttrString (Class, "moveToTrash");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (fileName_P));
      Result := Object_CallObject (Method, Args, True);
      return null;
   end moveToTrash;
   function moveToTrash (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "moveToTrash");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end moveToTrash;
   function open
     (self          : access Inst; fd_P : int; ioFlags_P : access QtAda6.QtCore.QIODeviceBase.OpenModeFlag.Inst'Class;
      handleFlags_P : access QtAda6.QtCore.QFileDevice.FileHandleFlag.Inst'Class) return bool
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "open");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (fd_P));
      Tuple_SetItem (Args, 1, ioFlags_P.Python_Proxy);
      Tuple_SetItem (Args, 2, handleFlags_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end open;
   function open (self : access Inst; flags_P : access QtAda6.QtCore.QIODeviceBase.OpenModeFlag.Inst'Class) return bool
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "open");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, flags_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end open;
   function open
     (self          : access Inst; flags_P : access QtAda6.QtCore.QIODeviceBase.OpenModeFlag.Inst'Class;
      permissions_P : access QtAda6.QtCore.QFileDevice.Permission.Inst'Class) return bool
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "open");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, flags_P.Python_Proxy);
      Tuple_SetItem (Args, 1, permissions_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end open;
   function permissions
     (filename_P : Union_str_bytes_os_PathLike) return access QtAda6.QtCore.QFileDevice.Permission.Inst'Class
   is
      Class, Method, Args, Result : Handle;
      Ret : constant QtAda6.QtCore.QFileDevice.Permission.Class := new QtAda6.QtCore.QFileDevice.Permission.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QFile");
      Method := Object_GetAttrString (Class, "permissions");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end permissions;
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
   function remove (fileName_P : str) return bool is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QFile");
      Method := Object_GetAttrString (Class, "remove");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (fileName_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end remove;
   function remove (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "remove");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end remove;
   function rename (oldName_P : str; newName_P : str) return bool is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QFile");
      Method := Object_GetAttrString (Class, "rename");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (oldName_P));
      Tuple_SetItem (Args, 1, Unicode_FromString (newName_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end rename;
   function rename (self : access Inst; newName_P : Union_str_bytes_os_PathLike) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "rename");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end rename;
   function resize (filename_P : str; sz_P : int) return bool is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QFile");
      Method := Object_GetAttrString (Class, "resize");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (filename_P));
      Tuple_SetItem (Args, 1, Long_FromLong (sz_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end resize;
   function resize (self : access Inst; sz_P : int) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "resize");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (sz_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end resize;
   procedure setFileName (self : access Inst; name_P : Union_str_bytes_os_PathLike) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFileName");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end setFileName;
   function setPermissions
     (filename_P       : Union_str_bytes_os_PathLike;
      permissionSpec_P : access QtAda6.QtCore.QFileDevice.Permission.Inst'Class) return bool
   is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QFile");
      Method := Object_GetAttrString (Class, "setPermissions");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, No_Value);
      Tuple_SetItem (Args, 1, permissionSpec_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end setPermissions;
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
   function symLinkTarget (fileName_P : str) return str is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QFile");
      Method := Object_GetAttrString (Class, "symLinkTarget");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (fileName_P));
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end symLinkTarget;
   function symLinkTarget (self : access Inst) return str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "symLinkTarget");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end symLinkTarget;
end QtAda6.QtCore.QFile;
