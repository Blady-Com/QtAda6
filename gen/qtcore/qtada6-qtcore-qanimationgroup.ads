-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qanimationgroup.ads
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
with QtAda6.QtCore.QAbstractAnimation;
package QtAda6.QtCore.QAnimationGroup is
   type Optional_QtAda6_QtCore_QObject is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new QtAda6.QtCore.QAbstractAnimation.Inst with null record;
   procedure Finalize (Self : in out Class);
   function Create (parent_P : Optional_QtAda6_QtCore_QObject) return Class;
   procedure addAnimation (self : access Inst; animation_P : access QtAda6.QtCore.QAbstractAnimation.Inst'Class);
   function animationAt (self : access Inst; index_P : int) return access QtAda6.QtCore.QAbstractAnimation.Inst'Class;
   function animationCount (self : access Inst) return int;
   procedure clear (self : access Inst);
   function event (self : access Inst; event_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   function indexOfAnimation
     (self : access Inst; animation_P : access QtAda6.QtCore.QAbstractAnimation.Inst'Class) return int;
   procedure insertAnimation
     (self : access Inst; index_P : int; animation_P : access QtAda6.QtCore.QAbstractAnimation.Inst'Class);
   procedure removeAnimation (self : access Inst; animation_P : access QtAda6.QtCore.QAbstractAnimation.Inst'Class);
   function takeAnimation (self : access Inst; index_P : int) return access QtAda6.QtCore.QAbstractAnimation.Inst'Class;
end QtAda6.QtCore.QAnimationGroup;
