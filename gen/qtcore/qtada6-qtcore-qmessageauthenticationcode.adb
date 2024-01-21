-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qmessageauthenticationcode.adb
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
with QtAda6.QtCore.QCryptographicHash.Algorithm;
with QtAda6.QtCore.QByteArray;
with QtAda6.QtCore.QIODevice;
package body QtAda6.QtCore.QMessageAuthenticationCode is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create
     (method_P : access QtAda6.QtCore.QCryptographicHash.Algorithm.Inst'Class;
      key_P    : UNION_QtAda6_QtCore_QByteArraybytes := null) return Class
   is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMessageAuthenticationCode");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if method_P /= null then method_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if key_P /= null then key_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   procedure addData (self : access Inst; data_P : bytes; length_P : int) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addData");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Bytes_FromString (String (data_P)));
      Tuple_SetItem (Args, 1, Long_FromLong (length_P));
      Result := Object_CallObject (Method, Args, True);
   end addData;
   procedure addData (self : access Inst; data_P : UNION_QtAda6_QtCore_QByteArraybytes) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addData");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if data_P /= null then data_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end addData;
   function addData (self : access Inst; device_P : access QtAda6.QtCore.QIODevice.Inst'Class) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addData");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if device_P /= null then device_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end addData;
   function hash
     (message_P : UNION_QtAda6_QtCore_QByteArraybytes; key_P : UNION_QtAda6_QtCore_QByteArraybytes;
      method_P  : access QtAda6.QtCore.QCryptographicHash.Algorithm.Inst'Class)
      return access QtAda6.QtCore.QByteArray.Inst'Class
   is
      Class, Method, Args, List, Result : Handle;
      Ret                               : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMessageAuthenticationCode");
      Method := Object_GetAttrString (Class, "hash");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if message_P /= null then message_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if key_P /= null then key_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if method_P /= null then method_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end hash;
   procedure reset (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "reset");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end reset;
   function result (self : access Inst) return access QtAda6.QtCore.QByteArray.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "result");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end result;
   procedure setKey (self : access Inst; key_P : UNION_QtAda6_QtCore_QByteArraybytes) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setKey");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if key_P /= null then key_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setKey;
end QtAda6.QtCore.QMessageAuthenticationCode;
