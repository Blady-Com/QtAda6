-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qparallelanimationgroup.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QObject;
limited with QtAda6.QtCore.QEvent;
limited with QtAda6.QtCore.QAbstractAnimation.Direction;
limited with QtAda6.QtCore.QAbstractAnimation.State;
with QtAda6.QtCore.QAnimationGroup;
package QtAda6.QtCore.QParallelAnimationGroup is
   type Optional_QtAda6_QtCore_QObject is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new QtAda6.QtCore.QAnimationGroup.Inst with null record;
   procedure Finalize (Self : in out Class);
   function Create (parent_P : Optional_QtAda6_QtCore_QObject) return Class;
   function duration (self : access Inst) return int;
   function event (self : access Inst; event_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   procedure updateCurrentTime (self : access Inst; currentTime_P : int);
   procedure updateDirection
     (self : access Inst; direction_P : access QtAda6.QtCore.QAbstractAnimation.Direction.Inst'Class);
   procedure updateState
     (self       : access Inst; newState_P : access QtAda6.QtCore.QAbstractAnimation.State.Inst'Class;
      oldState_P : access QtAda6.QtCore.QAbstractAnimation.State.Inst'Class);
end QtAda6.QtCore.QParallelAnimationGroup;
