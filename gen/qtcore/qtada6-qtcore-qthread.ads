-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qthread.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.Signal;
limited with QtAda6.QtCore.QEvent;
limited with QtAda6.QtCore.QAbstractEventDispatcher;
limited with QtAda6.QtCore.QThread.Priority;
with QtAda6.QtCore.QObject;
package QtAda6.QtCore.QThread is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtCore.QObject.Inst with null record;
   type UNION_QtAda6_QtCore_QDeadlineTimer_QtAda6_QtCore_QDeadlineTimer_ForeverConstant_QtAda6_QtCore_Qt_TimerType_int is
     new Any;
   procedure Finalize (Self : in out Class);
   function finished (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- finished()
   function started (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- started()
   function Create (parent_P : access QtAda6.QtCore.QObject.Inst'Class := null) return Class;
   function currentThread return access QtAda6.QtCore.QThread.Inst'Class;
   function event (self : access Inst; event_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   function eventDispatcher (self : access Inst) return access QtAda6.QtCore.QAbstractEventDispatcher.Inst'Class;
   function exec (self : access Inst) return int;
   function exec_U (self : access Inst) return int;
   procedure exit_K (self : access Inst; retcode_P : int := 0);
   function idealThreadCount return int;
   function isFinished (self : access Inst) return bool;
   function isInterruptionRequested (self : access Inst) return bool;
   function isRunning (self : access Inst) return bool;
   function loopLevel (self : access Inst) return int;
   procedure msleep (arg_1_P : int);
   function priority_F (self : access Inst) return access QtAda6.QtCore.QThread.Priority.Inst'Class;
   procedure quit (self : access Inst);
   procedure requestInterruption (self : access Inst);
   procedure run (self : access Inst);
   procedure setEventDispatcher
     (self : access Inst; eventDispatcher_P : access QtAda6.QtCore.QAbstractEventDispatcher.Inst'Class);
   procedure setPriority (self : access Inst; priority_P : access QtAda6.QtCore.QThread.Priority.Inst'Class);
   procedure setStackSize (self : access Inst; stackSize_P : int);
   procedure setTerminationEnabled (enabled_P : bool := False);
   procedure sleep (arg_1_P : int);
   function stackSize (self : access Inst) return int;
   procedure start (self : access Inst; priority_P : access QtAda6.QtCore.QThread.Priority.Inst'Class := null);
   procedure terminate_K (self : access Inst);
   procedure usleep (arg_1_P : int);
   function wait
     (self       : access Inst;
      deadline_P : UNION_QtAda6_QtCore_QDeadlineTimer_QtAda6_QtCore_QDeadlineTimer_ForeverConstant_QtAda6_QtCore_Qt_TimerType_int :=
        null)
      return bool;
   function wait (self : access Inst; time_P : int) return bool;
   procedure yieldCurrentThread;
end QtAda6.QtCore.QThread;
