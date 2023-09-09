-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qthreadpool.adb
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
with QtAda6.QtCore.QThread;
with QtAda6.QtCore.QThread.Priority;
with QtAda6.QtCore.QRunnable;
package body QtAda6.QtCore.QThreadPool is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create (parent_P : Optional_QtAda6_QtCore_QObject) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QThreadPool");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function activeThreadCount (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "activeThreadCount");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end activeThreadCount;
   procedure clear (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "clear");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end clear;
   function contains (self : access Inst; thread_P : access QtAda6.QtCore.QThread.Inst'Class) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "contains");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, thread_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end contains;
   function expiryTimeout (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "expiryTimeout");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end expiryTimeout;
   function globalInstance return access QtAda6.QtCore.QThreadPool.Inst'Class is
      Class, Method, Args, Result : Handle;
      Ret                         : constant QtAda6.QtCore.QThreadPool.Class := new QtAda6.QtCore.QThreadPool.Inst;
   begin
      Class            := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QThreadPool");
      Method           := Object_GetAttrString (Class, "globalInstance");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end globalInstance;
   function maxThreadCount (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "maxThreadCount");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end maxThreadCount;
   procedure releaseThread (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "releaseThread");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end releaseThread;
   procedure reserveThread (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "reserveThread");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end reserveThread;
   procedure setExpiryTimeout (self : access Inst; expiryTimeout_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setExpiryTimeout");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (expiryTimeout_P));
      Result := Object_CallObject (Method, Args, True);
   end setExpiryTimeout;
   procedure setMaxThreadCount (self : access Inst; maxThreadCount_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setMaxThreadCount");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (maxThreadCount_P));
      Result := Object_CallObject (Method, Args, True);
   end setMaxThreadCount;
   procedure setStackSize (self : access Inst; stackSize_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setStackSize");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (stackSize_P));
      Result := Object_CallObject (Method, Args, True);
   end setStackSize;
   procedure setThreadPriority (self : access Inst; priority_P : access QtAda6.QtCore.QThread.Priority.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setThreadPriority");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, priority_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setThreadPriority;
   function stackSize (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "stackSize");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end stackSize;
   procedure start (self : access Inst; arg_1_P : Callable; priority_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "start");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Callable_conv_A2P_is_not_supported);
      Tuple_SetItem (Args, 1, Long_FromLong (priority_P));
      Result := Object_CallObject (Method, Args, True);
   end start;
   procedure start (self : access Inst; runnable_P : access QtAda6.QtCore.QRunnable.Inst'Class; priority_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "start");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, runnable_P.Python_Proxy);
      Tuple_SetItem (Args, 1, Long_FromLong (priority_P));
      Result := Object_CallObject (Method, Args, True);
   end start;
   procedure startOnReservedThread (self : access Inst; runnable_P : access QtAda6.QtCore.QRunnable.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "startOnReservedThread");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, runnable_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end startOnReservedThread;
   function threadPriority (self : access Inst) return access QtAda6.QtCore.QThread.Priority.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QThread.Priority.Class := new QtAda6.QtCore.QThread.Priority.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "threadPriority");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end threadPriority;
   function tryStart (self : access Inst; arg_1_P : Callable) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "tryStart");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Callable_conv_A2P_is_not_supported);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end tryStart;
   function tryStart (self : access Inst; runnable_P : access QtAda6.QtCore.QRunnable.Inst'Class) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "tryStart");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, runnable_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end tryStart;
   function tryTake (self : access Inst; runnable_P : access QtAda6.QtCore.QRunnable.Inst'Class) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "tryTake");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, runnable_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end tryTake;
   function waitForDone (self : access Inst; msecs_P : int) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "waitForDone");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (msecs_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end waitForDone;
end QtAda6.QtCore.QThreadPool;
