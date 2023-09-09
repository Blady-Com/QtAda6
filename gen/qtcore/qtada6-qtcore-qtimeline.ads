-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qtimeline.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QTimeLine.Direction;
limited with QtAda6.QtCore.QEasingCurve;
limited with QtAda6.QtCore.QEasingCurve.Type_K;
limited with QtAda6.QtCore.QTimeLine.State;
limited with QtAda6.QtCore.QTimerEvent;
with QtAda6.QtCore.QObject;
package QtAda6.QtCore.QTimeLine is
   type ClassVar_Signal is access Any;
   type Optional_QtAda6_QtCore_QObject is access Any;
   type Union_QtAda6_QtCore_QEasingCurve_QtAda6_QtCore_QEasingCurve_Type_K is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new QtAda6.QtCore.QObject.Inst with null record;
   procedure Finalize (Self : in out Class);
   finished     : ClassVar_Signal;-- finished()
   frameChanged : ClassVar_Signal;-- frameChanged(int)
   stateChanged : ClassVar_Signal;-- stateChanged(QTimeLine::State)
   valueChanged : ClassVar_Signal;-- valueChanged(double)
   function Create (duration_P : int; parent_P : Optional_QtAda6_QtCore_QObject) return Class;
   function currentFrame (self : access Inst) return int;
   function currentTime (self : access Inst) return int;
   function currentValue (self : access Inst) return float;
   function direction_F (self : access Inst) return access QtAda6.QtCore.QTimeLine.Direction.Inst'Class;
   function duration (self : access Inst) return int;
   function easingCurve (self : access Inst) return access QtAda6.QtCore.QEasingCurve.Inst'Class;
   function endFrame (self : access Inst) return int;
   function frameForTime (self : access Inst; msec_P : int) return int;
   function loopCount (self : access Inst) return int;
   procedure resume (self : access Inst);
   procedure setCurrentTime (self : access Inst; msec_P : int);
   procedure setDirection (self : access Inst; direction_P : access QtAda6.QtCore.QTimeLine.Direction.Inst'Class);
   procedure setDuration (self : access Inst; duration_P : int);
   procedure setEasingCurve
     (self : access Inst; curve_P : Union_QtAda6_QtCore_QEasingCurve_QtAda6_QtCore_QEasingCurve_Type_K);
   procedure setEndFrame (self : access Inst; frame_P : int);
   procedure setFrameRange (self : access Inst; startFrame_P : int; endFrame_P : int);
   procedure setLoopCount (self : access Inst; count_P : int);
   procedure setPaused (self : access Inst; paused_P : bool);
   procedure setStartFrame (self : access Inst; frame_P : int);
   procedure setUpdateInterval (self : access Inst; interval_P : int);
   procedure start (self : access Inst);
   function startFrame (self : access Inst) return int;
   function state_F (self : access Inst) return access QtAda6.QtCore.QTimeLine.State.Inst'Class;
   procedure stop (self : access Inst);
   procedure timerEvent (self : access Inst; event_P : access QtAda6.QtCore.QTimerEvent.Inst'Class);
   procedure toggleDirection (self : access Inst);
   function updateInterval (self : access Inst) return int;
   function valueForTime (self : access Inst; msec_P : int) return float;
end QtAda6.QtCore.QTimeLine;
