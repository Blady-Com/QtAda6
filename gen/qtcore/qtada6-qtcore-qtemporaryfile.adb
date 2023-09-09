-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qtemporaryfile.adb
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
with QtAda6.QtCore.QFile;
with QtAda6.QtCore.QObject;
with QtAda6.QtCore.QIODeviceBase.OpenModeFlag;
with OS.PathLike;
package body QtAda6.QtCore.QTemporaryFile is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QTemporaryFile");
      Args  := Tuple_New (0);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (parent_P : access QtAda6.QtCore.QObject.Inst'Class) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QTemporaryFile");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, parent_P.Python_Proxy);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (templateName_P : str) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QTemporaryFile");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (templateName_P));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (templateName_P : str; parent_P : access QtAda6.QtCore.QObject.Inst'Class) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QTemporaryFile");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (templateName_P));
      Tuple_SetItem (Args, 1, parent_P.Python_Proxy);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function autoRemove (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "autoRemove");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end autoRemove;
   function createNativeFile
     (file_P : access QtAda6.QtCore.QFile.Inst'Class) return access QtAda6.QtCore.QTemporaryFile.Inst'Class
   is
      Class, Method, Args, Result : Handle;
      Ret : constant QtAda6.QtCore.QTemporaryFile.Class := new QtAda6.QtCore.QTemporaryFile.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QTemporaryFile");
      Method := Object_GetAttrString (Class, "createNativeFile");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, file_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end createNativeFile;
   function createNativeFile (fileName_P : str) return access QtAda6.QtCore.QTemporaryFile.Inst'Class is
      Class, Method, Args, Result : Handle;
      Ret : constant QtAda6.QtCore.QTemporaryFile.Class := new QtAda6.QtCore.QTemporaryFile.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QTemporaryFile");
      Method := Object_GetAttrString (Class, "createNativeFile");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (fileName_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end createNativeFile;
   function fileName (self : access Inst) return str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "fileName");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end fileName;
   function fileTemplate (self : access Inst) return str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "fileTemplate");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end fileTemplate;
   function open (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "open");
      Args   := Tuple_New (0);
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
   function rename (self : access Inst; newName_P : Union_str_bytes_os_PathLike) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "rename");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end rename;
   procedure setAutoRemove (self : access Inst; b_P : bool) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setAutoRemove");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (b_P));
      Result := Object_CallObject (Method, Args, True);
   end setAutoRemove;
   procedure setFileTemplate (self : access Inst; name_P : str) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFileTemplate");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (name_P));
      Result := Object_CallObject (Method, Args, True);
   end setFileTemplate;
end QtAda6.QtCore.QTemporaryFile;
