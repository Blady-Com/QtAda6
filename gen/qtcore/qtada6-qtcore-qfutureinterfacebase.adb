-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qfutureinterfacebase.adb
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
with QtAda6.QtCore.QFutureInterfaceBase.State;
with QtAda6.QtCore.QFutureInterfaceBase.CancelMode;
with QtAda6.QtCore.QMutex;
with QtAda6.QtCore.QRunnable;
with QtAda6.QtCore.QThreadPool;
package body QtAda6.QtCore.QFutureInterfaceBase is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create (initialState_P : access QtAda6.QtCore.QFutureInterfaceBase.State.Inst'Class := null) return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QFutureInterfaceBase");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if initialState_P /= null then initialState_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (other_P : access QtAda6.QtCore.QFutureInterfaceBase.Inst'Class) return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QFutureInterfaceBase");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if other_P /= null then other_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   procedure cancel_F (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "cancel");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end cancel_F;
   procedure cancel_F (self : access Inst; mode_P : access QtAda6.QtCore.QFutureInterfaceBase.CancelMode.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "cancel");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if mode_P /= null then mode_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end cancel_F;
   procedure cancelAndFinish (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "cancelAndFinish");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end cancelAndFinish;
   procedure cleanContinuation (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "cleanContinuation");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end cleanContinuation;
   function derefT (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "derefT");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end derefT;
   function expectedResultCount (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "expectedResultCount");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end expectedResultCount;
   function hasException (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hasException");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end hasException;
   function isCanceled (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isCanceled");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isCanceled;
   function isChainCanceled (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isChainCanceled");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isChainCanceled;
   function isFinished (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isFinished");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isFinished;
   function isPaused (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isPaused");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isPaused;
   function isProgressUpdateNeeded (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isProgressUpdateNeeded");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isProgressUpdateNeeded;
   function isResultReadyAt (self : access Inst; index_P : int) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isResultReadyAt");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (index_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isResultReadyAt;
   function isRunning (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isRunning");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isRunning;
   function isRunningOrPending (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isRunningOrPending");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isRunningOrPending;
   function isStarted (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isStarted");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isStarted;
   function isSuspended (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isSuspended");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isSuspended;
   function isSuspending (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isSuspending");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isSuspending;
   function isThrottled (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isThrottled");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isThrottled;
   function isValid (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isValid");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isValid;
   function launchAsync (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "launchAsync");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end launchAsync;
   function loadState (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "loadState");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end loadState;
   function mutex (self : access Inst) return access QtAda6.QtCore.QMutex.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QMutex.Class := new QtAda6.QtCore.QMutex.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "mutex");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mutex;
   function progressMaximum (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "progressMaximum");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end progressMaximum;
   function progressMinimum (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "progressMinimum");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end progressMinimum;
   function progressText (self : access Inst) return str is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "progressText");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end progressText;
   function progressValue (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "progressValue");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end progressValue;
   function queryState
     (self : access Inst; state_P : access QtAda6.QtCore.QFutureInterfaceBase.State.Inst'Class) return bool
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "queryState");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if state_P /= null then state_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end queryState;
   function refT (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "refT");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end refT;
   procedure reportCanceled (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "reportCanceled");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end reportCanceled;
   procedure reportFinished (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "reportFinished");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end reportFinished;
   procedure reportResultsReady (self : access Inst; beginIndex_P : int; endIndex_P : int) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "reportResultsReady");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (beginIndex_P));
      Tuple_SetItem (Args, 1, Long_FromLong (endIndex_P));
      Result := Object_CallObject (Method, Args, True);
   end reportResultsReady;
   procedure reportStarted (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "reportStarted");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end reportStarted;
   procedure reportSuspended (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "reportSuspended");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end reportSuspended;
   procedure reset (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "reset");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end reset;
   function resultCount (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "resultCount");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end resultCount;
   procedure rethrowPossibleException (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "rethrowPossibleException");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end rethrowPossibleException;
   procedure runContinuation (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "runContinuation");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end runContinuation;
   procedure setExpectedResultCount (self : access Inst; resultCount_P : int) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setExpectedResultCount");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (resultCount_P));
      Result := Object_CallObject (Method, Args, True);
   end setExpectedResultCount;
   procedure setFilterMode (self : access Inst; enable_P : bool) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFilterMode");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (enable_P));
      Result := Object_CallObject (Method, Args, True);
   end setFilterMode;
   procedure setLaunchAsync (self : access Inst; value_P : bool) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setLaunchAsync");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (value_P));
      Result := Object_CallObject (Method, Args, True);
   end setLaunchAsync;
   procedure setPaused (self : access Inst; paused_P : bool) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPaused");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (paused_P));
      Result := Object_CallObject (Method, Args, True);
   end setPaused;
   procedure setProgressRange (self : access Inst; minimum_P : int; maximum_P : int) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setProgressRange");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (minimum_P));
      Tuple_SetItem (Args, 1, Long_FromLong (maximum_P));
      Result := Object_CallObject (Method, Args, True);
   end setProgressRange;
   procedure setProgressValue (self : access Inst; progressValue_P : int) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setProgressValue");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (progressValue_P));
      Result := Object_CallObject (Method, Args, True);
   end setProgressValue;
   procedure setProgressValueAndText (self : access Inst; progressValue_P : int; progressText_P : str) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setProgressValueAndText");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (progressValue_P));
      Tuple_SetItem (Args, 1, Unicode_FromString (progressText_P));
      Result := Object_CallObject (Method, Args, True);
   end setProgressValueAndText;
   procedure setRunnable (self : access Inst; runnable_P : access QtAda6.QtCore.QRunnable.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setRunnable");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if runnable_P /= null then runnable_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setRunnable;
   procedure setSuspended (self : access Inst; suspend_P : bool) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setSuspended");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (suspend_P));
      Result := Object_CallObject (Method, Args, True);
   end setSuspended;
   procedure setThreadPool (self : access Inst; pool_P : access QtAda6.QtCore.QThreadPool.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setThreadPool");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if pool_P /= null then pool_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setThreadPool;
   procedure setThrottled (self : access Inst; enable_P : bool) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setThrottled");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (enable_P));
      Result := Object_CallObject (Method, Args, True);
   end setThrottled;
   procedure suspendIfRequested (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "suspendIfRequested");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end suspendIfRequested;
   procedure swap (self : access Inst; other_P : access QtAda6.QtCore.QFutureInterfaceBase.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "swap");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if other_P /= null then other_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end swap;
   function threadPool (self : access Inst) return access QtAda6.QtCore.QThreadPool.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QThreadPool.Class := new QtAda6.QtCore.QThreadPool.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "threadPool");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end threadPool;
   procedure togglePaused (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "togglePaused");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end togglePaused;
   procedure toggleSuspended (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toggleSuspended");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end toggleSuspended;
   procedure waitForFinished (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "waitForFinished");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end waitForFinished;
   function waitForNextResult (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "waitForNextResult");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end waitForNextResult;
   procedure waitForResult (self : access Inst; resultIndex_P : int) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "waitForResult");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (resultIndex_P));
      Result := Object_CallObject (Method, Args, True);
   end waitForResult;
   procedure waitForResume (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "waitForResume");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end waitForResume;
end QtAda6.QtCore.QFutureInterfaceBase;
