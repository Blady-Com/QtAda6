-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qmetamethod.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QMetaMethod.Access_K;
limited with QtAda6.QtCore.QMetaObject;
limited with QtAda6.QtCore.SignalInstance;
limited with QtAda6.QtCore.QObject;
limited with QtAda6.QtCore.Qt.ConnectionType;
limited with QtAda6.QtCore.QGenericReturnArgument;
limited with QtAda6.QtCore.QGenericArgument;
limited with QtAda6.QtCore.QMetaMethod.MethodType;
limited with QtAda6.QtCore.QMetaType;
with QtAda6.QtCore.QByteArray;
package QtAda6.QtCore.QMetaMethod is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   subtype LIST_QtAda6_QtCore_QByteArray is QtAda6.QtCore.QByteArray.Class_Array;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   procedure U_copy_U;
   function access_K_F (self : access Inst) return access QtAda6.QtCore.QMetaMethod.Access_K.Inst'Class;
   function enclosingMetaObject (self : access Inst) return access QtAda6.QtCore.QMetaObject.Inst'Class;
   function fromSignal
     (signal_P : access QtAda6.QtCore.SignalInstance.Inst'Class) return access QtAda6.QtCore.QMetaMethod.Inst'Class;
   function invoke
     (self             : access Inst; object_P : access QtAda6.QtCore.QObject.Inst'Class;
      connectionType_P : access QtAda6.QtCore.Qt.ConnectionType.Inst'Class;
      returnValue_P    : access QtAda6.QtCore.QGenericReturnArgument.Inst'Class;
      val0_P           : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val1_P           : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val2_P           : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val3_P           : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val4_P           : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val5_P           : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val6_P           : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val7_P           : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val8_P           : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val9_P           : access QtAda6.QtCore.QGenericArgument.Inst'Class := null) return bool;
   function invoke
     (self             : access Inst; object_P : access QtAda6.QtCore.QObject.Inst'Class;
      connectionType_P : access QtAda6.QtCore.Qt.ConnectionType.Inst'Class;
      val0_P           : access QtAda6.QtCore.QGenericArgument.Inst'Class;
      val1_P           : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val2_P           : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val3_P           : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val4_P           : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val5_P           : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val6_P           : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val7_P           : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val8_P           : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val9_P           : access QtAda6.QtCore.QGenericArgument.Inst'Class := null) return bool;
   function invoke
     (self          : access Inst; object_P : access QtAda6.QtCore.QObject.Inst'Class;
      returnValue_P : access QtAda6.QtCore.QGenericReturnArgument.Inst'Class;
      val0_P        : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val1_P        : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val2_P        : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val3_P        : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val4_P        : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val5_P        : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val6_P        : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val7_P        : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val8_P        : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val9_P        : access QtAda6.QtCore.QGenericArgument.Inst'Class := null) return bool;
   function invoke
     (self   : access Inst; object_P : access QtAda6.QtCore.QObject.Inst'Class;
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
   function invokeOnGadget
     (self   : access Inst; gadget_P : int; returnValue_P : access QtAda6.QtCore.QGenericReturnArgument.Inst'Class;
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
   function invokeOnGadget
     (self   : access Inst; gadget_P : int; val0_P : access QtAda6.QtCore.QGenericArgument.Inst'Class;
      val1_P : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val2_P : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val3_P : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val4_P : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val5_P : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val6_P : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val7_P : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val8_P : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val9_P : access QtAda6.QtCore.QGenericArgument.Inst'Class := null) return bool;
   function isConst (self : access Inst) return bool;
   function isValid (self : access Inst) return bool;
   function methodIndex (self : access Inst) return int;
   function methodSignature (self : access Inst) return access QtAda6.QtCore.QByteArray.Inst'Class;
   function methodType_F (self : access Inst) return access QtAda6.QtCore.QMetaMethod.MethodType.Inst'Class;
   function name (self : access Inst) return access QtAda6.QtCore.QByteArray.Inst'Class;
   function parameterCount (self : access Inst) return int;
   function parameterMetaType (self : access Inst; index_P : int) return access QtAda6.QtCore.QMetaType.Inst'Class;
   function parameterNames (self : access Inst) return LIST_QtAda6_QtCore_QByteArray;
   function parameterType (self : access Inst; index_P : int) return int;
   function parameterTypeName (self : access Inst; index_P : int) return access QtAda6.QtCore.QByteArray.Inst'Class;
   function parameterTypes (self : access Inst) return LIST_QtAda6_QtCore_QByteArray;
   function relativeMethodIndex (self : access Inst) return int;
   function returnMetaType (self : access Inst) return access QtAda6.QtCore.QMetaType.Inst'Class;
   function returnType (self : access Inst) return int;
   function revision (self : access Inst) return int;
   function tag (self : access Inst) return bytes;
   function typeName (self : access Inst) return bytes;
end QtAda6.QtCore.QMetaMethod;
