-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qjsonvalue.adb
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
with QtAda6.QtCore.QJsonArray;
with QtAda6.QtCore.QJsonValue.Type_K;
package body QtAda6.QtCore.QJsonValue is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create (a_P : access QtAda6.QtCore.QJsonArray.Inst'Class) return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QJsonValue");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if a_P /= null then a_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (arg_1_P : access QtAda6.QtCore.QJsonValue.Type_K.Inst'Class := null) return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QJsonValue");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (b_P : bool) return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QJsonValue");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (b_P));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (n_P : float) return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QJsonValue");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (n_P));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (n_P : int) return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QJsonValue");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (n_P));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (o_P : DICT_strQtAda6_QtCore_QJsonValue) return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QJsonValue");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if o_P /= null then o_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create
     (other_P : UNION_QtAda6_QtCore_QJsonValueQtAda6_QtCore_QJsonValue_Type_KboolQtAda6_QtCore_QJsonArrayDICT_strQtAda6_QtCore_QJsonValuestrbytesfloatint)
      return Class
   is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QJsonValue");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if other_P /= null then other_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (s_P : str) return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QJsonValue");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (s_P));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (s_P : bytes) return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QJsonValue");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, Bytes_FromString (String (s_P)));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   procedure U_copy_U is
      Class, Method, Args, List, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QJsonValue");
      Method := Object_GetAttrString (Class, "__copy__");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end U_copy_U;
   function fromVariant (variant_P : Any) return access QtAda6.QtCore.QJsonValue.Inst'Class is
      Class, Method, Args, List, Result : Handle;
      Ret                               : constant QtAda6.QtCore.QJsonValue.Class := new QtAda6.QtCore.QJsonValue.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QJsonValue");
      Method := Object_GetAttrString (Class, "fromVariant");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if variant_P /= null then variant_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fromVariant;
   function isArray (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isArray");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isArray;
   function isBool (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isBool");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isBool;
   function isDouble (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isDouble");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isDouble;
   function isNull (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isNull");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isNull;
   function isObject (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isObject");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isObject;
   function isString (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isString");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isString;
   function isUndefined (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isUndefined");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isUndefined;
   procedure swap
     (self    : access Inst;
      other_P : UNION_QtAda6_QtCore_QJsonValueQtAda6_QtCore_QJsonValue_Type_KboolQtAda6_QtCore_QJsonArrayDICT_strQtAda6_QtCore_QJsonValuestrbytesfloatint)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "swap");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if other_P /= null then other_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end swap;
   function toArray (self : access Inst) return access QtAda6.QtCore.QJsonArray.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QJsonArray.Class := new QtAda6.QtCore.QJsonArray.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "toArray");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end toArray;
   function toArray
     (self : access Inst; defaultValue_P : access QtAda6.QtCore.QJsonArray.Inst'Class)
      return access QtAda6.QtCore.QJsonArray.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QJsonArray.Class := new QtAda6.QtCore.QJsonArray.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toArray");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if defaultValue_P /= null then defaultValue_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end toArray;
   function toBool (self : access Inst; defaultValue_P : bool := False) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toBool");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (defaultValue_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end toBool;
   function toDouble (self : access Inst; defaultValue_P : float := 0.0) return float is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toDouble");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (defaultValue_P));
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end toDouble;
   function toInt (self : access Inst; defaultValue_P : int := 0) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toInt");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (defaultValue_P));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end toInt;
   function toInteger (self : access Inst; defaultValue_P : int := 0) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toInteger");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (defaultValue_P));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end toInteger;
   function toObject (self : access Inst) return DICT_strQtAda6_QtCore_QJsonValue is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toObject");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end toObject;
   function toObject
     (self : access Inst; defaultValue_P : DICT_strQtAda6_QtCore_QJsonValue) return DICT_strQtAda6_QtCore_QJsonValue
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toObject");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if defaultValue_P /= null then defaultValue_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return null;
   end toObject;
   function toString (self : access Inst) return str is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toString");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end toString;
   function toString (self : access Inst; defaultValue_P : str) return str is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toString");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (defaultValue_P));
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end toString;
   function toVariant (self : access Inst) return Any is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toVariant");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end toVariant;
   function type_K_F (self : access Inst) return access QtAda6.QtCore.QJsonValue.Type_K.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtCore.QJsonValue.Type_K.Class := new QtAda6.QtCore.QJsonValue.Type_K.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "type");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end type_K_F;
end QtAda6.QtCore.QJsonValue;
