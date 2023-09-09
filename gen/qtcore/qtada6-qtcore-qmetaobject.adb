-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qmetaobject.adb
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
with QtAda6.QtCore.QObject;
with QtAda6.QtCore.QMetaMethod;
with QtAda6.QtCore.QMetaClassInfo;
with QtAda6.QtCore.QMetaEnum;
with QtAda6.QtCore.Qt.ConnectionType;
with QtAda6.QtCore.QGenericReturnArgument;
with QtAda6.QtCore.QGenericArgument;
with QtAda6.QtCore.QGenericReturnArgumentHolder;
with QtAda6.QtCore.QGenericArgumentHolder;
with QtAda6.QtCore.QMetaType;
with QtAda6.QtCore.QByteArray;
with QtAda6.QtCore.QMetaProperty;
package body QtAda6.QtCore.QMetaObject is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaObject");
      Args  := Tuple_New (0);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function U_repr_U (self : access Inst) return Object is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__repr__");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return (Python_Proxy => Result);
   end U_repr_U;
   function cast
     (self : access Inst; obj_P : access QtAda6.QtCore.QObject.Inst'Class)
      return access QtAda6.QtCore.QObject.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QObject.Class := new QtAda6.QtCore.QObject.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "cast");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, obj_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end cast;
   function checkConnectArgs
     (signal_P : access QtAda6.QtCore.QMetaMethod.Inst'Class; method_P : access QtAda6.QtCore.QMetaMethod.Inst'Class)
      return bool
   is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaObject");
      Method := Object_GetAttrString (Class, "checkConnectArgs");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, signal_P.Python_Proxy);
      Tuple_SetItem (Args, 1, method_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end checkConnectArgs;
   function checkConnectArgs (signal_P : bytes; method_P : bytes) return bool is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaObject");
      Method := Object_GetAttrString (Class, "checkConnectArgs");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Bytes_FromString (String (signal_P)));
      Tuple_SetItem (Args, 1, Bytes_FromString (String (method_P)));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end checkConnectArgs;
   function classInfo (self : access Inst; index_P : int) return access QtAda6.QtCore.QMetaClassInfo.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QMetaClassInfo.Class := new QtAda6.QtCore.QMetaClassInfo.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "classInfo");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (index_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end classInfo;
   function classInfoCount (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "classInfoCount");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end classInfoCount;
   function classInfoOffset (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "classInfoOffset");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end classInfoOffset;
   function className (self : access Inst) return bytes is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "className");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return bytes (String'(Bytes_AsString (Result)));
   end className;
   procedure connectSlotsByName (o_P : access QtAda6.QtCore.QObject.Inst'Class) is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaObject");
      Method := Object_GetAttrString (Class, "connectSlotsByName");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, o_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end connectSlotsByName;
   function constructor (self : access Inst; index_P : int) return access QtAda6.QtCore.QMetaMethod.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QMetaMethod.Class := new QtAda6.QtCore.QMetaMethod.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "constructor");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (index_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end constructor;
   function constructorCount (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "constructorCount");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end constructorCount;
   function disconnect
     (sender_P   : access QtAda6.QtCore.QObject.Inst'Class; signal_index_P : int;
      receiver_P : access QtAda6.QtCore.QObject.Inst'Class; method_index_P : int) return bool
   is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaObject");
      Method := Object_GetAttrString (Class, "disconnect");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, sender_P.Python_Proxy);
      Tuple_SetItem (Args, 1, Long_FromLong (signal_index_P));
      Tuple_SetItem (Args, 2, receiver_P.Python_Proxy);
      Tuple_SetItem (Args, 3, Long_FromLong (method_index_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end disconnect;
   function disconnectOne
     (sender_P   : access QtAda6.QtCore.QObject.Inst'Class; signal_index_P : int;
      receiver_P : access QtAda6.QtCore.QObject.Inst'Class; method_index_P : int) return bool
   is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaObject");
      Method := Object_GetAttrString (Class, "disconnectOne");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, sender_P.Python_Proxy);
      Tuple_SetItem (Args, 1, Long_FromLong (signal_index_P));
      Tuple_SetItem (Args, 2, receiver_P.Python_Proxy);
      Tuple_SetItem (Args, 3, Long_FromLong (method_index_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end disconnectOne;
   function enumerator (self : access Inst; index_P : int) return access QtAda6.QtCore.QMetaEnum.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QMetaEnum.Class := new QtAda6.QtCore.QMetaEnum.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "enumerator");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (index_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end enumerator;
   function enumeratorCount (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "enumeratorCount");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end enumeratorCount;
   function enumeratorOffset (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "enumeratorOffset");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end enumeratorOffset;
   function indexOfClassInfo (self : access Inst; name_P : bytes) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "indexOfClassInfo");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Bytes_FromString (String (name_P)));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end indexOfClassInfo;
   function indexOfConstructor (self : access Inst; constructor_P : bytes) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "indexOfConstructor");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Bytes_FromString (String (constructor_P)));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end indexOfConstructor;
   function indexOfEnumerator (self : access Inst; name_P : bytes) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "indexOfEnumerator");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Bytes_FromString (String (name_P)));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end indexOfEnumerator;
   function indexOfMethod (self : access Inst; method_P : bytes) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "indexOfMethod");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Bytes_FromString (String (method_P)));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end indexOfMethod;
   function indexOfProperty (self : access Inst; name_P : bytes) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "indexOfProperty");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Bytes_FromString (String (name_P)));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end indexOfProperty;
   function indexOfSignal (self : access Inst; signal_P : bytes) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "indexOfSignal");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Bytes_FromString (String (signal_P)));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end indexOfSignal;
   function indexOfSlot (self : access Inst; slot_P : bytes) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "indexOfSlot");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Bytes_FromString (String (slot_P)));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end indexOfSlot;
   function inherits (self : access Inst; metaObject_P : access QtAda6.QtCore.QMetaObject.Inst'Class) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "inherits");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, metaObject_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end inherits;
   function invokeMethod
     (obj_P   : access QtAda6.QtCore.QObject.Inst'Class; member_P : bytes;
      arg_3_P : access QtAda6.QtCore.Qt.ConnectionType.Inst'Class;
      ret_P   : access QtAda6.QtCore.QGenericReturnArgument.Inst'Class;
      val0_P  : access QtAda6.QtCore.QGenericArgument.Inst'Class;
      val1_P  : access QtAda6.QtCore.QGenericArgument.Inst'Class;
      val2_P  : access QtAda6.QtCore.QGenericArgument.Inst'Class;
      val3_P  : access QtAda6.QtCore.QGenericArgument.Inst'Class;
      val4_P  : access QtAda6.QtCore.QGenericArgument.Inst'Class;
      val5_P  : access QtAda6.QtCore.QGenericArgument.Inst'Class;
      val6_P  : access QtAda6.QtCore.QGenericArgument.Inst'Class;
      val7_P  : access QtAda6.QtCore.QGenericArgument.Inst'Class;
      val8_P  : access QtAda6.QtCore.QGenericArgument.Inst'Class;
      val9_P  : access QtAda6.QtCore.QGenericArgument.Inst'Class) return bool
   is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaObject");
      Method := Object_GetAttrString (Class, "invokeMethod");
      Args   := Tuple_New (14);
      Tuple_SetItem (Args, 0, obj_P.Python_Proxy);
      Tuple_SetItem (Args, 1, Bytes_FromString (String (member_P)));
      Tuple_SetItem (Args, 2, arg_3_P.Python_Proxy);
      Tuple_SetItem (Args, 3, ret_P.Python_Proxy);
      Tuple_SetItem (Args, 4, val0_P.Python_Proxy);
      Tuple_SetItem (Args, 5, val1_P.Python_Proxy);
      Tuple_SetItem (Args, 6, val2_P.Python_Proxy);
      Tuple_SetItem (Args, 7, val3_P.Python_Proxy);
      Tuple_SetItem (Args, 8, val4_P.Python_Proxy);
      Tuple_SetItem (Args, 9, val5_P.Python_Proxy);
      Tuple_SetItem (Args, 10, val6_P.Python_Proxy);
      Tuple_SetItem (Args, 11, val7_P.Python_Proxy);
      Tuple_SetItem (Args, 12, val8_P.Python_Proxy);
      Tuple_SetItem (Args, 13, val9_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end invokeMethod;
   function invokeMethod
     (obj_P  : access QtAda6.QtCore.QObject.Inst'Class; member_P : bytes;
      ret_P  : access QtAda6.QtCore.QGenericReturnArgument.Inst'Class;
      val0_P : access QtAda6.QtCore.QGenericArgument.Inst'Class;
      val1_P : access QtAda6.QtCore.QGenericArgument.Inst'Class;
      val2_P : access QtAda6.QtCore.QGenericArgument.Inst'Class;
      val3_P : access QtAda6.QtCore.QGenericArgument.Inst'Class;
      val4_P : access QtAda6.QtCore.QGenericArgument.Inst'Class;
      val5_P : access QtAda6.QtCore.QGenericArgument.Inst'Class;
      val6_P : access QtAda6.QtCore.QGenericArgument.Inst'Class;
      val7_P : access QtAda6.QtCore.QGenericArgument.Inst'Class;
      val8_P : access QtAda6.QtCore.QGenericArgument.Inst'Class;
      val9_P : access QtAda6.QtCore.QGenericArgument.Inst'Class) return bool
   is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaObject");
      Method := Object_GetAttrString (Class, "invokeMethod");
      Args   := Tuple_New (13);
      Tuple_SetItem (Args, 0, obj_P.Python_Proxy);
      Tuple_SetItem (Args, 1, Bytes_FromString (String (member_P)));
      Tuple_SetItem (Args, 2, ret_P.Python_Proxy);
      Tuple_SetItem (Args, 3, val0_P.Python_Proxy);
      Tuple_SetItem (Args, 4, val1_P.Python_Proxy);
      Tuple_SetItem (Args, 5, val2_P.Python_Proxy);
      Tuple_SetItem (Args, 6, val3_P.Python_Proxy);
      Tuple_SetItem (Args, 7, val4_P.Python_Proxy);
      Tuple_SetItem (Args, 8, val5_P.Python_Proxy);
      Tuple_SetItem (Args, 9, val6_P.Python_Proxy);
      Tuple_SetItem (Args, 10, val7_P.Python_Proxy);
      Tuple_SetItem (Args, 11, val8_P.Python_Proxy);
      Tuple_SetItem (Args, 12, val9_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end invokeMethod;
   function invokeMethod
     (obj_P    : access QtAda6.QtCore.QObject.Inst'Class; member_P : bytes;
      type_K_P : access QtAda6.QtCore.Qt.ConnectionType.Inst'Class;
      val0_P   : access QtAda6.QtCore.QGenericArgument.Inst'Class;
      val1_P   : access QtAda6.QtCore.QGenericArgument.Inst'Class;
      val2_P   : access QtAda6.QtCore.QGenericArgument.Inst'Class;
      val3_P   : access QtAda6.QtCore.QGenericArgument.Inst'Class;
      val4_P   : access QtAda6.QtCore.QGenericArgument.Inst'Class;
      val5_P   : access QtAda6.QtCore.QGenericArgument.Inst'Class;
      val6_P   : access QtAda6.QtCore.QGenericArgument.Inst'Class;
      val7_P   : access QtAda6.QtCore.QGenericArgument.Inst'Class;
      val8_P   : access QtAda6.QtCore.QGenericArgument.Inst'Class;
      val9_P   : access QtAda6.QtCore.QGenericArgument.Inst'Class) return bool
   is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaObject");
      Method := Object_GetAttrString (Class, "invokeMethod");
      Args   := Tuple_New (13);
      Tuple_SetItem (Args, 0, obj_P.Python_Proxy);
      Tuple_SetItem (Args, 1, Bytes_FromString (String (member_P)));
      Tuple_SetItem (Args, 2, type_K_P.Python_Proxy);
      Tuple_SetItem (Args, 3, val0_P.Python_Proxy);
      Tuple_SetItem (Args, 4, val1_P.Python_Proxy);
      Tuple_SetItem (Args, 5, val2_P.Python_Proxy);
      Tuple_SetItem (Args, 6, val3_P.Python_Proxy);
      Tuple_SetItem (Args, 7, val4_P.Python_Proxy);
      Tuple_SetItem (Args, 8, val5_P.Python_Proxy);
      Tuple_SetItem (Args, 9, val6_P.Python_Proxy);
      Tuple_SetItem (Args, 10, val7_P.Python_Proxy);
      Tuple_SetItem (Args, 11, val8_P.Python_Proxy);
      Tuple_SetItem (Args, 12, val9_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end invokeMethod;
   function invokeMethod
     (obj_P  : access QtAda6.QtCore.QObject.Inst'Class; member_P : bytes;
      val0_P : access QtAda6.QtCore.QGenericArgument.Inst'Class;
      val1_P : access QtAda6.QtCore.QGenericArgument.Inst'Class;
      val2_P : access QtAda6.QtCore.QGenericArgument.Inst'Class;
      val3_P : access QtAda6.QtCore.QGenericArgument.Inst'Class;
      val4_P : access QtAda6.QtCore.QGenericArgument.Inst'Class;
      val5_P : access QtAda6.QtCore.QGenericArgument.Inst'Class;
      val6_P : access QtAda6.QtCore.QGenericArgument.Inst'Class;
      val7_P : access QtAda6.QtCore.QGenericArgument.Inst'Class;
      val8_P : access QtAda6.QtCore.QGenericArgument.Inst'Class;
      val9_P : access QtAda6.QtCore.QGenericArgument.Inst'Class) return bool
   is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaObject");
      Method := Object_GetAttrString (Class, "invokeMethod");
      Args   := Tuple_New (12);
      Tuple_SetItem (Args, 0, obj_P.Python_Proxy);
      Tuple_SetItem (Args, 1, Bytes_FromString (String (member_P)));
      Tuple_SetItem (Args, 2, val0_P.Python_Proxy);
      Tuple_SetItem (Args, 3, val1_P.Python_Proxy);
      Tuple_SetItem (Args, 4, val2_P.Python_Proxy);
      Tuple_SetItem (Args, 5, val3_P.Python_Proxy);
      Tuple_SetItem (Args, 6, val4_P.Python_Proxy);
      Tuple_SetItem (Args, 7, val5_P.Python_Proxy);
      Tuple_SetItem (Args, 8, val6_P.Python_Proxy);
      Tuple_SetItem (Args, 9, val7_P.Python_Proxy);
      Tuple_SetItem (Args, 10, val8_P.Python_Proxy);
      Tuple_SetItem (Args, 11, val9_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end invokeMethod;
   function invokeMethod
     (object_P : access QtAda6.QtCore.QObject.Inst'Class; member_P : bytes;
      ret_P    : access QtAda6.QtCore.QGenericReturnArgumentHolder.Inst'Class;
      val0_P   : access QtAda6.QtCore.QGenericArgumentHolder.Inst'Class;
      val1_P   : access QtAda6.QtCore.QGenericArgumentHolder.Inst'Class;
      val2_P   : access QtAda6.QtCore.QGenericArgumentHolder.Inst'Class) return Object
   is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaObject");
      Method := Object_GetAttrString (Class, "invokeMethod");
      Args   := Tuple_New (6);
      Tuple_SetItem (Args, 0, object_P.Python_Proxy);
      Tuple_SetItem (Args, 1, Bytes_FromString (String (member_P)));
      Tuple_SetItem (Args, 2, ret_P.Python_Proxy);
      Tuple_SetItem (Args, 3, val0_P.Python_Proxy);
      Tuple_SetItem (Args, 4, val1_P.Python_Proxy);
      Tuple_SetItem (Args, 5, val2_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return (Python_Proxy => Result);
   end invokeMethod;
   function invokeMethod
     (object_P : access QtAda6.QtCore.QObject.Inst'Class; member_P : bytes;
      type_K_P : access QtAda6.QtCore.Qt.ConnectionType.Inst'Class;
      ret_P    : access QtAda6.QtCore.QGenericReturnArgumentHolder.Inst'Class;
      val0_P   : access QtAda6.QtCore.QGenericArgumentHolder.Inst'Class;
      val1_P   : access QtAda6.QtCore.QGenericArgumentHolder.Inst'Class;
      val2_P   : access QtAda6.QtCore.QGenericArgumentHolder.Inst'Class) return Object
   is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaObject");
      Method := Object_GetAttrString (Class, "invokeMethod");
      Args   := Tuple_New (7);
      Tuple_SetItem (Args, 0, object_P.Python_Proxy);
      Tuple_SetItem (Args, 1, Bytes_FromString (String (member_P)));
      Tuple_SetItem (Args, 2, type_K_P.Python_Proxy);
      Tuple_SetItem (Args, 3, ret_P.Python_Proxy);
      Tuple_SetItem (Args, 4, val0_P.Python_Proxy);
      Tuple_SetItem (Args, 5, val1_P.Python_Proxy);
      Tuple_SetItem (Args, 6, val2_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return (Python_Proxy => Result);
   end invokeMethod;
   function invokeMethod
     (object_P : access QtAda6.QtCore.QObject.Inst'Class; member_P : bytes;
      type_K_P : access QtAda6.QtCore.Qt.ConnectionType.Inst'Class;
      val0_P   : access QtAda6.QtCore.QGenericArgumentHolder.Inst'Class;
      val1_P   : access QtAda6.QtCore.QGenericArgumentHolder.Inst'Class;
      val2_P   : access QtAda6.QtCore.QGenericArgumentHolder.Inst'Class) return bool
   is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaObject");
      Method := Object_GetAttrString (Class, "invokeMethod");
      Args   := Tuple_New (6);
      Tuple_SetItem (Args, 0, object_P.Python_Proxy);
      Tuple_SetItem (Args, 1, Bytes_FromString (String (member_P)));
      Tuple_SetItem (Args, 2, type_K_P.Python_Proxy);
      Tuple_SetItem (Args, 3, val0_P.Python_Proxy);
      Tuple_SetItem (Args, 4, val1_P.Python_Proxy);
      Tuple_SetItem (Args, 5, val2_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end invokeMethod;
   function invokeMethod
     (object_P : access QtAda6.QtCore.QObject.Inst'Class; member_P : bytes;
      val0_P   : access QtAda6.QtCore.QGenericArgumentHolder.Inst'Class;
      val1_P   : access QtAda6.QtCore.QGenericArgumentHolder.Inst'Class;
      val2_P   : access QtAda6.QtCore.QGenericArgumentHolder.Inst'Class) return bool
   is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaObject");
      Method := Object_GetAttrString (Class, "invokeMethod");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, object_P.Python_Proxy);
      Tuple_SetItem (Args, 1, Bytes_FromString (String (member_P)));
      Tuple_SetItem (Args, 2, val0_P.Python_Proxy);
      Tuple_SetItem (Args, 3, val1_P.Python_Proxy);
      Tuple_SetItem (Args, 4, val2_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end invokeMethod;
   function metaType (self : access Inst) return access QtAda6.QtCore.QMetaType.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QMetaType.Class := new QtAda6.QtCore.QMetaType.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "metaType");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end metaType;
   function method (self : access Inst; index_P : int) return access QtAda6.QtCore.QMetaMethod.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QMetaMethod.Class := new QtAda6.QtCore.QMetaMethod.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "method");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (index_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end method;
   function methodCount (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "methodCount");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end methodCount;
   function methodOffset (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "methodOffset");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end methodOffset;
   function newInstance
     (self   : access Inst; val0_P : access QtAda6.QtCore.QGenericArgument.Inst'Class;
      val1_P : access QtAda6.QtCore.QGenericArgument.Inst'Class;
      val2_P : access QtAda6.QtCore.QGenericArgument.Inst'Class;
      val3_P : access QtAda6.QtCore.QGenericArgument.Inst'Class;
      val4_P : access QtAda6.QtCore.QGenericArgument.Inst'Class;
      val5_P : access QtAda6.QtCore.QGenericArgument.Inst'Class;
      val6_P : access QtAda6.QtCore.QGenericArgument.Inst'Class;
      val7_P : access QtAda6.QtCore.QGenericArgument.Inst'Class;
      val8_P : access QtAda6.QtCore.QGenericArgument.Inst'Class;
      val9_P : access QtAda6.QtCore.QGenericArgument.Inst'Class) return access QtAda6.QtCore.QObject.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QObject.Class := new QtAda6.QtCore.QObject.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "newInstance");
      Args   := Tuple_New (10);
      Tuple_SetItem (Args, 0, val0_P.Python_Proxy);
      Tuple_SetItem (Args, 1, val1_P.Python_Proxy);
      Tuple_SetItem (Args, 2, val2_P.Python_Proxy);
      Tuple_SetItem (Args, 3, val3_P.Python_Proxy);
      Tuple_SetItem (Args, 4, val4_P.Python_Proxy);
      Tuple_SetItem (Args, 5, val5_P.Python_Proxy);
      Tuple_SetItem (Args, 6, val6_P.Python_Proxy);
      Tuple_SetItem (Args, 7, val7_P.Python_Proxy);
      Tuple_SetItem (Args, 8, val8_P.Python_Proxy);
      Tuple_SetItem (Args, 9, val9_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end newInstance;
   function normalizedSignature (method_P : bytes) return access QtAda6.QtCore.QByteArray.Inst'Class is
      Class, Method, Args, Result : Handle;
      Ret                         : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaObject");
      Method := Object_GetAttrString (Class, "normalizedSignature");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Bytes_FromString (String (method_P)));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end normalizedSignature;
   function normalizedType (type_K_P : bytes) return access QtAda6.QtCore.QByteArray.Inst'Class is
      Class, Method, Args, Result : Handle;
      Ret                         : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaObject");
      Method := Object_GetAttrString (Class, "normalizedType");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Bytes_FromString (String (type_K_P)));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end normalizedType;
   function property (self : access Inst; index_P : int) return access QtAda6.QtCore.QMetaProperty.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QMetaProperty.Class := new QtAda6.QtCore.QMetaProperty.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "property");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (index_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end property;
   function propertyCount (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "propertyCount");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end propertyCount;
   function propertyOffset (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "propertyOffset");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end propertyOffset;
   function superClass (self : access Inst) return access QtAda6.QtCore.QMetaObject.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QMetaObject.Class := new QtAda6.QtCore.QMetaObject.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "superClass");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end superClass;
   function userProperty (self : access Inst) return access QtAda6.QtCore.QMetaProperty.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QMetaProperty.Class := new QtAda6.QtCore.QMetaProperty.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "userProperty");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end userProperty;
end QtAda6.QtCore.QMetaObject;
