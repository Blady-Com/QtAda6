-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qbytearray.adb
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
with QtAda6.QtCore.Qt.CaseSensitivity;
with QtAda6.QtCore.QByteArray.Base64Option;
with QtAda6.QtCore.QByteArray.FromBase64Result;
package body QtAda6.QtCore.QByteArray is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QByteArray");
      Args  := Tuple_New (0);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (arg_1_P : bytearray) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QByteArray");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, ByteArray_FromString (String (arg_1_P)));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (arg_1_P : bytes) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QByteArray");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, Bytes_FromString (String (arg_1_P)));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (arg_1_P : bytes; size_P : int) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QByteArray");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, Bytes_FromString (String (arg_1_P)));
      Tuple_SetItem (Args, 1, Long_FromLong (size_P));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (arg_1_P : Union_QtAda6_QtCore_QByteArray_bytes) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QByteArray");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (size_P : int; c_P : int) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QByteArray");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (size_P));
      Tuple_SetItem (Args, 1, Long_FromLong (c_P));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function U_add_U (self : access Inst; a2_P : int) return access QtAda6.QtCore.QByteArray.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__add__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (a2_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_add_U;
   function U_add_U
     (self : access Inst; a2_P : Union_QtAda6_QtCore_QByteArray_bytes) return access QtAda6.QtCore.QByteArray.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__add__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_add_U;
   function U_add_U (self : access Inst; arg_1_P : bytearray) return access QtAda6.QtCore.QByteArray.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__add__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, ByteArray_FromString (String (arg_1_P)));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_add_U;
   procedure U_add_U (self : access Inst; arg_1_P : bytes) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__add__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Bytes_FromString (String (arg_1_P)));
      Result := Object_CallObject (Method, Args, True);
   end U_add_U;
   function U_add_U (self : access Inst; s_P : str) return str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__add__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (s_P));
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end U_add_U;
   procedure U_copy_U is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QByteArray");
      Method := Object_GetAttrString (Class, "__copy__");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end U_copy_U;
   function U_iadd_U
     (self : access Inst; a_P : Union_QtAda6_QtCore_QByteArray_bytes) return access QtAda6.QtCore.QByteArray.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__iadd__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_iadd_U;
   function U_iadd_U (self : access Inst; arg_1_P : bytearray) return access QtAda6.QtCore.QByteArray.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__iadd__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, ByteArray_FromString (String (arg_1_P)));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_iadd_U;
   function U_iadd_U (self : access Inst; c_P : int) return access QtAda6.QtCore.QByteArray.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__iadd__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (c_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_iadd_U;
   function U_reduce_U (self : access Inst) return Object is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__reduce__");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return (Python_Proxy => Result);
   end U_reduce_U;
   function U_repr_U (self : access Inst) return Object is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__repr__");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return (Python_Proxy => Result);
   end U_repr_U;
   function U_str_U (self : access Inst) return Object is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__str__");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return (Python_Proxy => Result);
   end U_str_U;
   function append
     (self : access Inst; a_P : Union_QtAda6_QtCore_QByteArray_bytes) return access QtAda6.QtCore.QByteArray.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "append");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end append;
   function append (self : access Inst; c_P : int) return access QtAda6.QtCore.QByteArray.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "append");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (c_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end append;
   function append (self : access Inst; count_P : int; c_P : int) return access QtAda6.QtCore.QByteArray.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "append");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (count_P));
      Tuple_SetItem (Args, 1, Long_FromLong (c_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end append;
   function append (self : access Inst; s_P : bytes; len_P : int) return access QtAda6.QtCore.QByteArray.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "append");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Bytes_FromString (String (s_P)));
      Tuple_SetItem (Args, 1, Long_FromLong (len_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end append;
   function at_K (self : access Inst; i_P : int) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "at");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (i_P));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end at_K;
   function back (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "back");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end back;
   function capacity (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "capacity");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end capacity;
   function cbegin (self : access Inst) return bytes is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "cbegin");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return bytes (String'(Bytes_AsString (Result)));
   end cbegin;
   function cend (self : access Inst) return bytes is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "cend");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return bytes (String'(Bytes_AsString (Result)));
   end cend;
   procedure chop (self : access Inst; n_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "chop");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (n_P));
      Result := Object_CallObject (Method, Args, True);
   end chop;
   function chopped (self : access Inst; len_P : int) return access QtAda6.QtCore.QByteArray.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "chopped");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (len_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end chopped;
   procedure clear (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "clear");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end clear;
   function compare
     (self : access Inst; a_P : Union_QtAda6_QtCore_QByteArray_bytes;
      cs_P : access QtAda6.QtCore.Qt.CaseSensitivity.Inst'Class) return int
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "compare");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, No_Value);
      Tuple_SetItem (Args, 1, cs_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end compare;
   function contains (self : access Inst; bv_P : Union_QtAda6_QtCore_QByteArray_bytes) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "contains");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end contains;
   function contains (self : access Inst; c_P : int) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "contains");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (c_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end contains;
   function count (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "count");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end count;
   function count (self : access Inst; bv_P : Union_QtAda6_QtCore_QByteArray_bytes) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "count");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end count;
   function count (self : access Inst; c_P : int) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "count");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (c_P));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end count;
   function data (self : access Inst) return bytes is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "data");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return bytes (String'(Bytes_AsString (Result)));
   end data;
   function endsWith (self : access Inst; bv_P : Union_QtAda6_QtCore_QByteArray_bytes) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "endsWith");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end endsWith;
   function endsWith (self : access Inst; c_P : int) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "endsWith");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (c_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end endsWith;
   function erase (self : access Inst; first_P : bytes; last_P : bytes) return bytes is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "erase");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Bytes_FromString (String (first_P)));
      Tuple_SetItem (Args, 1, Bytes_FromString (String (last_P)));
      Result := Object_CallObject (Method, Args, True);
      return bytes (String'(Bytes_AsString (Result)));
   end erase;
   function erase (self : access Inst; it_P : bytes) return bytes is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "erase");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Bytes_FromString (String (it_P)));
      Result := Object_CallObject (Method, Args, True);
      return bytes (String'(Bytes_AsString (Result)));
   end erase;
   function fill (self : access Inst; c_P : int; size_P : int) return access QtAda6.QtCore.QByteArray.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "fill");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (c_P));
      Tuple_SetItem (Args, 1, Long_FromLong (size_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fill;
   function first (self : access Inst; n_P : int) return access QtAda6.QtCore.QByteArray.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "first");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (n_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end first;
   function fromBase64_F
     (base64_P  : Union_QtAda6_QtCore_QByteArray_bytes;
      options_P : access QtAda6.QtCore.QByteArray.Base64Option.Inst'Class)
      return access QtAda6.QtCore.QByteArray.Inst'Class
   is
      Class, Method, Args, Result : Handle;
      Ret                         : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QByteArray");
      Method := Object_GetAttrString (Class, "fromBase64");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, No_Value);
      Tuple_SetItem (Args, 1, options_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fromBase64_F;
   function fromBase64Encoding
     (base64_P  : Union_QtAda6_QtCore_QByteArray_bytes;
      options_P : access QtAda6.QtCore.QByteArray.Base64Option.Inst'Class)
      return access QtAda6.QtCore.QByteArray.FromBase64Result.Inst'Class
   is
      Class, Method, Args, Result : Handle;
      Ret                         : constant QtAda6.QtCore.QByteArray.FromBase64Result.Class :=
        new QtAda6.QtCore.QByteArray.FromBase64Result.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QByteArray");
      Method := Object_GetAttrString (Class, "fromBase64Encoding");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, No_Value);
      Tuple_SetItem (Args, 1, options_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fromBase64Encoding;
   function fromHex
     (hexEncoded_P : Union_QtAda6_QtCore_QByteArray_bytes) return access QtAda6.QtCore.QByteArray.Inst'Class
   is
      Class, Method, Args, Result : Handle;
      Ret                         : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QByteArray");
      Method := Object_GetAttrString (Class, "fromHex");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fromHex;
   function fromPercentEncoding
     (pctEncoded_P : Union_QtAda6_QtCore_QByteArray_bytes; percent_P : int)
      return access QtAda6.QtCore.QByteArray.Inst'Class
   is
      Class, Method, Args, Result : Handle;
      Ret                         : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QByteArray");
      Method := Object_GetAttrString (Class, "fromPercentEncoding");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, No_Value);
      Tuple_SetItem (Args, 1, Long_FromLong (percent_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fromPercentEncoding;
   function fromRawData (data_P : bytes; size_P : int) return access QtAda6.QtCore.QByteArray.Inst'Class is
      Class, Method, Args, Result : Handle;
      Ret                         : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QByteArray");
      Method := Object_GetAttrString (Class, "fromRawData");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Bytes_FromString (String (data_P)));
      Tuple_SetItem (Args, 1, Long_FromLong (size_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fromRawData;
   function fromStdString (s_P : str) return access QtAda6.QtCore.QByteArray.Inst'Class is
      Class, Method, Args, Result : Handle;
      Ret                         : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QByteArray");
      Method := Object_GetAttrString (Class, "fromStdString");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (s_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fromStdString;
   function front (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "front");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end front;
   function indexOf (self : access Inst; bv_P : Union_QtAda6_QtCore_QByteArray_bytes; from_U_P : int) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "indexOf");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, No_Value);
      Tuple_SetItem (Args, 1, Long_FromLong (from_U_P));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end indexOf;
   function indexOf (self : access Inst; c_P : int; from_U_P : int) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "indexOf");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (c_P));
      Tuple_SetItem (Args, 1, Long_FromLong (from_U_P));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end indexOf;
   function insert (self : access Inst; i_P : int; c_P : int) return access QtAda6.QtCore.QByteArray.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "insert");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (i_P));
      Tuple_SetItem (Args, 1, Long_FromLong (c_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end insert;
   function insert
     (self : access Inst; i_P : int; count_P : int; c_P : int) return access QtAda6.QtCore.QByteArray.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "insert");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (i_P));
      Tuple_SetItem (Args, 1, Long_FromLong (count_P));
      Tuple_SetItem (Args, 2, Long_FromLong (c_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end insert;
   function insert
     (self : access Inst; i_P : int; data_P : Union_QtAda6_QtCore_QByteArray_bytes)
      return access QtAda6.QtCore.QByteArray.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "insert");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (i_P));
      Tuple_SetItem (Args, 1, No_Value);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end insert;
   function insert (self : access Inst; i_P : int; s_P : bytes) return access QtAda6.QtCore.QByteArray.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "insert");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (i_P));
      Tuple_SetItem (Args, 1, Bytes_FromString (String (s_P)));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end insert;
   function insert
     (self : access Inst; i_P : int; s_P : bytes; len_P : int) return access QtAda6.QtCore.QByteArray.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "insert");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (i_P));
      Tuple_SetItem (Args, 1, Bytes_FromString (String (s_P)));
      Tuple_SetItem (Args, 2, Long_FromLong (len_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end insert;
   function isEmpty (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isEmpty");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isEmpty;
   function isLower (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isLower");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isLower;
   function isNull (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isNull");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isNull;
   function isSharedWith (self : access Inst; other_P : Union_QtAda6_QtCore_QByteArray_bytes) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isSharedWith");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isSharedWith;
   function isUpper (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isUpper");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isUpper;
   function isValidUtf8 (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isValidUtf8");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isValidUtf8;
   function last (self : access Inst; n_P : int) return access QtAda6.QtCore.QByteArray.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "last");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (n_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end last;
   function lastIndexOf (self : access Inst; bv_P : Union_QtAda6_QtCore_QByteArray_bytes) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "lastIndexOf");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end lastIndexOf;
   function lastIndexOf (self : access Inst; bv_P : Union_QtAda6_QtCore_QByteArray_bytes; from_U_P : int) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "lastIndexOf");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, No_Value);
      Tuple_SetItem (Args, 1, Long_FromLong (from_U_P));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end lastIndexOf;
   function lastIndexOf (self : access Inst; c_P : int; from_U_P : int) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "lastIndexOf");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (c_P));
      Tuple_SetItem (Args, 1, Long_FromLong (from_U_P));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end lastIndexOf;
   function left (self : access Inst; len_P : int) return access QtAda6.QtCore.QByteArray.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "left");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (len_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end left;
   function leftJustified
     (self : access Inst; width_P : int; fill_P : int; truncate_P : bool)
      return access QtAda6.QtCore.QByteArray.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "leftJustified");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (width_P));
      Tuple_SetItem (Args, 1, Long_FromLong (fill_P));
      Tuple_SetItem (Args, 2, To_Python (truncate_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end leftJustified;
   function length (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "length");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end length;
   function mid (self : access Inst; index_P : int; len_P : int) return access QtAda6.QtCore.QByteArray.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mid");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (index_P));
      Tuple_SetItem (Args, 1, Long_FromLong (len_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mid;
   function number
     (arg_1_P : float; format_P : int; precision_P : int) return access QtAda6.QtCore.QByteArray.Inst'Class
   is
      Class, Method, Args, Result : Handle;
      Ret                         : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QByteArray");
      Method := Object_GetAttrString (Class, "number");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Float_FromDouble (arg_1_P));
      Tuple_SetItem (Args, 1, Long_FromLong (format_P));
      Tuple_SetItem (Args, 2, Long_FromLong (precision_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end number;
   function number (arg_1_P : int; base_P : int) return access QtAda6.QtCore.QByteArray.Inst'Class is
      Class, Method, Args, Result : Handle;
      Ret                         : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QByteArray");
      Method := Object_GetAttrString (Class, "number");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (arg_1_P));
      Tuple_SetItem (Args, 1, Long_FromLong (base_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end number;
   function percentDecoded (self : access Inst; percent_P : int) return access QtAda6.QtCore.QByteArray.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "percentDecoded");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (percent_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end percentDecoded;
   function prepend
     (self : access Inst; a_P : Union_QtAda6_QtCore_QByteArray_bytes) return access QtAda6.QtCore.QByteArray.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "prepend");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end prepend;
   function prepend (self : access Inst; c_P : int) return access QtAda6.QtCore.QByteArray.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "prepend");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (c_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end prepend;
   function prepend (self : access Inst; count_P : int; c_P : int) return access QtAda6.QtCore.QByteArray.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "prepend");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (count_P));
      Tuple_SetItem (Args, 1, Long_FromLong (c_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end prepend;
   function prepend (self : access Inst; s_P : bytes; len_P : int) return access QtAda6.QtCore.QByteArray.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "prepend");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Bytes_FromString (String (s_P)));
      Tuple_SetItem (Args, 1, Long_FromLong (len_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end prepend;
   procedure push_back (self : access Inst; a_P : Union_QtAda6_QtCore_QByteArray_bytes) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "push_back");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end push_back;
   procedure push_front (self : access Inst; a_P : Union_QtAda6_QtCore_QByteArray_bytes) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "push_front");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end push_front;
   function remove (self : access Inst; index_P : int; len_P : int) return access QtAda6.QtCore.QByteArray.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "remove");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (index_P));
      Tuple_SetItem (Args, 1, Long_FromLong (len_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end remove;
   function removeAt (self : access Inst; pos_P : int) return access QtAda6.QtCore.QByteArray.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "removeAt");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (pos_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end removeAt;
   function removeFirst (self : access Inst) return access QtAda6.QtCore.QByteArray.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "removeFirst");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end removeFirst;
   function removeLast (self : access Inst) return access QtAda6.QtCore.QByteArray.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "removeLast");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end removeLast;
   function repeated (self : access Inst; times_P : int) return access QtAda6.QtCore.QByteArray.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "repeated");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (times_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end repeated;
   function replace
     (self : access Inst; before_P : bytes; bsize_P : int; after_P : bytes; asize_P : int)
      return access QtAda6.QtCore.QByteArray.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "replace");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Bytes_FromString (String (before_P)));
      Tuple_SetItem (Args, 1, Long_FromLong (bsize_P));
      Tuple_SetItem (Args, 2, Bytes_FromString (String (after_P)));
      Tuple_SetItem (Args, 3, Long_FromLong (asize_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end replace;
   function replace
     (self : access Inst; before_P : int; after_P : int) return access QtAda6.QtCore.QByteArray.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "replace");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (before_P));
      Tuple_SetItem (Args, 1, Long_FromLong (after_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end replace;
   function replace
     (self : access Inst; before_P : int; after_P : Union_QtAda6_QtCore_QByteArray_bytes)
      return access QtAda6.QtCore.QByteArray.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "replace");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (before_P));
      Tuple_SetItem (Args, 1, No_Value);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end replace;
   function replace
     (self    : access Inst; before_P : Union_QtAda6_QtCore_QByteArray_bytes;
      after_P : Union_QtAda6_QtCore_QByteArray_bytes) return access QtAda6.QtCore.QByteArray.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "replace");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, No_Value);
      Tuple_SetItem (Args, 1, No_Value);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end replace;
   function replace
     (self : access Inst; index_P : int; len_P : int; s_P : bytes; alen_P : int)
      return access QtAda6.QtCore.QByteArray.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "replace");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Long_FromLong (index_P));
      Tuple_SetItem (Args, 1, Long_FromLong (len_P));
      Tuple_SetItem (Args, 2, Bytes_FromString (String (s_P)));
      Tuple_SetItem (Args, 3, Long_FromLong (alen_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end replace;
   function replace
     (self : access Inst; index_P : int; len_P : int; s_P : Union_QtAda6_QtCore_QByteArray_bytes)
      return access QtAda6.QtCore.QByteArray.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "replace");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (index_P));
      Tuple_SetItem (Args, 1, Long_FromLong (len_P));
      Tuple_SetItem (Args, 2, No_Value);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end replace;
   procedure reserve (self : access Inst; size_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "reserve");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (size_P));
      Result := Object_CallObject (Method, Args, True);
   end reserve;
   procedure resize (self : access Inst; size_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "resize");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (size_P));
      Result := Object_CallObject (Method, Args, True);
   end resize;
   procedure resize (self : access Inst; size_P : int; c_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "resize");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (size_P));
      Tuple_SetItem (Args, 1, Long_FromLong (c_P));
      Result := Object_CallObject (Method, Args, True);
   end resize;
   function right (self : access Inst; len_P : int) return access QtAda6.QtCore.QByteArray.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "right");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (len_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end right;
   function rightJustified
     (self : access Inst; width_P : int; fill_P : int; truncate_P : bool)
      return access QtAda6.QtCore.QByteArray.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "rightJustified");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (width_P));
      Tuple_SetItem (Args, 1, Long_FromLong (fill_P));
      Tuple_SetItem (Args, 2, To_Python (truncate_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end rightJustified;
   function setNum
     (self : access Inst; arg_1_P : float; format_P : int; precision_P : int)
      return access QtAda6.QtCore.QByteArray.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setNum");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Float_FromDouble (arg_1_P));
      Tuple_SetItem (Args, 1, Long_FromLong (format_P));
      Tuple_SetItem (Args, 2, Long_FromLong (precision_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end setNum;
   function setNum (self : access Inst; arg_1_P : int; base_P : int) return access QtAda6.QtCore.QByteArray.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setNum");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (arg_1_P));
      Tuple_SetItem (Args, 1, Long_FromLong (base_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end setNum;
   function setRawData (self : access Inst; a_P : bytes; n_P : int) return access QtAda6.QtCore.QByteArray.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setRawData");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Bytes_FromString (String (a_P)));
      Tuple_SetItem (Args, 1, Long_FromLong (n_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end setRawData;
   procedure shrink_to_fit (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "shrink_to_fit");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end shrink_to_fit;
   function simplified (self : access Inst) return access QtAda6.QtCore.QByteArray.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "simplified");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end simplified;
   function size (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "size");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end size;
   function sliced (self : access Inst; pos_P : int) return access QtAda6.QtCore.QByteArray.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "sliced");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (pos_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end sliced;
   function sliced (self : access Inst; pos_P : int; n_P : int) return access QtAda6.QtCore.QByteArray.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "sliced");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (pos_P));
      Tuple_SetItem (Args, 1, Long_FromLong (n_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end sliced;
   function split (self : access Inst; sep_P : int) return List_QtAda6_QtCore_QByteArray is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "split");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (sep_P));
      Result := Object_CallObject (Method, Args, True);
      return null;
   end split;
   procedure squeeze (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "squeeze");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end squeeze;
   function startsWith (self : access Inst; bv_P : Union_QtAda6_QtCore_QByteArray_bytes) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "startsWith");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end startsWith;
   function startsWith (self : access Inst; c_P : int) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "startsWith");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (c_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end startsWith;
   procedure swap (self : access Inst; other_P : Union_QtAda6_QtCore_QByteArray_bytes) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "swap");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end swap;
   function toBase64
     (self : access Inst; options_P : access QtAda6.QtCore.QByteArray.Base64Option.Inst'Class)
      return access QtAda6.QtCore.QByteArray.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toBase64");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, options_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end toBase64;
   function toDouble (self : access Inst) return float is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toDouble");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end toDouble;
   function toFloat (self : access Inst) return float is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toFloat");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end toFloat;
   function toHex (self : access Inst; separator_P : int) return access QtAda6.QtCore.QByteArray.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toHex");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (separator_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end toHex;
   function toInt (self : access Inst; base_P : int) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toInt");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (base_P));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end toInt;
   function toLong (self : access Inst; base_P : int) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toLong");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (base_P));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end toLong;
   function toLongLong (self : access Inst; base_P : int) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toLongLong");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (base_P));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end toLongLong;
   function toLower (self : access Inst) return access QtAda6.QtCore.QByteArray.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "toLower");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end toLower;
   function toPercentEncoding
     (self      : access Inst; exclude_P : Union_QtAda6_QtCore_QByteArray_bytes;
      include_P : Union_QtAda6_QtCore_QByteArray_bytes; percent_P : int)
      return access QtAda6.QtCore.QByteArray.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toPercentEncoding");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, No_Value);
      Tuple_SetItem (Args, 1, No_Value);
      Tuple_SetItem (Args, 2, Long_FromLong (percent_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end toPercentEncoding;
   function toShort (self : access Inst; base_P : int) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toShort");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (base_P));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end toShort;
   function toStdString (self : access Inst) return str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toStdString");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end toStdString;
   function toUInt (self : access Inst; base_P : int) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toUInt");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (base_P));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end toUInt;
   function toULong (self : access Inst; base_P : int) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toULong");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (base_P));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end toULong;
   function toULongLong (self : access Inst; base_P : int) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toULongLong");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (base_P));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end toULongLong;
   function toUShort (self : access Inst; base_P : int) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toUShort");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (base_P));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end toUShort;
   function toUpper (self : access Inst) return access QtAda6.QtCore.QByteArray.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "toUpper");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end toUpper;
   function trimmed (self : access Inst) return access QtAda6.QtCore.QByteArray.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "trimmed");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end trimmed;
   procedure truncate (self : access Inst; pos_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "truncate");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (pos_P));
      Result := Object_CallObject (Method, Args, True);
   end truncate;
end QtAda6.QtCore.QByteArray;
