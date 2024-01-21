-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qlinef.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QLine;
limited with QtAda6.QtCore.QPointF;
limited with QtAda6.QtCore.QPoint;
package QtAda6.QtCore.QLineF is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   type UNION_QtAda6_QtCore_QLineFQtAda6_QtCore_QLine is new Any;
   type UNION_QtAda6_QtCore_QPointFQtAda6_QtCore_QPoint is new Any;
   type TUPLE is new Any;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (QLineF_P : UNION_QtAda6_QtCore_QLineFQtAda6_QtCore_QLine) return Class;
   function Create (line_P : access QtAda6.QtCore.QLine.Inst'Class) return Class;
   function Create
     (pt1_P : UNION_QtAda6_QtCore_QPointFQtAda6_QtCore_QPoint; pt2_P : UNION_QtAda6_QtCore_QPointFQtAda6_QtCore_QPoint)
      return Class;
   function Create (x1_P : float; y1_P : float; x2_P : float; y2_P : float) return Class;
   procedure U_copy_U;
   function U_reduce_U (self : access Inst) return access Object'Class;
   function U_repr_U (self : access Inst) return access Object'Class;
   function angle (self : access Inst) return float;
   function angleTo (self : access Inst; l_P : UNION_QtAda6_QtCore_QLineFQtAda6_QtCore_QLine) return float;
   function center (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class;
   function dx (self : access Inst) return float;
   function dy (self : access Inst) return float;
   function fromPolar (length_P : float; angle_P : float) return access QtAda6.QtCore.QLineF.Inst'Class;
   function intersects (self : access Inst; l_P : UNION_QtAda6_QtCore_QLineFQtAda6_QtCore_QLine) return TUPLE;
   function isNull (self : access Inst) return bool;
   function length (self : access Inst) return float;
   function normalVector (self : access Inst) return access QtAda6.QtCore.QLineF.Inst'Class;
   function p1 (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class;
   function p2 (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class;
   function pointAt (self : access Inst; t_P : float) return access QtAda6.QtCore.QPointF.Inst'Class;
   procedure setAngle (self : access Inst; angle_P : float);
   procedure setLength (self : access Inst; len_P : float);
   procedure setLine (self : access Inst; x1_P : float; y1_P : float; x2_P : float; y2_P : float);
   procedure setP1 (self : access Inst; p1_P : UNION_QtAda6_QtCore_QPointFQtAda6_QtCore_QPoint);
   procedure setP2 (self : access Inst; p2_P : UNION_QtAda6_QtCore_QPointFQtAda6_QtCore_QPoint);
   procedure setPoints
     (self : access Inst; p1_P : UNION_QtAda6_QtCore_QPointFQtAda6_QtCore_QPoint;
      p2_P : UNION_QtAda6_QtCore_QPointFQtAda6_QtCore_QPoint);
   function toLine (self : access Inst) return access QtAda6.QtCore.QLine.Inst'Class;
   function toTuple (self : access Inst) return access Object'Class;
   procedure translate (self : access Inst; dx_P : float; dy_P : float);
   procedure translate (self : access Inst; p_P : UNION_QtAda6_QtCore_QPointFQtAda6_QtCore_QPoint);
   function translated (self : access Inst; dx_P : float; dy_P : float) return access QtAda6.QtCore.QLineF.Inst'Class;
   function translated
     (self : access Inst; p_P : UNION_QtAda6_QtCore_QPointFQtAda6_QtCore_QPoint)
      return access QtAda6.QtCore.QLineF.Inst'Class;
   function unitVector (self : access Inst) return access QtAda6.QtCore.QLineF.Inst'Class;
   function x1 (self : access Inst) return float;
   function x2 (self : access Inst) return float;
   function y1 (self : access Inst) return float;
   function y2 (self : access Inst) return float;
end QtAda6.QtCore.QLineF;
