-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qcborstreamreader.adb
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
with QtAda6.QtCore.QByteArray;
with QtAda6.QtCore.QIODevice;
with QtAda6.QtCore.QCborSimpleType;
with QtAda6.QtCore.QCborError;
with QtAda6.QtCore.QCborStreamReader.Type_K;
with QtAda6.QtCore.QCborStringResultByteArray;
with QtAda6.QtCore.QCborStringResultString;
with QtAda6.QtCore.QCborTag;
package body QtAda6.QtCore.QCborStreamReader is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborStreamReader");
      Args  := Tuple_New (0);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (data_P : bytes; len_P : int) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborStreamReader");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, Bytes_FromString (String (data_P)));
      Tuple_SetItem (Args, 1, Long_FromLong (len_P));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (data_P : bytearray; len_P : int) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborStreamReader");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, ByteArray_FromString (String (data_P)));
      Tuple_SetItem (Args, 1, Long_FromLong (len_P));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (data_P : Union_QtAda6_QtCore_QByteArray_bytes) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborStreamReader");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (device_P : access QtAda6.QtCore.QIODevice.Inst'Class) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborStreamReader");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, device_P.Python_Proxy);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   procedure addData (self : access Inst; data_P : bytes; len_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addData");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Bytes_FromString (String (data_P)));
      Tuple_SetItem (Args, 1, Long_FromLong (len_P));
      Result := Object_CallObject (Method, Args, True);
   end addData;
   procedure addData (self : access Inst; data_P : bytearray; len_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addData");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, ByteArray_FromString (String (data_P)));
      Tuple_SetItem (Args, 1, Long_FromLong (len_P));
      Result := Object_CallObject (Method, Args, True);
   end addData;
   procedure addData (self : access Inst; data_P : Union_QtAda6_QtCore_QByteArray_bytes) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addData");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end addData;
   procedure clear (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "clear");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end clear;
   function containerDepth (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "containerDepth");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end containerDepth;
   function currentOffset (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "currentOffset");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end currentOffset;
   function currentStringChunkSize (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "currentStringChunkSize");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end currentStringChunkSize;
   function device (self : access Inst) return access QtAda6.QtCore.QIODevice.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QIODevice.Class := new QtAda6.QtCore.QIODevice.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "device");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end device;
   function enterContainer (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "enterContainer");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end enterContainer;
   function hasNext (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hasNext");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end hasNext;
   function isArray (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isArray");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isArray;
   function isBool (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isBool");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isBool;
   function isByteArray (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isByteArray");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isByteArray;
   function isContainer (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isContainer");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isContainer;
   function isDouble (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isDouble");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isDouble;
   function isFalse (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isFalse");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isFalse;
   function isFloat (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isFloat");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isFloat;
   function isFloat16 (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isFloat16");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isFloat16;
   function isInteger (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isInteger");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isInteger;
   function isInvalid (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isInvalid");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isInvalid;
   function isLengthKnown (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isLengthKnown");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isLengthKnown;
   function isMap (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isMap");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isMap;
   function isNegativeInteger (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isNegativeInteger");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isNegativeInteger;
   function isNull (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isNull");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isNull;
   function isSimpleType (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isSimpleType");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isSimpleType;
   function isSimpleType (self : access Inst; st_P : access QtAda6.QtCore.QCborSimpleType.Inst'Class) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isSimpleType");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, st_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isSimpleType;
   function isString (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isString");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isString;
   function isTag (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isTag");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isTag;
   function isTrue (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isTrue");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isTrue;
   function isUndefined (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isUndefined");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isUndefined;
   function isUnsignedInteger (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isUnsignedInteger");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isUnsignedInteger;
   function isValid (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isValid");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isValid;
   function lastError (self : access Inst) return access QtAda6.QtCore.QCborError.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QCborError.Class := new QtAda6.QtCore.QCborError.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "lastError");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end lastError;
   function leaveContainer (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "leaveContainer");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end leaveContainer;
   function length (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "length");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end length;
   function next (self : access Inst; maxRecursion_P : int) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "next");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (maxRecursion_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end next;
   function parentContainerType (self : access Inst) return access QtAda6.QtCore.QCborStreamReader.Type_K.Inst'Class is
      Method, Args, Result : Handle;
      Ret : constant QtAda6.QtCore.QCborStreamReader.Type_K.Class := new QtAda6.QtCore.QCborStreamReader.Type_K.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "parentContainerType");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end parentContainerType;
   function readByteArray (self : access Inst) return access QtAda6.QtCore.QCborStringResultByteArray.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QCborStringResultByteArray.Class :=
        new QtAda6.QtCore.QCborStringResultByteArray.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "readByteArray");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end readByteArray;
   function readString (self : access Inst) return access QtAda6.QtCore.QCborStringResultString.Inst'Class is
      Method, Args, Result : Handle;
      Ret : constant QtAda6.QtCore.QCborStringResultString.Class := new QtAda6.QtCore.QCborStringResultString.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "readString");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end readString;
   procedure reparse (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "reparse");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end reparse;
   procedure reset (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "reset");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end reset;
   procedure setDevice (self : access Inst; device_P : access QtAda6.QtCore.QIODevice.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setDevice");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, device_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setDevice;
   function toBool (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toBool");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end toBool;
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
   function toInteger (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toInteger");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end toInteger;
   function toSimpleType (self : access Inst) return access QtAda6.QtCore.QCborSimpleType.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QCborSimpleType.Class := new QtAda6.QtCore.QCborSimpleType.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "toSimpleType");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end toSimpleType;
   function toTag (self : access Inst) return access QtAda6.QtCore.QCborTag.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QCborTag.Class := new QtAda6.QtCore.QCborTag.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "toTag");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end toTag;
   function toUnsignedInteger (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toUnsignedInteger");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end toUnsignedInteger;
   function type_K_F (self : access Inst) return access QtAda6.QtCore.QCborStreamReader.Type_K.Inst'Class is
      Method, Args, Result : Handle;
      Ret : constant QtAda6.QtCore.QCborStreamReader.Type_K.Class := new QtAda6.QtCore.QCborStreamReader.Type_K.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "type");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end type_K_F;
end QtAda6.QtCore.QCborStreamReader;
