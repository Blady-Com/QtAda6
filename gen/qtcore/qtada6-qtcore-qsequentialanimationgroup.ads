-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qsequentialanimationgroup.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.Signal;
limited with QtAda6.QtCore.QObject;
limited with QtAda6.QtCore.QPauseAnimation;
limited with QtAda6.QtCore.QAbstractAnimation;
limited with QtAda6.QtCore.QEvent;
limited with QtAda6.QtCore.QAbstractAnimation.Direction;
limited with QtAda6.QtCore.QAbstractAnimation.State;
with QtAda6.QtCore.QAnimationGroup;
package QtAda6.QtCore.QSequentialAnimationGroup is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtCore.QAnimationGroup.Inst with null record;
   procedure Finalize (Self : in out Class);
   function currentAnimationChanged
     (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- currentAnimationChanged(QAbstractAnimation*)
   function Create (parent_P : access QtAda6.QtCore.QObject.Inst'Class := null) return Class;
   function addPause (self : access Inst; msecs_P : int) return access QtAda6.QtCore.QPauseAnimation.Inst'Class;
   function currentAnimation (self : access Inst) return access QtAda6.QtCore.QAbstractAnimation.Inst'Class;
   function duration (self : access Inst) return int;
   function event (self : access Inst; event_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   function insertPause
     (self : access Inst; index_P : int; msecs_P : int) return access QtAda6.QtCore.QPauseAnimation.Inst'Class;
   procedure updateCurrentTime (self : access Inst; arg_1_P : int);
   procedure updateDirection
     (self : access Inst; direction_P : access QtAda6.QtCore.QAbstractAnimation.Direction.Inst'Class);
   procedure updateState
     (self       : access Inst; newState_P : access QtAda6.QtCore.QAbstractAnimation.State.Inst'Class;
      oldState_P : access QtAda6.QtCore.QAbstractAnimation.State.Inst'Class);
end QtAda6.QtCore.QSequentialAnimationGroup;
