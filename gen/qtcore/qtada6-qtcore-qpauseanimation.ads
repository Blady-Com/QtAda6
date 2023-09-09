-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qpauseanimation.ads
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
package QtAda6.QtCore.QPauseAnimation is
   type Optional_QtAda6_QtCore_QObject is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new QtAda6.QtCore.QAbstractAnimation.Inst with null record;
   procedure Finalize (Self : in out Class);
   function Create (msecs_P : int; parent_P : Optional_QtAda6_QtCore_QObject) return Class;
   function Create (parent_P : Optional_QtAda6_QtCore_QObject) return Class;
   function duration (self : access Inst) return int;
   function event (self : access Inst; e_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   procedure setDuration (self : access Inst; msecs_P : int);
   procedure updateCurrentTime (self : access Inst; arg_1_P : int);
end QtAda6.QtCore.QPauseAnimation;
