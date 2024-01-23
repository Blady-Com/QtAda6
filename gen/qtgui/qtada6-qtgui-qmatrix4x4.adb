-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qmatrix4x4.adb
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
with QtAda6.QtGui.QTransform;
with QtAda6.QtCore.QDataStream;
with QtAda6.QtCore.QPoint;
with QtAda6.QtCore.QPointF;
with QtAda6.QtGui.QPainterPath.Element;
with QtAda6.QtGui.QVector4D;
with QtAda6.QtGui.QMatrix4x4.Flag;
with QtAda6.QtGui.QVector3D;
with QtAda6.QtCore.QRect;
with QtAda6.QtCore.QRectF;
with QtAda6.QtGui.QMatrix3x3;
with QtAda6.QtGui.QQuaternion;
package body QtAda6.QtGui.QMatrix4x4 is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QMatrix4x4");
      Args  := Tuple_New (0);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create
     (m11_P : float; m12_P : float; m13_P : float; m14_P : float; m21_P : float; m22_P : float; m23_P : float;
      m24_P : float; m31_P : float; m32_P : float; m33_P : float; m34_P : float; m41_P : float; m42_P : float;
      m43_P : float; m44_P : float) return Class
   is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QMatrix4x4");
      Args  := Tuple_New (16);
      Tuple_SetItem (Args, 0, Float_FromDouble (m11_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (m12_P));
      Tuple_SetItem (Args, 2, Float_FromDouble (m13_P));
      Tuple_SetItem (Args, 3, Float_FromDouble (m14_P));
      Tuple_SetItem (Args, 4, Float_FromDouble (m21_P));
      Tuple_SetItem (Args, 5, Float_FromDouble (m22_P));
      Tuple_SetItem (Args, 6, Float_FromDouble (m23_P));
      Tuple_SetItem (Args, 7, Float_FromDouble (m24_P));
      Tuple_SetItem (Args, 8, Float_FromDouble (m31_P));
      Tuple_SetItem (Args, 9, Float_FromDouble (m32_P));
      Tuple_SetItem (Args, 10, Float_FromDouble (m33_P));
      Tuple_SetItem (Args, 11, Float_FromDouble (m34_P));
      Tuple_SetItem (Args, 12, Float_FromDouble (m41_P));
      Tuple_SetItem (Args, 13, Float_FromDouble (m42_P));
      Tuple_SetItem (Args, 14, Float_FromDouble (m43_P));
      Tuple_SetItem (Args, 15, Float_FromDouble (m44_P));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (transform_P : access QtAda6.QtGui.QTransform.Inst'Class) return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QMatrix4x4");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if transform_P /= null then transform_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (values_P : Iterable) return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QMatrix4x4");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if values_P /= null then values_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function U_add_U
     (self : access Inst; m2_P : UNION_QtAda6_QtGui_QMatrix4x4QtAda6_QtGui_QTransform)
      return access QtAda6.QtGui.QMatrix4x4.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QMatrix4x4.Class := new QtAda6.QtGui.QMatrix4x4.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__add__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if m2_P /= null then m2_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_add_U;
   procedure U_copy_U is
      Class, Method, Args, List, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QMatrix4x4");
      Method := Object_GetAttrString (Class, "__copy__");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end U_copy_U;
   procedure U_dummy (self : access Inst; arg_1_P : SEQUENCE_float) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__dummy");
      List   := List_New (arg_1_P'Length);
      for ind in arg_1_P'Range loop
         List_SetItem (List, ssize_t (ind - arg_1_P'First), Float_FromDouble (arg_1_P (ind)));
      end loop;
      Args := Tuple_New (1);
      Tuple_SetItem (Args, 0, List);
      Result := Object_CallObject (Method, Args, True);
   end U_dummy;
   function U_iadd_U
     (self : access Inst; other_P : UNION_QtAda6_QtGui_QMatrix4x4QtAda6_QtGui_QTransform)
      return access QtAda6.QtGui.QMatrix4x4.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QMatrix4x4.Class := new QtAda6.QtGui.QMatrix4x4.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__iadd__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if other_P /= null then other_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_iadd_U;
   function U_imul_U (self : access Inst; factor_P : float) return access QtAda6.QtGui.QMatrix4x4.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QMatrix4x4.Class := new QtAda6.QtGui.QMatrix4x4.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__imul__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (factor_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_imul_U;
   function U_imul_U
     (self : access Inst; other_P : UNION_QtAda6_QtGui_QMatrix4x4QtAda6_QtGui_QTransform)
      return access QtAda6.QtGui.QMatrix4x4.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QMatrix4x4.Class := new QtAda6.QtGui.QMatrix4x4.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__imul__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if other_P /= null then other_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_imul_U;
   function U_isub_U
     (self : access Inst; other_P : UNION_QtAda6_QtGui_QMatrix4x4QtAda6_QtGui_QTransform)
      return access QtAda6.QtGui.QMatrix4x4.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QMatrix4x4.Class := new QtAda6.QtGui.QMatrix4x4.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__isub__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if other_P /= null then other_P.Python_Proxy else No_Value));
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
   function U_mul_U (self : access Inst; factor_P : float) return access QtAda6.QtGui.QMatrix4x4.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QMatrix4x4.Class := new QtAda6.QtGui.QMatrix4x4.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__mul__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (factor_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_mul_U;
   function U_mul_U
     (self : access Inst; m2_P : UNION_QtAda6_QtGui_QMatrix4x4QtAda6_QtGui_QTransform)
      return access QtAda6.QtGui.QMatrix4x4.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QMatrix4x4.Class := new QtAda6.QtGui.QMatrix4x4.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__mul__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if m2_P /= null then m2_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_mul_U;
   function U_mul_U
     (self : access Inst; point_P : access QtAda6.QtCore.QPoint.Inst'Class)
      return access QtAda6.QtCore.QPoint.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QPoint.Class := new QtAda6.QtCore.QPoint.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__mul__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if point_P /= null then point_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_mul_U;
   function U_mul_U
     (self : access Inst; point_P : UNION_QtAda6_QtCore_QPointFQtAda6_QtCore_QPointQtAda6_QtGui_QPainterPath_Element)
      return access QtAda6.QtCore.QPointF.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QPointF.Class := new QtAda6.QtCore.QPointF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__mul__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if point_P /= null then point_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_mul_U;
   function U_neg_U (self : access Inst) return access QtAda6.QtGui.QMatrix4x4.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QMatrix4x4.Class := new QtAda6.QtGui.QMatrix4x4.Inst;
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
     (self : access Inst; m2_P : UNION_QtAda6_QtGui_QMatrix4x4QtAda6_QtGui_QTransform)
      return access QtAda6.QtGui.QMatrix4x4.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QMatrix4x4.Class := new QtAda6.QtGui.QMatrix4x4.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__sub__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if m2_P /= null then m2_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_sub_U;
   function column (self : access Inst; index_P : int) return access QtAda6.QtGui.QVector4D.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QVector4D.Class := new QtAda6.QtGui.QVector4D.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "column");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (index_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end column;
   function copyDataTo (self : access Inst) return TUPLE is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "copyDataTo");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end copyDataTo;
   function data (self : access Inst) return LIST_float is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "data");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return (2 .. 1 => <>);
   end data;
   function determinant (self : access Inst) return float is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "determinant");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end determinant;
   procedure fill (self : access Inst; value_P : float) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "fill");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (value_P));
      Result := Object_CallObject (Method, Args, True);
   end fill;
   function flags (self : access Inst) return access QtAda6.QtGui.QMatrix4x4.Flag.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QMatrix4x4.Flag.Class := new QtAda6.QtGui.QMatrix4x4.Flag.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "flags");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end flags;
   procedure flipCoordinates (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "flipCoordinates");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end flipCoordinates;
   procedure frustum
     (self       : access Inst; left_P : float; right_P : float; bottom_P : float; top_P : float; nearPlane_P : float;
      farPlane_P : float)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "frustum");
      Args   := Tuple_New (6);
      Tuple_SetItem (Args, 0, Float_FromDouble (left_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (right_P));
      Tuple_SetItem (Args, 2, Float_FromDouble (bottom_P));
      Tuple_SetItem (Args, 3, Float_FromDouble (top_P));
      Tuple_SetItem (Args, 4, Float_FromDouble (nearPlane_P));
      Tuple_SetItem (Args, 5, Float_FromDouble (farPlane_P));
      Result := Object_CallObject (Method, Args, True);
   end frustum;
   function inverted (self : access Inst) return TUPLE is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "inverted");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end inverted;
   function isAffine (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isAffine");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isAffine;
   function isIdentity (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isIdentity");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isIdentity;
   procedure lookAt
     (self     : access Inst; eye_P : access QtAda6.QtGui.QVector3D.Inst'Class;
      center_P : access QtAda6.QtGui.QVector3D.Inst'Class; up_P : access QtAda6.QtGui.QVector3D.Inst'Class)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "lookAt");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if eye_P /= null then eye_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if center_P /= null then center_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if up_P /= null then up_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end lookAt;
   function map
     (self : access Inst; point_P : access QtAda6.QtCore.QPoint.Inst'Class)
      return access QtAda6.QtCore.QPoint.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QPoint.Class := new QtAda6.QtCore.QPoint.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "map");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if point_P /= null then point_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end map;
   function map
     (self : access Inst; point_P : access QtAda6.QtGui.QVector3D.Inst'Class)
      return access QtAda6.QtGui.QVector3D.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QVector3D.Class := new QtAda6.QtGui.QVector3D.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "map");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if point_P /= null then point_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end map;
   function map
     (self : access Inst; point_P : access QtAda6.QtGui.QVector4D.Inst'Class)
      return access QtAda6.QtGui.QVector4D.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QVector4D.Class := new QtAda6.QtGui.QVector4D.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "map");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if point_P /= null then point_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end map;
   function map
     (self : access Inst; point_P : UNION_QtAda6_QtCore_QPointFQtAda6_QtCore_QPointQtAda6_QtGui_QPainterPath_Element)
      return access QtAda6.QtCore.QPointF.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QPointF.Class := new QtAda6.QtCore.QPointF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "map");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if point_P /= null then point_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end map;
   function mapRect
     (self : access Inst; rect_P : access QtAda6.QtCore.QRect.Inst'Class) return access QtAda6.QtCore.QRect.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QRect.Class := new QtAda6.QtCore.QRect.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mapRect");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if rect_P /= null then rect_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mapRect;
   function mapRect
     (self : access Inst; rect_P : UNION_QtAda6_QtCore_QRectFQtAda6_QtCore_QRect)
      return access QtAda6.QtCore.QRectF.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QRectF.Class := new QtAda6.QtCore.QRectF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mapRect");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if rect_P /= null then rect_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mapRect;
   function mapVector
     (self : access Inst; vector_P : access QtAda6.QtGui.QVector3D.Inst'Class)
      return access QtAda6.QtGui.QVector3D.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QVector3D.Class := new QtAda6.QtGui.QVector3D.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mapVector");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if vector_P /= null then vector_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mapVector;
   function normalMatrix (self : access Inst) return access QtAda6.QtGui.QMatrix3x3.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QMatrix3x3.Class := new QtAda6.QtGui.QMatrix3x3.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "normalMatrix");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end normalMatrix;
   procedure optimize (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "optimize");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end optimize;
   procedure ortho
     (self       : access Inst; left_P : float; right_P : float; bottom_P : float; top_P : float; nearPlane_P : float;
      farPlane_P : float)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "ortho");
      Args   := Tuple_New (6);
      Tuple_SetItem (Args, 0, Float_FromDouble (left_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (right_P));
      Tuple_SetItem (Args, 2, Float_FromDouble (bottom_P));
      Tuple_SetItem (Args, 3, Float_FromDouble (top_P));
      Tuple_SetItem (Args, 4, Float_FromDouble (nearPlane_P));
      Tuple_SetItem (Args, 5, Float_FromDouble (farPlane_P));
      Result := Object_CallObject (Method, Args, True);
   end ortho;
   procedure ortho (self : access Inst; rect_P : access QtAda6.QtCore.QRect.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "ortho");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if rect_P /= null then rect_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end ortho;
   procedure ortho (self : access Inst; rect_P : UNION_QtAda6_QtCore_QRectFQtAda6_QtCore_QRect) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "ortho");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if rect_P /= null then rect_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end ortho;
   procedure perspective
     (self : access Inst; verticalAngle_P : float; aspectRatio_P : float; nearPlane_P : float; farPlane_P : float)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "perspective");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Float_FromDouble (verticalAngle_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (aspectRatio_P));
      Tuple_SetItem (Args, 2, Float_FromDouble (nearPlane_P));
      Tuple_SetItem (Args, 3, Float_FromDouble (farPlane_P));
      Result := Object_CallObject (Method, Args, True);
   end perspective;
   procedure projectedRotate (self : access Inst; angle_P : float; x_P : float; y_P : float; z_P : float) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "projectedRotate");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Float_FromDouble (angle_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (x_P));
      Tuple_SetItem (Args, 2, Float_FromDouble (y_P));
      Tuple_SetItem (Args, 3, Float_FromDouble (z_P));
      Result := Object_CallObject (Method, Args, True);
   end projectedRotate;
   procedure projectedRotate
     (self : access Inst; angle_P : float; x_P : float; y_P : float; z_P : float; distanceToPlane_P : float)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "projectedRotate");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, Float_FromDouble (angle_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (x_P));
      Tuple_SetItem (Args, 2, Float_FromDouble (y_P));
      Tuple_SetItem (Args, 3, Float_FromDouble (z_P));
      Tuple_SetItem (Args, 4, Float_FromDouble (distanceToPlane_P));
      Result := Object_CallObject (Method, Args, True);
   end projectedRotate;
   procedure rotate (self : access Inst; angle_P : float; vector_P : access QtAda6.QtGui.QVector3D.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "rotate");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Float_FromDouble (angle_P));
      Tuple_SetItem (Args, 1, (if vector_P /= null then vector_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end rotate;
   procedure rotate (self : access Inst; angle_P : float; x_P : float; y_P : float; z_P : float := 0.0) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "rotate");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Float_FromDouble (angle_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (x_P));
      Tuple_SetItem (Args, 2, Float_FromDouble (y_P));
      Tuple_SetItem (Args, 3, Float_FromDouble (z_P));
      Result := Object_CallObject (Method, Args, True);
   end rotate;
   procedure rotate (self : access Inst; quaternion_P : access QtAda6.QtGui.QQuaternion.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "rotate");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if quaternion_P /= null then quaternion_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end rotate;
   function row (self : access Inst; index_P : int) return access QtAda6.QtGui.QVector4D.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QVector4D.Class := new QtAda6.QtGui.QVector4D.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "row");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (index_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end row;
   procedure scale (self : access Inst; factor_P : float) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "scale");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (factor_P));
      Result := Object_CallObject (Method, Args, True);
   end scale;
   procedure scale (self : access Inst; vector_P : access QtAda6.QtGui.QVector3D.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "scale");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if vector_P /= null then vector_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end scale;
   procedure scale (self : access Inst; x_P : float; y_P : float) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "scale");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Float_FromDouble (x_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (y_P));
      Result := Object_CallObject (Method, Args, True);
   end scale;
   procedure scale (self : access Inst; x_P : float; y_P : float; z_P : float) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "scale");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Float_FromDouble (x_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (y_P));
      Tuple_SetItem (Args, 2, Float_FromDouble (z_P));
      Result := Object_CallObject (Method, Args, True);
   end scale;
   procedure setColumn (self : access Inst; index_P : int; value_P : access QtAda6.QtGui.QVector4D.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setColumn");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (index_P));
      Tuple_SetItem (Args, 1, (if value_P /= null then value_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setColumn;
   procedure setRow (self : access Inst; index_P : int; value_P : access QtAda6.QtGui.QVector4D.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setRow");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (index_P));
      Tuple_SetItem (Args, 1, (if value_P /= null then value_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setRow;
   procedure setToIdentity (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setToIdentity");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end setToIdentity;
   function toTransform (self : access Inst) return access QtAda6.QtGui.QTransform.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QTransform.Class := new QtAda6.QtGui.QTransform.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "toTransform");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end toTransform;
   function toTransform (self : access Inst; distanceToPlane_P : float) return access QtAda6.QtGui.QTransform.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QTransform.Class := new QtAda6.QtGui.QTransform.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toTransform");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (distanceToPlane_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end toTransform;
   procedure translate (self : access Inst; vector_P : access QtAda6.QtGui.QVector3D.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "translate");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if vector_P /= null then vector_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end translate;
   procedure translate (self : access Inst; x_P : float; y_P : float) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "translate");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Float_FromDouble (x_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (y_P));
      Result := Object_CallObject (Method, Args, True);
   end translate;
   procedure translate (self : access Inst; x_P : float; y_P : float; z_P : float) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "translate");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Float_FromDouble (x_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (y_P));
      Tuple_SetItem (Args, 2, Float_FromDouble (z_P));
      Result := Object_CallObject (Method, Args, True);
   end translate;
   function transposed (self : access Inst) return access QtAda6.QtGui.QMatrix4x4.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QMatrix4x4.Class := new QtAda6.QtGui.QMatrix4x4.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "transposed");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end transposed;
   procedure viewport
     (self        : access Inst; left_P : float; bottom_P : float; width_P : float; height_P : float;
      nearPlane_P : float := 0.0; farPlane_P : float := 0.0)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "viewport");
      Args   := Tuple_New (6);
      Tuple_SetItem (Args, 0, Float_FromDouble (left_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (bottom_P));
      Tuple_SetItem (Args, 2, Float_FromDouble (width_P));
      Tuple_SetItem (Args, 3, Float_FromDouble (height_P));
      Tuple_SetItem (Args, 4, Float_FromDouble (nearPlane_P));
      Tuple_SetItem (Args, 5, Float_FromDouble (farPlane_P));
      Result := Object_CallObject (Method, Args, True);
   end viewport;
   procedure viewport (self : access Inst; rect_P : UNION_QtAda6_QtCore_QRectFQtAda6_QtCore_QRect) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "viewport");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if rect_P /= null then rect_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end viewport;
end QtAda6.QtGui.QMatrix4x4;
