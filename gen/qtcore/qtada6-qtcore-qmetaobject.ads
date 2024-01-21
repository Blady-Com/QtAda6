-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qmetaobject.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QObject;
limited with QtAda6.QtCore.QMetaMethod;
limited with QtAda6.QtCore.QMetaClassInfo;
limited with QtAda6.QtCore.QMetaEnum;
limited with QtAda6.QtCore.Qt.ConnectionType;
limited with QtAda6.QtCore.QGenericReturnArgument;
limited with QtAda6.QtCore.QGenericArgument;
limited with QtAda6.QtCore.QGenericReturnArgumentHolder;
limited with QtAda6.QtCore.QGenericArgumentHolder;
limited with QtAda6.QtCore.QMetaType;
limited with QtAda6.QtCore.QByteArray;
limited with QtAda6.QtCore.QMetaProperty;
package QtAda6.QtCore.QMetaObject is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function U_repr_U (self : access Inst) return access Object'Class;
   function cast
     (self : access Inst; obj_P : access QtAda6.QtCore.QObject.Inst'Class)
      return access QtAda6.QtCore.QObject.Inst'Class;
   function checkConnectArgs
     (signal_P : access QtAda6.QtCore.QMetaMethod.Inst'Class; method_P : access QtAda6.QtCore.QMetaMethod.Inst'Class)
      return bool;
   function checkConnectArgs (signal_P : bytes; method_P : bytes) return bool;
   function classInfo (self : access Inst; index_P : int) return access QtAda6.QtCore.QMetaClassInfo.Inst'Class;
   function classInfoCount (self : access Inst) return int;
   function classInfoOffset (self : access Inst) return int;
   function className (self : access Inst) return bytes;
   procedure connectSlotsByName (o_P : access QtAda6.QtCore.QObject.Inst'Class);
   function constructor (self : access Inst; index_P : int) return access QtAda6.QtCore.QMetaMethod.Inst'Class;
   function constructorCount (self : access Inst) return int;
   function disconnect
     (sender_P   : access QtAda6.QtCore.QObject.Inst'Class; signal_index_P : int;
      receiver_P : access QtAda6.QtCore.QObject.Inst'Class; method_index_P : int) return bool;
   function disconnectOne
     (sender_P   : access QtAda6.QtCore.QObject.Inst'Class; signal_index_P : int;
      receiver_P : access QtAda6.QtCore.QObject.Inst'Class; method_index_P : int) return bool;
   function enumerator (self : access Inst; index_P : int) return access QtAda6.QtCore.QMetaEnum.Inst'Class;
   function enumeratorCount (self : access Inst) return int;
   function enumeratorOffset (self : access Inst) return int;
   function indexOfClassInfo (self : access Inst; name_P : bytes) return int;
   function indexOfConstructor (self : access Inst; constructor_P : bytes) return int;
   function indexOfEnumerator (self : access Inst; name_P : bytes) return int;
   function indexOfMethod (self : access Inst; method_P : bytes) return int;
   function indexOfProperty (self : access Inst; name_P : bytes) return int;
   function indexOfSignal (self : access Inst; signal_P : bytes) return int;
   function indexOfSlot (self : access Inst; slot_P : bytes) return int;
   function inherits (self : access Inst; metaObject_P : access QtAda6.QtCore.QMetaObject.Inst'Class) return bool;
   function invokeMethod
     (obj_P   : access QtAda6.QtCore.QObject.Inst'Class; member_P : bytes;
      arg_3_P : access QtAda6.QtCore.Qt.ConnectionType.Inst'Class;
      ret_P   : access QtAda6.QtCore.QGenericReturnArgument.Inst'Class;
      val0_P  : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val1_P  : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val2_P  : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val3_P  : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val4_P  : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val5_P  : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val6_P  : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val7_P  : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val8_P  : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val9_P  : access QtAda6.QtCore.QGenericArgument.Inst'Class := null) return bool;
   function invokeMethod
     (obj_P  : access QtAda6.QtCore.QObject.Inst'Class; member_P : bytes;
      ret_P  : access QtAda6.QtCore.QGenericReturnArgument.Inst'Class;
      val0_P : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val1_P : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val2_P : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val3_P : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val4_P : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val5_P : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val6_P : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val7_P : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val8_P : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val9_P : access QtAda6.QtCore.QGenericArgument.Inst'Class := null) return bool;
   function invokeMethod
     (obj_P    : access QtAda6.QtCore.QObject.Inst'Class; member_P : bytes;
      type_K_P : access QtAda6.QtCore.Qt.ConnectionType.Inst'Class;
      val0_P   : access QtAda6.QtCore.QGenericArgument.Inst'Class;
      val1_P   : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val2_P   : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val3_P   : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val4_P   : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val5_P   : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val6_P   : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val7_P   : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val8_P   : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val9_P   : access QtAda6.QtCore.QGenericArgument.Inst'Class := null) return bool;
   function invokeMethod
     (obj_P  : access QtAda6.QtCore.QObject.Inst'Class; member_P : bytes;
      val0_P : access QtAda6.QtCore.QGenericArgument.Inst'Class;
      val1_P : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val2_P : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val3_P : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val4_P : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val5_P : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val6_P : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val7_P : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val8_P : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val9_P : access QtAda6.QtCore.QGenericArgument.Inst'Class := null) return bool;
   function invokeMethod
     (object_P : access QtAda6.QtCore.QObject.Inst'Class; member_P : bytes;
      ret_P    : access QtAda6.QtCore.QGenericReturnArgumentHolder.Inst'Class;
      val0_P   : access QtAda6.QtCore.QGenericArgumentHolder.Inst'Class := null;
      val1_P   : access QtAda6.QtCore.QGenericArgumentHolder.Inst'Class := null;
      val2_P   : access QtAda6.QtCore.QGenericArgumentHolder.Inst'Class := null) return access Object'Class;
   function invokeMethod
     (object_P : access QtAda6.QtCore.QObject.Inst'Class; member_P : bytes;
      type_K_P : access QtAda6.QtCore.Qt.ConnectionType.Inst'Class;
      ret_P    : access QtAda6.QtCore.QGenericReturnArgumentHolder.Inst'Class;
      val0_P   : access QtAda6.QtCore.QGenericArgumentHolder.Inst'Class := null;
      val1_P   : access QtAda6.QtCore.QGenericArgumentHolder.Inst'Class := null;
      val2_P   : access QtAda6.QtCore.QGenericArgumentHolder.Inst'Class := null) return access Object'Class;
   function invokeMethod
     (object_P : access QtAda6.QtCore.QObject.Inst'Class; member_P : bytes;
      type_K_P : access QtAda6.QtCore.Qt.ConnectionType.Inst'Class;
      val0_P   : access QtAda6.QtCore.QGenericArgumentHolder.Inst'Class := null;
      val1_P   : access QtAda6.QtCore.QGenericArgumentHolder.Inst'Class := null;
      val2_P   : access QtAda6.QtCore.QGenericArgumentHolder.Inst'Class := null) return bool;
   function invokeMethod
     (object_P : access QtAda6.QtCore.QObject.Inst'Class; member_P : bytes;
      val0_P   : access QtAda6.QtCore.QGenericArgumentHolder.Inst'Class := null;
      val1_P   : access QtAda6.QtCore.QGenericArgumentHolder.Inst'Class := null;
      val2_P   : access QtAda6.QtCore.QGenericArgumentHolder.Inst'Class := null) return bool;
   function metaType (self : access Inst) return access QtAda6.QtCore.QMetaType.Inst'Class;
   function method (self : access Inst; index_P : int) return access QtAda6.QtCore.QMetaMethod.Inst'Class;
   function methodCount (self : access Inst) return int;
   function methodOffset (self : access Inst) return int;
   function newInstance
     (self   : access Inst; val0_P : access QtAda6.QtCore.QGenericArgument.Inst'Class;
      val1_P : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val2_P : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val3_P : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val4_P : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val5_P : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val6_P : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val7_P : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val8_P : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val9_P : access QtAda6.QtCore.QGenericArgument.Inst'Class := null) return access QtAda6.QtCore.QObject.Inst'Class;
   function normalizedSignature (method_P : bytes) return access QtAda6.QtCore.QByteArray.Inst'Class;
   function normalizedType (type_K_P : bytes) return access QtAda6.QtCore.QByteArray.Inst'Class;
   function property (self : access Inst; index_P : int) return access QtAda6.QtCore.QMetaProperty.Inst'Class;
   function propertyCount (self : access Inst) return int;
   function propertyOffset (self : access Inst) return int;
   function superClass (self : access Inst) return access QtAda6.QtCore.QMetaObject.Inst'Class;
   function userProperty (self : access Inst) return access QtAda6.QtCore.QMetaProperty.Inst'Class;
end QtAda6.QtCore.QMetaObject;
