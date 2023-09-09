-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qeasingcurve.adb
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
with QtAda6.QtCore.QEasingCurve.Type_K;
with QtAda6.QtCore.QPointF;
with QtAda6.QtCore.QPoint;
package body QtAda6.QtCore.QEasingCurve is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create (other_P : Union_QtAda6_QtCore_QEasingCurve_QtAda6_QtCore_QEasingCurve_Type_K) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEasingCurve");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (type_K_P : access QtAda6.QtCore.QEasingCurve.Type_K.Inst'Class) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEasingCurve");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, type_K_P.Python_Proxy);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   procedure U_copy_U is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEasingCurve");
      Method := Object_GetAttrString (Class, "__copy__");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end U_copy_U;
   procedure addCubicBezierSegment
     (self       : access Inst; c1_P : Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint;
      c2_P       : Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint;
      endPoint_P : Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addCubicBezierSegment");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, No_Value);
      Tuple_SetItem (Args, 1, No_Value);
      Tuple_SetItem (Args, 2, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end addCubicBezierSegment;
   procedure addTCBSegment
     (self : access Inst; nextPoint_P : Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint; t_P : float; c_P : float;
      b_P  : float)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addTCBSegment");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, No_Value);
      Tuple_SetItem (Args, 1, Float_FromDouble (t_P));
      Tuple_SetItem (Args, 2, Float_FromDouble (c_P));
      Tuple_SetItem (Args, 3, Float_FromDouble (b_P));
      Result := Object_CallObject (Method, Args, True);
   end addTCBSegment;
   function amplitude (self : access Inst) return float is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "amplitude");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end amplitude;
   function customType (self : access Inst) return Object is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "customType");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return (Python_Proxy => Result);
   end customType;
   function overshoot (self : access Inst) return float is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "overshoot");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end overshoot;
   function period (self : access Inst) return float is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "period");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end period;
   procedure setAmplitude (self : access Inst; amplitude_P : float) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setAmplitude");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (amplitude_P));
      Result := Object_CallObject (Method, Args, True);
   end setAmplitude;
   procedure setCustomType (self : access Inst; arg_1_P : Object) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setCustomType");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, arg_1_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setCustomType;
   procedure setOvershoot (self : access Inst; overshoot_P : float) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setOvershoot");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (overshoot_P));
      Result := Object_CallObject (Method, Args, True);
   end setOvershoot;
   procedure setPeriod (self : access Inst; period_P : float) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPeriod");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (period_P));
      Result := Object_CallObject (Method, Args, True);
   end setPeriod;
   procedure setType (self : access Inst; type_K_P : access QtAda6.QtCore.QEasingCurve.Type_K.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setType");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, type_K_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setType;
   procedure swap (self : access Inst; other_P : Union_QtAda6_QtCore_QEasingCurve_QtAda6_QtCore_QEasingCurve_Type_K) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "swap");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end swap;
   function toCubicSpline (self : access Inst) return List_QtAda6_QtCore_QPointF is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toCubicSpline");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end toCubicSpline;
   function type_K_F (self : access Inst) return access QtAda6.QtCore.QEasingCurve.Type_K.Inst'Class is
      Method, Args, Result : Handle;
      Ret : constant QtAda6.QtCore.QEasingCurve.Type_K.Class := new QtAda6.QtCore.QEasingCurve.Type_K.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "type");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end type_K_F;
   function valueForProgress (self : access Inst; progress_P : float) return float is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "valueForProgress");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (progress_P));
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end valueForProgress;
end QtAda6.QtCore.QEasingCurve;
