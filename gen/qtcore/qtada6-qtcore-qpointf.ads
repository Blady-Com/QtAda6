-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qpointf.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QPoint;
package QtAda6.QtCore.QPointF is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   type UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint is new Any;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (QPointF_P : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint) return Class;
   function Create (p_P : access QtAda6.QtCore.QPoint.Inst'Class) return Class;
   function Create (xpos_P : float; ypos_P : float) return Class;
   function U_add_U
     (self : access Inst; p2_P : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint)
      return access QtAda6.QtCore.QPointF.Inst'Class;
   procedure U_copy_U;
   function U_iadd_U
     (self : access Inst; p_P : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint)
      return access QtAda6.QtCore.QPointF.Inst'Class;
   function U_imul_U (self : access Inst; c_P : float) return access QtAda6.QtCore.QPointF.Inst'Class;
   function U_isub_U
     (self : access Inst; p_P : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint)
      return access QtAda6.QtCore.QPointF.Inst'Class;
   function U_mul_U (self : access Inst; c_P : float) return access QtAda6.QtCore.QPointF.Inst'Class;
   function U_neg_U (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class;
   function U_pos_U (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class;
   function U_reduce_U (self : access Inst) return access Object'Class;
   function U_repr_U (self : access Inst) return access Object'Class;
   function U_sub_U
     (self : access Inst; p2_P : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint)
      return access QtAda6.QtCore.QPointF.Inst'Class;
   function dotProduct
     (p1_P : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint; p2_P : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint)
      return float;
   function isNull (self : access Inst) return bool;
   function manhattanLength (self : access Inst) return float;
   procedure setX (self : access Inst; x_P : float);
   procedure setY (self : access Inst; y_P : float);
   function toPoint (self : access Inst) return access QtAda6.QtCore.QPoint.Inst'Class;
   function toTuple (self : access Inst) return access Object'Class;
   function transposed (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class;
   function x (self : access Inst) return float;
   function y (self : access Inst) return float;
end QtAda6.QtCore.QPointF;
