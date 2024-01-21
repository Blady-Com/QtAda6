-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qabstracteventdispatcher.adb
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
with QtAda6.QtCore.QObject;
with QtAda6.QtCore.QByteArray;
with QtAda6.QtCore.QAbstractNativeEventFilter;
with QtAda6.QtCore.QThread;
with QtAda6.QtCore.QEventLoop.ProcessEventsFlag;
with QtAda6.QtCore.QSocketNotifier;
with QtAda6.QtCore.Qt.TimerType;
with QtAda6.QtCore.QAbstractEventDispatcher.TimerInfo;
package body QtAda6.QtCore.QAbstractEventDispatcher is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function aboutToBlock (self : access Inst) return CLASSVAR_Signal is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "aboutToBlock"));
   end aboutToBlock;
   function awake (self : access Inst) return CLASSVAR_Signal is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "awake"));
   end awake;
   function Create (parent_P : access QtAda6.QtCore.QObject.Inst'Class := null) return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QAbstractEventDispatcher");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if parent_P /= null then parent_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   procedure closingDown (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "closingDown");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end closingDown;
   function filterNativeEvent
     (self : access Inst; eventType_P : UNION_QtAda6_QtCore_QByteArraybytes; message_P : int) return TUPLE_boolint
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "filterNativeEvent");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if eventType_P /= null then eventType_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (message_P));
      Result := Object_CallObject (Method, Args, True);
      return null;
   end filterNativeEvent;
   procedure installNativeEventFilter
     (self : access Inst; filterObj_P : access QtAda6.QtCore.QAbstractNativeEventFilter.Inst'Class)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "installNativeEventFilter");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if filterObj_P /= null then filterObj_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end installNativeEventFilter;
   function instance
     (thread_P : access QtAda6.QtCore.QThread.Inst'Class := null)
      return access QtAda6.QtCore.QAbstractEventDispatcher.Inst'Class
   is
      Class, Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtCore.QAbstractEventDispatcher.Class := new QtAda6.QtCore.QAbstractEventDispatcher.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QAbstractEventDispatcher");
      Method := Object_GetAttrString (Class, "instance");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if thread_P /= null then thread_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end instance;
   procedure interrupt (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "interrupt");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end interrupt;
   function processEvents
     (self : access Inst; flags_P : access QtAda6.QtCore.QEventLoop.ProcessEventsFlag.Inst'Class) return bool
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "processEvents");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if flags_P /= null then flags_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end processEvents;
   procedure registerSocketNotifier (self : access Inst; notifier_P : access QtAda6.QtCore.QSocketNotifier.Inst'Class)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "registerSocketNotifier");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if notifier_P /= null then notifier_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end registerSocketNotifier;
   function registerTimer
     (self     : access Inst; interval_P : int; timerType_P : access QtAda6.QtCore.Qt.TimerType.Inst'Class;
      object_P : access QtAda6.QtCore.QObject.Inst'Class) return int
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "registerTimer");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (interval_P));
      Tuple_SetItem (Args, 1, (if timerType_P /= null then timerType_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if object_P /= null then object_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end registerTimer;
   procedure registerTimer
     (self : access Inst; timerId_P : int; interval_P : int; timerType_P : access QtAda6.QtCore.Qt.TimerType.Inst'Class;
      object_P : access QtAda6.QtCore.QObject.Inst'Class)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "registerTimer");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Long_FromLong (timerId_P));
      Tuple_SetItem (Args, 1, Long_FromLong (interval_P));
      Tuple_SetItem (Args, 2, (if timerType_P /= null then timerType_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if object_P /= null then object_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end registerTimer;
   function registeredTimers
     (self : access Inst; object_P : access QtAda6.QtCore.QObject.Inst'Class)
      return LIST_QtAda6_QtCore_QAbstractEventDispatcher_TimerInfo
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "registeredTimers");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if object_P /= null then object_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return (2 .. 1 => <>);
   end registeredTimers;
   function remainingTime (self : access Inst; timerId_P : int) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "remainingTime");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (timerId_P));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end remainingTime;
   procedure removeNativeEventFilter
     (self : access Inst; filterObj_P : access QtAda6.QtCore.QAbstractNativeEventFilter.Inst'Class)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "removeNativeEventFilter");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if filterObj_P /= null then filterObj_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end removeNativeEventFilter;
   procedure startingUp (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "startingUp");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end startingUp;
   procedure unregisterSocketNotifier (self : access Inst; notifier_P : access QtAda6.QtCore.QSocketNotifier.Inst'Class)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "unregisterSocketNotifier");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if notifier_P /= null then notifier_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end unregisterSocketNotifier;
   function unregisterTimer (self : access Inst; timerId_P : int) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "unregisterTimer");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (timerId_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end unregisterTimer;
   function unregisterTimers (self : access Inst; object_P : access QtAda6.QtCore.QObject.Inst'Class) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "unregisterTimers");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if object_P /= null then object_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end unregisterTimers;
   procedure wakeUp (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "wakeUp");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end wakeUp;
end QtAda6.QtCore.QAbstractEventDispatcher;
