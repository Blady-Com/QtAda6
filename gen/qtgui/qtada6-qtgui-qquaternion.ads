-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qquaternion.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtGui.QVector3D;
limited with QtAda6.QtGui.QVector4D;
limited with QtAda6.QtCore.QDataStream;
limited with QtAda6.QtGui.QMatrix3x3;
package QtAda6.QtGui.QQuaternion is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   type TUPLE_float_float_float_float is record
      C0 : float;
      C1 : float;
      C2 : float;
      C3 : float;
   end record;
   type TUPLE_float_float_float is record
      C0 : float;
      C1 : float;
      C2 : float;
   end record;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (scalar_P : float; vector_P : access QtAda6.QtGui.QVector3D.Inst'Class) return Class;
   function Create (scalar_P : float; xpos_P : float; ypos_P : float; zpos_P : float) return Class;
   function Create (vector_P : access QtAda6.QtGui.QVector4D.Inst'Class) return Class;
   function U_add_U
     (self : access Inst; q2_P : access QtAda6.QtGui.QQuaternion.Inst'Class)
      return access QtAda6.QtGui.QQuaternion.Inst'Class;
   procedure U_copy_U;
   function U_iadd_U
     (self : access Inst; quaternion_P : access QtAda6.QtGui.QQuaternion.Inst'Class)
      return access QtAda6.QtGui.QQuaternion.Inst'Class;
   function U_imul_U (self : access Inst; factor_P : float) return access QtAda6.QtGui.QQuaternion.Inst'Class;
   function U_imul_U
     (self : access Inst; quaternion_P : access QtAda6.QtGui.QQuaternion.Inst'Class)
      return access QtAda6.QtGui.QQuaternion.Inst'Class;
   function U_isub_U
     (self : access Inst; quaternion_P : access QtAda6.QtGui.QQuaternion.Inst'Class)
      return access QtAda6.QtGui.QQuaternion.Inst'Class;
   function U_lshift_U
     (self : access Inst; arg_1_P : access QtAda6.QtCore.QDataStream.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class;
   function U_mul_U (self : access Inst; factor_P : float) return access QtAda6.QtGui.QQuaternion.Inst'Class;
   function U_mul_U
     (self : access Inst; q2_P : access QtAda6.QtGui.QQuaternion.Inst'Class)
      return access QtAda6.QtGui.QQuaternion.Inst'Class;
   function U_neg_U (self : access Inst) return access QtAda6.QtGui.QQuaternion.Inst'Class;
   function U_reduce_U (self : access Inst) return access Object'Class;
   function U_repr_U (self : access Inst) return access Object'Class;
   function U_rshift_U
     (self : access Inst; arg_1_P : access QtAda6.QtCore.QDataStream.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class;
   function U_sub_U
     (self : access Inst; q2_P : access QtAda6.QtGui.QQuaternion.Inst'Class)
      return access QtAda6.QtGui.QQuaternion.Inst'Class;
   function conjugated (self : access Inst) return access QtAda6.QtGui.QQuaternion.Inst'Class;
   function dotProduct
     (q1_P : access QtAda6.QtGui.QQuaternion.Inst'Class; q2_P : access QtAda6.QtGui.QQuaternion.Inst'Class)
      return float;
   function fromAxes
     (xAxis_P : access QtAda6.QtGui.QVector3D.Inst'Class; yAxis_P : access QtAda6.QtGui.QVector3D.Inst'Class;
      zAxis_P : access QtAda6.QtGui.QVector3D.Inst'Class) return access QtAda6.QtGui.QQuaternion.Inst'Class;
   function fromAxisAndAngle
     (axis_P : access QtAda6.QtGui.QVector3D.Inst'Class; angle_P : float)
      return access QtAda6.QtGui.QQuaternion.Inst'Class;
   function fromAxisAndAngle
     (x_P : float; y_P : float; z_P : float; angle_P : float) return access QtAda6.QtGui.QQuaternion.Inst'Class;
   function fromDirection
     (direction_P : access QtAda6.QtGui.QVector3D.Inst'Class; up_P : access QtAda6.QtGui.QVector3D.Inst'Class)
      return access QtAda6.QtGui.QQuaternion.Inst'Class;
   function fromEulerAngles
     (eulerAngles_P : access QtAda6.QtGui.QVector3D.Inst'Class) return access QtAda6.QtGui.QQuaternion.Inst'Class;
   function fromEulerAngles
     (pitch_P : float; yaw_P : float; roll_P : float) return access QtAda6.QtGui.QQuaternion.Inst'Class;
   function fromRotationMatrix
     (rot3x3_P : access QtAda6.QtGui.QMatrix3x3.Inst'Class) return access QtAda6.QtGui.QQuaternion.Inst'Class;
   procedure getAxes
     (self    : access Inst; xAxis_P : access QtAda6.QtGui.QVector3D.Inst'Class;
      yAxis_P : access QtAda6.QtGui.QVector3D.Inst'Class; zAxis_P : access QtAda6.QtGui.QVector3D.Inst'Class);
   function getAxisAndAngle (self : access Inst; axis_P : access QtAda6.QtGui.QVector3D.Inst'Class) return float;
   function getAxisAndAngle (self : access Inst) return TUPLE_float_float_float_float;
   function getEulerAngles (self : access Inst) return TUPLE_float_float_float;
   function inverted (self : access Inst) return access QtAda6.QtGui.QQuaternion.Inst'Class;
   function isIdentity (self : access Inst) return bool;
   function isNull (self : access Inst) return bool;
   function length (self : access Inst) return float;
   function lengthSquared (self : access Inst) return float;
   function nlerp
     (q1_P : access QtAda6.QtGui.QQuaternion.Inst'Class; q2_P : access QtAda6.QtGui.QQuaternion.Inst'Class; t_P : float)
      return access QtAda6.QtGui.QQuaternion.Inst'Class;
   procedure normalize (self : access Inst);
   function normalized (self : access Inst) return access QtAda6.QtGui.QQuaternion.Inst'Class;
   function rotatedVector
     (self : access Inst; vector_P : access QtAda6.QtGui.QVector3D.Inst'Class)
      return access QtAda6.QtGui.QVector3D.Inst'Class;
   function rotationTo
     (from_U_P : access QtAda6.QtGui.QVector3D.Inst'Class; to_P : access QtAda6.QtGui.QVector3D.Inst'Class)
      return access QtAda6.QtGui.QQuaternion.Inst'Class;
   function scalar (self : access Inst) return float;
   procedure setScalar (self : access Inst; scalar_P : float);
   procedure setVector (self : access Inst; vector_P : access QtAda6.QtGui.QVector3D.Inst'Class);
   procedure setVector (self : access Inst; x_P : float; y_P : float; z_P : float);
   procedure setX (self : access Inst; x_P : float);
   procedure setY (self : access Inst; y_P : float);
   procedure setZ (self : access Inst; z_P : float);
   function slerp
     (q1_P : access QtAda6.QtGui.QQuaternion.Inst'Class; q2_P : access QtAda6.QtGui.QQuaternion.Inst'Class; t_P : float)
      return access QtAda6.QtGui.QQuaternion.Inst'Class;
   function toEulerAngles (self : access Inst) return access QtAda6.QtGui.QVector3D.Inst'Class;
   function toRotationMatrix (self : access Inst) return access QtAda6.QtGui.QMatrix3x3.Inst'Class;
   function toVector4D (self : access Inst) return access QtAda6.QtGui.QVector4D.Inst'Class;
   function vector (self : access Inst) return access QtAda6.QtGui.QVector3D.Inst'Class;
   function x (self : access Inst) return float;
   function y (self : access Inst) return float;
   function z (self : access Inst) return float;
end QtAda6.QtGui.QQuaternion;
