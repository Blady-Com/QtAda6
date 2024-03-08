-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qobject.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.Signal;
limited with QtAda6.QtCore.QChildEvent;
limited with QtAda6.QtCore.Qt.ConnectionType;
limited with QtAda6.QtCore.QMetaObject.Connection;
limited with QtAda6.QtCore.QMetaMethod;
limited with QtAda6.QtCore.QEvent;
limited with QtAda6.QtCore.QByteArray;
limited with QtAda6.QtCore.Qt.FindChildOption;
limited with QtAda6.QtCore.QMetaObject;
limited with QtAda6.QtCore.QThread;
limited with QtAda6.QtCore.Qt.TimerType;
limited with QtAda6.QtCore.QTimerEvent;
package QtAda6.QtCore.QObject is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   subtype LIST_QtAda6_QtCore_QObject is QtAda6.QtCore.QObject.Class_Array;
   type CALLABLE is new Any;
   subtype LIST_QtAda6_QtCore_QByteArray is QtAda6.QtCore.QByteArray.Class_Array;
   type UNION_QtAda6_QtCore_QRegularExpression_str is new Any;
   procedure Finalize (Self : in out Class);
   function destroyed (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- destroyed()
   function objectNameChanged
     (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- objectNameChanged(QString)
   function Create (parent_P : access QtAda6.QtCore.QObject.Inst'Class := null) return Class;
   function blockSignals (self : access Inst; b_P : bool) return bool;
   procedure childEvent (self : access Inst; event_P : access QtAda6.QtCore.QChildEvent.Inst'Class);
   function children (self : access Inst) return LIST_QtAda6_QtCore_QObject;
   function connect
     (arg_1_P  : access QtAda6.QtCore.QObject.Inst'Class; arg_2_P : bytes; arg_3_P : CALLABLE;
      type_K_P : access QtAda6.QtCore.Qt.ConnectionType.Inst'Class := null)
      return access QtAda6.QtCore.QMetaObject.Connection.Inst'Class;
   function connect
     (self     : access Inst; arg_1_P : bytes; arg_2_P : CALLABLE;
      type_K_P : access QtAda6.QtCore.Qt.ConnectionType.Inst'Class := null)
      return access QtAda6.QtCore.QMetaObject.Connection.Inst'Class;
   function connect
     (self     : access Inst; arg_1_P : bytes; arg_2_P : access QtAda6.QtCore.QObject.Inst'Class; arg_3_P : bytes;
      type_K_P : access QtAda6.QtCore.Qt.ConnectionType.Inst'Class := null)
      return access QtAda6.QtCore.QMetaObject.Connection.Inst'Class;
   function connect
     (self     : access Inst; sender_P : access QtAda6.QtCore.QObject.Inst'Class; signal_P : bytes; member_P : bytes;
      type_K_P : access QtAda6.QtCore.Qt.ConnectionType.Inst'Class := null)
      return access QtAda6.QtCore.QMetaObject.Connection.Inst'Class;
   function connect
     (sender_P   : access QtAda6.QtCore.QObject.Inst'Class; signal_P : access QtAda6.QtCore.QMetaMethod.Inst'Class;
      receiver_P : access QtAda6.QtCore.QObject.Inst'Class; method_P : access QtAda6.QtCore.QMetaMethod.Inst'Class;
      type_K_P   : access QtAda6.QtCore.Qt.ConnectionType.Inst'Class := null)
      return access QtAda6.QtCore.QMetaObject.Connection.Inst'Class;
   function connect
     (sender_P   : access QtAda6.QtCore.QObject.Inst'Class; signal_P : bytes;
      receiver_P : access QtAda6.QtCore.QObject.Inst'Class; member_P : bytes;
      type_K_P   : access QtAda6.QtCore.Qt.ConnectionType.Inst'Class := null)
      return access QtAda6.QtCore.QMetaObject.Connection.Inst'Class;
   procedure connectNotify (self : access Inst; signal_P : access QtAda6.QtCore.QMetaMethod.Inst'Class);
   procedure customEvent (self : access Inst; event_P : access QtAda6.QtCore.QEvent.Inst'Class);
   procedure deleteLater (self : access Inst);
   function disconnect (arg_1_P : access QtAda6.QtCore.QMetaObject.Connection.Inst'Class) return bool;
   function disconnect
     (arg_1_P : access QtAda6.QtCore.QObject.Inst'Class; arg_2_P : bytes; arg_3_P : CALLABLE) return bool;
   function disconnect (self : access Inst; arg_1_P : bytes; arg_2_P : CALLABLE) return bool;
   function disconnect
     (self : access Inst; receiver_P : access QtAda6.QtCore.QObject.Inst'Class; member_P : bytes := "") return bool;
   function disconnect
     (self : access Inst; signal_P : bytes; receiver_P : access QtAda6.QtCore.QObject.Inst'Class; member_P : bytes)
      return bool;
   function disconnect
     (sender_P   : access QtAda6.QtCore.QObject.Inst'Class; signal_P : access QtAda6.QtCore.QMetaMethod.Inst'Class;
      receiver_P : access QtAda6.QtCore.QObject.Inst'Class; member_P : access QtAda6.QtCore.QMetaMethod.Inst'Class)
      return bool;
   function disconnect
     (sender_P   : access QtAda6.QtCore.QObject.Inst'Class; signal_P : bytes;
      receiver_P : access QtAda6.QtCore.QObject.Inst'Class; member_P : bytes) return bool;
   procedure disconnectNotify (self : access Inst; signal_P : access QtAda6.QtCore.QMetaMethod.Inst'Class);
   procedure dumpObjectInfo (self : access Inst);
   procedure dumpObjectTree (self : access Inst);
   function dynamicPropertyNames (self : access Inst) return LIST_QtAda6_QtCore_QByteArray;
   function emit (self : access Inst; arg_1_P : bytes; args_P : None) return bool;
   function event (self : access Inst; event_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   function eventFilter
     (self    : access Inst; watched_P : access QtAda6.QtCore.QObject.Inst'Class;
      event_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   function findChild
     (self      : access Inst; type_K_P : Type_K_T; name_P : str := "";
      options_P : access QtAda6.QtCore.Qt.FindChildOption.Inst'Class := null) return access Object'Class;
   function findChildren
     (self      : access Inst; type_K_P : Type_K_T; name_P : str := "";
      options_P : access QtAda6.QtCore.Qt.FindChildOption.Inst'Class := null) return Iterable;
   function findChildren
     (self      : access Inst; type_K_P : Type_K_T; pattern_P : UNION_QtAda6_QtCore_QRegularExpression_str;
      options_P : access QtAda6.QtCore.Qt.FindChildOption.Inst'Class := null) return Iterable;
   function inherits (self : access Inst; classname_P : bytes) return bool;
   procedure installEventFilter (self : access Inst; filterObj_P : access QtAda6.QtCore.QObject.Inst'Class);
   function isQuickItemType (self : access Inst) return bool;
   function isSignalConnected (self : access Inst; signal_P : access QtAda6.QtCore.QMetaMethod.Inst'Class) return bool;
   function isWidgetType (self : access Inst) return bool;
   function isWindowType (self : access Inst) return bool;
   procedure killTimer (self : access Inst; id_P : int);
   function metaObject (self : access Inst) return access QtAda6.QtCore.QMetaObject.Inst'Class;
   procedure moveToThread (self : access Inst; thread_P : access QtAda6.QtCore.QThread.Inst'Class);
   function objectName (self : access Inst) return str;
   function parent (self : access Inst) return access QtAda6.QtCore.QObject.Inst'Class;
   function property (self : access Inst; name_P : str) return Any;
   function receivers (self : access Inst; signal_P : bytes) return int;
   procedure removeEventFilter (self : access Inst; obj_P : access QtAda6.QtCore.QObject.Inst'Class);
   function sender (self : access Inst) return access QtAda6.QtCore.QObject.Inst'Class;
   function senderSignalIndex (self : access Inst) return int;
   procedure setObjectName (self : access Inst; name_P : str);
   procedure setParent (self : access Inst; parent_P : access QtAda6.QtCore.QObject.Inst'Class);
   function setProperty (self : access Inst; name_P : str; value_P : Any) return bool;
   function signalsBlocked (self : access Inst) return bool;
   function startTimer
     (self : access Inst; interval_P : int; timerType_P : access QtAda6.QtCore.Qt.TimerType.Inst'Class := null)
      return int;
   function thread (self : access Inst) return access QtAda6.QtCore.QThread.Inst'Class;
   procedure timerEvent (self : access Inst; event_P : access QtAda6.QtCore.QTimerEvent.Inst'Class);
end QtAda6.QtCore.QObject;
