-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qquaternion.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Py; use Py;
with Ada.Unchecked_Deallocation;
with QtAda6.QtGui.QVector3D;
with QtAda6.QtGui.QVector4D;
with QtAda6.QtCore.QDataStream;
with QtAda6.QtGui.QMatrix3x3;
package body QtAda6.QtGui.QQuaternion is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QQuaternion");
      Args  := Tuple_New (0);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (scalar_P : float; vector_P : access QtAda6.QtGui.QVector3D.Inst'Class) return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QQuaternion");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, Float_FromDouble (scalar_P));
      Tuple_SetItem (Args, 1, (if vector_P /= null then vector_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (scalar_P : float; xpos_P : float; ypos_P : float; zpos_P : float) return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QQuaternion");
      Args  := Tuple_New (4);
      Tuple_SetItem (Args, 0, Float_FromDouble (scalar_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (xpos_P));
      Tuple_SetItem (Args, 2, Float_FromDouble (ypos_P));
      Tuple_SetItem (Args, 3, Float_FromDouble (zpos_P));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (vector_P : access QtAda6.QtGui.QVector4D.Inst'Class) return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QQuaternion");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if vector_P /= null then vector_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function U_add_U
     (self : access Inst; q2_P : access QtAda6.QtGui.QQuaternion.Inst'Class)
      return access QtAda6.QtGui.QQuaternion.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QQuaternion.Class := new QtAda6.QtGui.QQuaternion.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__add__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if q2_P /= null then q2_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_add_U;
   procedure U_copy_U is
      Class, Method, Args, List, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QQuaternion");
      Method := Object_GetAttrString (Class, "__copy__");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end U_copy_U;
   function U_iadd_U
     (self : access Inst; quaternion_P : access QtAda6.QtGui.QQuaternion.Inst'Class)
      return access QtAda6.QtGui.QQuaternion.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QQuaternion.Class := new QtAda6.QtGui.QQuaternion.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__iadd__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if quaternion_P /= null then quaternion_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_iadd_U;
   function U_imul_U (self : access Inst; factor_P : float) return access QtAda6.QtGui.QQuaternion.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QQuaternion.Class := new QtAda6.QtGui.QQuaternion.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__imul__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (factor_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_imul_U;
   function U_imul_U
     (self : access Inst; quaternion_P : access QtAda6.QtGui.QQuaternion.Inst'Class)
      return access QtAda6.QtGui.QQuaternion.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QQuaternion.Class := new QtAda6.QtGui.QQuaternion.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__imul__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if quaternion_P /= null then quaternion_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_imul_U;
   function U_isub_U
     (self : access Inst; quaternion_P : access QtAda6.QtGui.QQuaternion.Inst'Class)
      return access QtAda6.QtGui.QQuaternion.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QQuaternion.Class := new QtAda6.QtGui.QQuaternion.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__isub__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if quaternion_P /= null then quaternion_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_isub_U;
   function U_lshift_U
     (self : access Inst; arg_1_P : access QtAda6.QtCore.QDataStream.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QDataStream.Class := new QtAda6.QtCore.QDataStream.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__lshift__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_lshift_U;
   function U_mul_U (self : access Inst; factor_P : float) return access QtAda6.QtGui.QQuaternion.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QQuaternion.Class := new QtAda6.QtGui.QQuaternion.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__mul__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (factor_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_mul_U;
   function U_mul_U
     (self : access Inst; q2_P : access QtAda6.QtGui.QQuaternion.Inst'Class)
      return access QtAda6.QtGui.QQuaternion.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QQuaternion.Class := new QtAda6.QtGui.QQuaternion.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__mul__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if q2_P /= null then q2_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_mul_U;
   function U_neg_U (self : access Inst) return access QtAda6.QtGui.QQuaternion.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QQuaternion.Class := new QtAda6.QtGui.QQuaternion.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "__neg__");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_neg_U;
   function U_reduce_U (self : access Inst) return access Object'Class is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__reduce__");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end U_reduce_U;
   function U_repr_U (self : access Inst) return access Object'Class is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__repr__");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end U_repr_U;
   function U_rshift_U
     (self : access Inst; arg_1_P : access QtAda6.QtCore.QDataStream.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QDataStream.Class := new QtAda6.QtCore.QDataStream.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__rshift__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_rshift_U;
   function U_sub_U
     (self : access Inst; q2_P : access QtAda6.QtGui.QQuaternion.Inst'Class)
      return access QtAda6.QtGui.QQuaternion.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QQuaternion.Class := new QtAda6.QtGui.QQuaternion.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__sub__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if q2_P /= null then q2_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_sub_U;
   function conjugated (self : access Inst) return access QtAda6.QtGui.QQuaternion.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QQuaternion.Class := new QtAda6.QtGui.QQuaternion.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "conjugated");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end conjugated;
   function dotProduct
     (q1_P : access QtAda6.QtGui.QQuaternion.Inst'Class; q2_P : access QtAda6.QtGui.QQuaternion.Inst'Class) return float
   is
      Class, Method, Args, List, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QQuaternion");
      Method := Object_GetAttrString (Class, "dotProduct");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if q1_P /= null then q1_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if q2_P /= null then q2_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end dotProduct;
   function fromAxes
     (xAxis_P : access QtAda6.QtGui.QVector3D.Inst'Class; yAxis_P : access QtAda6.QtGui.QVector3D.Inst'Class;
      zAxis_P : access QtAda6.QtGui.QVector3D.Inst'Class) return access QtAda6.QtGui.QQuaternion.Inst'Class
   is
      Class, Method, Args, List, Result : Handle;
      Ret                               : constant QtAda6.QtGui.QQuaternion.Class := new QtAda6.QtGui.QQuaternion.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QQuaternion");
      Method := Object_GetAttrString (Class, "fromAxes");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if xAxis_P /= null then xAxis_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if yAxis_P /= null then yAxis_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if zAxis_P /= null then zAxis_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fromAxes;
   function fromAxisAndAngle
     (axis_P : access QtAda6.QtGui.QVector3D.Inst'Class; angle_P : float)
      return access QtAda6.QtGui.QQuaternion.Inst'Class
   is
      Class, Method, Args, List, Result : Handle;
      Ret                               : constant QtAda6.QtGui.QQuaternion.Class := new QtAda6.QtGui.QQuaternion.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QQuaternion");
      Method := Object_GetAttrString (Class, "fromAxisAndAngle");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if axis_P /= null then axis_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Float_FromDouble (angle_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fromAxisAndAngle;
   function fromAxisAndAngle
     (x_P : float; y_P : float; z_P : float; angle_P : float) return access QtAda6.QtGui.QQuaternion.Inst'Class
   is
      Class, Method, Args, List, Result : Handle;
      Ret                               : constant QtAda6.QtGui.QQuaternion.Class := new QtAda6.QtGui.QQuaternion.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QQuaternion");
      Method := Object_GetAttrString (Class, "fromAxisAndAngle");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Float_FromDouble (x_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (y_P));
      Tuple_SetItem (Args, 2, Float_FromDouble (z_P));
      Tuple_SetItem (Args, 3, Float_FromDouble (angle_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fromAxisAndAngle;
   function fromDirection
     (direction_P : access QtAda6.QtGui.QVector3D.Inst'Class; up_P : access QtAda6.QtGui.QVector3D.Inst'Class)
      return access QtAda6.QtGui.QQuaternion.Inst'Class
   is
      Class, Method, Args, List, Result : Handle;
      Ret                               : constant QtAda6.QtGui.QQuaternion.Class := new QtAda6.QtGui.QQuaternion.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QQuaternion");
      Method := Object_GetAttrString (Class, "fromDirection");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if direction_P /= null then direction_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if up_P /= null then up_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fromDirection;
   function fromEulerAngles
     (eulerAngles_P : access QtAda6.QtGui.QVector3D.Inst'Class) return access QtAda6.QtGui.QQuaternion.Inst'Class
   is
      Class, Method, Args, List, Result : Handle;
      Ret                               : constant QtAda6.QtGui.QQuaternion.Class := new QtAda6.QtGui.QQuaternion.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QQuaternion");
      Method := Object_GetAttrString (Class, "fromEulerAngles");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if eulerAngles_P /= null then eulerAngles_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fromEulerAngles;
   function fromEulerAngles
     (pitch_P : float; yaw_P : float; roll_P : float) return access QtAda6.QtGui.QQuaternion.Inst'Class
   is
      Class, Method, Args, List, Result : Handle;
      Ret                               : constant QtAda6.QtGui.QQuaternion.Class := new QtAda6.QtGui.QQuaternion.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QQuaternion");
      Method := Object_GetAttrString (Class, "fromEulerAngles");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Float_FromDouble (pitch_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (yaw_P));
      Tuple_SetItem (Args, 2, Float_FromDouble (roll_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fromEulerAngles;
   function fromRotationMatrix
     (rot3x3_P : access QtAda6.QtGui.QMatrix3x3.Inst'Class) return access QtAda6.QtGui.QQuaternion.Inst'Class
   is
      Class, Method, Args, List, Result : Handle;
      Ret                               : constant QtAda6.QtGui.QQuaternion.Class := new QtAda6.QtGui.QQuaternion.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QQuaternion");
      Method := Object_GetAttrString (Class, "fromRotationMatrix");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if rot3x3_P /= null then rot3x3_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fromRotationMatrix;
   procedure getAxes
     (self    : access Inst; xAxis_P : access QtAda6.QtGui.QVector3D.Inst'Class;
      yAxis_P : access QtAda6.QtGui.QVector3D.Inst'Class; zAxis_P : access QtAda6.QtGui.QVector3D.Inst'Class)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "getAxes");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if xAxis_P /= null then xAxis_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if yAxis_P /= null then yAxis_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if zAxis_P /= null then zAxis_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end getAxes;
   function getAxisAndAngle (self : access Inst; axis_P : access QtAda6.QtGui.QVector3D.Inst'Class) return float is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "getAxisAndAngle");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if axis_P /= null then axis_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end getAxisAndAngle;
   function getAxisAndAngle (self : access Inst) return TUPLE_floatfloatfloatfloat is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "getAxisAndAngle");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end getAxisAndAngle;
   function getEulerAngles (self : access Inst) return TUPLE_floatfloatfloat is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "getEulerAngles");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end getEulerAngles;
   function inverted (self : access Inst) return access QtAda6.QtGui.QQuaternion.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QQuaternion.Class := new QtAda6.QtGui.QQuaternion.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "inverted");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end inverted;
   function isIdentity (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isIdentity");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isIdentity;
   function isNull (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isNull");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isNull;
   function length (self : access Inst) return float is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "length");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end length;
   function lengthSquared (self : access Inst) return float is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "lengthSquared");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end lengthSquared;
   function nlerp
     (q1_P : access QtAda6.QtGui.QQuaternion.Inst'Class; q2_P : access QtAda6.QtGui.QQuaternion.Inst'Class; t_P : float)
      return access QtAda6.QtGui.QQuaternion.Inst'Class
   is
      Class, Method, Args, List, Result : Handle;
      Ret                               : constant QtAda6.QtGui.QQuaternion.Class := new QtAda6.QtGui.QQuaternion.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QQuaternion");
      Method := Object_GetAttrString (Class, "nlerp");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if q1_P /= null then q1_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if q2_P /= null then q2_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, Float_FromDouble (t_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end nlerp;
   procedure normalize (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "normalize");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end normalize;
   function normalized (self : access Inst) return access QtAda6.QtGui.QQuaternion.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QQuaternion.Class := new QtAda6.QtGui.QQuaternion.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "normalized");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end normalized;
   function rotatedVector
     (self : access Inst; vector_P : access QtAda6.QtGui.QVector3D.Inst'Class)
      return access QtAda6.QtGui.QVector3D.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QVector3D.Class := new QtAda6.QtGui.QVector3D.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "rotatedVector");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if vector_P /= null then vector_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end rotatedVector;
   function rotationTo
     (from_U_P : access QtAda6.QtGui.QVector3D.Inst'Class; to_P : access QtAda6.QtGui.QVector3D.Inst'Class)
      return access QtAda6.QtGui.QQuaternion.Inst'Class
   is
      Class, Method, Args, List, Result : Handle;
      Ret                               : constant QtAda6.QtGui.QQuaternion.Class := new QtAda6.QtGui.QQuaternion.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QQuaternion");
      Method := Object_GetAttrString (Class, "rotationTo");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if from_U_P /= null then from_U_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if to_P /= null then to_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end rotationTo;
   function scalar (self : access Inst) return float is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "scalar");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end scalar;
   procedure setScalar (self : access Inst; scalar_P : float) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setScalar");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (scalar_P));
      Result := Object_CallObject (Method, Args, True);
   end setScalar;
   procedure setVector (self : access Inst; vector_P : access QtAda6.QtGui.QVector3D.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setVector");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if vector_P /= null then vector_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setVector;
   procedure setVector (self : access Inst; x_P : float; y_P : float; z_P : float) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setVector");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Float_FromDouble (x_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (y_P));
      Tuple_SetItem (Args, 2, Float_FromDouble (z_P));
      Result := Object_CallObject (Method, Args, True);
   end setVector;
   procedure setX (self : access Inst; x_P : float) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setX");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (x_P));
      Result := Object_CallObject (Method, Args, True);
   end setX;
   procedure setY (self : access Inst; y_P : float) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setY");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (y_P));
      Result := Object_CallObject (Method, Args, True);
   end setY;
   procedure setZ (self : access Inst; z_P : float) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setZ");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (z_P));
      Result := Object_CallObject (Method, Args, True);
   end setZ;
   function slerp
     (q1_P : access QtAda6.QtGui.QQuaternion.Inst'Class; q2_P : access QtAda6.QtGui.QQuaternion.Inst'Class; t_P : float)
      return access QtAda6.QtGui.QQuaternion.Inst'Class
   is
      Class, Method, Args, List, Result : Handle;
      Ret                               : constant QtAda6.QtGui.QQuaternion.Class := new QtAda6.QtGui.QQuaternion.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QQuaternion");
      Method := Object_GetAttrString (Class, "slerp");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if q1_P /= null then q1_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if q2_P /= null then q2_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, Float_FromDouble (t_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end slerp;
   function toEulerAngles (self : access Inst) return access QtAda6.QtGui.QVector3D.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QVector3D.Class := new QtAda6.QtGui.QVector3D.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "toEulerAngles");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end toEulerAngles;
   function toRotationMatrix (self : access Inst) return access QtAda6.QtGui.QMatrix3x3.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QMatrix3x3.Class := new QtAda6.QtGui.QMatrix3x3.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "toRotationMatrix");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end toRotationMatrix;
   function toVector4D (self : access Inst) return access QtAda6.QtGui.QVector4D.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QVector4D.Class := new QtAda6.QtGui.QVector4D.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "toVector4D");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end toVector4D;
   function vector (self : access Inst) return access QtAda6.QtGui.QVector3D.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QVector3D.Class := new QtAda6.QtGui.QVector3D.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "vector");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end vector;
   function x (self : access Inst) return float is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "x");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end x;
   function y (self : access Inst) return float is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "y");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end y;
   function z (self : access Inst) return float is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "z");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end z;
end QtAda6.QtGui.QQuaternion;
