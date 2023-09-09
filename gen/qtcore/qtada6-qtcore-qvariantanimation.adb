-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qvariantanimation.adb
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
with QtAda6.QtCore.QAbstractAnimation;
with QtAda6.QtCore.QObject;
with QtAda6.QtCore.QEasingCurve;
with QtAda6.QtCore.QEvent;
with QtAda6.QtCore.QEasingCurve.Type_K;
with QtAda6.QtCore.QAbstractAnimation.State;
package body QtAda6.QtCore.QVariantAnimation is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create (parent_P : Optional_QtAda6_QtCore_QObject) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QVariantAnimation");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function currentValue (self : access Inst) return Any is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "currentValue");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Any_conv_P2A_is_not_supported;
   end currentValue;
   function duration (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "duration");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end duration;
   function easingCurve (self : access Inst) return access QtAda6.QtCore.QEasingCurve.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QEasingCurve.Class := new QtAda6.QtCore.QEasingCurve.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "easingCurve");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end easingCurve;
   function endValue (self : access Inst) return Any is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "endValue");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Any_conv_P2A_is_not_supported;
   end endValue;
   function event (self : access Inst; event_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "event");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, event_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end event;
   function interpolated (self : access Inst; from_U_P : Any; to_P : Any; progress_P : float) return Any is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "interpolated");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Any_conv_A2P_is_not_supported);
      Tuple_SetItem (Args, 1, Any_conv_A2P_is_not_supported);
      Tuple_SetItem (Args, 2, Float_FromDouble (progress_P));
      Result := Object_CallObject (Method, Args, True);
      return Any_conv_P2A_is_not_supported;
   end interpolated;
   function keyValueAt (self : access Inst; step_P : float) return Any is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "keyValueAt");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (step_P));
      Result := Object_CallObject (Method, Args, True);
      return Any_conv_P2A_is_not_supported;
   end keyValueAt;
   function keyValues (self : access Inst) return List_Tuple_float_Any is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "keyValues");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end keyValues;
   procedure setDuration (self : access Inst; msecs_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setDuration");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (msecs_P));
      Result := Object_CallObject (Method, Args, True);
   end setDuration;
   procedure setEasingCurve
     (self : access Inst; easing_P : Union_QtAda6_QtCore_QEasingCurve_QtAda6_QtCore_QEasingCurve_Type_K)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setEasingCurve");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end setEasingCurve;
   procedure setEndValue (self : access Inst; value_P : Any) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setEndValue");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Any_conv_A2P_is_not_supported);
      Result := Object_CallObject (Method, Args, True);
   end setEndValue;
   procedure setKeyValueAt (self : access Inst; step_P : float; value_P : Any) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setKeyValueAt");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Float_FromDouble (step_P));
      Tuple_SetItem (Args, 1, Any_conv_A2P_is_not_supported);
      Result := Object_CallObject (Method, Args, True);
   end setKeyValueAt;
   procedure setKeyValues (self : access Inst; values_P : Sequence_Tuple_float_Any) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setKeyValues");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end setKeyValues;
   procedure setStartValue (self : access Inst; value_P : Any) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setStartValue");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Any_conv_A2P_is_not_supported);
      Result := Object_CallObject (Method, Args, True);
   end setStartValue;
   function startValue (self : access Inst) return Any is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "startValue");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Any_conv_P2A_is_not_supported;
   end startValue;
   procedure updateCurrentTime (self : access Inst; arg_1_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "updateCurrentTime");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (arg_1_P));
      Result := Object_CallObject (Method, Args, True);
   end updateCurrentTime;
   procedure updateCurrentValue (self : access Inst; value_P : Any) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "updateCurrentValue");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Any_conv_A2P_is_not_supported);
      Result := Object_CallObject (Method, Args, True);
   end updateCurrentValue;
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
end QtAda6.QtCore.QVariantAnimation;
