-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qtimer.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.Qt.TimerType;
limited with QtAda6.QtCore.QTimerEvent;
with QtAda6.QtCore.QObject;
package QtAda6.QtCore.QTimer is
   type ClassVar_Signal is access Any;
   type Optional_QtAda6_QtCore_QObject is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new QtAda6.QtCore.QObject.Inst with null record;
   procedure Finalize (Self : in out Class);
   timeout : ClassVar_Signal;-- timeout()
   function Create (parent_P : Optional_QtAda6_QtCore_QObject) return Class;
   function interval (self : access Inst) return int;
   function isActive (self : access Inst) return bool;
   function isSingleShot (self : access Inst) return bool;
   procedure killTimer (self : access Inst; arg_1_P : int);
   function remainingTime (self : access Inst) return int;
   procedure setInterval (self : access Inst; msec_P : int);
   procedure setSingleShot (self : access Inst; singleShot_P : bool);
   procedure setTimerType (self : access Inst; atype_P : access QtAda6.QtCore.Qt.TimerType.Inst'Class);
   procedure singleShot (arg_1_P : int; arg_2_P : Callable);
   procedure singleShot (msec_P : int; receiver_P : access QtAda6.QtCore.QObject.Inst'Class; member_P : bytes);
   procedure singleShot
     (msec_P     : int; timerType_P : access QtAda6.QtCore.Qt.TimerType.Inst'Class;
      receiver_P : access QtAda6.QtCore.QObject.Inst'Class; member_P : bytes);
   procedure start (self : access Inst);
   procedure start (self : access Inst; msec_P : int);
   procedure stop (self : access Inst);
   procedure timerEvent (self : access Inst; arg_1_P : access QtAda6.QtCore.QTimerEvent.Inst'Class);
   function timerId (self : access Inst) return int;
   function timerType (self : access Inst) return access QtAda6.QtCore.Qt.TimerType.Inst'Class;
end QtAda6.QtCore.QTimer;
