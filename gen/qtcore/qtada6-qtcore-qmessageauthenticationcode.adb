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
     (method_P : access QtAda6.QtCore.QCryptographicHash.Algorithm.Inst'Class;
      key_P    : access QtAda6.QtCore.QByteArray.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMessageAuthenticationCode");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if method_P /= null then method_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if key_P /= null then
         Dict_SetItemString (Dict, "key", key_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (method_P : access QtAda6.QtCore.QCryptographicHash.Algorithm.Inst'Class; key_P : bytes := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMessageAuthenticationCode");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if method_P /= null then method_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if key_P /= null then
         Dict_SetItemString (Dict, "key", Bytes_FromString (Standard.String (key_P.all)));
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   procedure addData (self : access Inst; data_P : bytes; length_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addData");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Bytes_FromString (Standard.String (data_P.all)));
      Tuple_SetItem (Args, 1, Long_FromLong (length_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end addData;
   procedure addData (self : access Inst; data_P : access QtAda6.QtCore.QByteArray.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addData");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if data_P /= null then data_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end addData;
   procedure addData (self : access Inst; data_P : bytes) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addData");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Bytes_FromString (Standard.String (data_P.all)));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end addData;
   function addData (self : access Inst; device_P : access QtAda6.QtCore.QIODevice.Inst'Class) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addData");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if device_P /= null then device_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end addData;
   function hash
     (message_P : access QtAda6.QtCore.QByteArray.Inst'Class; key_P : access QtAda6.QtCore.QByteArray.Inst'Class;
      method_P  : access QtAda6.QtCore.QCryptographicHash.Algorithm.Inst'Class)
      return access QtAda6.QtCore.QByteArray.Inst'Class
   is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMessageAuthenticationCode");
      Method := Object_GetAttrString (Class, "hash");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if message_P /= null then message_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if key_P /= null then key_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if method_P /= null then method_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end hash;
   function hash
     (message_P : access QtAda6.QtCore.QByteArray.Inst'Class; key_P : bytes;
      method_P  : access QtAda6.QtCore.QCryptographicHash.Algorithm.Inst'Class)
      return access QtAda6.QtCore.QByteArray.Inst'Class
   is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMessageAuthenticationCode");
      Method := Object_GetAttrString (Class, "hash");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if message_P /= null then message_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Bytes_FromString (Standard.String (key_P.all)));
      Tuple_SetItem (Args, 2, (if method_P /= null then method_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end hash;
   function hash
     (message_P : bytes; key_P : access QtAda6.QtCore.QByteArray.Inst'Class;
      method_P  : access QtAda6.QtCore.QCryptographicHash.Algorithm.Inst'Class)
      return access QtAda6.QtCore.QByteArray.Inst'Class
   is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMessageAuthenticationCode");
      Method := Object_GetAttrString (Class, "hash");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Bytes_FromString (Standard.String (message_P.all)));
      Tuple_SetItem (Args, 1, (if key_P /= null then key_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if method_P /= null then method_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end hash;
   function hash
     (message_P : bytes; key_P : bytes; method_P : access QtAda6.QtCore.QCryptographicHash.Algorithm.Inst'Class)
      return access QtAda6.QtCore.QByteArray.Inst'Class
   is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMessageAuthenticationCode");
      Method := Object_GetAttrString (Class, "hash");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Bytes_FromString (Standard.String (message_P.all)));
      Tuple_SetItem (Args, 1, Bytes_FromString (Standard.String (key_P.all)));
      Tuple_SetItem (Args, 2, (if method_P /= null then method_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end hash;
   procedure reset (self : access Inst) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "reset");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end reset;
   function result (self : access Inst) return access QtAda6.QtCore.QByteArray.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "result");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end result;
   procedure setKey (self : access Inst; key_P : access QtAda6.QtCore.QByteArray.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setKey");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if key_P /= null then key_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setKey;
   procedure setKey (self : access Inst; key_P : bytes) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setKey");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Bytes_FromString (Standard.String (key_P.all)));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setKey;
end QtAda6.QtCore.QMessageAuthenticationCode;
