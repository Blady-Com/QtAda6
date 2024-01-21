-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qtimeline.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Py; use Py;
with Ada.Unchecked_Deallocation;
with QtAda6.QtCore.QObject;
with QtAda6.QtCore.QTimeLine.Direction;
with QtAda6.QtCore.QEasingCurve;
with QtAda6.QtCore.QEasingCurve.Type_K;
with QtAda6.QtCore.QTimeLine.State;
with QtAda6.QtCore.QTimerEvent;
package body QtAda6.QtCore.QTimeLine is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function finished (self : access Inst) return CLASSVAR_Signal is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "finished"));
   end finished;
   function frameChanged (self : access Inst) return CLASSVAR_Signal is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "frameChanged"));
   end frameChanged;
   function stateChanged (self : access Inst) return CLASSVAR_Signal is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "stateChanged"));
   end stateChanged;
   function valueChanged (self : access Inst) return CLASSVAR_Signal is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "valueChanged"));
   end valueChanged;
   function Create (duration_P : int := 0; parent_P : access QtAda6.QtCore.QObject.Inst'Class := null) return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QTimeLine");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (duration_P));
      Tuple_SetItem (Args, 1, (if parent_P /= null then parent_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function currentFrame (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "currentFrame");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end currentFrame;
   function currentTime (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "currentTime");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end currentTime;
   function currentValue (self : access Inst) return float is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "currentValue");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end currentValue;
   function direction_F (self : access Inst) return access QtAda6.QtCore.QTimeLine.Direction.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtCore.QTimeLine.Direction.Class := new QtAda6.QtCore.QTimeLine.Direction.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "direction");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end direction_F;
   function duration (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "duration");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end duration;
   function easingCurve (self : access Inst) return access QtAda6.QtCore.QEasingCurve.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QEasingCurve.Class := new QtAda6.QtCore.QEasingCurve.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "easingCurve");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end easingCurve;
   function endFrame (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "endFrame");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end endFrame;
   function frameForTime (self : access Inst; msec_P : int) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "frameForTime");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (msec_P));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end frameForTime;
   function loopCount (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "loopCount");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end loopCount;
   procedure resume (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "resume");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end resume;
   procedure setCurrentTime (self : access Inst; msec_P : int) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setCurrentTime");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (msec_P));
      Result := Object_CallObject (Method, Args, True);
   end setCurrentTime;
   procedure setDirection (self : access Inst; direction_P : access QtAda6.QtCore.QTimeLine.Direction.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setDirection");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if direction_P /= null then direction_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setDirection;
   procedure setDuration (self : access Inst; duration_P : int) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setDuration");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (duration_P));
      Result := Object_CallObject (Method, Args, True);
   end setDuration;
   procedure setEasingCurve
     (self : access Inst; curve_P : UNION_QtAda6_QtCore_QEasingCurveQtAda6_QtCore_QEasingCurve_Type_K)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setEasingCurve");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if curve_P /= null then curve_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setEasingCurve;
   procedure setEndFrame (self : access Inst; frame_P : int) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setEndFrame");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (frame_P));
      Result := Object_CallObject (Method, Args, True);
   end setEndFrame;
   procedure setFrameRange (self : access Inst; startFrame_P : int; endFrame_P : int) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFrameRange");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (startFrame_P));
      Tuple_SetItem (Args, 1, Long_FromLong (endFrame_P));
      Result := Object_CallObject (Method, Args, True);
   end setFrameRange;
   procedure setLoopCount (self : access Inst; count_P : int) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setLoopCount");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (count_P));
      Result := Object_CallObject (Method, Args, True);
   end setLoopCount;
   procedure setPaused (self : access Inst; paused_P : bool) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPaused");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (paused_P));
      Result := Object_CallObject (Method, Args, True);
   end setPaused;
   procedure setStartFrame (self : access Inst; frame_P : int) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setStartFrame");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (frame_P));
      Result := Object_CallObject (Method, Args, True);
   end setStartFrame;
   procedure setUpdateInterval (self : access Inst; interval_P : int) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setUpdateInterval");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (interval_P));
      Result := Object_CallObject (Method, Args, True);
   end setUpdateInterval;
   procedure start (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "start");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end start;
   function startFrame (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "startFrame");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end startFrame;
   function state_F (self : access Inst) return access QtAda6.QtCore.QTimeLine.State.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtCore.QTimeLine.State.Class := new QtAda6.QtCore.QTimeLine.State.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "state");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end state_F;
   procedure stop (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "stop");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end stop;
   procedure timerEvent (self : access Inst; event_P : access QtAda6.QtCore.QTimerEvent.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "timerEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end timerEvent;
   procedure toggleDirection (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toggleDirection");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end toggleDirection;
   function updateInterval (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "updateInterval");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end updateInterval;
   function valueForTime (self : access Inst; msec_P : int) return float is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "valueForTime");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (msec_P));
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end valueForTime;
end QtAda6.QtCore.QTimeLine;
