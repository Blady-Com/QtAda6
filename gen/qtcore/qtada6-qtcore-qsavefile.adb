-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qsavefile.adb
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
with QtAda6.QtCore.QObject;
with QtAda6.QtCore.QIODeviceBase.OpenModeFlag;
package body QtAda6.QtCore.QSaveFile is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create (name_P : str) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QSaveFile");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (name_P));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (name_P : str; parent_P : access QtAda6.QtCore.QObject.Inst'Class) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QSaveFile");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (name_P));
      Tuple_SetItem (Args, 1, parent_P.Python_Proxy);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (parent_P : Optional_QtAda6_QtCore_QObject) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QSaveFile");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   procedure cancelWriting (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "cancelWriting");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end cancelWriting;
   procedure close (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "close");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end close;
   function commit (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "commit");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end commit;
   function directWriteFallback (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "directWriteFallback");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end directWriteFallback;
   function fileName (self : access Inst) return str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "fileName");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end fileName;
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
   procedure setDirectWriteFallback (self : access Inst; enabled_P : bool) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setDirectWriteFallback");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (enabled_P));
      Result := Object_CallObject (Method, Args, True);
   end setDirectWriteFallback;
   procedure setFileName (self : access Inst; name_P : str) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFileName");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (name_P));
      Result := Object_CallObject (Method, Args, True);
   end setFileName;
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
end QtAda6.QtCore.QSaveFile;
