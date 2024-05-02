-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qeasingcurve.adb
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
with QtAda6.QtCore.QEasingCurve.Type_K;
with QtAda6.QtCore.QPointF;
with QtAda6.QtCore.QPoint;
package body QtAda6.QtCore.QEasingCurve is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create (other_P : access QtAda6.QtCore.QEasingCurve.Inst'Class) return Class is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEasingCurve");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if other_P /= null then other_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (other_P : access QtAda6.QtCore.QEasingCurve.Type_K.Inst'Class) return Class is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEasingCurve");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if other_P /= null then other_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   procedure U_copy_U is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEasingCurve");
      Method := Object_GetAttrString (Class, "__copy__");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end U_copy_U;
   procedure addCubicBezierSegment
     (self : access Inst; c1_P : access QtAda6.QtCore.QPointF.Inst'Class;
      c2_P : access QtAda6.QtCore.QPointF.Inst'Class; endPoint_P : access QtAda6.QtCore.QPointF.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addCubicBezierSegment");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if c1_P /= null then c1_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if c2_P /= null then c2_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if endPoint_P /= null then endPoint_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end addCubicBezierSegment;
   procedure addCubicBezierSegment
     (self : access Inst; c1_P : access QtAda6.QtCore.QPointF.Inst'Class;
      c2_P : access QtAda6.QtCore.QPointF.Inst'Class; endPoint_P : access QtAda6.QtCore.QPoint.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addCubicBezierSegment");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if c1_P /= null then c1_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if c2_P /= null then c2_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if endPoint_P /= null then endPoint_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end addCubicBezierSegment;
   procedure addCubicBezierSegment
     (self : access Inst; c1_P : access QtAda6.QtCore.QPointF.Inst'Class; c2_P : access QtAda6.QtCore.QPoint.Inst'Class;
      endPoint_P : access QtAda6.QtCore.QPointF.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addCubicBezierSegment");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if c1_P /= null then c1_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if c2_P /= null then c2_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if endPoint_P /= null then endPoint_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end addCubicBezierSegment;
   procedure addCubicBezierSegment
     (self : access Inst; c1_P : access QtAda6.QtCore.QPointF.Inst'Class; c2_P : access QtAda6.QtCore.QPoint.Inst'Class;
      endPoint_P : access QtAda6.QtCore.QPoint.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addCubicBezierSegment");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if c1_P /= null then c1_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if c2_P /= null then c2_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if endPoint_P /= null then endPoint_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end addCubicBezierSegment;
   procedure addCubicBezierSegment
     (self : access Inst; c1_P : access QtAda6.QtCore.QPoint.Inst'Class; c2_P : access QtAda6.QtCore.QPointF.Inst'Class;
      endPoint_P : access QtAda6.QtCore.QPointF.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addCubicBezierSegment");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if c1_P /= null then c1_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if c2_P /= null then c2_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if endPoint_P /= null then endPoint_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end addCubicBezierSegment;
   procedure addCubicBezierSegment
     (self : access Inst; c1_P : access QtAda6.QtCore.QPoint.Inst'Class; c2_P : access QtAda6.QtCore.QPointF.Inst'Class;
      endPoint_P : access QtAda6.QtCore.QPoint.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addCubicBezierSegment");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if c1_P /= null then c1_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if c2_P /= null then c2_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if endPoint_P /= null then endPoint_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end addCubicBezierSegment;
   procedure addCubicBezierSegment
     (self : access Inst; c1_P : access QtAda6.QtCore.QPoint.Inst'Class; c2_P : access QtAda6.QtCore.QPoint.Inst'Class;
      endPoint_P : access QtAda6.QtCore.QPointF.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addCubicBezierSegment");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if c1_P /= null then c1_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if c2_P /= null then c2_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if endPoint_P /= null then endPoint_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end addCubicBezierSegment;
   procedure addCubicBezierSegment
     (self : access Inst; c1_P : access QtAda6.QtCore.QPoint.Inst'Class; c2_P : access QtAda6.QtCore.QPoint.Inst'Class;
      endPoint_P : access QtAda6.QtCore.QPoint.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addCubicBezierSegment");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if c1_P /= null then c1_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if c2_P /= null then c2_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if endPoint_P /= null then endPoint_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end addCubicBezierSegment;
   procedure addTCBSegment
     (self : access Inst; nextPoint_P : access QtAda6.QtCore.QPointF.Inst'Class; t_P : float; c_P : float; b_P : float)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addTCBSegment");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if nextPoint_P /= null then nextPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Float_FromDouble (t_P));
      Tuple_SetItem (Args, 2, Float_FromDouble (c_P));
      Tuple_SetItem (Args, 3, Float_FromDouble (b_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end addTCBSegment;
   procedure addTCBSegment
     (self : access Inst; nextPoint_P : access QtAda6.QtCore.QPoint.Inst'Class; t_P : float; c_P : float; b_P : float)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addTCBSegment");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if nextPoint_P /= null then nextPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Float_FromDouble (t_P));
      Tuple_SetItem (Args, 2, Float_FromDouble (c_P));
      Tuple_SetItem (Args, 3, Float_FromDouble (b_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end addTCBSegment;
   function amplitude (self : access Inst) return float is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "amplitude");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Float_AsDouble (Result);
   end amplitude;
   function customType (self : access Inst) return access Object'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "customType");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return null;
   end customType;
   function overshoot (self : access Inst) return float is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "overshoot");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Float_AsDouble (Result);
   end overshoot;
   function period (self : access Inst) return float is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "period");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Float_AsDouble (Result);
   end period;
   procedure setAmplitude (self : access Inst; amplitude_P : float) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setAmplitude");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (amplitude_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setAmplitude;
   procedure setCustomType (self : access Inst; arg_1_P : access Object'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setCustomType");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setCustomType;
   procedure setOvershoot (self : access Inst; overshoot_P : float) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setOvershoot");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (overshoot_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setOvershoot;
   procedure setPeriod (self : access Inst; period_P : float) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPeriod");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (period_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPeriod;
   procedure setType (self : access Inst; type_K_P : access QtAda6.QtCore.QEasingCurve.Type_K.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setType");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if type_K_P /= null then type_K_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setType;
   procedure swap (self : access Inst; other_P : access QtAda6.QtCore.QEasingCurve.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "swap");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if other_P /= null then other_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end swap;
   procedure swap (self : access Inst; other_P : access QtAda6.QtCore.QEasingCurve.Type_K.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "swap");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if other_P /= null then other_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end swap;
   function toCubicSpline (self : access Inst) return LIST_QtAda6_QtCore_QPointF is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toCubicSpline");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Ret : LIST_QtAda6_QtCore_QPointF (1 .. Natural (List_Size (Result))) do
         for Ind in Ret'Range loop
            Ret (Ind).Python_Proxy := List_GetItem (Result, ssize_t (Ind - Ret'First));
         end loop;
      end return;
   end toCubicSpline;
   function type_K_F (self : access Inst) return access QtAda6.QtCore.QEasingCurve.Type_K.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QEasingCurve.Type_K.Class := new QtAda6.QtCore.QEasingCurve.Type_K.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "type");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end type_K_F;
   function valueForProgress (self : access Inst; progress_P : float) return float is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "valueForProgress");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (progress_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Float_AsDouble (Result);
   end valueForProgress;
end QtAda6.QtCore.QEasingCurve;
