-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qjsondocument.adb
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
with QtAda6.QtCore.QJsonArray;
with QtAda6.QtCore.QJsonValue;
with QtAda6.QtCore.QByteArray;
with QtAda6.QtCore.QJsonParseError;
with QtAda6.QtCore.QJsonDocument.JsonFormat;
package body QtAda6.QtCore.QJsonDocument is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QJsonDocument");
      Args  := Tuple_New (0);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (array_K_P : access QtAda6.QtCore.QJsonArray.Inst'Class) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QJsonDocument");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, array_K_P.Python_Proxy);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (object_P : Dict_str_QtAda6_QtCore_QJsonValue) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QJsonDocument");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (other_P : access QtAda6.QtCore.QJsonDocument.Inst'Class) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QJsonDocument");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, other_P.Python_Proxy);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   procedure U_copy_U is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QJsonDocument");
      Method := Object_GetAttrString (Class, "__copy__");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end U_copy_U;
   function array_K (self : access Inst) return access QtAda6.QtCore.QJsonArray.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QJsonArray.Class := new QtAda6.QtCore.QJsonArray.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "array");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end array_K;
   function fromJson
     (json_P : Union_QtAda6_QtCore_QByteArray_bytes; error_P : Optional_QtAda6_QtCore_QJsonParseError)
      return access QtAda6.QtCore.QJsonDocument.Inst'Class
   is
      Class, Method, Args, Result : Handle;
      Ret                         : constant QtAda6.QtCore.QJsonDocument.Class := new QtAda6.QtCore.QJsonDocument.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QJsonDocument");
      Method := Object_GetAttrString (Class, "fromJson");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, No_Value);
      Tuple_SetItem (Args, 1, No_Value);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fromJson;
   function fromVariant (variant_P : Any) return access QtAda6.QtCore.QJsonDocument.Inst'Class is
      Class, Method, Args, Result : Handle;
      Ret                         : constant QtAda6.QtCore.QJsonDocument.Class := new QtAda6.QtCore.QJsonDocument.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QJsonDocument");
      Method := Object_GetAttrString (Class, "fromVariant");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Any_conv_A2P_is_not_supported);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fromVariant;
   function isArray (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isArray");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isArray;
   function isEmpty (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isEmpty");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isEmpty;
   function isNull (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isNull");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isNull;
   function isObject (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isObject");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isObject;
   function object (self : access Inst) return Dict_str_QtAda6_QtCore_QJsonValue is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "object");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end object;
   procedure setArray (self : access Inst; array_K_P : access QtAda6.QtCore.QJsonArray.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setArray");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, array_K_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setArray;
   procedure setObject (self : access Inst; object_P : Dict_str_QtAda6_QtCore_QJsonValue) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setObject");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end setObject;
   procedure swap (self : access Inst; other_P : access QtAda6.QtCore.QJsonDocument.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "swap");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, other_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end swap;
   function toJson
     (self : access Inst; format_P : access QtAda6.QtCore.QJsonDocument.JsonFormat.Inst'Class)
      return access QtAda6.QtCore.QByteArray.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toJson");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, format_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end toJson;
   function toVariant (self : access Inst) return Any is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toVariant");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Any_conv_P2A_is_not_supported;
   end toVariant;
end QtAda6.QtCore.QJsonDocument;
