-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qmetatype.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QMetaType.Type_K;
limited with QtAda6.QtCore.QMetaType.TypeFlag;
limited with QtAda6.QtCore.QByteArray;
limited with QtAda6.QtCore.QDataStream;
limited with QtAda6.QtCore.QMetaObject;
package QtAda6.QtCore.QMetaType is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   type TUPLE_bool_int is record
      C0 : bool;
      C1 : int;
   end record;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (arg_1_P : access QtAda6.QtCore.QMetaType.Type_K.Inst'Class) return Class;
   function Create (arg_1_P : Type_K_T) return Class;
   function Create (type_K_P : int) return Class;
   procedure U_copy_U;
   function alignOf (self : access Inst) return int;
   function canConvert
     (fromType_P : access QtAda6.QtCore.QMetaType.Inst'Class; toType_P : access QtAda6.QtCore.QMetaType.Inst'Class)
      return bool;
   function canConvert
     (fromType_P : access QtAda6.QtCore.QMetaType.Inst'Class;
      toType_P   : access QtAda6.QtCore.QMetaType.Type_K.Inst'Class) return bool;
   function canConvert
     (fromType_P : access QtAda6.QtCore.QMetaType.Type_K.Inst'Class;
      toType_P   : access QtAda6.QtCore.QMetaType.Inst'Class) return bool;
   function canConvert
     (fromType_P : access QtAda6.QtCore.QMetaType.Type_K.Inst'Class;
      toType_P   : access QtAda6.QtCore.QMetaType.Type_K.Inst'Class) return bool;
   function canView
     (fromType_P : access QtAda6.QtCore.QMetaType.Inst'Class; toType_P : access QtAda6.QtCore.QMetaType.Inst'Class)
      return bool;
   function canView
     (fromType_P : access QtAda6.QtCore.QMetaType.Inst'Class;
      toType_P   : access QtAda6.QtCore.QMetaType.Type_K.Inst'Class) return bool;
   function canView
     (fromType_P : access QtAda6.QtCore.QMetaType.Type_K.Inst'Class;
      toType_P   : access QtAda6.QtCore.QMetaType.Inst'Class) return bool;
   function canView
     (fromType_P : access QtAda6.QtCore.QMetaType.Type_K.Inst'Class;
      toType_P   : access QtAda6.QtCore.QMetaType.Type_K.Inst'Class) return bool;
   function compare (lhs_P : int; rhs_P : int; typeId_P : int) return TUPLE_bool_int;
   function construct (self : access Inst; where_P : int; copy_P : int := 0) return int;
   function construct (type_K_P : int; where_P : int; copy_P : int) return int;
   function convert (from_U_P : int; fromTypeId_P : int; to_P : int; toTypeId_P : int) return bool;
   function convert
     (fromType_P : access QtAda6.QtCore.QMetaType.Inst'Class; from_U_P : int;
      toType_P   : access QtAda6.QtCore.QMetaType.Inst'Class; to_P : int) return bool;
   function convert
     (fromType_P : access QtAda6.QtCore.QMetaType.Inst'Class; from_U_P : int;
      toType_P   : access QtAda6.QtCore.QMetaType.Type_K.Inst'Class; to_P : int) return bool;
   function convert
     (fromType_P : access QtAda6.QtCore.QMetaType.Type_K.Inst'Class; from_U_P : int;
      toType_P   : access QtAda6.QtCore.QMetaType.Inst'Class; to_P : int) return bool;
   function convert
     (fromType_P : access QtAda6.QtCore.QMetaType.Type_K.Inst'Class; from_U_P : int;
      toType_P   : access QtAda6.QtCore.QMetaType.Type_K.Inst'Class; to_P : int) return bool;
   function create (self : access Inst; copy_P : int := 0) return int;
   function create (type_K_P : int; copy_P : int := 0) return int;
   procedure destroy (self : access Inst; data_P : int);
   procedure destroy (type_K_P : int; data_P : int);
   procedure destruct (self : access Inst; data_P : int);
   procedure destruct (type_K_P : int; where_P : int);
   function equals (lhs_P : int; rhs_P : int; typeId_P : int) return TUPLE_bool_int;
   function equals (self : access Inst; lhs_P : int; rhs_P : int) return bool;
   function flags (self : access Inst) return access QtAda6.QtCore.QMetaType.TypeFlag.Inst'Class;
   function fromName
     (name_P : access QtAda6.QtCore.QByteArray.Inst'Class) return access QtAda6.QtCore.QMetaType.Inst'Class;
   function fromName (name_P : bytes) return access QtAda6.QtCore.QMetaType.Inst'Class;
   function hasRegisteredConverterFunction
     (fromType_P : access QtAda6.QtCore.QMetaType.Inst'Class; toType_P : access QtAda6.QtCore.QMetaType.Inst'Class)
      return bool;
   function hasRegisteredConverterFunction
     (fromType_P : access QtAda6.QtCore.QMetaType.Inst'Class;
      toType_P   : access QtAda6.QtCore.QMetaType.Type_K.Inst'Class) return bool;
   function hasRegisteredConverterFunction
     (fromType_P : access QtAda6.QtCore.QMetaType.Type_K.Inst'Class;
      toType_P   : access QtAda6.QtCore.QMetaType.Inst'Class) return bool;
   function hasRegisteredConverterFunction
     (fromType_P : access QtAda6.QtCore.QMetaType.Type_K.Inst'Class;
      toType_P   : access QtAda6.QtCore.QMetaType.Type_K.Inst'Class) return bool;
   function hasRegisteredDataStreamOperators (self : access Inst) return bool;
   function hasRegisteredDebugStreamOperator (self : access Inst) return bool;
   function hasRegisteredDebugStreamOperator (typeId_P : int) return bool;
   function hasRegisteredMutableViewFunction
     (fromType_P : access QtAda6.QtCore.QMetaType.Inst'Class; toType_P : access QtAda6.QtCore.QMetaType.Inst'Class)
      return bool;
   function hasRegisteredMutableViewFunction
     (fromType_P : access QtAda6.QtCore.QMetaType.Inst'Class;
      toType_P   : access QtAda6.QtCore.QMetaType.Type_K.Inst'Class) return bool;
   function hasRegisteredMutableViewFunction
     (fromType_P : access QtAda6.QtCore.QMetaType.Type_K.Inst'Class;
      toType_P   : access QtAda6.QtCore.QMetaType.Inst'Class) return bool;
   function hasRegisteredMutableViewFunction
     (fromType_P : access QtAda6.QtCore.QMetaType.Type_K.Inst'Class;
      toType_P   : access QtAda6.QtCore.QMetaType.Type_K.Inst'Class) return bool;
   function id (self : access Inst; arg_1_P : int := 0) return int;
   function isCopyConstructible (self : access Inst) return bool;
   function isDefaultConstructible (self : access Inst) return bool;
   function isDestructible (self : access Inst) return bool;
   function isEqualityComparable (self : access Inst) return bool;
   function isMoveConstructible (self : access Inst) return bool;
   function isOrdered (self : access Inst) return bool;
   function isRegistered (self : access Inst) return bool;
   function isRegistered (type_K_P : int) return bool;
   function isValid (self : access Inst) return bool;
   function load (self : access Inst; stream_P : access QtAda6.QtCore.QDataStream.Inst'Class; data_P : int) return bool;
   function load (stream_P : access QtAda6.QtCore.QDataStream.Inst'Class; type_K_P : int; data_P : int) return bool;
   function metaObjectForType (type_K_P : int) return access QtAda6.QtCore.QMetaObject.Inst'Class;
   function name (self : access Inst) return bytes;
   procedure registerType (self : access Inst);
   function save (self : access Inst; stream_P : access QtAda6.QtCore.QDataStream.Inst'Class; data_P : int) return bool;
   function save (stream_P : access QtAda6.QtCore.QDataStream.Inst'Class; type_K_P : int; data_P : int) return bool;
   function sizeOf (self : access Inst) return int;
   function sizeOf (type_K_P : int) return int;
   function type_K_F (typeName_P : bytes) return int;
   function typeFlags (type_K_P : int) return access QtAda6.QtCore.QMetaType.TypeFlag.Inst'Class;
   function typeName (type_K_P : int) return bytes;
   procedure unregisterConverterFunction
     (from_U_P : access QtAda6.QtCore.QMetaType.Inst'Class; to_P : access QtAda6.QtCore.QMetaType.Inst'Class);
   procedure unregisterConverterFunction
     (from_U_P : access QtAda6.QtCore.QMetaType.Inst'Class; to_P : access QtAda6.QtCore.QMetaType.Type_K.Inst'Class);
   procedure unregisterConverterFunction
     (from_U_P : access QtAda6.QtCore.QMetaType.Type_K.Inst'Class; to_P : access QtAda6.QtCore.QMetaType.Inst'Class);
   procedure unregisterConverterFunction
     (from_U_P : access QtAda6.QtCore.QMetaType.Type_K.Inst'Class;
      to_P     : access QtAda6.QtCore.QMetaType.Type_K.Inst'Class);
   procedure unregisterMetaType (type_K_P : access QtAda6.QtCore.QMetaType.Inst'Class);
   procedure unregisterMetaType (type_K_P : access QtAda6.QtCore.QMetaType.Type_K.Inst'Class);
   procedure unregisterMutableViewFunction
     (from_U_P : access QtAda6.QtCore.QMetaType.Inst'Class; to_P : access QtAda6.QtCore.QMetaType.Inst'Class);
   procedure unregisterMutableViewFunction
     (from_U_P : access QtAda6.QtCore.QMetaType.Inst'Class; to_P : access QtAda6.QtCore.QMetaType.Type_K.Inst'Class);
   procedure unregisterMutableViewFunction
     (from_U_P : access QtAda6.QtCore.QMetaType.Type_K.Inst'Class; to_P : access QtAda6.QtCore.QMetaType.Inst'Class);
   procedure unregisterMutableViewFunction
     (from_U_P : access QtAda6.QtCore.QMetaType.Type_K.Inst'Class;
      to_P     : access QtAda6.QtCore.QMetaType.Type_K.Inst'Class);
   function view
     (fromType_P : access QtAda6.QtCore.QMetaType.Inst'Class; from_U_P : int;
      toType_P   : access QtAda6.QtCore.QMetaType.Inst'Class; to_P : int) return bool;
   function view
     (fromType_P : access QtAda6.QtCore.QMetaType.Inst'Class; from_U_P : int;
      toType_P   : access QtAda6.QtCore.QMetaType.Type_K.Inst'Class; to_P : int) return bool;
   function view
     (fromType_P : access QtAda6.QtCore.QMetaType.Type_K.Inst'Class; from_U_P : int;
      toType_P   : access QtAda6.QtCore.QMetaType.Inst'Class; to_P : int) return bool;
   function view
     (fromType_P : access QtAda6.QtCore.QMetaType.Type_K.Inst'Class; from_U_P : int;
      toType_P   : access QtAda6.QtCore.QMetaType.Type_K.Inst'Class; to_P : int) return bool;
end QtAda6.QtCore.QMetaType;
