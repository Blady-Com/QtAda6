-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qabstracteventdispatcher.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.Signal;
limited with QtAda6.QtCore.QAbstractNativeEventFilter;
limited with QtAda6.QtCore.QThread;
limited with QtAda6.QtCore.QEventLoop.ProcessEventsFlag;
limited with QtAda6.QtCore.QSocketNotifier;
limited with QtAda6.QtCore.Qt.TimerType;
limited with QtAda6.QtCore.QAbstractEventDispatcher.TimerInfo;
with QtAda6.QtCore.QObject;
package QtAda6.QtCore.QAbstractEventDispatcher is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtCore.QObject.Inst with null record;
   type UNION_QtAda6_QtCore_QByteArray_bytes is new Any;
   type TUPLE_bool_int is record
      C0 : bool;
      C1 : int;
   end record;
   subtype LIST_QtAda6_QtCore_QAbstractEventDispatcher_TimerInfo is
     QtAda6.QtCore.QAbstractEventDispatcher.TimerInfo.Class_Array;
   procedure Finalize (Self : in out Class);
   function aboutToBlock (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- aboutToBlock()
   function awake (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- awake()
   function Create (parent_P : access QtAda6.QtCore.QObject.Inst'Class := null) return Class;
   procedure closingDown (self : access Inst);
   function filterNativeEvent
     (self : access Inst; eventType_P : UNION_QtAda6_QtCore_QByteArray_bytes; message_P : int) return TUPLE_bool_int;
   procedure installNativeEventFilter
     (self : access Inst; filterObj_P : access QtAda6.QtCore.QAbstractNativeEventFilter.Inst'Class);
   function instance
     (thread_P : access QtAda6.QtCore.QThread.Inst'Class := null)
      return access QtAda6.QtCore.QAbstractEventDispatcher.Inst'Class;
   procedure interrupt (self : access Inst);
   function processEvents
     (self : access Inst; flags_P : access QtAda6.QtCore.QEventLoop.ProcessEventsFlag.Inst'Class) return bool;
   procedure registerSocketNotifier (self : access Inst; notifier_P : access QtAda6.QtCore.QSocketNotifier.Inst'Class);
   function registerTimer
     (self     : access Inst; interval_P : int; timerType_P : access QtAda6.QtCore.Qt.TimerType.Inst'Class;
      object_P : access QtAda6.QtCore.QObject.Inst'Class) return int;
   procedure registerTimer
     (self : access Inst; timerId_P : int; interval_P : int; timerType_P : access QtAda6.QtCore.Qt.TimerType.Inst'Class;
      object_P : access QtAda6.QtCore.QObject.Inst'Class);
   function registeredTimers
     (self : access Inst; object_P : access QtAda6.QtCore.QObject.Inst'Class)
      return LIST_QtAda6_QtCore_QAbstractEventDispatcher_TimerInfo;
   function remainingTime (self : access Inst; timerId_P : int) return int;
   procedure removeNativeEventFilter
     (self : access Inst; filterObj_P : access QtAda6.QtCore.QAbstractNativeEventFilter.Inst'Class);
   procedure startingUp (self : access Inst);
   procedure unregisterSocketNotifier
     (self : access Inst; notifier_P : access QtAda6.QtCore.QSocketNotifier.Inst'Class);
   function unregisterTimer (self : access Inst; timerId_P : int) return bool;
   function unregisterTimers (self : access Inst; object_P : access QtAda6.QtCore.QObject.Inst'Class) return bool;
   procedure wakeUp (self : access Inst);
end QtAda6.QtCore.QAbstractEventDispatcher;
