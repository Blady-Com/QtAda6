-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qmetatype.adb
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
with QtAda6.QtCore.QMetaType.Type_K;
with QtAda6.QtCore.QMetaType.TypeFlag;
with QtAda6.QtCore.QByteArray;
with QtAda6.QtCore.QDataStream;
with QtAda6.QtCore.QMetaObject;
package body QtAda6.QtCore.QMetaType is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      Args  := Tuple_New (0);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (arg_1_P : access QtAda6.QtCore.QMetaType.Type_K.Inst'Class) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, arg_1_P.Python_Proxy);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (arg_1_P : type_K_T) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, type_K_T_conv_A2P_is_not_supported);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (type_K_P : int) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (type_K_P));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   procedure U_copy_U is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      Method := Object_GetAttrString (Class, "__copy__");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end U_copy_U;
   function alignOf (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "alignOf");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end alignOf;
   function canConvert
     (fromType_P : Union_QtAda6_QtCore_QMetaType_QtAda6_QtCore_QMetaType_Type_K;
      toType_P   : Union_QtAda6_QtCore_QMetaType_QtAda6_QtCore_QMetaType_Type_K) return bool
   is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      Method := Object_GetAttrString (Class, "canConvert");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, No_Value);
      Tuple_SetItem (Args, 1, No_Value);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end canConvert;
   function canView
     (fromType_P : Union_QtAda6_QtCore_QMetaType_QtAda6_QtCore_QMetaType_Type_K;
      toType_P   : Union_QtAda6_QtCore_QMetaType_QtAda6_QtCore_QMetaType_Type_K) return bool
   is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      Method := Object_GetAttrString (Class, "canView");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, No_Value);
      Tuple_SetItem (Args, 1, No_Value);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end canView;
   function compare (lhs_P : int; rhs_P : int; typeId_P : int) return Tuple_bool_int is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      Method := Object_GetAttrString (Class, "compare");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (lhs_P));
      Tuple_SetItem (Args, 1, Long_FromLong (rhs_P));
      Tuple_SetItem (Args, 2, Long_FromLong (typeId_P));
      Result := Object_CallObject (Method, Args, True);
      return null;
   end compare;
   function construct (self : access Inst; where_P : int; copy_P : Optional_int) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "construct");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (where_P));
      Tuple_SetItem (Args, 1, No_Value);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end construct;
   function construct (type_K_P : int; where_P : int; copy_P : int) return int is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      Method := Object_GetAttrString (Class, "construct");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (type_K_P));
      Tuple_SetItem (Args, 1, Long_FromLong (where_P));
      Tuple_SetItem (Args, 2, Long_FromLong (copy_P));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end construct;
   function convert (from_U_P : int; fromTypeId_P : int; to_P : int; toTypeId_P : int) return bool is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      Method := Object_GetAttrString (Class, "convert");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Long_FromLong (from_U_P));
      Tuple_SetItem (Args, 1, Long_FromLong (fromTypeId_P));
      Tuple_SetItem (Args, 2, Long_FromLong (to_P));
      Tuple_SetItem (Args, 3, Long_FromLong (toTypeId_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end convert;
   function convert
     (fromType_P : Union_QtAda6_QtCore_QMetaType_QtAda6_QtCore_QMetaType_Type_K; from_U_P : int;
      toType_P   : Union_QtAda6_QtCore_QMetaType_QtAda6_QtCore_QMetaType_Type_K; to_P : int) return bool
   is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      Method := Object_GetAttrString (Class, "convert");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, No_Value);
      Tuple_SetItem (Args, 1, Long_FromLong (from_U_P));
      Tuple_SetItem (Args, 2, No_Value);
      Tuple_SetItem (Args, 3, Long_FromLong (to_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end convert;
   function create (self : access Inst; copy_P : Optional_int) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "create");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end create;
   function create (type_K_P : int; copy_P : Optional_int) return int is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      Method := Object_GetAttrString (Class, "create");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (type_K_P));
      Tuple_SetItem (Args, 1, No_Value);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end create;
   procedure destroy (self : access Inst; data_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "destroy");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (data_P));
      Result := Object_CallObject (Method, Args, True);
   end destroy;
   procedure destroy (type_K_P : int; data_P : int) is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      Method := Object_GetAttrString (Class, "destroy");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (type_K_P));
      Tuple_SetItem (Args, 1, Long_FromLong (data_P));
      Result := Object_CallObject (Method, Args, True);
   end destroy;
   procedure destruct (self : access Inst; data_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "destruct");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (data_P));
      Result := Object_CallObject (Method, Args, True);
   end destruct;
   procedure destruct (type_K_P : int; where_P : int) is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      Method := Object_GetAttrString (Class, "destruct");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (type_K_P));
      Tuple_SetItem (Args, 1, Long_FromLong (where_P));
      Result := Object_CallObject (Method, Args, True);
   end destruct;
   function equals (lhs_P : int; rhs_P : int; typeId_P : int) return Tuple_bool_int is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      Method := Object_GetAttrString (Class, "equals");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (lhs_P));
      Tuple_SetItem (Args, 1, Long_FromLong (rhs_P));
      Tuple_SetItem (Args, 2, Long_FromLong (typeId_P));
      Result := Object_CallObject (Method, Args, True);
      return null;
   end equals;
   function equals (self : access Inst; lhs_P : int; rhs_P : int) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "equals");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (lhs_P));
      Tuple_SetItem (Args, 1, Long_FromLong (rhs_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end equals;
   function flags (self : access Inst) return access QtAda6.QtCore.QMetaType.TypeFlag.Inst'Class is
      Method, Args, Result : Handle;
      Ret : constant QtAda6.QtCore.QMetaType.TypeFlag.Class := new QtAda6.QtCore.QMetaType.TypeFlag.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "flags");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end flags;
   function fromName (name_P : Union_QtAda6_QtCore_QByteArray_bytes) return access QtAda6.QtCore.QMetaType.Inst'Class is
      Class, Method, Args, Result : Handle;
      Ret                         : constant QtAda6.QtCore.QMetaType.Class := new QtAda6.QtCore.QMetaType.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      Method := Object_GetAttrString (Class, "fromName");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fromName;
   function hasRegisteredConverterFunction
     (fromType_P : Union_QtAda6_QtCore_QMetaType_QtAda6_QtCore_QMetaType_Type_K;
      toType_P   : Union_QtAda6_QtCore_QMetaType_QtAda6_QtCore_QMetaType_Type_K) return bool
   is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      Method := Object_GetAttrString (Class, "hasRegisteredConverterFunction");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, No_Value);
      Tuple_SetItem (Args, 1, No_Value);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end hasRegisteredConverterFunction;
   function hasRegisteredDataStreamOperators (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hasRegisteredDataStreamOperators");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end hasRegisteredDataStreamOperators;
   function hasRegisteredDebugStreamOperator (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hasRegisteredDebugStreamOperator");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end hasRegisteredDebugStreamOperator;
   function hasRegisteredDebugStreamOperator (typeId_P : int) return bool is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      Method := Object_GetAttrString (Class, "hasRegisteredDebugStreamOperator");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (typeId_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end hasRegisteredDebugStreamOperator;
   function hasRegisteredMutableViewFunction
     (fromType_P : Union_QtAda6_QtCore_QMetaType_QtAda6_QtCore_QMetaType_Type_K;
      toType_P   : Union_QtAda6_QtCore_QMetaType_QtAda6_QtCore_QMetaType_Type_K) return bool
   is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      Method := Object_GetAttrString (Class, "hasRegisteredMutableViewFunction");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, No_Value);
      Tuple_SetItem (Args, 1, No_Value);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end hasRegisteredMutableViewFunction;
   function id (self : access Inst; arg_1_P : int) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "id");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (arg_1_P));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end id;
   function isCopyConstructible (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isCopyConstructible");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isCopyConstructible;
   function isDefaultConstructible (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isDefaultConstructible");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isDefaultConstructible;
   function isDestructible (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isDestructible");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isDestructible;
   function isEqualityComparable (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isEqualityComparable");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isEqualityComparable;
   function isMoveConstructible (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isMoveConstructible");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isMoveConstructible;
   function isOrdered (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isOrdered");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isOrdered;
   function isRegistered (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isRegistered");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isRegistered;
   function isRegistered (type_K_P : int) return bool is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      Method := Object_GetAttrString (Class, "isRegistered");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (type_K_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isRegistered;
   function isValid (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isValid");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isValid;
   function load (self : access Inst; stream_P : access QtAda6.QtCore.QDataStream.Inst'Class; data_P : int) return bool
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "load");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, stream_P.Python_Proxy);
      Tuple_SetItem (Args, 1, Long_FromLong (data_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end load;
   function load (stream_P : access QtAda6.QtCore.QDataStream.Inst'Class; type_K_P : int; data_P : int) return bool is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      Method := Object_GetAttrString (Class, "load");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, stream_P.Python_Proxy);
      Tuple_SetItem (Args, 1, Long_FromLong (type_K_P));
      Tuple_SetItem (Args, 2, Long_FromLong (data_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end load;
   function metaObjectForType (type_K_P : int) return access QtAda6.QtCore.QMetaObject.Inst'Class is
      Class, Method, Args, Result : Handle;
      Ret                         : constant QtAda6.QtCore.QMetaObject.Class := new QtAda6.QtCore.QMetaObject.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      Method := Object_GetAttrString (Class, "metaObjectForType");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (type_K_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end metaObjectForType;
   function name (self : access Inst) return bytes is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "name");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return bytes (String'(Bytes_AsString (Result)));
   end name;
   procedure registerType (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "registerType");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end registerType;
   function save (self : access Inst; stream_P : access QtAda6.QtCore.QDataStream.Inst'Class; data_P : int) return bool
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "save");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, stream_P.Python_Proxy);
      Tuple_SetItem (Args, 1, Long_FromLong (data_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end save;
   function save (stream_P : access QtAda6.QtCore.QDataStream.Inst'Class; type_K_P : int; data_P : int) return bool is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      Method := Object_GetAttrString (Class, "save");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, stream_P.Python_Proxy);
      Tuple_SetItem (Args, 1, Long_FromLong (type_K_P));
      Tuple_SetItem (Args, 2, Long_FromLong (data_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end save;
   function sizeOf (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "sizeOf");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end sizeOf;
   function sizeOf (type_K_P : int) return int is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      Method := Object_GetAttrString (Class, "sizeOf");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (type_K_P));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end sizeOf;
   function type_K_F (typeName_P : bytes) return int is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      Method := Object_GetAttrString (Class, "type");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Bytes_FromString (String (typeName_P)));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end type_K_F;
   function typeFlags (type_K_P : int) return access QtAda6.QtCore.QMetaType.TypeFlag.Inst'Class is
      Class, Method, Args, Result : Handle;
      Ret : constant QtAda6.QtCore.QMetaType.TypeFlag.Class := new QtAda6.QtCore.QMetaType.TypeFlag.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      Method := Object_GetAttrString (Class, "typeFlags");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (type_K_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end typeFlags;
   function typeName (type_K_P : int) return bytes is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      Method := Object_GetAttrString (Class, "typeName");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (type_K_P));
      Result := Object_CallObject (Method, Args, True);
      return bytes (String'(Bytes_AsString (Result)));
   end typeName;
   procedure unregisterConverterFunction
     (from_U_P : Union_QtAda6_QtCore_QMetaType_QtAda6_QtCore_QMetaType_Type_K;
      to_P     : Union_QtAda6_QtCore_QMetaType_QtAda6_QtCore_QMetaType_Type_K)
   is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      Method := Object_GetAttrString (Class, "unregisterConverterFunction");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, No_Value);
      Tuple_SetItem (Args, 1, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end unregisterConverterFunction;
   procedure unregisterMetaType (type_K_P : Union_QtAda6_QtCore_QMetaType_QtAda6_QtCore_QMetaType_Type_K) is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      Method := Object_GetAttrString (Class, "unregisterMetaType");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end unregisterMetaType;
   procedure unregisterMutableViewFunction
     (from_U_P : Union_QtAda6_QtCore_QMetaType_QtAda6_QtCore_QMetaType_Type_K;
      to_P     : Union_QtAda6_QtCore_QMetaType_QtAda6_QtCore_QMetaType_Type_K)
   is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      Method := Object_GetAttrString (Class, "unregisterMutableViewFunction");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, No_Value);
      Tuple_SetItem (Args, 1, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end unregisterMutableViewFunction;
   function view
     (fromType_P : Union_QtAda6_QtCore_QMetaType_QtAda6_QtCore_QMetaType_Type_K; from_U_P : int;
      toType_P   : Union_QtAda6_QtCore_QMetaType_QtAda6_QtCore_QMetaType_Type_K; to_P : int) return bool
   is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      Method := Object_GetAttrString (Class, "view");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, No_Value);
      Tuple_SetItem (Args, 1, Long_FromLong (from_U_P));
      Tuple_SetItem (Args, 2, No_Value);
      Tuple_SetItem (Args, 3, Long_FromLong (to_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end view;
end QtAda6.QtCore.QMetaType;
