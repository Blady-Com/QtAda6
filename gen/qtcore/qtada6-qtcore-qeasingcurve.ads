-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qeasingcurve.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QEasingCurve.Type_K;
limited with QtAda6.QtCore.QPointF;
package QtAda6.QtCore.QEasingCurve is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   type UNION_QtAda6_QtCore_QEasingCurve_QtAda6_QtCore_QEasingCurve_Type_K is new Any;
   type UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint is new Any;
   subtype LIST_QtAda6_QtCore_QPointF is QtAda6.QtCore.QPointF.Class_Array;
   procedure Finalize (Self : in out Class);
   function Create (other_P : UNION_QtAda6_QtCore_QEasingCurve_QtAda6_QtCore_QEasingCurve_Type_K) return Class;
   function Create (type_K_P : access QtAda6.QtCore.QEasingCurve.Type_K.Inst'Class := null) return Class;
   procedure U_copy_U;
   procedure addCubicBezierSegment
     (self       : access Inst; c1_P : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint;
      c2_P       : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint;
      endPoint_P : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint);
   procedure addTCBSegment
     (self : access Inst; nextPoint_P : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint; t_P : float; c_P : float;
      b_P  : float);
   function amplitude (self : access Inst) return float;
   function customType (self : access Inst) return access Object'Class;
   function overshoot (self : access Inst) return float;
   function period (self : access Inst) return float;
   procedure setAmplitude (self : access Inst; amplitude_P : float);
   procedure setCustomType (self : access Inst; arg_1_P : access Object'Class);
   procedure setOvershoot (self : access Inst; overshoot_P : float);
   procedure setPeriod (self : access Inst; period_P : float);
   procedure setType (self : access Inst; type_K_P : access QtAda6.QtCore.QEasingCurve.Type_K.Inst'Class);
   procedure swap (self : access Inst; other_P : UNION_QtAda6_QtCore_QEasingCurve_QtAda6_QtCore_QEasingCurve_Type_K);
   function toCubicSpline (self : access Inst) return LIST_QtAda6_QtCore_QPointF;
   function type_K_F (self : access Inst) return access QtAda6.QtCore.QEasingCurve.Type_K.Inst'Class;
   function valueForProgress (self : access Inst; progress_P : float) return float;
end QtAda6.QtCore.QEasingCurve;
