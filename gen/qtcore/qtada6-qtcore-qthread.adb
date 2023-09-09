-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qthread.adb
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
with QtAda6.QtCore.QEvent;
with QtAda6.QtCore.QAbstractEventDispatcher;
with QtAda6.QtCore.QThread.Priority;
with QtAda6.QtCore.QDeadlineTimer;
with QtAda6.QtCore.QDeadlineTimer.ForeverConstant;
with QtAda6.QtCore.Qt.TimerType;
package body QtAda6.QtCore.QThread is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create (parent_P : Optional_QtAda6_QtCore_QObject) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QThread");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function currentThread return access QtAda6.QtCore.QThread.Inst'Class is
      Class, Method, Args, Result : Handle;
      Ret                         : constant QtAda6.QtCore.QThread.Class := new QtAda6.QtCore.QThread.Inst;
   begin
      Class            := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QThread");
      Method           := Object_GetAttrString (Class, "currentThread");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end currentThread;
   function event (self : access Inst; event_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "event");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, event_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end event;
   function eventDispatcher (self : access Inst) return access QtAda6.QtCore.QAbstractEventDispatcher.Inst'Class is
      Method, Args, Result : Handle;
      Ret : constant QtAda6.QtCore.QAbstractEventDispatcher.Class := new QtAda6.QtCore.QAbstractEventDispatcher.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "eventDispatcher");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end eventDispatcher;
   function exec (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "exec");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end exec;
   function exec_U (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "exec_");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end exec_U;
   procedure exit_K (self : access Inst; retcode_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "exit");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (retcode_P));
      Result := Object_CallObject (Method, Args, True);
   end exit_K;
   function idealThreadCount return int is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QThread");
      Method := Object_GetAttrString (Class, "idealThreadCount");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end idealThreadCount;
   function isFinished (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isFinished");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isFinished;
   function isInterruptionRequested (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isInterruptionRequested");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isInterruptionRequested;
   function isRunning (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isRunning");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isRunning;
   function loopLevel (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "loopLevel");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end loopLevel;
   procedure msleep (arg_1_P : int) is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QThread");
      Method := Object_GetAttrString (Class, "msleep");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (arg_1_P));
      Result := Object_CallObject (Method, Args, True);
   end msleep;
   function priority_F (self : access Inst) return access QtAda6.QtCore.QThread.Priority.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QThread.Priority.Class := new QtAda6.QtCore.QThread.Priority.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "priority");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end priority_F;
   procedure quit (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "quit");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end quit;
   procedure requestInterruption (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "requestInterruption");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end requestInterruption;
   procedure run (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "run");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end run;
   procedure setEventDispatcher
     (self : access Inst; eventDispatcher_P : access QtAda6.QtCore.QAbstractEventDispatcher.Inst'Class)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setEventDispatcher");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, eventDispatcher_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setEventDispatcher;
   procedure setPriority (self : access Inst; priority_P : access QtAda6.QtCore.QThread.Priority.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPriority");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, priority_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setPriority;
   procedure setStackSize (self : access Inst; stackSize_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setStackSize");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (stackSize_P));
      Result := Object_CallObject (Method, Args, True);
   end setStackSize;
   procedure setTerminationEnabled (enabled_P : bool) is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QThread");
      Method := Object_GetAttrString (Class, "setTerminationEnabled");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (enabled_P));
      Result := Object_CallObject (Method, Args, True);
   end setTerminationEnabled;
   procedure sleep (arg_1_P : int) is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QThread");
      Method := Object_GetAttrString (Class, "sleep");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (arg_1_P));
      Result := Object_CallObject (Method, Args, True);
   end sleep;
   function stackSize (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "stackSize");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end stackSize;
   procedure start (self : access Inst; priority_P : access QtAda6.QtCore.QThread.Priority.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "start");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, priority_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end start;
   procedure terminate_K (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "terminate");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end terminate_K;
   procedure usleep (arg_1_P : int) is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QThread");
      Method := Object_GetAttrString (Class, "usleep");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (arg_1_P));
      Result := Object_CallObject (Method, Args, True);
   end usleep;
   function wait
     (self       : access Inst;
      deadline_P : Union_QtAda6_QtCore_QDeadlineTimer_QtAda6_QtCore_QDeadlineTimer_ForeverConstant_QtAda6_QtCore_Qt_TimerType_int)
      return bool
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "wait");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end wait;
   function wait (self : access Inst; time_P : int) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "wait");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (time_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end wait;
   procedure yieldCurrentThread is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QThread");
      Method := Object_GetAttrString (Class, "yieldCurrentThread");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end yieldCurrentThread;
end QtAda6.QtCore.QThread;
