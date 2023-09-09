-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qabstractanimation.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QAbstractAnimation.Direction;
limited with QtAda6.QtCore.QEvent;
limited with QtAda6.QtCore.QAnimationGroup;
limited with QtAda6.QtCore.QAbstractAnimation.DeletionPolicy;
limited with QtAda6.QtCore.QAbstractAnimation.State;
with QtAda6.QtCore.QObject;
package QtAda6.QtCore.QAbstractAnimation is
   type ClassVar_Signal is access Any;
   type Optional_QtAda6_QtCore_QObject is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new QtAda6.QtCore.QObject.Inst with null record;
   procedure Finalize (Self : in out Class);
   currentLoopChanged : ClassVar_Signal;-- currentLoopChanged(int)
   directionChanged   : ClassVar_Signal;-- directionChanged(QAbstractAnimation::Direction)
   finished           : ClassVar_Signal;-- finished()
   stateChanged       : ClassVar_Signal;-- stateChanged(QAbstractAnimation::State,QAbstractAnimation::State)
   function Create (parent_P : Optional_QtAda6_QtCore_QObject) return Class;
   function currentLoop (self : access Inst) return int;
   function currentLoopTime (self : access Inst) return int;
   function currentTime (self : access Inst) return int;
   function direction_F (self : access Inst) return access QtAda6.QtCore.QAbstractAnimation.Direction.Inst'Class;
   function duration (self : access Inst) return int;
   function event (self : access Inst; event_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   function group (self : access Inst) return access QtAda6.QtCore.QAnimationGroup.Inst'Class;
   function loopCount (self : access Inst) return int;
   procedure pause (self : access Inst);
   procedure resume (self : access Inst);
   procedure setCurrentTime (self : access Inst; msecs_P : int);
   procedure setDirection
     (self : access Inst; direction_P : access QtAda6.QtCore.QAbstractAnimation.Direction.Inst'Class);
   procedure setLoopCount (self : access Inst; loopCount_P : int);
   procedure setPaused (self : access Inst; arg_1_P : bool);
   procedure start (self : access Inst; policy_P : access QtAda6.QtCore.QAbstractAnimation.DeletionPolicy.Inst'Class);
   function state_F (self : access Inst) return access QtAda6.QtCore.QAbstractAnimation.State.Inst'Class;
   procedure stop (self : access Inst);
   function totalDuration (self : access Inst) return int;
   procedure updateCurrentTime (self : access Inst; currentTime_P : int);
   procedure updateDirection
     (self : access Inst; direction_P : access QtAda6.QtCore.QAbstractAnimation.Direction.Inst'Class);
   procedure updateState
     (self       : access Inst; newState_P : access QtAda6.QtCore.QAbstractAnimation.State.Inst'Class;
      oldState_P : access QtAda6.QtCore.QAbstractAnimation.State.Inst'Class);
end QtAda6.QtCore.QAbstractAnimation;
