-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qdeadlinetimer.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QDeadlineTimer.ForeverConstant;
limited with QtAda6.QtCore.Qt.TimerType;
package QtAda6.QtCore.QDeadlineTimer is
   type Union_QtAda6_QtCore_QDeadlineTimer_QtAda6_QtCore_QDeadlineTimer_ForeverConstant_QtAda6_QtCore_Qt_TimerType_int is
     access Any;
   type Tuple_int_int is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create
     (QDeadlineTimer_P : Union_QtAda6_QtCore_QDeadlineTimer_QtAda6_QtCore_QDeadlineTimer_ForeverConstant_QtAda6_QtCore_Qt_TimerType_int)
      return Class;
   function Create
     (arg_1_P  : access QtAda6.QtCore.QDeadlineTimer.ForeverConstant.Inst'Class;
      type_U_P : access QtAda6.QtCore.Qt.TimerType.Inst'Class) return Class;
   function Create (msecs_P : int; type_K_P : access QtAda6.QtCore.Qt.TimerType.Inst'Class) return Class;
   function Create (type_U_P : access QtAda6.QtCore.Qt.TimerType.Inst'Class) return Class;
   function U_add_U (self : access Inst; msecs_P : int) return access QtAda6.QtCore.QDeadlineTimer.Inst'Class;
   procedure U_copy_U;
   function U_iadd_U (self : access Inst; msecs_P : int) return access QtAda6.QtCore.QDeadlineTimer.Inst'Class;
   function U_isub_U (self : access Inst; msecs_P : int) return access QtAda6.QtCore.QDeadlineTimer.Inst'Class;
   function U_sub_U
     (self  : access Inst;
      dt2_P : Union_QtAda6_QtCore_QDeadlineTimer_QtAda6_QtCore_QDeadlineTimer_ForeverConstant_QtAda6_QtCore_Qt_TimerType_int)
      return int;
   function U_sub_U (self : access Inst; msecs_P : int) return access QtAda6.QtCore.QDeadlineTimer.Inst'Class;
   function U_q_data (self : access Inst) return Tuple_int_int;
   function addNSecs
     (dt_P : Union_QtAda6_QtCore_QDeadlineTimer_QtAda6_QtCore_QDeadlineTimer_ForeverConstant_QtAda6_QtCore_Qt_TimerType_int;
      nsecs_P : int) return access QtAda6.QtCore.QDeadlineTimer.Inst'Class;
   function current
     (timerType_P : access QtAda6.QtCore.Qt.TimerType.Inst'Class) return access QtAda6.QtCore.QDeadlineTimer.Inst'Class;
   function deadline (self : access Inst) return int;
   function deadlineNSecs (self : access Inst) return int;
   function hasExpired (self : access Inst) return bool;
   function isForever (self : access Inst) return bool;
   function remainingTime (self : access Inst) return int;
   function remainingTimeNSecs (self : access Inst) return int;
   procedure setDeadline
     (self : access Inst; msecs_P : int; timerType_P : access QtAda6.QtCore.Qt.TimerType.Inst'Class);
   procedure setPreciseDeadline
     (self : access Inst; secs_P : int; nsecs_P : int; type_K_P : access QtAda6.QtCore.Qt.TimerType.Inst'Class);
   procedure setPreciseRemainingTime
     (self : access Inst; secs_P : int; nsecs_P : int; type_K_P : access QtAda6.QtCore.Qt.TimerType.Inst'Class);
   procedure setRemainingTime
     (self : access Inst; msecs_P : int; type_K_P : access QtAda6.QtCore.Qt.TimerType.Inst'Class);
   procedure setTimerType (self : access Inst; type_K_P : access QtAda6.QtCore.Qt.TimerType.Inst'Class);
   procedure swap
     (self    : access Inst;
      other_P : Union_QtAda6_QtCore_QDeadlineTimer_QtAda6_QtCore_QDeadlineTimer_ForeverConstant_QtAda6_QtCore_Qt_TimerType_int);
   function timerType (self : access Inst) return access QtAda6.QtCore.Qt.TimerType.Inst'Class;
end QtAda6.QtCore.QDeadlineTimer;
