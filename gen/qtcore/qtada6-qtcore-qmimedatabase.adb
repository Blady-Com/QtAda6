-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qmimedatabase.adb
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
with QtAda6.QtCore.QMimeType;
with QtAda6.QtCore.QByteArray;
with QtAda6.QtCore.QIODevice;
with QtAda6.QtCore.QFileInfo;
with QtAda6.QtCore.QMimeDatabase.MatchMode;
with QtAda6.QtCore.QUrl;
package body QtAda6.QtCore.QMimeDatabase is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMimeDatabase");
      Args  := Tuple_New (0);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function allMimeTypes (self : access Inst) return List_QtAda6_QtCore_QMimeType is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "allMimeTypes");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end allMimeTypes;
   function mimeTypeForData
     (self : access Inst; data_P : Union_QtAda6_QtCore_QByteArray_bytes)
      return access QtAda6.QtCore.QMimeType.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QMimeType.Class := new QtAda6.QtCore.QMimeType.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mimeTypeForData");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mimeTypeForData;
   function mimeTypeForData
     (self : access Inst; device_P : access QtAda6.QtCore.QIODevice.Inst'Class)
      return access QtAda6.QtCore.QMimeType.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QMimeType.Class := new QtAda6.QtCore.QMimeType.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mimeTypeForData");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, device_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mimeTypeForData;
   function mimeTypeForFile
     (self   : access Inst; fileInfo_P : access QtAda6.QtCore.QFileInfo.Inst'Class;
      mode_P : access QtAda6.QtCore.QMimeDatabase.MatchMode.Inst'Class) return access QtAda6.QtCore.QMimeType.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QMimeType.Class := new QtAda6.QtCore.QMimeType.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mimeTypeForFile");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, fileInfo_P.Python_Proxy);
      Tuple_SetItem (Args, 1, mode_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mimeTypeForFile;
   function mimeTypeForFile
     (self : access Inst; fileName_P : str; mode_P : access QtAda6.QtCore.QMimeDatabase.MatchMode.Inst'Class)
      return access QtAda6.QtCore.QMimeType.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QMimeType.Class := new QtAda6.QtCore.QMimeType.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mimeTypeForFile");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (fileName_P));
      Tuple_SetItem (Args, 1, mode_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mimeTypeForFile;
   function mimeTypeForFileNameAndData
     (self : access Inst; fileName_P : str; data_P : Union_QtAda6_QtCore_QByteArray_bytes)
      return access QtAda6.QtCore.QMimeType.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QMimeType.Class := new QtAda6.QtCore.QMimeType.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mimeTypeForFileNameAndData");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (fileName_P));
      Tuple_SetItem (Args, 1, No_Value);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mimeTypeForFileNameAndData;
   function mimeTypeForFileNameAndData
     (self : access Inst; fileName_P : str; device_P : access QtAda6.QtCore.QIODevice.Inst'Class)
      return access QtAda6.QtCore.QMimeType.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QMimeType.Class := new QtAda6.QtCore.QMimeType.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mimeTypeForFileNameAndData");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (fileName_P));
      Tuple_SetItem (Args, 1, device_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mimeTypeForFileNameAndData;
   function mimeTypeForName (self : access Inst; nameOrAlias_P : str) return access QtAda6.QtCore.QMimeType.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QMimeType.Class := new QtAda6.QtCore.QMimeType.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mimeTypeForName");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (nameOrAlias_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mimeTypeForName;
   function mimeTypeForUrl
     (self : access Inst; url_P : Union_QtAda6_QtCore_QUrl_str) return access QtAda6.QtCore.QMimeType.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QMimeType.Class := new QtAda6.QtCore.QMimeType.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mimeTypeForUrl");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mimeTypeForUrl;
   function mimeTypesForFileName (self : access Inst; fileName_P : str) return List_QtAda6_QtCore_QMimeType is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mimeTypesForFileName");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (fileName_P));
      Result := Object_CallObject (Method, Args, True);
      return null;
   end mimeTypesForFileName;
   function suffixForFileName (self : access Inst; fileName_P : str) return str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "suffixForFileName");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (fileName_P));
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end suffixForFileName;
end QtAda6.QtCore.QMimeDatabase;
