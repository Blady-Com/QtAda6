-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qcborarray.adb
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
with QtAda6.QtCore.QCborValue;
with QtAda6.QtCore.QCborKnownTags;
with QtAda6.QtCore.QCborSimpleType;
with QtAda6.QtCore.QCborTag;
with QtAda6.QtCore.QCborValue.Type_K;
with QtAda6.QtCore.QByteArray;
with QtAda6.QtCore.QCborMap;
with QtAda6.QtCore.QJsonArray;
package body QtAda6.QtCore.QCborArray is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborArray");
      Args  := Tuple_New (0);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (other_P : access QtAda6.QtCore.QCborArray.Inst'Class) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborArray");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, other_P.Python_Proxy);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function U_add_U
     (self : access Inst;
      v_P : Union_QtAda6_QtCore_QCborValue_QtAda6_QtCore_QCborKnownTags_QtAda6_QtCore_QCborSimpleType_QtAda6_QtCore_QCborTag_QtAda6_QtCore_QCborValue_Type_K_str_bool_QtAda6_QtCore_QByteArray_QtAda6_QtCore_QCborArray_QtAda6_QtCore_QCborMap_bytes_float_int)
      return access QtAda6.QtCore.QCborArray.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QCborArray.Class := new QtAda6.QtCore.QCborArray.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__add__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_add_U;
   procedure U_copy_U is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborArray");
      Method := Object_GetAttrString (Class, "__copy__");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end U_copy_U;
   function U_iadd_U
     (self : access Inst;
      v_P : Union_QtAda6_QtCore_QCborValue_QtAda6_QtCore_QCborKnownTags_QtAda6_QtCore_QCborSimpleType_QtAda6_QtCore_QCborTag_QtAda6_QtCore_QCborValue_Type_K_str_bool_QtAda6_QtCore_QByteArray_QtAda6_QtCore_QCborArray_QtAda6_QtCore_QCborMap_bytes_float_int)
      return access QtAda6.QtCore.QCborArray.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QCborArray.Class := new QtAda6.QtCore.QCborArray.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__iadd__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_iadd_U;
   function U_lshift_U
     (self : access Inst;
      v_P : Union_QtAda6_QtCore_QCborValue_QtAda6_QtCore_QCborKnownTags_QtAda6_QtCore_QCborSimpleType_QtAda6_QtCore_QCborTag_QtAda6_QtCore_QCborValue_Type_K_str_bool_QtAda6_QtCore_QByteArray_QtAda6_QtCore_QCborArray_QtAda6_QtCore_QCborMap_bytes_float_int)
      return access QtAda6.QtCore.QCborArray.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QCborArray.Class := new QtAda6.QtCore.QCborArray.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__lshift__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_lshift_U;
   procedure append
     (self    : access Inst;
      value_P : Union_QtAda6_QtCore_QCborValue_QtAda6_QtCore_QCborKnownTags_QtAda6_QtCore_QCborSimpleType_QtAda6_QtCore_QCborTag_QtAda6_QtCore_QCborValue_Type_K_str_bool_QtAda6_QtCore_QByteArray_QtAda6_QtCore_QCborArray_QtAda6_QtCore_QCborMap_bytes_float_int)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "append");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end append;
   function at_K (self : access Inst; i_P : int) return access QtAda6.QtCore.QCborValue.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QCborValue.Class := new QtAda6.QtCore.QCborValue.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "at");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (i_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end at_K;
   procedure clear (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "clear");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end clear;
   function compare (self : access Inst; other_P : access QtAda6.QtCore.QCborArray.Inst'Class) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "compare");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, other_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end compare;
   function contains
     (self    : access Inst;
      value_P : Union_QtAda6_QtCore_QCborValue_QtAda6_QtCore_QCborKnownTags_QtAda6_QtCore_QCborSimpleType_QtAda6_QtCore_QCborTag_QtAda6_QtCore_QCborValue_Type_K_str_bool_QtAda6_QtCore_QByteArray_QtAda6_QtCore_QCborArray_QtAda6_QtCore_QCborMap_bytes_float_int)
      return bool
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "contains");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end contains;
   function empty (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "empty");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end empty;
   function first (self : access Inst) return access QtAda6.QtCore.QCborValue.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QCborValue.Class := new QtAda6.QtCore.QCborValue.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "first");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end first;
   function fromJsonArray
     (array_K_P : access QtAda6.QtCore.QJsonArray.Inst'Class) return access QtAda6.QtCore.QCborArray.Inst'Class
   is
      Class, Method, Args, Result : Handle;
      Ret                         : constant QtAda6.QtCore.QCborArray.Class := new QtAda6.QtCore.QCborArray.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborArray");
      Method := Object_GetAttrString (Class, "fromJsonArray");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, array_K_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fromJsonArray;
   function fromStringList (list_P : Sequence_str) return access QtAda6.QtCore.QCborArray.Inst'Class is
      Class, Method, Args, Result : Handle;
      Ret                         : constant QtAda6.QtCore.QCborArray.Class := new QtAda6.QtCore.QCborArray.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborArray");
      Method := Object_GetAttrString (Class, "fromStringList");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fromStringList;
   function fromVariantList (list_P : Sequence_Any) return access QtAda6.QtCore.QCborArray.Inst'Class is
      Class, Method, Args, Result : Handle;
      Ret                         : constant QtAda6.QtCore.QCborArray.Class := new QtAda6.QtCore.QCborArray.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborArray");
      Method := Object_GetAttrString (Class, "fromVariantList");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fromVariantList;
   procedure insert
     (self    : access Inst; i_P : int;
      value_P : Union_QtAda6_QtCore_QCborValue_QtAda6_QtCore_QCborKnownTags_QtAda6_QtCore_QCborSimpleType_QtAda6_QtCore_QCborTag_QtAda6_QtCore_QCborValue_Type_K_str_bool_QtAda6_QtCore_QByteArray_QtAda6_QtCore_QCborArray_QtAda6_QtCore_QCborMap_bytes_float_int)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "insert");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (i_P));
      Tuple_SetItem (Args, 1, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end insert;
   function isEmpty (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isEmpty");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isEmpty;
   function last (self : access Inst) return access QtAda6.QtCore.QCborValue.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QCborValue.Class := new QtAda6.QtCore.QCborValue.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "last");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end last;
   procedure pop_back (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "pop_back");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end pop_back;
   procedure pop_front (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "pop_front");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end pop_front;
   procedure prepend
     (self    : access Inst;
      value_P : Union_QtAda6_QtCore_QCborValue_QtAda6_QtCore_QCborKnownTags_QtAda6_QtCore_QCborSimpleType_QtAda6_QtCore_QCborTag_QtAda6_QtCore_QCborValue_Type_K_str_bool_QtAda6_QtCore_QByteArray_QtAda6_QtCore_QCborArray_QtAda6_QtCore_QCborMap_bytes_float_int)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "prepend");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end prepend;
   procedure push_back
     (self : access Inst;
      t_P : Union_QtAda6_QtCore_QCborValue_QtAda6_QtCore_QCborKnownTags_QtAda6_QtCore_QCborSimpleType_QtAda6_QtCore_QCborTag_QtAda6_QtCore_QCborValue_Type_K_str_bool_QtAda6_QtCore_QByteArray_QtAda6_QtCore_QCborArray_QtAda6_QtCore_QCborMap_bytes_float_int)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "push_back");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end push_back;
   procedure push_front
     (self : access Inst;
      t_P : Union_QtAda6_QtCore_QCborValue_QtAda6_QtCore_QCborKnownTags_QtAda6_QtCore_QCborSimpleType_QtAda6_QtCore_QCborTag_QtAda6_QtCore_QCborValue_Type_K_str_bool_QtAda6_QtCore_QByteArray_QtAda6_QtCore_QCborArray_QtAda6_QtCore_QCborMap_bytes_float_int)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "push_front");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end push_front;
   procedure removeAt (self : access Inst; i_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "removeAt");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (i_P));
      Result := Object_CallObject (Method, Args, True);
   end removeAt;
   procedure removeFirst (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "removeFirst");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end removeFirst;
   procedure removeLast (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "removeLast");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end removeLast;
   function size (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "size");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end size;
   procedure swap (self : access Inst; other_P : access QtAda6.QtCore.QCborArray.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "swap");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, other_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end swap;
   function takeAt (self : access Inst; i_P : int) return access QtAda6.QtCore.QCborValue.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QCborValue.Class := new QtAda6.QtCore.QCborValue.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "takeAt");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (i_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end takeAt;
   function takeFirst (self : access Inst) return access QtAda6.QtCore.QCborValue.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QCborValue.Class := new QtAda6.QtCore.QCborValue.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "takeFirst");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end takeFirst;
   function takeLast (self : access Inst) return access QtAda6.QtCore.QCborValue.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QCborValue.Class := new QtAda6.QtCore.QCborValue.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "takeLast");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end takeLast;
   function toCborValue (self : access Inst) return access QtAda6.QtCore.QCborValue.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QCborValue.Class := new QtAda6.QtCore.QCborValue.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "toCborValue");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end toCborValue;
   function toJsonArray (self : access Inst) return access QtAda6.QtCore.QJsonArray.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QJsonArray.Class := new QtAda6.QtCore.QJsonArray.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "toJsonArray");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end toJsonArray;
   function toVariantList (self : access Inst) return List_Any is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toVariantList");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end toVariantList;
end QtAda6.QtCore.QCborArray;
