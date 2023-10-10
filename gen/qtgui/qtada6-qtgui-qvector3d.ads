-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qvector3d.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QPoint;
limited with QtAda6.QtCore.QPointF;
limited with QtAda6.QtGui.QPainterPath.Element;
limited with QtAda6.QtGui.QVector2D;
limited with QtAda6.QtGui.QVector4D;
limited with QtAda6.QtCore.QDataStream;
limited with QtAda6.QtGui.QMatrix4x4;
limited with QtAda6.QtGui.QTransform;
limited with QtAda6.QtGui.QQuaternion;
limited with QtAda6.QtCore.QRect;
package QtAda6.QtGui.QVector3D is
   type Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element is access Any;
   type Union_QtAda6_QtGui_QMatrix4x4_QtAda6_QtGui_QTransform is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (point_P : access QtAda6.QtCore.QPoint.Inst'Class) return Class;
   function Create
     (point_P : Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element) return Class;
   function Create (vector_P : access QtAda6.QtGui.QVector2D.Inst'Class) return Class;
   function Create (vector_P : access QtAda6.QtGui.QVector2D.Inst'Class; zpos_P : float) return Class;
   function Create (vector_P : access QtAda6.QtGui.QVector4D.Inst'Class) return Class;
   function Create (xpos_P : float; ypos_P : float; zpos_P : float) return Class;
   function U_add_U
     (self : access Inst; v2_P : access QtAda6.QtGui.QVector3D.Inst'Class)
      return access QtAda6.QtGui.QVector3D.Inst'Class;
   procedure U_copy_U;
   function U_iadd_U
     (self : access Inst; vector_P : access QtAda6.QtGui.QVector3D.Inst'Class)
      return access QtAda6.QtGui.QVector3D.Inst'Class;
   function U_imul_U (self : access Inst; factor_P : float) return access QtAda6.QtGui.QVector3D.Inst'Class;
   function U_imul_U
     (self : access Inst; vector_P : access QtAda6.QtGui.QVector3D.Inst'Class)
      return access QtAda6.QtGui.QVector3D.Inst'Class;
   function U_isub_U
     (self : access Inst; vector_P : access QtAda6.QtGui.QVector3D.Inst'Class)
      return access QtAda6.QtGui.QVector3D.Inst'Class;
   function U_lshift_U
     (self : access Inst; arg_1_P : access QtAda6.QtCore.QDataStream.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class;
   function U_mul_U (self : access Inst; factor_P : float) return access QtAda6.QtGui.QVector3D.Inst'Class;
   function U_mul_U
     (self : access Inst; matrix_P : Union_QtAda6_QtGui_QMatrix4x4_QtAda6_QtGui_QTransform)
      return access QtAda6.QtGui.QVector3D.Inst'Class;
   function U_mul_U
     (self : access Inst; quaternion_P : access QtAda6.QtGui.QQuaternion.Inst'Class)
      return access QtAda6.QtGui.QVector3D.Inst'Class;
   function U_mul_U
     (self : access Inst; v2_P : access QtAda6.QtGui.QVector3D.Inst'Class)
      return access QtAda6.QtGui.QVector3D.Inst'Class;
   function U_neg_U (self : access Inst) return access QtAda6.QtGui.QVector3D.Inst'Class;
   function U_reduce_U (self : access Inst) return Object;
   function U_repr_U (self : access Inst) return Object;
   function U_rshift_U
     (self : access Inst; arg_1_P : access QtAda6.QtCore.QDataStream.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class;
   function U_sub_U
     (self : access Inst; v2_P : access QtAda6.QtGui.QVector3D.Inst'Class)
      return access QtAda6.QtGui.QVector3D.Inst'Class;
   function crossProduct
     (v1_P : access QtAda6.QtGui.QVector3D.Inst'Class; v2_P : access QtAda6.QtGui.QVector3D.Inst'Class)
      return access QtAda6.QtGui.QVector3D.Inst'Class;
   function distanceToLine
     (self        : access Inst; point_P : access QtAda6.QtGui.QVector3D.Inst'Class;
      direction_P : access QtAda6.QtGui.QVector3D.Inst'Class) return float;
   function distanceToPlane
     (self     : access Inst; plane1_P : access QtAda6.QtGui.QVector3D.Inst'Class;
      plane2_P : access QtAda6.QtGui.QVector3D.Inst'Class; plane3_P : access QtAda6.QtGui.QVector3D.Inst'Class)
      return float;
   function distanceToPlane
     (self     : access Inst; plane_P : access QtAda6.QtGui.QVector3D.Inst'Class;
      normal_P : access QtAda6.QtGui.QVector3D.Inst'Class) return float;
   function distanceToPoint (self : access Inst; point_P : access QtAda6.QtGui.QVector3D.Inst'Class) return float;
   function dotProduct
     (v1_P : access QtAda6.QtGui.QVector3D.Inst'Class; v2_P : access QtAda6.QtGui.QVector3D.Inst'Class) return float;
   function isNull (self : access Inst) return bool;
   function length (self : access Inst) return float;
   function lengthSquared (self : access Inst) return float;
   function normal
     (v1_P : access QtAda6.QtGui.QVector3D.Inst'Class; v2_P : access QtAda6.QtGui.QVector3D.Inst'Class)
      return access QtAda6.QtGui.QVector3D.Inst'Class;
   function normal
     (v1_P : access QtAda6.QtGui.QVector3D.Inst'Class; v2_P : access QtAda6.QtGui.QVector3D.Inst'Class;
      v3_P : access QtAda6.QtGui.QVector3D.Inst'Class) return access QtAda6.QtGui.QVector3D.Inst'Class;
   procedure normalize (self : access Inst);
   function normalized (self : access Inst) return access QtAda6.QtGui.QVector3D.Inst'Class;
   function project
     (self         : access Inst; modelView_P : Union_QtAda6_QtGui_QMatrix4x4_QtAda6_QtGui_QTransform;
      projection_P : Union_QtAda6_QtGui_QMatrix4x4_QtAda6_QtGui_QTransform;
      viewport_P   : access QtAda6.QtCore.QRect.Inst'Class) return access QtAda6.QtGui.QVector3D.Inst'Class;
   procedure setX (self : access Inst; x_P : float);
   procedure setY (self : access Inst; y_P : float);
   procedure setZ (self : access Inst; z_P : float);
   function toPoint (self : access Inst) return access QtAda6.QtCore.QPoint.Inst'Class;
   function toPointF (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class;
   function toTuple (self : access Inst) return Object;
   function toVector2D (self : access Inst) return access QtAda6.QtGui.QVector2D.Inst'Class;
   function toVector4D (self : access Inst) return access QtAda6.QtGui.QVector4D.Inst'Class;
   function unproject
     (self         : access Inst; modelView_P : Union_QtAda6_QtGui_QMatrix4x4_QtAda6_QtGui_QTransform;
      projection_P : Union_QtAda6_QtGui_QMatrix4x4_QtAda6_QtGui_QTransform;
      viewport_P   : access QtAda6.QtCore.QRect.Inst'Class) return access QtAda6.QtGui.QVector3D.Inst'Class;
   function x (self : access Inst) return float;
   function y (self : access Inst) return float;
   function z (self : access Inst) return float;
end QtAda6.QtGui.QVector3D;
