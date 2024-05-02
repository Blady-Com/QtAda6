-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qmimedatabase.adb
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
with QtAda6.QtCore.QMimeType;
with QtAda6.QtCore.QByteArray;
with QtAda6.QtCore.QIODevice;
with QtAda6.QtCore.QFileInfo;
with QtAda6.QtCore.QMimeDatabase.MatchMode;
with QtAda6.QtCore.QUrl;
package body QtAda6.QtCore.QMimeDatabase is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create return Class is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMimeDatabase");
      Args  := Tuple_New (0);
      Dict  := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function allMimeTypes (self : access Inst) return LIST_QtAda6_QtCore_QMimeType is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "allMimeTypes");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Ret : LIST_QtAda6_QtCore_QMimeType (1 .. Natural (List_Size (Result))) do
         for Ind in Ret'Range loop
            Ret (Ind).Python_Proxy := List_GetItem (Result, ssize_t (Ind - Ret'First));
         end loop;
      end return;
   end allMimeTypes;
   function mimeTypeForData
     (self : access Inst; data_P : access QtAda6.QtCore.QByteArray.Inst'Class)
      return access QtAda6.QtCore.QMimeType.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QMimeType.Class := new QtAda6.QtCore.QMimeType.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mimeTypeForData");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if data_P /= null then data_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mimeTypeForData;
   function mimeTypeForData (self : access Inst; data_P : bytes) return access QtAda6.QtCore.QMimeType.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QMimeType.Class := new QtAda6.QtCore.QMimeType.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mimeTypeForData");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Bytes_FromString (Standard.String (data_P.all)));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mimeTypeForData;
   function mimeTypeForData
     (self : access Inst; device_P : access QtAda6.QtCore.QIODevice.Inst'Class)
      return access QtAda6.QtCore.QMimeType.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QMimeType.Class := new QtAda6.QtCore.QMimeType.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mimeTypeForData");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if device_P /= null then device_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mimeTypeForData;
   function mimeTypeForFile
     (self   : access Inst; fileInfo_P : access QtAda6.QtCore.QFileInfo.Inst'Class;
      mode_P : access QtAda6.QtCore.QMimeDatabase.MatchMode.Inst'Class := null)
      return access QtAda6.QtCore.QMimeType.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QMimeType.Class := new QtAda6.QtCore.QMimeType.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mimeTypeForFile");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if fileInfo_P /= null then fileInfo_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if mode_P /= null then
         Dict_SetItemString (Dict, "mode", mode_P.Python_Proxy);
      end if;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mimeTypeForFile;
   function mimeTypeForFile
     (self : access Inst; fileName_P : str; mode_P : access QtAda6.QtCore.QMimeDatabase.MatchMode.Inst'Class := null)
      return access QtAda6.QtCore.QMimeType.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QMimeType.Class := new QtAda6.QtCore.QMimeType.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mimeTypeForFile");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (fileName_P));
      Dict := Dict_New;
      if mode_P /= null then
         Dict_SetItemString (Dict, "mode", mode_P.Python_Proxy);
      end if;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mimeTypeForFile;
   function mimeTypeForFileNameAndData
     (self : access Inst; fileName_P : str; data_P : access QtAda6.QtCore.QByteArray.Inst'Class)
      return access QtAda6.QtCore.QMimeType.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QMimeType.Class := new QtAda6.QtCore.QMimeType.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mimeTypeForFileNameAndData");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (fileName_P));
      Tuple_SetItem (Args, 1, (if data_P /= null then data_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mimeTypeForFileNameAndData;
   function mimeTypeForFileNameAndData
     (self : access Inst; fileName_P : str; data_P : bytes) return access QtAda6.QtCore.QMimeType.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QMimeType.Class := new QtAda6.QtCore.QMimeType.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mimeTypeForFileNameAndData");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (fileName_P));
      Tuple_SetItem (Args, 1, Bytes_FromString (Standard.String (data_P.all)));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mimeTypeForFileNameAndData;
   function mimeTypeForFileNameAndData
     (self : access Inst; fileName_P : str; device_P : access QtAda6.QtCore.QIODevice.Inst'Class)
      return access QtAda6.QtCore.QMimeType.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QMimeType.Class := new QtAda6.QtCore.QMimeType.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mimeTypeForFileNameAndData");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (fileName_P));
      Tuple_SetItem (Args, 1, (if device_P /= null then device_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mimeTypeForFileNameAndData;
   function mimeTypeForName (self : access Inst; nameOrAlias_P : str) return access QtAda6.QtCore.QMimeType.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QMimeType.Class := new QtAda6.QtCore.QMimeType.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mimeTypeForName");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (nameOrAlias_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mimeTypeForName;
   function mimeTypeForUrl
     (self : access Inst; url_P : access QtAda6.QtCore.QUrl.Inst'Class) return access QtAda6.QtCore.QMimeType.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QMimeType.Class := new QtAda6.QtCore.QMimeType.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mimeTypeForUrl");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if url_P /= null then url_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mimeTypeForUrl;
   function mimeTypeForUrl (self : access Inst; url_P : str) return access QtAda6.QtCore.QMimeType.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QMimeType.Class := new QtAda6.QtCore.QMimeType.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mimeTypeForUrl");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (url_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mimeTypeForUrl;
   function mimeTypesForFileName (self : access Inst; fileName_P : str) return LIST_QtAda6_QtCore_QMimeType is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mimeTypesForFileName");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (fileName_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Ret : LIST_QtAda6_QtCore_QMimeType (1 .. Natural (List_Size (Result))) do
         for Ind in Ret'Range loop
            Ret (Ind).Python_Proxy := List_GetItem (Result, ssize_t (Ind - Ret'First));
         end loop;
      end return;
   end mimeTypesForFileName;
   function suffixForFileName (self : access Inst; fileName_P : str) return str is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "suffixForFileName");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (fileName_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end suffixForFileName;
end QtAda6.QtCore.QMimeDatabase;
