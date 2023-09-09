-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qlibrary.adb
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
with QtAda6.QtCore.QObject;
with QtAda6.QtCore.QLibrary.LoadHint;
package body QtAda6.QtCore.QLibrary is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create (fileName_P : str; parent_P : Optional_QtAda6_QtCore_QObject) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLibrary");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (fileName_P));
      Tuple_SetItem (Args, 1, No_Value);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (fileName_P : str; verNum_P : int; parent_P : Optional_QtAda6_QtCore_QObject) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLibrary");
      Args  := Tuple_New (3);
      Tuple_SetItem (Args, 0, Unicode_FromString (fileName_P));
      Tuple_SetItem (Args, 1, Long_FromLong (verNum_P));
      Tuple_SetItem (Args, 2, No_Value);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (fileName_P : str; version_P : str; parent_P : Optional_QtAda6_QtCore_QObject) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLibrary");
      Args  := Tuple_New (3);
      Tuple_SetItem (Args, 0, Unicode_FromString (fileName_P));
      Tuple_SetItem (Args, 1, Unicode_FromString (version_P));
      Tuple_SetItem (Args, 2, No_Value);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (parent_P : Optional_QtAda6_QtCore_QObject) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLibrary");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function errorString (self : access Inst) return str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "errorString");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end errorString;
   function fileName (self : access Inst) return str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "fileName");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end fileName;
   function isLibrary (fileName_P : str) return bool is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLibrary");
      Method := Object_GetAttrString (Class, "isLibrary");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (fileName_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isLibrary;
   function isLoaded (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isLoaded");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isLoaded;
   function load_F (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "load");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end load_F;
   function loadHints (self : access Inst) return access QtAda6.QtCore.QLibrary.LoadHint.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QLibrary.LoadHint.Class := new QtAda6.QtCore.QLibrary.LoadHint.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "loadHints");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end loadHints;
   function resolve (fileName_P : str; symbol_P : bytes) return int is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLibrary");
      Method := Object_GetAttrString (Class, "resolve");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (fileName_P));
      Tuple_SetItem (Args, 1, Bytes_FromString (String (symbol_P)));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end resolve;
   function resolve (fileName_P : str; verNum_P : int; symbol_P : bytes) return int is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLibrary");
      Method := Object_GetAttrString (Class, "resolve");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Unicode_FromString (fileName_P));
      Tuple_SetItem (Args, 1, Long_FromLong (verNum_P));
      Tuple_SetItem (Args, 2, Bytes_FromString (String (symbol_P)));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end resolve;
   function resolve (fileName_P : str; version_P : str; symbol_P : bytes) return int is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLibrary");
      Method := Object_GetAttrString (Class, "resolve");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Unicode_FromString (fileName_P));
      Tuple_SetItem (Args, 1, Unicode_FromString (version_P));
      Tuple_SetItem (Args, 2, Bytes_FromString (String (symbol_P)));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end resolve;
   function resolve (self : access Inst; symbol_P : bytes) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "resolve");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Bytes_FromString (String (symbol_P)));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end resolve;
   procedure setFileName (self : access Inst; fileName_P : str) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFileName");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (fileName_P));
      Result := Object_CallObject (Method, Args, True);
   end setFileName;
   procedure setFileNameAndVersion (self : access Inst; fileName_P : str; verNum_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFileNameAndVersion");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (fileName_P));
      Tuple_SetItem (Args, 1, Long_FromLong (verNum_P));
      Result := Object_CallObject (Method, Args, True);
   end setFileNameAndVersion;
   procedure setFileNameAndVersion (self : access Inst; fileName_P : str; version_P : str) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFileNameAndVersion");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (fileName_P));
      Tuple_SetItem (Args, 1, Unicode_FromString (version_P));
      Result := Object_CallObject (Method, Args, True);
   end setFileNameAndVersion;
   procedure setLoadHints (self : access Inst; hints_P : access QtAda6.QtCore.QLibrary.LoadHint.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setLoadHints");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, hints_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setLoadHints;
   function unload (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "unload");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end unload;
end QtAda6.QtCore.QLibrary;
