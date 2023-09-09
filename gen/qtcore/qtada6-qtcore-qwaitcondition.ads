-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qwaitcondition.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QMutex;
limited with QtAda6.QtCore.QDeadlineTimer;
limited with QtAda6.QtCore.QDeadlineTimer.ForeverConstant;
limited with QtAda6.QtCore.Qt.TimerType;
limited with QtAda6.QtCore.QReadWriteLock;
package QtAda6.QtCore.QWaitCondition is
   type Union_QtAda6_QtCore_QDeadlineTimer_QtAda6_QtCore_QDeadlineTimer_ForeverConstant_QtAda6_QtCore_Qt_TimerType_int is
     access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   procedure notify_all (self : access Inst);
   procedure notify_one (self : access Inst);
   function wait
     (self       : access Inst; lockedMutex_P : access QtAda6.QtCore.QMutex.Inst'Class;
      deadline_P : Union_QtAda6_QtCore_QDeadlineTimer_QtAda6_QtCore_QDeadlineTimer_ForeverConstant_QtAda6_QtCore_Qt_TimerType_int)
      return bool;
   function wait (self : access Inst; lockedMutex_P : access QtAda6.QtCore.QMutex.Inst'Class; time_P : int) return bool;
   function wait
     (self       : access Inst; lockedReadWriteLock_P : access QtAda6.QtCore.QReadWriteLock.Inst'Class;
      deadline_P : Union_QtAda6_QtCore_QDeadlineTimer_QtAda6_QtCore_QDeadlineTimer_ForeverConstant_QtAda6_QtCore_Qt_TimerType_int)
      return bool;
   function wait
     (self : access Inst; lockedReadWriteLock_P : access QtAda6.QtCore.QReadWriteLock.Inst'Class; time_P : int)
      return bool;
   procedure wakeAll (self : access Inst);
   procedure wakeOne (self : access Inst);
end QtAda6.QtCore.QWaitCondition;
