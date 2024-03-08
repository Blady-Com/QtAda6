-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qfutureinterfacebase.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QFutureInterfaceBase.State;
limited with QtAda6.QtCore.QFutureInterfaceBase.CancelMode;
limited with QtAda6.QtCore.QMutex;
limited with QtAda6.QtCore.QRunnable;
limited with QtAda6.QtCore.QThreadPool;
package QtAda6.QtCore.QFutureInterfaceBase is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create (initialState_P : access QtAda6.QtCore.QFutureInterfaceBase.State.Inst'Class := null) return Class;
   function Create (other_P : access QtAda6.QtCore.QFutureInterfaceBase.Inst'Class) return Class;
   procedure cancel (self : access Inst);
   procedure cancel (self : access Inst; mode_P : access QtAda6.QtCore.QFutureInterfaceBase.CancelMode.Inst'Class);
   procedure cancelAndFinish (self : access Inst);
   procedure cleanContinuation (self : access Inst);
   function derefT (self : access Inst) return bool;
   function expectedResultCount (self : access Inst) return int;
   function hasException (self : access Inst) return bool;
   function isCanceled (self : access Inst) return bool;
   function isChainCanceled (self : access Inst) return bool;
   function isFinished (self : access Inst) return bool;
   function isPaused (self : access Inst) return bool;
   function isProgressUpdateNeeded (self : access Inst) return bool;
   function isResultReadyAt (self : access Inst; index_P : int) return bool;
   function isRunning (self : access Inst) return bool;
   function isRunningOrPending (self : access Inst) return bool;
   function isStarted (self : access Inst) return bool;
   function isSuspended (self : access Inst) return bool;
   function isSuspending (self : access Inst) return bool;
   function isThrottled (self : access Inst) return bool;
   function isValid (self : access Inst) return bool;
   function launchAsync (self : access Inst) return bool;
   function loadState (self : access Inst) return int;
   function mutex (self : access Inst) return access QtAda6.QtCore.QMutex.Inst'Class;
   function progressMaximum (self : access Inst) return int;
   function progressMinimum (self : access Inst) return int;
   function progressText (self : access Inst) return str;
   function progressValue (self : access Inst) return int;
   function queryState
     (self : access Inst; state_P : access QtAda6.QtCore.QFutureInterfaceBase.State.Inst'Class) return bool;
   function refT (self : access Inst) return bool;
   procedure reportCanceled (self : access Inst);
   procedure reportFinished (self : access Inst);
   procedure reportResultsReady (self : access Inst; beginIndex_P : int; endIndex_P : int);
   procedure reportStarted (self : access Inst);
   procedure reportSuspended (self : access Inst);
   procedure reset (self : access Inst);
   function resultCount (self : access Inst) return int;
   procedure rethrowPossibleException (self : access Inst);
   procedure runContinuation (self : access Inst);
   procedure setExpectedResultCount (self : access Inst; resultCount_P : int);
   procedure setFilterMode (self : access Inst; enable_P : bool);
   procedure setLaunchAsync (self : access Inst; value_P : bool);
   procedure setPaused (self : access Inst; paused_P : bool);
   procedure setProgressRange (self : access Inst; minimum_P : int; maximum_P : int);
   procedure setProgressValue (self : access Inst; progressValue_P : int);
   procedure setProgressValueAndText (self : access Inst; progressValue_P : int; progressText_P : str);
   procedure setRunnable (self : access Inst; runnable_P : access QtAda6.QtCore.QRunnable.Inst'Class);
   procedure setSuspended (self : access Inst; suspend_P : bool);
   procedure setThreadPool (self : access Inst; pool_P : access QtAda6.QtCore.QThreadPool.Inst'Class);
   procedure setThrottled (self : access Inst; enable_P : bool);
   procedure suspendIfRequested (self : access Inst);
   procedure swap (self : access Inst; other_P : access QtAda6.QtCore.QFutureInterfaceBase.Inst'Class);
   function threadPool (self : access Inst) return access QtAda6.QtCore.QThreadPool.Inst'Class;
   procedure togglePaused (self : access Inst);
   procedure toggleSuspended (self : access Inst);
   procedure waitForFinished (self : access Inst);
   function waitForNextResult (self : access Inst) return bool;
   procedure waitForResult (self : access Inst; resultIndex_P : int);
   procedure waitForResume (self : access Inst);
end QtAda6.QtCore.QFutureInterfaceBase;
