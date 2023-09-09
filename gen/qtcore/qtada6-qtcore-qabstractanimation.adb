-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qabstractanimation.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Py; use Py;
with Ada.Unchecked_Deallocation;
with QtAda6.QtCore.QObject;
with QtAda6.QtCore.QAbstractAnimation.Direction;
with QtAda6.QtCore.QEvent;
with QtAda6.QtCore.QAnimationGroup;
with QtAda6.QtCore.QAbstractAnimation.DeletionPolicy;
with QtAda6.QtCore.QAbstractAnimation.State;
package body QtAda6.QtCore.QAbstractAnimation is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create (parent_P : Optional_QtAda6_QtCore_QObject) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QAbstractAnimation");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function currentLoop (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "currentLoop");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end currentLoop;
   function currentLoopTime (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "currentLoopTime");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end currentLoopTime;
   function currentTime (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "currentTime");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end currentTime;
   function direction_F (self : access Inst) return access QtAda6.QtCore.QAbstractAnimation.Direction.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QAbstractAnimation.Direction.Class :=
        new QtAda6.QtCore.QAbstractAnimation.Direction.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "direction");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end direction_F;
   function duration (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "duration");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end duration;
   function event (self : access Inst; event_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "event");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, event_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end event;
   function group (self : access Inst) return access QtAda6.QtCore.QAnimationGroup.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QAnimationGroup.Class := new QtAda6.QtCore.QAnimationGroup.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "group");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end group;
   function loopCount (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "loopCount");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end loopCount;
   procedure pause (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "pause");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end pause;
   procedure resume (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "resume");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end resume;
   procedure setCurrentTime (self : access Inst; msecs_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setCurrentTime");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (msecs_P));
      Result := Object_CallObject (Method, Args, True);
   end setCurrentTime;
   procedure setDirection
     (self : access Inst; direction_P : access QtAda6.QtCore.QAbstractAnimation.Direction.Inst'Class)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setDirection");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, direction_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setDirection;
   procedure setLoopCount (self : access Inst; loopCount_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setLoopCount");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (loopCount_P));
      Result := Object_CallObject (Method, Args, True);
   end setLoopCount;
   procedure setPaused (self : access Inst; arg_1_P : bool) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPaused");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (arg_1_P));
      Result := Object_CallObject (Method, Args, True);
   end setPaused;
   procedure start (self : access Inst; policy_P : access QtAda6.QtCore.QAbstractAnimation.DeletionPolicy.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "start");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, policy_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end start;
   function state_F (self : access Inst) return access QtAda6.QtCore.QAbstractAnimation.State.Inst'Class is
      Method, Args, Result : Handle;
      Ret : constant QtAda6.QtCore.QAbstractAnimation.State.Class := new QtAda6.QtCore.QAbstractAnimation.State.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "state");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end state_F;
   procedure stop (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "stop");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end stop;
   function totalDuration (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "totalDuration");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end totalDuration;
   procedure updateCurrentTime (self : access Inst; currentTime_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "updateCurrentTime");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (currentTime_P));
      Result := Object_CallObject (Method, Args, True);
   end updateCurrentTime;
   procedure updateDirection
     (self : access Inst; direction_P : access QtAda6.QtCore.QAbstractAnimation.Direction.Inst'Class)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "updateDirection");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, direction_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end updateDirection;
   procedure updateState
     (self       : access Inst; newState_P : access QtAda6.QtCore.QAbstractAnimation.State.Inst'Class;
      oldState_P : access QtAda6.QtCore.QAbstractAnimation.State.Inst'Class)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "updateState");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, newState_P.Python_Proxy);
      Tuple_SetItem (Args, 1, oldState_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end updateState;
end QtAda6.QtCore.QAbstractAnimation;
