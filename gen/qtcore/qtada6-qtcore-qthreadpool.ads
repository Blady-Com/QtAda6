-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qthreadpool.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QThread;
limited with QtAda6.QtCore.QThread.Priority;
limited with QtAda6.QtCore.QRunnable;
with QtAda6.QtCore.QObject;
package QtAda6.QtCore.QThreadPool is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtCore.QObject.Inst with null record;
   type CALLABLE is new Any;
   procedure Finalize (Self : in out Class);
   function Create (parent_P : access QtAda6.QtCore.QObject.Inst'Class := null) return Class;
   function activeThreadCount (self : access Inst) return int;
   procedure clear (self : access Inst);
   function contains (self : access Inst; thread_P : access QtAda6.QtCore.QThread.Inst'Class) return bool;
   function expiryTimeout (self : access Inst) return int;
   function globalInstance return access QtAda6.QtCore.QThreadPool.Inst'Class;
   function maxThreadCount (self : access Inst) return int;
   procedure releaseThread (self : access Inst);
   procedure reserveThread (self : access Inst);
   procedure setExpiryTimeout (self : access Inst; expiryTimeout_P : int);
   procedure setMaxThreadCount (self : access Inst; maxThreadCount_P : int);
   procedure setStackSize (self : access Inst; stackSize_P : int);
   procedure setThreadPriority (self : access Inst; priority_P : access QtAda6.QtCore.QThread.Priority.Inst'Class);
   function stackSize (self : access Inst) return int;
   procedure start (self : access Inst; arg_1_P : CALLABLE; priority_P : int := 0);
   procedure start (self : access Inst; runnable_P : access QtAda6.QtCore.QRunnable.Inst'Class; priority_P : int := 0);
   procedure startOnReservedThread (self : access Inst; runnable_P : access QtAda6.QtCore.QRunnable.Inst'Class);
   function threadPriority (self : access Inst) return access QtAda6.QtCore.QThread.Priority.Inst'Class;
   function tryStart (self : access Inst; arg_1_P : CALLABLE) return bool;
   function tryStart (self : access Inst; runnable_P : access QtAda6.QtCore.QRunnable.Inst'Class) return bool;
   function tryTake (self : access Inst; runnable_P : access QtAda6.QtCore.QRunnable.Inst'Class) return bool;
   function waitForDone (self : access Inst; msecs_P : int := 0) return bool;
end QtAda6.QtCore.QThreadPool;
