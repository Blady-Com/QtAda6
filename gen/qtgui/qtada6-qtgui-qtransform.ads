-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qtransform.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QDataStream;
limited with QtAda6.QtCore.QLine;
limited with QtAda6.QtCore.QLineF;
limited with QtAda6.QtCore.QPoint;
limited with QtAda6.QtCore.QPointF;
limited with QtAda6.QtGui.QPainterPath.Element;
limited with QtAda6.QtGui.QPolygon;
limited with QtAda6.QtCore.QRect;
limited with QtAda6.QtGui.QPolygonF;
limited with QtAda6.QtCore.QRectF;
limited with QtAda6.QtGui.QPainterPath;
limited with QtAda6.QtGui.QRegion;
limited with QtAda6.QtGui.QBitmap;
limited with QtAda6.QtCore.Qt.Axis;
limited with QtAda6.QtGui.QTransform.TransformationType;
package QtAda6.QtGui.QTransform is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   type UNION_QtAda6_QtCore_QLineFQtAda6_QtCore_QLine is new Any;
   type UNION_QtAda6_QtCore_QPointFQtAda6_QtCore_QPointQtAda6_QtGui_QPainterPath_Element is new Any;
   type TUPLE is new Any;
   type UNION_QtAda6_QtGui_QPolygonSEQUENCE_QtAda6_QtCore_QRect is new Any;
   type UNION_QtAda6_QtGui_QPolygonFSEQUENCE_QtAda6_QtCore_QRectF is new Any;
   type UNION_QtAda6_QtGui_QRegionQtAda6_QtGui_QBitmapQtAda6_QtGui_QPolygonQtAda6_QtCore_QRect is new Any;
   type UNION_QtAda6_QtCore_QRectFQtAda6_QtCore_QRect is new Any;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create
     (h11_P : float; h12_P : float; h13_P : float; h21_P : float; h22_P : float; h23_P : float; h31_P : float;
      h32_P : float; h33_P : float) return Class;
   function Create
     (h11_P : float; h12_P : float; h21_P : float; h22_P : float; dx_P : float; dy_P : float) return Class;
   function Create (other_P : access QtAda6.QtGui.QTransform.Inst'Class) return Class;
   function U_add_U (self : access Inst; n_P : float) return access QtAda6.QtGui.QTransform.Inst'Class;
   procedure U_copy_U;
   function U_iadd_U (self : access Inst; div_P : float) return access QtAda6.QtGui.QTransform.Inst'Class;
   function U_imul_U
     (self : access Inst; arg_1_P : access QtAda6.QtGui.QTransform.Inst'Class)
      return access QtAda6.QtGui.QTransform.Inst'Class;
   function U_imul_U (self : access Inst; div_P : float) return access QtAda6.QtGui.QTransform.Inst'Class;
   function U_isub_U (self : access Inst; div_P : float) return access QtAda6.QtGui.QTransform.Inst'Class;
   function U_lshift_U
     (self : access Inst; arg_1_P : access QtAda6.QtCore.QDataStream.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class;
   function U_mul_U
     (self : access Inst; l_P : access QtAda6.QtCore.QLine.Inst'Class) return access QtAda6.QtCore.QLine.Inst'Class;
   function U_mul_U
     (self : access Inst; l_P : UNION_QtAda6_QtCore_QLineFQtAda6_QtCore_QLine)
      return access QtAda6.QtCore.QLineF.Inst'Class;
   function U_mul_U (self : access Inst; n_P : float) return access QtAda6.QtGui.QTransform.Inst'Class;
   function U_mul_U
     (self : access Inst; o_P : access QtAda6.QtGui.QTransform.Inst'Class)
      return access QtAda6.QtGui.QTransform.Inst'Class;
   function U_mul_U
     (self : access Inst; p_P : access QtAda6.QtCore.QPoint.Inst'Class) return access QtAda6.QtCore.QPoint.Inst'Class;
   function U_mul_U
     (self : access Inst; p_P : UNION_QtAda6_QtCore_QPointFQtAda6_QtCore_QPointQtAda6_QtGui_QPainterPath_Element)
      return access QtAda6.QtCore.QPointF.Inst'Class;
   function U_reduce_U (self : access Inst) return access Object'Class;
   function U_repr_U (self : access Inst) return access Object'Class;
   function U_rshift_U
     (self : access Inst; arg_1_P : access QtAda6.QtCore.QDataStream.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class;
   function U_sub_U (self : access Inst; n_P : float) return access QtAda6.QtGui.QTransform.Inst'Class;
   function adjoint (self : access Inst) return access QtAda6.QtGui.QTransform.Inst'Class;
   function determinant (self : access Inst) return float;
   function dx (self : access Inst) return float;
   function dy (self : access Inst) return float;
   function fromScale (dx_P : float; dy_P : float) return access QtAda6.QtGui.QTransform.Inst'Class;
   function fromTranslate (dx_P : float; dy_P : float) return access QtAda6.QtGui.QTransform.Inst'Class;
   function inverted (self : access Inst) return TUPLE;
   function isAffine (self : access Inst) return bool;
   function isIdentity (self : access Inst) return bool;
   function isInvertible (self : access Inst) return bool;
   function isRotating (self : access Inst) return bool;
   function isScaling (self : access Inst) return bool;
   function isTranslating (self : access Inst) return bool;
   function m11 (self : access Inst) return float;
   function m12 (self : access Inst) return float;
   function m13 (self : access Inst) return float;
   function m21 (self : access Inst) return float;
   function m22 (self : access Inst) return float;
   function m23 (self : access Inst) return float;
   function m31 (self : access Inst) return float;
   function m32 (self : access Inst) return float;
   function m33 (self : access Inst) return float;
   function map
     (self : access Inst; a_P : UNION_QtAda6_QtGui_QPolygonSEQUENCE_QtAda6_QtCore_QRect)
      return access QtAda6.QtGui.QPolygon.Inst'Class;
   function map
     (self : access Inst; a_P : UNION_QtAda6_QtGui_QPolygonFSEQUENCE_QtAda6_QtCore_QRectF)
      return access QtAda6.QtGui.QPolygonF.Inst'Class;
   function map
     (self : access Inst; l_P : access QtAda6.QtCore.QLine.Inst'Class) return access QtAda6.QtCore.QLine.Inst'Class;
   function map
     (self : access Inst; l_P : UNION_QtAda6_QtCore_QLineFQtAda6_QtCore_QLine)
      return access QtAda6.QtCore.QLineF.Inst'Class;
   function map
     (self : access Inst; p_P : access QtAda6.QtCore.QPoint.Inst'Class) return access QtAda6.QtCore.QPoint.Inst'Class;
   function map
     (self : access Inst; p_P : access QtAda6.QtGui.QPainterPath.Inst'Class)
      return access QtAda6.QtGui.QPainterPath.Inst'Class;
   function map
     (self : access Inst; p_P : UNION_QtAda6_QtCore_QPointFQtAda6_QtCore_QPointQtAda6_QtGui_QPainterPath_Element)
      return access QtAda6.QtCore.QPointF.Inst'Class;
   function map
     (self : access Inst; r_P : UNION_QtAda6_QtGui_QRegionQtAda6_QtGui_QBitmapQtAda6_QtGui_QPolygonQtAda6_QtCore_QRect)
      return access QtAda6.QtGui.QRegion.Inst'Class;
   function map (self : access Inst; x_P : float; y_P : float) return access Object'Class;
   function mapRect
     (self : access Inst; arg_1_P : access QtAda6.QtCore.QRect.Inst'Class) return access QtAda6.QtCore.QRect.Inst'Class;
   function mapRect
     (self : access Inst; arg_1_P : UNION_QtAda6_QtCore_QRectFQtAda6_QtCore_QRect)
      return access QtAda6.QtCore.QRectF.Inst'Class;
   function mapToPolygon
     (self : access Inst; r_P : access QtAda6.QtCore.QRect.Inst'Class) return access QtAda6.QtGui.QPolygon.Inst'Class;
   function quadToQuad
     (arg_1_P : UNION_QtAda6_QtGui_QPolygonFSEQUENCE_QtAda6_QtCore_QRectF;
      arg_2_P : UNION_QtAda6_QtGui_QPolygonFSEQUENCE_QtAda6_QtCore_QRectF) return access Object'Class;
   function quadToQuad
     (one_P    : UNION_QtAda6_QtGui_QPolygonFSEQUENCE_QtAda6_QtCore_QRectF;
      two_P    : UNION_QtAda6_QtGui_QPolygonFSEQUENCE_QtAda6_QtCore_QRectF;
      result_P : access QtAda6.QtGui.QTransform.Inst'Class) return bool;
   function quadToSquare
     (arg_1_P : UNION_QtAda6_QtGui_QPolygonFSEQUENCE_QtAda6_QtCore_QRectF) return access Object'Class;
   function quadToSquare
     (quad_P   : UNION_QtAda6_QtGui_QPolygonFSEQUENCE_QtAda6_QtCore_QRectF;
      result_P : access QtAda6.QtGui.QTransform.Inst'Class) return bool;
   procedure reset (self : access Inst);
   function rotate
     (self : access Inst; a_P : float; axis_P : access QtAda6.QtCore.Qt.Axis.Inst'Class; distanceToPlane_P : float)
      return access QtAda6.QtGui.QTransform.Inst'Class;
   function rotate
     (self : access Inst; a_P : float; axis_P : access QtAda6.QtCore.Qt.Axis.Inst'Class := null)
      return access QtAda6.QtGui.QTransform.Inst'Class;
   function rotateRadians
     (self : access Inst; a_P : float; axis_P : access QtAda6.QtCore.Qt.Axis.Inst'Class; distanceToPlane_P : float)
      return access QtAda6.QtGui.QTransform.Inst'Class;
   function rotateRadians
     (self : access Inst; a_P : float; axis_P : access QtAda6.QtCore.Qt.Axis.Inst'Class := null)
      return access QtAda6.QtGui.QTransform.Inst'Class;
   function scale (self : access Inst; sx_P : float; sy_P : float) return access QtAda6.QtGui.QTransform.Inst'Class;
   procedure setMatrix
     (self  : access Inst; m11_P : float; m12_P : float; m13_P : float; m21_P : float; m22_P : float; m23_P : float;
      m31_P : float; m32_P : float; m33_P : float);
   function shear (self : access Inst; sh_P : float; sv_P : float) return access QtAda6.QtGui.QTransform.Inst'Class;
   function squareToQuad
     (arg_1_P : UNION_QtAda6_QtGui_QPolygonFSEQUENCE_QtAda6_QtCore_QRectF) return access Object'Class;
   function squareToQuad
     (square_P : UNION_QtAda6_QtGui_QPolygonFSEQUENCE_QtAda6_QtCore_QRectF;
      result_P : access QtAda6.QtGui.QTransform.Inst'Class) return bool;
   function translate (self : access Inst; dx_P : float; dy_P : float) return access QtAda6.QtGui.QTransform.Inst'Class;
   function transposed (self : access Inst) return access QtAda6.QtGui.QTransform.Inst'Class;
   function type_K (self : access Inst) return access QtAda6.QtGui.QTransform.TransformationType.Inst'Class;
end QtAda6.QtGui.QTransform;
