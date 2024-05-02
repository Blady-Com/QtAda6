-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qmatrix4x4.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtGui.QTransform;
limited with QtAda6.QtCore.QDataStream;
limited with QtAda6.QtCore.QPoint;
limited with QtAda6.QtCore.QPointF;
limited with QtAda6.QtGui.QPainterPath.Element;
limited with QtAda6.QtGui.QVector4D;
limited with QtAda6.QtGui.QMatrix4x4.Flag;
limited with QtAda6.QtGui.QVector3D;
limited with QtAda6.QtCore.QRect;
limited with QtAda6.QtCore.QRectF;
limited with QtAda6.QtGui.QMatrix3x3;
limited with QtAda6.QtGui.QQuaternion;
package QtAda6.QtGui.QMatrix4x4 is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   type SEQUENCE_float is array (Positive range <>) of float;
   type TUPLE is null record;
   type LIST_float is array (Positive range <>) of float;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create
     (m11_P : float; m12_P : float; m13_P : float; m14_P : float; m21_P : float; m22_P : float; m23_P : float;
      m24_P : float; m31_P : float; m32_P : float; m33_P : float; m34_P : float; m41_P : float; m42_P : float;
      m43_P : float; m44_P : float) return Class;
   function Create (transform_P : access QtAda6.QtGui.QTransform.Inst'Class) return Class;
   function Create (values_P : Iterable) return Class;
   function U_add_U
     (self : access Inst; m2_P : access QtAda6.QtGui.QMatrix4x4.Inst'Class)
      return access QtAda6.QtGui.QMatrix4x4.Inst'Class;
   function U_add_U
     (self : access Inst; m2_P : access QtAda6.QtGui.QTransform.Inst'Class)
      return access QtAda6.QtGui.QMatrix4x4.Inst'Class;
   procedure U_copy_U;
   procedure U_dummy (self : access Inst; arg_1_P : SEQUENCE_float);
   function U_iadd_U
     (self : access Inst; other_P : access QtAda6.QtGui.QMatrix4x4.Inst'Class)
      return access QtAda6.QtGui.QMatrix4x4.Inst'Class;
   function U_iadd_U
     (self : access Inst; other_P : access QtAda6.QtGui.QTransform.Inst'Class)
      return access QtAda6.QtGui.QMatrix4x4.Inst'Class;
   function U_imul_U (self : access Inst; factor_P : float) return access QtAda6.QtGui.QMatrix4x4.Inst'Class;
   function U_imul_U
     (self : access Inst; other_P : access QtAda6.QtGui.QMatrix4x4.Inst'Class)
      return access QtAda6.QtGui.QMatrix4x4.Inst'Class;
   function U_imul_U
     (self : access Inst; other_P : access QtAda6.QtGui.QTransform.Inst'Class)
      return access QtAda6.QtGui.QMatrix4x4.Inst'Class;
   function U_isub_U
     (self : access Inst; other_P : access QtAda6.QtGui.QMatrix4x4.Inst'Class)
      return access QtAda6.QtGui.QMatrix4x4.Inst'Class;
   function U_isub_U
     (self : access Inst; other_P : access QtAda6.QtGui.QTransform.Inst'Class)
      return access QtAda6.QtGui.QMatrix4x4.Inst'Class;
   function U_lshift_U
     (self : access Inst; arg_1_P : access QtAda6.QtCore.QDataStream.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class;
   function U_mul_U (self : access Inst; factor_P : float) return access QtAda6.QtGui.QMatrix4x4.Inst'Class;
   function U_mul_U
     (self : access Inst; m2_P : access QtAda6.QtGui.QMatrix4x4.Inst'Class)
      return access QtAda6.QtGui.QMatrix4x4.Inst'Class;
   function U_mul_U
     (self : access Inst; m2_P : access QtAda6.QtGui.QTransform.Inst'Class)
      return access QtAda6.QtGui.QMatrix4x4.Inst'Class;
   function U_mul_U
     (self : access Inst; point_P : access QtAda6.QtCore.QPoint.Inst'Class)
      return access QtAda6.QtCore.QPoint.Inst'Class;
   function U_mul_U
     (self : access Inst; point_P : access QtAda6.QtCore.QPointF.Inst'Class)
      return access QtAda6.QtCore.QPointF.Inst'Class;
   function U_mul_U
     (self : access Inst; point_P : access QtAda6.QtCore.QPoint.Inst'Class)
      return access QtAda6.QtCore.QPointF.Inst'Class;
   function U_mul_U
     (self : access Inst; point_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class)
      return access QtAda6.QtCore.QPointF.Inst'Class;
   function U_neg_U (self : access Inst) return access QtAda6.QtGui.QMatrix4x4.Inst'Class;
   function U_reduce_U (self : access Inst) return access Object'Class;
   function U_repr_U (self : access Inst) return access Object'Class;
   function U_rshift_U
     (self : access Inst; arg_1_P : access QtAda6.QtCore.QDataStream.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class;
   function U_sub_U
     (self : access Inst; m2_P : access QtAda6.QtGui.QMatrix4x4.Inst'Class)
      return access QtAda6.QtGui.QMatrix4x4.Inst'Class;
   function U_sub_U
     (self : access Inst; m2_P : access QtAda6.QtGui.QTransform.Inst'Class)
      return access QtAda6.QtGui.QMatrix4x4.Inst'Class;
   function column (self : access Inst; index_P : int) return access QtAda6.QtGui.QVector4D.Inst'Class;
   function copyDataTo (self : access Inst) return TUPLE;
   function data (self : access Inst) return LIST_float;
   function determinant (self : access Inst) return float;
   procedure fill (self : access Inst; value_P : float);
   function flags (self : access Inst) return access QtAda6.QtGui.QMatrix4x4.Flag.Inst'Class;
   procedure flipCoordinates (self : access Inst);
   procedure frustum
     (self       : access Inst; left_P : float; right_P : float; bottom_P : float; top_P : float; nearPlane_P : float;
      farPlane_P : float);
   function inverted (self : access Inst) return TUPLE;
   function isAffine (self : access Inst) return bool;
   function isIdentity (self : access Inst) return bool;
   procedure lookAt
     (self     : access Inst; eye_P : access QtAda6.QtGui.QVector3D.Inst'Class;
      center_P : access QtAda6.QtGui.QVector3D.Inst'Class; up_P : access QtAda6.QtGui.QVector3D.Inst'Class);
   function map
     (self : access Inst; point_P : access QtAda6.QtCore.QPoint.Inst'Class)
      return access QtAda6.QtCore.QPoint.Inst'Class;
   function map
     (self : access Inst; point_P : access QtAda6.QtGui.QVector3D.Inst'Class)
      return access QtAda6.QtGui.QVector3D.Inst'Class;
   function map
     (self : access Inst; point_P : access QtAda6.QtGui.QVector4D.Inst'Class)
      return access QtAda6.QtGui.QVector4D.Inst'Class;
   function map
     (self : access Inst; point_P : access QtAda6.QtCore.QPointF.Inst'Class)
      return access QtAda6.QtCore.QPointF.Inst'Class;
   function map
     (self : access Inst; point_P : access QtAda6.QtCore.QPoint.Inst'Class)
      return access QtAda6.QtCore.QPointF.Inst'Class;
   function map
     (self : access Inst; point_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class)
      return access QtAda6.QtCore.QPointF.Inst'Class;
   function mapRect
     (self : access Inst; rect_P : access QtAda6.QtCore.QRect.Inst'Class) return access QtAda6.QtCore.QRect.Inst'Class;
   function mapRect
     (self : access Inst; rect_P : access QtAda6.QtCore.QRectF.Inst'Class)
      return access QtAda6.QtCore.QRectF.Inst'Class;
   function mapRect
     (self : access Inst; rect_P : access QtAda6.QtCore.QRect.Inst'Class) return access QtAda6.QtCore.QRectF.Inst'Class;
   function mapVector
     (self : access Inst; vector_P : access QtAda6.QtGui.QVector3D.Inst'Class)
      return access QtAda6.QtGui.QVector3D.Inst'Class;
   function normalMatrix (self : access Inst) return access QtAda6.QtGui.QMatrix3x3.Inst'Class;
   procedure optimize (self : access Inst);
   procedure ortho
     (self       : access Inst; left_P : float; right_P : float; bottom_P : float; top_P : float; nearPlane_P : float;
      farPlane_P : float);
   procedure ortho (self : access Inst; rect_P : access QtAda6.QtCore.QRect.Inst'Class);
   procedure ortho (self : access Inst; rect_P : access QtAda6.QtCore.QRectF.Inst'Class);
-- procedure ortho(self : access Inst;rect_P : access QtAda6.QtCore.QRect.Inst'Class);
   procedure perspective
     (self : access Inst; verticalAngle_P : float; aspectRatio_P : float; nearPlane_P : float; farPlane_P : float);
   procedure projectedRotate (self : access Inst; angle_P : float; x_P : float; y_P : float; z_P : float);
   procedure projectedRotate
     (self : access Inst; angle_P : float; x_P : float; y_P : float; z_P : float; distanceToPlane_P : float);
   procedure rotate (self : access Inst; angle_P : float; vector_P : access QtAda6.QtGui.QVector3D.Inst'Class);
   procedure rotate (self : access Inst; angle_P : float; x_P : float; y_P : float; z_P : float := 0.0);
   procedure rotate (self : access Inst; quaternion_P : access QtAda6.QtGui.QQuaternion.Inst'Class);
   function row (self : access Inst; index_P : int) return access QtAda6.QtGui.QVector4D.Inst'Class;
   procedure scale (self : access Inst; factor_P : float);
   procedure scale (self : access Inst; vector_P : access QtAda6.QtGui.QVector3D.Inst'Class);
   procedure scale (self : access Inst; x_P : float; y_P : float);
   procedure scale (self : access Inst; x_P : float; y_P : float; z_P : float);
   procedure setColumn (self : access Inst; index_P : int; value_P : access QtAda6.QtGui.QVector4D.Inst'Class);
   procedure setRow (self : access Inst; index_P : int; value_P : access QtAda6.QtGui.QVector4D.Inst'Class);
   procedure setToIdentity (self : access Inst);
   function toTransform (self : access Inst) return access QtAda6.QtGui.QTransform.Inst'Class;
   function toTransform
     (self : access Inst; distanceToPlane_P : float) return access QtAda6.QtGui.QTransform.Inst'Class;
   procedure translate (self : access Inst; vector_P : access QtAda6.QtGui.QVector3D.Inst'Class);
   procedure translate (self : access Inst; x_P : float; y_P : float);
   procedure translate (self : access Inst; x_P : float; y_P : float; z_P : float);
   function transposed (self : access Inst) return access QtAda6.QtGui.QMatrix4x4.Inst'Class;
   procedure viewport
     (self        : access Inst; left_P : float; bottom_P : float; width_P : float; height_P : float;
      nearPlane_P : float := 0.0; farPlane_P : float := 0.0);
   procedure viewport (self : access Inst; rect_P : access QtAda6.QtCore.QRectF.Inst'Class);
   procedure viewport (self : access Inst; rect_P : access QtAda6.QtCore.QRect.Inst'Class);
end QtAda6.QtGui.QMatrix4x4;
