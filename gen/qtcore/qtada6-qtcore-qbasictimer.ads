-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qbasictimer.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QObject;
limited with QtAda6.QtCore.Qt.TimerType;
package QtAda6.QtCore.QBasicTimer is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function isActive (self : access Inst) return bool;
   procedure start (self : access Inst; msec_P : int; obj_P : access QtAda6.QtCore.QObject.Inst'Class);
   procedure start
     (self  : access Inst; msec_P : int; timerType_P : access QtAda6.QtCore.Qt.TimerType.Inst'Class;
      obj_P : access QtAda6.QtCore.QObject.Inst'Class);
   procedure stop (self : access Inst);
   procedure swap (self : access Inst; other_P : access QtAda6.QtCore.QBasicTimer.Inst'Class);
   function timerId (self : access Inst) return int;
end QtAda6.QtCore.QBasicTimer;
