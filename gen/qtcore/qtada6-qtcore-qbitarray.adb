-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qbitarray.adb
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
with QtAda6.QtCore.QSysInfo.Endian;
package body QtAda6.QtCore.QBitArray is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QBitArray");
      Args  := Tuple_New (0);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (other_P : UNION_QtAda6_QtCore_QBitArrayint) return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QBitArray");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if other_P /= null then other_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (size_P : int; val_P : bool := False) return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QBitArray");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (size_P));
      Tuple_SetItem (Args, 1, To_Python (val_P));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function U_and_U
     (self : access Inst; arg_2_P : UNION_QtAda6_QtCore_QBitArrayint) return access QtAda6.QtCore.QBitArray.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QBitArray.Class := new QtAda6.QtCore.QBitArray.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__and__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_2_P /= null then arg_2_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_and_U;
   procedure U_copy_U is
      Class, Method, Args, List, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QBitArray");
      Method := Object_GetAttrString (Class, "__copy__");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end U_copy_U;
   function U_iand_U
     (self : access Inst; arg_1_P : UNION_QtAda6_QtCore_QBitArrayint) return access QtAda6.QtCore.QBitArray.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QBitArray.Class := new QtAda6.QtCore.QBitArray.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__iand__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_iand_U;
   function U_invert_U (self : access Inst) return access QtAda6.QtCore.QBitArray.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QBitArray.Class := new QtAda6.QtCore.QBitArray.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "__invert__");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_invert_U;
   function U_ior_U
     (self : access Inst; arg_1_P : UNION_QtAda6_QtCore_QBitArrayint) return access QtAda6.QtCore.QBitArray.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QBitArray.Class := new QtAda6.QtCore.QBitArray.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__ior__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_ior_U;
   function U_ixor_U
     (self : access Inst; arg_1_P : UNION_QtAda6_QtCore_QBitArrayint) return access QtAda6.QtCore.QBitArray.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QBitArray.Class := new QtAda6.QtCore.QBitArray.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__ixor__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_ixor_U;
   function U_or_U
     (self : access Inst; arg_2_P : UNION_QtAda6_QtCore_QBitArrayint) return access QtAda6.QtCore.QBitArray.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QBitArray.Class := new QtAda6.QtCore.QBitArray.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__or__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_2_P /= null then arg_2_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_or_U;
   function U_xor_U
     (self : access Inst; arg_2_P : UNION_QtAda6_QtCore_QBitArrayint) return access QtAda6.QtCore.QBitArray.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QBitArray.Class := new QtAda6.QtCore.QBitArray.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__xor__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_2_P /= null then arg_2_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_xor_U;
   function at_K (self : access Inst; i_P : int) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "at");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (i_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end at_K;
   function bits (self : access Inst) return bytes is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "bits");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return bytes (String'(Bytes_AsString (Result)));
   end bits;
   procedure clear (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "clear");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end clear;
   procedure clearBit (self : access Inst; i_P : int) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "clearBit");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (i_P));
      Result := Object_CallObject (Method, Args, True);
   end clearBit;
   function count (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "count");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end count;
   function count (self : access Inst; on_P : bool) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "count");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (on_P));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end count;
   procedure fill (self : access Inst; val_P : bool; first_P : int; last_P : int) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "fill");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, To_Python (val_P));
      Tuple_SetItem (Args, 1, Long_FromLong (first_P));
      Tuple_SetItem (Args, 2, Long_FromLong (last_P));
      Result := Object_CallObject (Method, Args, True);
   end fill;
   function fill (self : access Inst; val_P : bool; size_P : int := 0) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "fill");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, To_Python (val_P));
      Tuple_SetItem (Args, 1, Long_FromLong (size_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end fill;
   function fromBits (data_P : bytes; len_P : int) return access QtAda6.QtCore.QBitArray.Inst'Class is
      Class, Method, Args, List, Result : Handle;
      Ret                               : constant QtAda6.QtCore.QBitArray.Class := new QtAda6.QtCore.QBitArray.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QBitArray");
      Method := Object_GetAttrString (Class, "fromBits");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Bytes_FromString (String (data_P)));
      Tuple_SetItem (Args, 1, Long_FromLong (len_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fromBits;
   function isEmpty (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isEmpty");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isEmpty;
   function isNull (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isNull");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isNull;
   procedure resize (self : access Inst; size_P : int) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "resize");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (size_P));
      Result := Object_CallObject (Method, Args, True);
   end resize;
   procedure setBit (self : access Inst; i_P : int) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setBit");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (i_P));
      Result := Object_CallObject (Method, Args, True);
   end setBit;
   procedure setBit (self : access Inst; i_P : int; val_P : bool) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setBit");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (i_P));
      Tuple_SetItem (Args, 1, To_Python (val_P));
      Result := Object_CallObject (Method, Args, True);
   end setBit;
   function size (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "size");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end size;
   procedure swap (self : access Inst; other_P : UNION_QtAda6_QtCore_QBitArrayint) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "swap");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if other_P /= null then other_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end swap;
   function testBit (self : access Inst; i_P : int) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "testBit");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (i_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end testBit;
   function toUInt32
     (self : access Inst; endianness_P : access QtAda6.QtCore.QSysInfo.Endian.Inst'Class) return TUPLE_intbool
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toUInt32");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if endianness_P /= null then endianness_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return null;
   end toUInt32;
   function toggleBit (self : access Inst; i_P : int) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toggleBit");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (i_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end toggleBit;
   procedure truncate (self : access Inst; pos_P : int) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "truncate");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (pos_P));
      Result := Object_CallObject (Method, Args, True);
   end truncate;
end QtAda6.QtCore.QBitArray;
