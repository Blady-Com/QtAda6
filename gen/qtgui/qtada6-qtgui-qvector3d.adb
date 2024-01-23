-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qvector3d.adb
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
with QtAda6.QtCore.QPoint;
with QtAda6.QtCore.QPointF;
with QtAda6.QtGui.QPainterPath.Element;
with QtAda6.QtGui.QVector2D;
with QtAda6.QtGui.QVector4D;
with QtAda6.QtCore.QDataStream;
with QtAda6.QtGui.QMatrix4x4;
with QtAda6.QtGui.QTransform;
with QtAda6.QtGui.QQuaternion;
with QtAda6.QtCore.QRect;
package body QtAda6.QtGui.QVector3D is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QVector3D");
      Args  := Tuple_New (0);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (point_P : access QtAda6.QtCore.QPoint.Inst'Class) return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QVector3D");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if point_P /= null then point_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create
     (point_P : UNION_QtAda6_QtCore_QPointFQtAda6_QtCore_QPointQtAda6_QtGui_QPainterPath_Element) return Class
   is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QVector3D");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if point_P /= null then point_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (vector_P : access QtAda6.QtGui.QVector2D.Inst'Class) return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QVector3D");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if vector_P /= null then vector_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (vector_P : access QtAda6.QtGui.QVector2D.Inst'Class; zpos_P : float) return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QVector3D");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if vector_P /= null then vector_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Float_FromDouble (zpos_P));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (vector_P : access QtAda6.QtGui.QVector4D.Inst'Class) return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QVector3D");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if vector_P /= null then vector_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (xpos_P : float; ypos_P : float; zpos_P : float) return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QVector3D");
      Args  := Tuple_New (3);
      Tuple_SetItem (Args, 0, Float_FromDouble (xpos_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (ypos_P));
      Tuple_SetItem (Args, 2, Float_FromDouble (zpos_P));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function U_add_U
     (self : access Inst; v2_P : access QtAda6.QtGui.QVector3D.Inst'Class)
      return access QtAda6.QtGui.QVector3D.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QVector3D.Class := new QtAda6.QtGui.QVector3D.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__add__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if v2_P /= null then v2_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_add_U;
   procedure U_copy_U is
      Class, Method, Args, List, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QVector3D");
      Method := Object_GetAttrString (Class, "__copy__");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end U_copy_U;
   function U_iadd_U
     (self : access Inst; vector_P : access QtAda6.QtGui.QVector3D.Inst'Class)
      return access QtAda6.QtGui.QVector3D.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QVector3D.Class := new QtAda6.QtGui.QVector3D.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__iadd__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if vector_P /= null then vector_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_iadd_U;
   function U_imul_U (self : access Inst; factor_P : float) return access QtAda6.QtGui.QVector3D.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QVector3D.Class := new QtAda6.QtGui.QVector3D.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__imul__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (factor_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_imul_U;
   function U_imul_U
     (self : access Inst; vector_P : access QtAda6.QtGui.QVector3D.Inst'Class)
      return access QtAda6.QtGui.QVector3D.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QVector3D.Class := new QtAda6.QtGui.QVector3D.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__imul__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if vector_P /= null then vector_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_imul_U;
   function U_isub_U
     (self : access Inst; vector_P : access QtAda6.QtGui.QVector3D.Inst'Class)
      return access QtAda6.QtGui.QVector3D.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QVector3D.Class := new QtAda6.QtGui.QVector3D.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__isub__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if vector_P /= null then vector_P.Python_Proxy else No_Value));
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
   function U_mul_U (self : access Inst; factor_P : float) return access QtAda6.QtGui.QVector3D.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QVector3D.Class := new QtAda6.QtGui.QVector3D.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__mul__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (factor_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_mul_U;
   function U_mul_U
     (self : access Inst; matrix_P : UNION_QtAda6_QtGui_QMatrix4x4QtAda6_QtGui_QTransform)
      return access QtAda6.QtGui.QVector3D.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QVector3D.Class := new QtAda6.QtGui.QVector3D.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__mul__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if matrix_P /= null then matrix_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_mul_U;
   function U_mul_U
     (self : access Inst; quaternion_P : access QtAda6.QtGui.QQuaternion.Inst'Class)
      return access QtAda6.QtGui.QVector3D.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QVector3D.Class := new QtAda6.QtGui.QVector3D.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__mul__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if quaternion_P /= null then quaternion_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_mul_U;
   function U_mul_U
     (self : access Inst; v2_P : access QtAda6.QtGui.QVector3D.Inst'Class)
      return access QtAda6.QtGui.QVector3D.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QVector3D.Class := new QtAda6.QtGui.QVector3D.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__mul__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if v2_P /= null then v2_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_mul_U;
   function U_neg_U (self : access Inst) return access QtAda6.QtGui.QVector3D.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QVector3D.Class := new QtAda6.QtGui.QVector3D.Inst;
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
     (self : access Inst; v2_P : access QtAda6.QtGui.QVector3D.Inst'Class)
      return access QtAda6.QtGui.QVector3D.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QVector3D.Class := new QtAda6.QtGui.QVector3D.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__sub__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if v2_P /= null then v2_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_sub_U;
   function crossProduct
     (v1_P : access QtAda6.QtGui.QVector3D.Inst'Class; v2_P : access QtAda6.QtGui.QVector3D.Inst'Class)
      return access QtAda6.QtGui.QVector3D.Inst'Class
   is
      Class, Method, Args, List, Result : Handle;
      Ret                               : constant QtAda6.QtGui.QVector3D.Class := new QtAda6.QtGui.QVector3D.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QVector3D");
      Method := Object_GetAttrString (Class, "crossProduct");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if v1_P /= null then v1_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if v2_P /= null then v2_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end crossProduct;
   function distanceToLine
     (self        : access Inst; point_P : access QtAda6.QtGui.QVector3D.Inst'Class;
      direction_P : access QtAda6.QtGui.QVector3D.Inst'Class) return float
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "distanceToLine");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if point_P /= null then point_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if direction_P /= null then direction_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end distanceToLine;
   function distanceToPlane
     (self     : access Inst; plane1_P : access QtAda6.QtGui.QVector3D.Inst'Class;
      plane2_P : access QtAda6.QtGui.QVector3D.Inst'Class; plane3_P : access QtAda6.QtGui.QVector3D.Inst'Class)
      return float
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "distanceToPlane");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if plane1_P /= null then plane1_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if plane2_P /= null then plane2_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if plane3_P /= null then plane3_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end distanceToPlane;
   function distanceToPlane
     (self     : access Inst; plane_P : access QtAda6.QtGui.QVector3D.Inst'Class;
      normal_P : access QtAda6.QtGui.QVector3D.Inst'Class) return float
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "distanceToPlane");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if plane_P /= null then plane_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if normal_P /= null then normal_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end distanceToPlane;
   function distanceToPoint (self : access Inst; point_P : access QtAda6.QtGui.QVector3D.Inst'Class) return float is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "distanceToPoint");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if point_P /= null then point_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end distanceToPoint;
   function dotProduct
     (v1_P : access QtAda6.QtGui.QVector3D.Inst'Class; v2_P : access QtAda6.QtGui.QVector3D.Inst'Class) return float
   is
      Class, Method, Args, List, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QVector3D");
      Method := Object_GetAttrString (Class, "dotProduct");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if v1_P /= null then v1_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if v2_P /= null then v2_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end dotProduct;
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
   function normal
     (v1_P : access QtAda6.QtGui.QVector3D.Inst'Class; v2_P : access QtAda6.QtGui.QVector3D.Inst'Class)
      return access QtAda6.QtGui.QVector3D.Inst'Class
   is
      Class, Method, Args, List, Result : Handle;
      Ret                               : constant QtAda6.QtGui.QVector3D.Class := new QtAda6.QtGui.QVector3D.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QVector3D");
      Method := Object_GetAttrString (Class, "normal");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if v1_P /= null then v1_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if v2_P /= null then v2_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end normal;
   function normal
     (v1_P : access QtAda6.QtGui.QVector3D.Inst'Class; v2_P : access QtAda6.QtGui.QVector3D.Inst'Class;
      v3_P : access QtAda6.QtGui.QVector3D.Inst'Class) return access QtAda6.QtGui.QVector3D.Inst'Class
   is
      Class, Method, Args, List, Result : Handle;
      Ret                               : constant QtAda6.QtGui.QVector3D.Class := new QtAda6.QtGui.QVector3D.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QVector3D");
      Method := Object_GetAttrString (Class, "normal");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if v1_P /= null then v1_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if v2_P /= null then v2_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if v3_P /= null then v3_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end normal;
   procedure normalize (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "normalize");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end normalize;
   function normalized (self : access Inst) return access QtAda6.QtGui.QVector3D.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QVector3D.Class := new QtAda6.QtGui.QVector3D.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "normalized");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end normalized;
   function project
     (self         : access Inst; modelView_P : UNION_QtAda6_QtGui_QMatrix4x4QtAda6_QtGui_QTransform;
      projection_P : UNION_QtAda6_QtGui_QMatrix4x4QtAda6_QtGui_QTransform;
      viewport_P   : access QtAda6.QtCore.QRect.Inst'Class) return access QtAda6.QtGui.QVector3D.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QVector3D.Class := new QtAda6.QtGui.QVector3D.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "project");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if modelView_P /= null then modelView_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if projection_P /= null then projection_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if viewport_P /= null then viewport_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end project;
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
   function toPoint (self : access Inst) return access QtAda6.QtCore.QPoint.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QPoint.Class := new QtAda6.QtCore.QPoint.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "toPoint");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end toPoint;
   function toPointF (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QPointF.Class := new QtAda6.QtCore.QPointF.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "toPointF");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end toPointF;
   function toTuple (self : access Inst) return access Object'Class is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toTuple");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end toTuple;
   function toVector2D (self : access Inst) return access QtAda6.QtGui.QVector2D.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QVector2D.Class := new QtAda6.QtGui.QVector2D.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "toVector2D");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end toVector2D;
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
   function unproject
     (self         : access Inst; modelView_P : UNION_QtAda6_QtGui_QMatrix4x4QtAda6_QtGui_QTransform;
      projection_P : UNION_QtAda6_QtGui_QMatrix4x4QtAda6_QtGui_QTransform;
      viewport_P   : access QtAda6.QtCore.QRect.Inst'Class) return access QtAda6.QtGui.QVector3D.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QVector3D.Class := new QtAda6.QtGui.QVector3D.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "unproject");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if modelView_P /= null then modelView_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if projection_P /= null then projection_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if viewport_P /= null then viewport_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end unproject;
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
end QtAda6.QtGui.QVector3D;
