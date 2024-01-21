-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qvariantanimation.adb
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
   function valueChanged (self : access Inst) return CLASSVAR_Signal is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "valueChanged"));
   end valueChanged;
   function Create (parent_P : access QtAda6.QtCore.QObject.Inst'Class := null) return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QVariantAnimation");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if parent_P /= null then parent_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function currentValue (self : access Inst) return Any is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "currentValue");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end currentValue;
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
   function endValue (self : access Inst) return Any is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "endValue");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end endValue;
   function event (self : access Inst; event_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "event");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end event;
   function interpolated (self : access Inst; from_U_P : Any; to_P : Any; progress_P : float) return Any is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "interpolated");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if from_U_P /= null then from_U_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if to_P /= null then to_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, Float_FromDouble (progress_P));
      Result := Object_CallObject (Method, Args, True);
      return null;
   end interpolated;
   function keyValueAt (self : access Inst; step_P : float) return Any is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "keyValueAt");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (step_P));
      Result := Object_CallObject (Method, Args, True);
      return null;
   end keyValueAt;
   function keyValues (self : access Inst) return LIST_TUPLE_floatAny is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "keyValues");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return (2 .. 1 => <>);
   end keyValues;
   procedure setDuration (self : access Inst; msecs_P : int) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setDuration");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (msecs_P));
      Result := Object_CallObject (Method, Args, True);
   end setDuration;
   procedure setEasingCurve
     (self : access Inst; easing_P : UNION_QtAda6_QtCore_QEasingCurveQtAda6_QtCore_QEasingCurve_Type_K)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setEasingCurve");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if easing_P /= null then easing_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setEasingCurve;
   procedure setEndValue (self : access Inst; value_P : Any) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setEndValue");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if value_P /= null then value_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setEndValue;
   procedure setKeyValueAt (self : access Inst; step_P : float; value_P : Any) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setKeyValueAt");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Float_FromDouble (step_P));
      Tuple_SetItem (Args, 1, (if value_P /= null then value_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setKeyValueAt;
   procedure setKeyValues (self : access Inst; values_P : SEQUENCE_TUPLE_floatAny) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setKeyValues");
      List   := List_New (values_P'Length);
      for ind in values_P'Range loop
         List_SetItem
           (List, ssize_t (ind - values_P'First),
            (if values_P (ind) /= null then values_P (ind).Python_Proxy else No_Value));
      end loop;
      Args := Tuple_New (1);
      Tuple_SetItem (Args, 0, List);
      Result := Object_CallObject (Method, Args, True);
   end setKeyValues;
   procedure setStartValue (self : access Inst; value_P : Any) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setStartValue");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if value_P /= null then value_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setStartValue;
   function startValue (self : access Inst) return Any is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "startValue");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end startValue;
   procedure updateCurrentTime (self : access Inst; arg_1_P : int) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "updateCurrentTime");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (arg_1_P));
      Result := Object_CallObject (Method, Args, True);
   end updateCurrentTime;
   procedure updateCurrentValue (self : access Inst; value_P : Any) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "updateCurrentValue");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if value_P /= null then value_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end updateCurrentValue;
   procedure updateState
     (self       : access Inst; newState_P : access QtAda6.QtCore.QAbstractAnimation.State.Inst'Class;
      oldState_P : access QtAda6.QtCore.QAbstractAnimation.State.Inst'Class)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "updateState");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if newState_P /= null then newState_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if oldState_P /= null then oldState_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end updateState;
end QtAda6.QtCore.QVariantAnimation;
