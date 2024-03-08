-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qcborvalue.adb
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
with QtAda6.QtCore.QCborArray;
with QtAda6.QtCore.QDateTime;
with QtAda6.QtCore.QCborMap;
with QtAda6.QtCore.QCborSimpleType;
with QtAda6.QtCore.QCborKnownTags;
with QtAda6.QtCore.QCborValue.Type_K;
with QtAda6.QtCore.QCborTag;
with QtAda6.QtCore.QUuid;
with QtAda6.QtCore.QCborParserError;
with QtAda6.QtCore.QCborValue;
with QtAda6.QtCore.QCborStreamReader;
with QtAda6.QtCore.QByteArray;
with QtAda6.QtCore.QCborValue.EncodingOption;
with QtAda6.QtCore.QCborStreamWriter;
with QtAda6.QtCore.QCborValue.DiagnosticNotationOption;
with QtAda6.QtCore.QJsonValue;
with QtAda6.QtCore.QRegularExpression;
with QtAda6.QtCore.QUrl;
package body QtAda6.QtCore.QCborValue is
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
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborValue");
      Args  := Tuple_New (0);
      Dict  := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (a_P : access QtAda6.QtCore.QCborArray.Inst'Class) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborValue");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if a_P /= null then a_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (b_U_P : bool) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborValue");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (b_U_P));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (ba_P : UNION_QtAda6_QtCore_QByteArray_bytes) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborValue");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if ba_P /= null then ba_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (dt_P : access QtAda6.QtCore.QDateTime.Inst'Class) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborValue");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if dt_P /= null then dt_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (i_P : int) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborValue");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (i_P));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (m_P : access QtAda6.QtCore.QCborMap.Inst'Class) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborValue");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if m_P /= null then m_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (other_P : UNION_QtAda6_QtCore_QCborValue_QtAda6_QtCore_QCborKnownTags_QtAda6_QtCore_QCborSimpleType_QtAda6_QtCore_QCborTag_QtAda6_QtCore_QCborValue_Type_K_str_bool_QtAda6_QtCore_QByteArray_QtAda6_QtCore_QCborArray_QtAda6_QtCore_QCborMap_bytes_float_int)
      return Class
   is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborValue");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if other_P /= null then other_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (rx_P : UNION_QtAda6_QtCore_QRegularExpression_str) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborValue");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if rx_P /= null then rx_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (s_P : str) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborValue");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (s_P));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (s_P : bytes) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborValue");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, Bytes_FromString (String (s_P)));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (st_P : access QtAda6.QtCore.QCborSimpleType.Inst'Class) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborValue");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if st_P /= null then st_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (t_U_P : access QtAda6.QtCore.QCborKnownTags.Inst'Class;
      tv_P : UNION_QtAda6_QtCore_QCborValue_QtAda6_QtCore_QCborKnownTags_QtAda6_QtCore_QCborSimpleType_QtAda6_QtCore_QCborTag_QtAda6_QtCore_QCborValue_Type_K_str_bool_QtAda6_QtCore_QByteArray_QtAda6_QtCore_QCborArray_QtAda6_QtCore_QCborMap_bytes_float_int :=
        null)
      return Class
   is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborValue");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if t_U_P /= null then t_U_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if tv_P /= null then
         Dict_SetItemString (Dict, "tv", tv_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (t_U_P : access QtAda6.QtCore.QCborValue.Type_K.Inst'Class) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborValue");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if t_U_P /= null then t_U_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (tag_P         : access QtAda6.QtCore.QCborTag.Inst'Class;
      taggedValue_P : UNION_QtAda6_QtCore_QCborValue_QtAda6_QtCore_QCborKnownTags_QtAda6_QtCore_QCborSimpleType_QtAda6_QtCore_QCborTag_QtAda6_QtCore_QCborValue_Type_K_str_bool_QtAda6_QtCore_QByteArray_QtAda6_QtCore_QCborArray_QtAda6_QtCore_QCborMap_bytes_float_int :=
        null)
      return Class
   is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborValue");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if tag_P /= null then tag_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if taggedValue_P /= null then
         Dict_SetItemString (Dict, "taggedValue", taggedValue_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (url_P : UNION_QtAda6_QtCore_QUrl_str) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborValue");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if url_P /= null then url_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (uuid_P : access QtAda6.QtCore.QUuid.Inst'Class) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborValue");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if uuid_P /= null then uuid_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (v_P : float) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborValue");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (v_P));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   procedure U_copy_U is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborValue");
      Method := Object_GetAttrString (Class, "__copy__");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end U_copy_U;
   function compare
     (self    : access Inst;
      other_P : UNION_QtAda6_QtCore_QCborValue_QtAda6_QtCore_QCborKnownTags_QtAda6_QtCore_QCborSimpleType_QtAda6_QtCore_QCborTag_QtAda6_QtCore_QCborValue_Type_K_str_bool_QtAda6_QtCore_QByteArray_QtAda6_QtCore_QCborArray_QtAda6_QtCore_QCborMap_bytes_float_int)
      return int
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "compare");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if other_P /= null then other_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end compare;
   function fromCbor
     (ba_P : UNION_QtAda6_QtCore_QByteArray_bytes; error_P : access QtAda6.QtCore.QCborParserError.Inst'Class := null)
      return access QtAda6.QtCore.QCborValue.Inst'Class
   is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QCborValue.Class := new QtAda6.QtCore.QCborValue.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborValue");
      Method := Object_GetAttrString (Class, "fromCbor");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if ba_P /= null then ba_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if error_P /= null then
         Dict_SetItemString (Dict, "error", error_P.Python_Proxy);
      end if;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fromCbor;
   function fromCbor
     (data_P : bytes; len_P : int; error_P : access QtAda6.QtCore.QCborParserError.Inst'Class := null)
      return access QtAda6.QtCore.QCborValue.Inst'Class
   is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QCborValue.Class := new QtAda6.QtCore.QCborValue.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborValue");
      Method := Object_GetAttrString (Class, "fromCbor");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Bytes_FromString (String (data_P)));
      Tuple_SetItem (Args, 1, Long_FromLong (len_P));
      Dict := Dict_New;
      if error_P /= null then
         Dict_SetItemString (Dict, "error", error_P.Python_Proxy);
      end if;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fromCbor;
   function fromCbor
     (data_P : bytearray; len_P : int; error_P : access QtAda6.QtCore.QCborParserError.Inst'Class := null)
      return access QtAda6.QtCore.QCborValue.Inst'Class
   is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QCborValue.Class := new QtAda6.QtCore.QCborValue.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborValue");
      Method := Object_GetAttrString (Class, "fromCbor");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, ByteArray_FromString (String (data_P)));
      Tuple_SetItem (Args, 1, Long_FromLong (len_P));
      Dict := Dict_New;
      if error_P /= null then
         Dict_SetItemString (Dict, "error", error_P.Python_Proxy);
      end if;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fromCbor;
   function fromCbor
     (reader_P : access QtAda6.QtCore.QCborStreamReader.Inst'Class) return access QtAda6.QtCore.QCborValue.Inst'Class
   is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QCborValue.Class := new QtAda6.QtCore.QCborValue.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborValue");
      Method := Object_GetAttrString (Class, "fromCbor");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if reader_P /= null then reader_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fromCbor;
   function fromJsonValue
     (v_P : UNION_QtAda6_QtCore_QJsonValue_QtAda6_QtCore_QJsonValue_Type_K_bool_QtAda6_QtCore_QJsonArray_DICT_str_QtAda6_QtCore_QJsonValue_str_bytes_float_int)
      return access QtAda6.QtCore.QCborValue.Inst'Class
   is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QCborValue.Class := new QtAda6.QtCore.QCborValue.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborValue");
      Method := Object_GetAttrString (Class, "fromJsonValue");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if v_P /= null then v_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fromJsonValue;
   function fromVariant (variant_P : Any) return access QtAda6.QtCore.QCborValue.Inst'Class is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QCborValue.Class := new QtAda6.QtCore.QCborValue.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborValue");
      Method := Object_GetAttrString (Class, "fromVariant");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if variant_P /= null then variant_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fromVariant;
   function isArray (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isArray");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isArray;
   function isBool (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isBool");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isBool;
   function isByteArray (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isByteArray");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isByteArray;
   function isContainer (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isContainer");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isContainer;
   function isDateTime (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isDateTime");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isDateTime;
   function isDouble (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isDouble");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isDouble;
   function isFalse (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isFalse");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isFalse;
   function isInteger (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isInteger");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isInteger;
   function isInvalid (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isInvalid");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isInvalid;
   function isMap (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isMap");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isMap;
   function isNull (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isNull");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isNull;
   function isRegularExpression (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isRegularExpression");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isRegularExpression;
   function isSimpleType (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isSimpleType");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isSimpleType;
   function isSimpleType (self : access Inst; st_P : access QtAda6.QtCore.QCborSimpleType.Inst'Class) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isSimpleType");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if st_P /= null then st_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isSimpleType;
   function isString (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isString");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isString;
   function isTag (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isTag");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isTag;
   function isTrue (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isTrue");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isTrue;
   function isUndefined (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isUndefined");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isUndefined;
   function isUrl (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isUrl");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isUrl;
   function isUuid (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isUuid");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isUuid;
   procedure swap
     (self    : access Inst;
      other_P : UNION_QtAda6_QtCore_QCborValue_QtAda6_QtCore_QCborKnownTags_QtAda6_QtCore_QCborSimpleType_QtAda6_QtCore_QCborTag_QtAda6_QtCore_QCborValue_Type_K_str_bool_QtAda6_QtCore_QByteArray_QtAda6_QtCore_QCborArray_QtAda6_QtCore_QCborMap_bytes_float_int)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "swap");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if other_P /= null then other_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end swap;
   function tag
     (self : access Inst; defaultValue_P : access QtAda6.QtCore.QCborTag.Inst'Class := null)
      return access QtAda6.QtCore.QCborTag.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QCborTag.Class := new QtAda6.QtCore.QCborTag.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "tag");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      if defaultValue_P /= null then
         Dict_SetItemString (Dict, "defaultValue", defaultValue_P.Python_Proxy);
      end if;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end tag;
   function taggedValue
     (self           : access Inst;
      defaultValue_P : UNION_QtAda6_QtCore_QCborValue_QtAda6_QtCore_QCborKnownTags_QtAda6_QtCore_QCborSimpleType_QtAda6_QtCore_QCborTag_QtAda6_QtCore_QCborValue_Type_K_str_bool_QtAda6_QtCore_QByteArray_QtAda6_QtCore_QCborArray_QtAda6_QtCore_QCborMap_bytes_float_int :=
        null)
      return access QtAda6.QtCore.QCborValue.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QCborValue.Class := new QtAda6.QtCore.QCborValue.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "taggedValue");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      if defaultValue_P /= null then
         Dict_SetItemString (Dict, "defaultValue", defaultValue_P.Python_Proxy);
      end if;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end taggedValue;
   function toArray (self : access Inst) return access QtAda6.QtCore.QCborArray.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QCborArray.Class := new QtAda6.QtCore.QCborArray.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "toArray");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end toArray;
   function toArray
     (self : access Inst; defaultValue_P : access QtAda6.QtCore.QCborArray.Inst'Class)
      return access QtAda6.QtCore.QCborArray.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QCborArray.Class := new QtAda6.QtCore.QCborArray.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toArray");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if defaultValue_P /= null then defaultValue_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end toArray;
   function toBool (self : access Inst; defaultValue_P : bool := False) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toBool");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      if defaultValue_P /= False then
         Dict_SetItemString (Dict, "defaultValue", To_Python (defaultValue_P));
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end toBool;
   function toByteArray
     (self : access Inst; defaultValue_P : UNION_QtAda6_QtCore_QByteArray_bytes := null)
      return access QtAda6.QtCore.QByteArray.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toByteArray");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      if defaultValue_P /= null then
         Dict_SetItemString (Dict, "defaultValue", defaultValue_P.Python_Proxy);
      end if;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end toByteArray;
   function toCbor
     (self : access Inst; opt_P : access QtAda6.QtCore.QCborValue.EncodingOption.Inst'Class := null)
      return access QtAda6.QtCore.QByteArray.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toCbor");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      if opt_P /= null then
         Dict_SetItemString (Dict, "opt", opt_P.Python_Proxy);
      end if;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end toCbor;
   procedure toCbor
     (self  : access Inst; writer_P : access QtAda6.QtCore.QCborStreamWriter.Inst'Class;
      opt_P : access QtAda6.QtCore.QCborValue.EncodingOption.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toCbor");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if writer_P /= null then writer_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if opt_P /= null then
         Dict_SetItemString (Dict, "opt", opt_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end toCbor;
   function toDateTime
     (self : access Inst; defaultValue_P : access QtAda6.QtCore.QDateTime.Inst'Class := null)
      return access QtAda6.QtCore.QDateTime.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QDateTime.Class := new QtAda6.QtCore.QDateTime.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toDateTime");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      if defaultValue_P /= null then
         Dict_SetItemString (Dict, "defaultValue", defaultValue_P.Python_Proxy);
      end if;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end toDateTime;
   function toDiagnosticNotation
     (self : access Inst; opts_P : access QtAda6.QtCore.QCborValue.DiagnosticNotationOption.Inst'Class := null)
      return str
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toDiagnosticNotation");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      if opts_P /= null then
         Dict_SetItemString (Dict, "opts", opts_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end toDiagnosticNotation;
   function toDouble (self : access Inst; defaultValue_P : float := 0.0) return float is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toDouble");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      if defaultValue_P /= 0.0 then
         Dict_SetItemString (Dict, "defaultValue", Float_FromDouble (defaultValue_P));
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return Float_AsDouble (Result);
   end toDouble;
   function toInteger (self : access Inst; defaultValue_P : int := 0) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toInteger");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      if defaultValue_P /= 0 then
         Dict_SetItemString (Dict, "defaultValue", Long_FromLong (defaultValue_P));
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end toInteger;
   function toJsonValue (self : access Inst) return access QtAda6.QtCore.QJsonValue.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QJsonValue.Class := new QtAda6.QtCore.QJsonValue.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "toJsonValue");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end toJsonValue;
   function toMap (self : access Inst) return access QtAda6.QtCore.QCborMap.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QCborMap.Class := new QtAda6.QtCore.QCborMap.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "toMap");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end toMap;
   function toMap
     (self : access Inst; defaultValue_P : access QtAda6.QtCore.QCborMap.Inst'Class)
      return access QtAda6.QtCore.QCborMap.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QCborMap.Class := new QtAda6.QtCore.QCborMap.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toMap");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if defaultValue_P /= null then defaultValue_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end toMap;
   function toRegularExpression
     (self : access Inst; defaultValue_P : UNION_QtAda6_QtCore_QRegularExpression_str := null)
      return access QtAda6.QtCore.QRegularExpression.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QRegularExpression.Class := new QtAda6.QtCore.QRegularExpression.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toRegularExpression");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      if defaultValue_P /= null then
         Dict_SetItemString (Dict, "defaultValue", defaultValue_P.Python_Proxy);
      end if;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end toRegularExpression;
   function toSimpleType
     (self : access Inst; defaultValue_P : access QtAda6.QtCore.QCborSimpleType.Inst'Class := null)
      return access QtAda6.QtCore.QCborSimpleType.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QCborSimpleType.Class := new QtAda6.QtCore.QCborSimpleType.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toSimpleType");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      if defaultValue_P /= null then
         Dict_SetItemString (Dict, "defaultValue", defaultValue_P.Python_Proxy);
      end if;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end toSimpleType;
   function toString (self : access Inst; defaultValue_P : str := "") return str is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toString");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      if defaultValue_P /= "" then
         Dict_SetItemString (Dict, "defaultValue", Unicode_FromString (defaultValue_P));
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end toString;
   function toUrl
     (self : access Inst; defaultValue_P : UNION_QtAda6_QtCore_QUrl_str := null)
      return access QtAda6.QtCore.QUrl.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QUrl.Class := new QtAda6.QtCore.QUrl.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toUrl");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      if defaultValue_P /= null then
         Dict_SetItemString (Dict, "defaultValue", defaultValue_P.Python_Proxy);
      end if;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end toUrl;
   function toUuid
     (self : access Inst; defaultValue_P : access QtAda6.QtCore.QUuid.Inst'Class := null)
      return access QtAda6.QtCore.QUuid.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QUuid.Class := new QtAda6.QtCore.QUuid.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toUuid");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      if defaultValue_P /= null then
         Dict_SetItemString (Dict, "defaultValue", defaultValue_P.Python_Proxy);
      end if;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end toUuid;
   function toVariant (self : access Inst) return Any is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toVariant");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return null;
   end toVariant;
   function type_K_F (self : access Inst) return access QtAda6.QtCore.QCborValue.Type_K.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QCborValue.Type_K.Class := new QtAda6.QtCore.QCborValue.Type_K.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "type");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end type_K_F;
end QtAda6.QtCore.QCborValue;
