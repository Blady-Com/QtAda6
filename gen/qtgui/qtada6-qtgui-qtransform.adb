-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qtransform.adb
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
with QtAda6.QtCore.QDataStream;
with QtAda6.QtCore.QLine;
with QtAda6.QtCore.QLineF;
with QtAda6.QtCore.QPoint;
with QtAda6.QtCore.QPointF;
with QtAda6.QtGui.QPainterPath.Element;
with QtAda6.QtGui.QPolygon;
with QtAda6.QtCore.QRect;
with QtAda6.QtGui.QPolygonF;
with QtAda6.QtCore.QRectF;
with QtAda6.QtGui.QPainterPath;
with QtAda6.QtGui.QRegion;
with QtAda6.QtGui.QBitmap;
with QtAda6.QtCore.Qt.Axis;
with QtAda6.QtGui.QTransform.TransformationType;
package body QtAda6.QtGui.QTransform is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create return Class is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTransform");
      Args  := Tuple_New (0);
      Dict  := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (h11_P : float; h12_P : float; h13_P : float; h21_P : float; h22_P : float; h23_P : float; h31_P : float;
      h32_P : float; h33_P : float) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTransform");
      Args  := Tuple_New (9);
      Tuple_SetItem (Args, 0, Float_FromDouble (h11_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (h12_P));
      Tuple_SetItem (Args, 2, Float_FromDouble (h13_P));
      Tuple_SetItem (Args, 3, Float_FromDouble (h21_P));
      Tuple_SetItem (Args, 4, Float_FromDouble (h22_P));
      Tuple_SetItem (Args, 5, Float_FromDouble (h23_P));
      Tuple_SetItem (Args, 6, Float_FromDouble (h31_P));
      Tuple_SetItem (Args, 7, Float_FromDouble (h32_P));
      Tuple_SetItem (Args, 8, Float_FromDouble (h33_P));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (h11_P : float; h12_P : float; h21_P : float; h22_P : float; dx_P : float; dy_P : float) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTransform");
      Args  := Tuple_New (6);
      Tuple_SetItem (Args, 0, Float_FromDouble (h11_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (h12_P));
      Tuple_SetItem (Args, 2, Float_FromDouble (h21_P));
      Tuple_SetItem (Args, 3, Float_FromDouble (h22_P));
      Tuple_SetItem (Args, 4, Float_FromDouble (dx_P));
      Tuple_SetItem (Args, 5, Float_FromDouble (dy_P));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (other_P : access QtAda6.QtGui.QTransform.Inst'Class) return Class is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTransform");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if other_P /= null then other_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function U_add_U (self : access Inst; n_P : float) return access QtAda6.QtGui.QTransform.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QTransform.Class := new QtAda6.QtGui.QTransform.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__add__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (n_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_add_U;
   procedure U_copy_U is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTransform");
      Method := Object_GetAttrString (Class, "__copy__");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end U_copy_U;
   function U_iadd_U (self : access Inst; div_P : float) return access QtAda6.QtGui.QTransform.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QTransform.Class := new QtAda6.QtGui.QTransform.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__iadd__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (div_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_iadd_U;
   function U_imul_U
     (self : access Inst; arg_1_P : access QtAda6.QtGui.QTransform.Inst'Class)
      return access QtAda6.QtGui.QTransform.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QTransform.Class := new QtAda6.QtGui.QTransform.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__imul__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_imul_U;
   function U_imul_U (self : access Inst; div_P : float) return access QtAda6.QtGui.QTransform.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QTransform.Class := new QtAda6.QtGui.QTransform.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__imul__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (div_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_imul_U;
   function U_isub_U (self : access Inst; div_P : float) return access QtAda6.QtGui.QTransform.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QTransform.Class := new QtAda6.QtGui.QTransform.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__isub__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (div_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_isub_U;
   function U_lshift_U
     (self : access Inst; arg_1_P : access QtAda6.QtCore.QDataStream.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QDataStream.Class := new QtAda6.QtCore.QDataStream.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__lshift__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_lshift_U;
   function U_mul_U
     (self : access Inst; l_P : access QtAda6.QtCore.QLine.Inst'Class) return access QtAda6.QtCore.QLine.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret                                          : constant QtAda6.QtCore.QLine.Class := new QtAda6.QtCore.QLine.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__mul__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if l_P /= null then l_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_mul_U;
   function U_mul_U
     (self : access Inst; l_P : access QtAda6.QtCore.QLineF.Inst'Class) return access QtAda6.QtCore.QLineF.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QLineF.Class := new QtAda6.QtCore.QLineF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__mul__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if l_P /= null then l_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_mul_U;
   function U_mul_U
     (self : access Inst; l_P : access QtAda6.QtCore.QLine.Inst'Class) return access QtAda6.QtCore.QLineF.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QLineF.Class := new QtAda6.QtCore.QLineF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__mul__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if l_P /= null then l_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_mul_U;
   function U_mul_U (self : access Inst; n_P : float) return access QtAda6.QtGui.QTransform.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QTransform.Class := new QtAda6.QtGui.QTransform.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__mul__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (n_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_mul_U;
   function U_mul_U
     (self : access Inst; o_P : access QtAda6.QtGui.QTransform.Inst'Class)
      return access QtAda6.QtGui.QTransform.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QTransform.Class := new QtAda6.QtGui.QTransform.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__mul__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if o_P /= null then o_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_mul_U;
   function U_mul_U
     (self : access Inst; p_P : access QtAda6.QtCore.QPoint.Inst'Class) return access QtAda6.QtCore.QPoint.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QPoint.Class := new QtAda6.QtCore.QPoint.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__mul__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if p_P /= null then p_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_mul_U;
   function U_mul_U
     (self : access Inst; p_P : access QtAda6.QtCore.QPointF.Inst'Class) return access QtAda6.QtCore.QPointF.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QPointF.Class := new QtAda6.QtCore.QPointF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__mul__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if p_P /= null then p_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_mul_U;
   function U_mul_U
     (self : access Inst; p_P : access QtAda6.QtCore.QPoint.Inst'Class) return access QtAda6.QtCore.QPointF.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QPointF.Class := new QtAda6.QtCore.QPointF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__mul__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if p_P /= null then p_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_mul_U;
   function U_mul_U
     (self : access Inst; p_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class)
      return access QtAda6.QtCore.QPointF.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QPointF.Class := new QtAda6.QtCore.QPointF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__mul__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if p_P /= null then p_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_mul_U;
   function U_reduce_U (self : access Inst) return access Object'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__reduce__");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return null;
   end U_reduce_U;
   function U_repr_U (self : access Inst) return access Object'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__repr__");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return null;
   end U_repr_U;
   function U_rshift_U
     (self : access Inst; arg_1_P : access QtAda6.QtCore.QDataStream.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QDataStream.Class := new QtAda6.QtCore.QDataStream.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__rshift__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_rshift_U;
   function U_sub_U (self : access Inst; n_P : float) return access QtAda6.QtGui.QTransform.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QTransform.Class := new QtAda6.QtGui.QTransform.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__sub__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (n_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_sub_U;
   function adjoint (self : access Inst) return access QtAda6.QtGui.QTransform.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QTransform.Class := new QtAda6.QtGui.QTransform.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "adjoint");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end adjoint;
   function determinant (self : access Inst) return float is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "determinant");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Float_AsDouble (Result);
   end determinant;
   function dx (self : access Inst) return float is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "dx");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Float_AsDouble (Result);
   end dx;
   function dy (self : access Inst) return float is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "dy");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Float_AsDouble (Result);
   end dy;
   function fromScale (dx_P : float; dy_P : float) return access QtAda6.QtGui.QTransform.Inst'Class is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QTransform.Class := new QtAda6.QtGui.QTransform.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTransform");
      Method := Object_GetAttrString (Class, "fromScale");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Float_FromDouble (dx_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (dy_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fromScale;
   function fromTranslate (dx_P : float; dy_P : float) return access QtAda6.QtGui.QTransform.Inst'Class is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QTransform.Class := new QtAda6.QtGui.QTransform.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTransform");
      Method := Object_GetAttrString (Class, "fromTranslate");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Float_FromDouble (dx_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (dy_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fromTranslate;
   function inverted (self : access Inst) return TUPLE is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "inverted");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return (null record);
   end inverted;
   function isAffine (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isAffine");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isAffine;
   function isIdentity (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isIdentity");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isIdentity;
   function isInvertible (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isInvertible");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isInvertible;
   function isRotating (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isRotating");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isRotating;
   function isScaling (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isScaling");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isScaling;
   function isTranslating (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isTranslating");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isTranslating;
   function m11 (self : access Inst) return float is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "m11");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Float_AsDouble (Result);
   end m11;
   function m12 (self : access Inst) return float is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "m12");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Float_AsDouble (Result);
   end m12;
   function m13 (self : access Inst) return float is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "m13");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Float_AsDouble (Result);
   end m13;
   function m21 (self : access Inst) return float is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "m21");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Float_AsDouble (Result);
   end m21;
   function m22 (self : access Inst) return float is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "m22");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Float_AsDouble (Result);
   end m22;
   function m23 (self : access Inst) return float is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "m23");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Float_AsDouble (Result);
   end m23;
   function m31 (self : access Inst) return float is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "m31");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Float_AsDouble (Result);
   end m31;
   function m32 (self : access Inst) return float is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "m32");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Float_AsDouble (Result);
   end m32;
   function m33 (self : access Inst) return float is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "m33");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Float_AsDouble (Result);
   end m33;
   function map
     (self : access Inst; a_P : access QtAda6.QtGui.QPolygon.Inst'Class) return access QtAda6.QtGui.QPolygon.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QPolygon.Class := new QtAda6.QtGui.QPolygon.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "map");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if a_P /= null then a_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end map;
   function map (self : access Inst; a_P : SEQUENCE_QtAda6_QtCore_QRect) return access QtAda6.QtGui.QPolygon.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QPolygon.Class := new QtAda6.QtGui.QPolygon.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "map");
      Args   := Tuple_New (1);
      List   := List_New (a_P'Length);
      for ind in a_P'Range loop
         List_SetItem
           (List, ssize_t (ind - a_P'First), (if a_P (ind) /= null then a_P (ind).Python_Proxy else No_Value));
      end loop;
      Tuple_SetItem (Args, 0, List);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end map;
   function map
     (self : access Inst; a_P : access QtAda6.QtGui.QPolygonF.Inst'Class)
      return access QtAda6.QtGui.QPolygonF.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QPolygonF.Class := new QtAda6.QtGui.QPolygonF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "map");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if a_P /= null then a_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end map;
   function map
     (self : access Inst; a_P : SEQUENCE_QtAda6_QtCore_QRectF) return access QtAda6.QtGui.QPolygonF.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QPolygonF.Class := new QtAda6.QtGui.QPolygonF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "map");
      Args   := Tuple_New (1);
      List   := List_New (a_P'Length);
      for ind in a_P'Range loop
         List_SetItem
           (List, ssize_t (ind - a_P'First), (if a_P (ind) /= null then a_P (ind).Python_Proxy else No_Value));
      end loop;
      Tuple_SetItem (Args, 0, List);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end map;
   function map
     (self : access Inst; l_P : access QtAda6.QtCore.QLine.Inst'Class) return access QtAda6.QtCore.QLine.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret                                          : constant QtAda6.QtCore.QLine.Class := new QtAda6.QtCore.QLine.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "map");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if l_P /= null then l_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end map;
   function map
     (self : access Inst; l_P : access QtAda6.QtCore.QLineF.Inst'Class) return access QtAda6.QtCore.QLineF.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QLineF.Class := new QtAda6.QtCore.QLineF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "map");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if l_P /= null then l_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end map;
   function map
     (self : access Inst; l_P : access QtAda6.QtCore.QLine.Inst'Class) return access QtAda6.QtCore.QLineF.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QLineF.Class := new QtAda6.QtCore.QLineF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "map");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if l_P /= null then l_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end map;
   function map
     (self : access Inst; p_P : access QtAda6.QtCore.QPoint.Inst'Class) return access QtAda6.QtCore.QPoint.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QPoint.Class := new QtAda6.QtCore.QPoint.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "map");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if p_P /= null then p_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end map;
   function map
     (self : access Inst; p_P : access QtAda6.QtGui.QPainterPath.Inst'Class)
      return access QtAda6.QtGui.QPainterPath.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QPainterPath.Class := new QtAda6.QtGui.QPainterPath.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "map");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if p_P /= null then p_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end map;
   function map
     (self : access Inst; p_P : access QtAda6.QtCore.QPointF.Inst'Class) return access QtAda6.QtCore.QPointF.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QPointF.Class := new QtAda6.QtCore.QPointF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "map");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if p_P /= null then p_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end map;
   function map
     (self : access Inst; p_P : access QtAda6.QtCore.QPoint.Inst'Class) return access QtAda6.QtCore.QPointF.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QPointF.Class := new QtAda6.QtCore.QPointF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "map");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if p_P /= null then p_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end map;
   function map
     (self : access Inst; p_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class)
      return access QtAda6.QtCore.QPointF.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QPointF.Class := new QtAda6.QtCore.QPointF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "map");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if p_P /= null then p_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end map;
   function map
     (self : access Inst; r_P : access QtAda6.QtGui.QRegion.Inst'Class) return access QtAda6.QtGui.QRegion.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QRegion.Class := new QtAda6.QtGui.QRegion.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "map");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if r_P /= null then r_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end map;
   function map
     (self : access Inst; r_P : access QtAda6.QtGui.QBitmap.Inst'Class) return access QtAda6.QtGui.QRegion.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QRegion.Class := new QtAda6.QtGui.QRegion.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "map");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if r_P /= null then r_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end map;
   function map
     (self : access Inst; r_P : access QtAda6.QtGui.QPolygon.Inst'Class) return access QtAda6.QtGui.QRegion.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QRegion.Class := new QtAda6.QtGui.QRegion.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "map");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if r_P /= null then r_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end map;
   function map
     (self : access Inst; r_P : access QtAda6.QtCore.QRect.Inst'Class) return access QtAda6.QtGui.QRegion.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QRegion.Class := new QtAda6.QtGui.QRegion.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "map");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if r_P /= null then r_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end map;
   function map (self : access Inst; x_P : float; y_P : float) return access Object'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "map");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Float_FromDouble (x_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (y_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return null;
   end map;
   function mapRect
     (self : access Inst; arg_1_P : access QtAda6.QtCore.QRect.Inst'Class) return access QtAda6.QtCore.QRect.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret                                          : constant QtAda6.QtCore.QRect.Class := new QtAda6.QtCore.QRect.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mapRect");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mapRect;
   function mapRect
     (self : access Inst; arg_1_P : access QtAda6.QtCore.QRectF.Inst'Class)
      return access QtAda6.QtCore.QRectF.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QRectF.Class := new QtAda6.QtCore.QRectF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mapRect");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mapRect;
   function mapRect
     (self : access Inst; arg_1_P : access QtAda6.QtCore.QRect.Inst'Class) return access QtAda6.QtCore.QRectF.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QRectF.Class := new QtAda6.QtCore.QRectF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mapRect");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mapRect;
   function mapToPolygon
     (self : access Inst; r_P : access QtAda6.QtCore.QRect.Inst'Class) return access QtAda6.QtGui.QPolygon.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QPolygon.Class := new QtAda6.QtGui.QPolygon.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mapToPolygon");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if r_P /= null then r_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mapToPolygon;
   function quadToQuad
     (arg_1_P : access QtAda6.QtGui.QPolygonF.Inst'Class; arg_2_P : access QtAda6.QtGui.QPolygonF.Inst'Class)
      return access Object'Class
   is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTransform");
      Method := Object_GetAttrString (Class, "quadToQuad");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if arg_2_P /= null then arg_2_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return null;
   end quadToQuad;
   function quadToQuad
     (arg_1_P : access QtAda6.QtGui.QPolygonF.Inst'Class; arg_2_P : SEQUENCE_QtAda6_QtCore_QRectF)
      return access Object'Class
   is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTransform");
      Method := Object_GetAttrString (Class, "quadToQuad");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      List := List_New (arg_2_P'Length);
      for ind in arg_2_P'Range loop
         List_SetItem
           (List, ssize_t (ind - arg_2_P'First),
            (if arg_2_P (ind) /= null then arg_2_P (ind).Python_Proxy else No_Value));
      end loop;
      Tuple_SetItem (Args, 1, List);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return null;
   end quadToQuad;
   function quadToQuad
     (arg_1_P : SEQUENCE_QtAda6_QtCore_QRectF; arg_2_P : access QtAda6.QtGui.QPolygonF.Inst'Class)
      return access Object'Class
   is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTransform");
      Method := Object_GetAttrString (Class, "quadToQuad");
      Args   := Tuple_New (2);
      List   := List_New (arg_1_P'Length);
      for ind in arg_1_P'Range loop
         List_SetItem
           (List, ssize_t (ind - arg_1_P'First),
            (if arg_1_P (ind) /= null then arg_1_P (ind).Python_Proxy else No_Value));
      end loop;
      Tuple_SetItem (Args, 0, List);
      Tuple_SetItem (Args, 1, (if arg_2_P /= null then arg_2_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return null;
   end quadToQuad;
   function quadToQuad
     (arg_1_P : SEQUENCE_QtAda6_QtCore_QRectF; arg_2_P : SEQUENCE_QtAda6_QtCore_QRectF) return access Object'Class
   is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTransform");
      Method := Object_GetAttrString (Class, "quadToQuad");
      Args   := Tuple_New (2);
      List   := List_New (arg_1_P'Length);
      for ind in arg_1_P'Range loop
         List_SetItem
           (List, ssize_t (ind - arg_1_P'First),
            (if arg_1_P (ind) /= null then arg_1_P (ind).Python_Proxy else No_Value));
      end loop;
      Tuple_SetItem (Args, 0, List);
      List := List_New (arg_2_P'Length);
      for ind in arg_2_P'Range loop
         List_SetItem
           (List, ssize_t (ind - arg_2_P'First),
            (if arg_2_P (ind) /= null then arg_2_P (ind).Python_Proxy else No_Value));
      end loop;
      Tuple_SetItem (Args, 1, List);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return null;
   end quadToQuad;
   function quadToQuad
     (one_P    : access QtAda6.QtGui.QPolygonF.Inst'Class; two_P : access QtAda6.QtGui.QPolygonF.Inst'Class;
      result_P : access QtAda6.QtGui.QTransform.Inst'Class) return bool
   is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTransform");
      Method := Object_GetAttrString (Class, "quadToQuad");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if one_P /= null then one_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if two_P /= null then two_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if result_P /= null then result_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end quadToQuad;
   function quadToQuad
     (one_P    : access QtAda6.QtGui.QPolygonF.Inst'Class; two_P : SEQUENCE_QtAda6_QtCore_QRectF;
      result_P : access QtAda6.QtGui.QTransform.Inst'Class) return bool
   is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTransform");
      Method := Object_GetAttrString (Class, "quadToQuad");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if one_P /= null then one_P.Python_Proxy else No_Value));
      List := List_New (two_P'Length);
      for ind in two_P'Range loop
         List_SetItem
           (List, ssize_t (ind - two_P'First), (if two_P (ind) /= null then two_P (ind).Python_Proxy else No_Value));
      end loop;
      Tuple_SetItem (Args, 1, List);
      Tuple_SetItem (Args, 2, (if result_P /= null then result_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end quadToQuad;
   function quadToQuad
     (one_P    : SEQUENCE_QtAda6_QtCore_QRectF; two_P : access QtAda6.QtGui.QPolygonF.Inst'Class;
      result_P : access QtAda6.QtGui.QTransform.Inst'Class) return bool
   is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTransform");
      Method := Object_GetAttrString (Class, "quadToQuad");
      Args   := Tuple_New (3);
      List   := List_New (one_P'Length);
      for ind in one_P'Range loop
         List_SetItem
           (List, ssize_t (ind - one_P'First), (if one_P (ind) /= null then one_P (ind).Python_Proxy else No_Value));
      end loop;
      Tuple_SetItem (Args, 0, List);
      Tuple_SetItem (Args, 1, (if two_P /= null then two_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if result_P /= null then result_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end quadToQuad;
   function quadToQuad
     (one_P    : SEQUENCE_QtAda6_QtCore_QRectF; two_P : SEQUENCE_QtAda6_QtCore_QRectF;
      result_P : access QtAda6.QtGui.QTransform.Inst'Class) return bool
   is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTransform");
      Method := Object_GetAttrString (Class, "quadToQuad");
      Args   := Tuple_New (3);
      List   := List_New (one_P'Length);
      for ind in one_P'Range loop
         List_SetItem
           (List, ssize_t (ind - one_P'First), (if one_P (ind) /= null then one_P (ind).Python_Proxy else No_Value));
      end loop;
      Tuple_SetItem (Args, 0, List);
      List := List_New (two_P'Length);
      for ind in two_P'Range loop
         List_SetItem
           (List, ssize_t (ind - two_P'First), (if two_P (ind) /= null then two_P (ind).Python_Proxy else No_Value));
      end loop;
      Tuple_SetItem (Args, 1, List);
      Tuple_SetItem (Args, 2, (if result_P /= null then result_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end quadToQuad;
   function quadToSquare (arg_1_P : access QtAda6.QtGui.QPolygonF.Inst'Class) return access Object'Class is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTransform");
      Method := Object_GetAttrString (Class, "quadToSquare");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return null;
   end quadToSquare;
   function quadToSquare (arg_1_P : SEQUENCE_QtAda6_QtCore_QRectF) return access Object'Class is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTransform");
      Method := Object_GetAttrString (Class, "quadToSquare");
      Args   := Tuple_New (1);
      List   := List_New (arg_1_P'Length);
      for ind in arg_1_P'Range loop
         List_SetItem
           (List, ssize_t (ind - arg_1_P'First),
            (if arg_1_P (ind) /= null then arg_1_P (ind).Python_Proxy else No_Value));
      end loop;
      Tuple_SetItem (Args, 0, List);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return null;
   end quadToSquare;
   function quadToSquare
     (quad_P : access QtAda6.QtGui.QPolygonF.Inst'Class; result_P : access QtAda6.QtGui.QTransform.Inst'Class)
      return bool
   is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTransform");
      Method := Object_GetAttrString (Class, "quadToSquare");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if quad_P /= null then quad_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if result_P /= null then result_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end quadToSquare;
   function quadToSquare
     (quad_P : SEQUENCE_QtAda6_QtCore_QRectF; result_P : access QtAda6.QtGui.QTransform.Inst'Class) return bool
   is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTransform");
      Method := Object_GetAttrString (Class, "quadToSquare");
      Args   := Tuple_New (2);
      List   := List_New (quad_P'Length);
      for ind in quad_P'Range loop
         List_SetItem
           (List, ssize_t (ind - quad_P'First), (if quad_P (ind) /= null then quad_P (ind).Python_Proxy else No_Value));
      end loop;
      Tuple_SetItem (Args, 0, List);
      Tuple_SetItem (Args, 1, (if result_P /= null then result_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end quadToSquare;
   procedure reset (self : access Inst) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "reset");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end reset;
   function rotate
     (self : access Inst; a_P : float; axis_P : access QtAda6.QtCore.Qt.Axis.Inst'Class; distanceToPlane_P : float)
      return access QtAda6.QtGui.QTransform.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QTransform.Class := new QtAda6.QtGui.QTransform.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "rotate");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Float_FromDouble (a_P));
      Tuple_SetItem (Args, 1, (if axis_P /= null then axis_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, Float_FromDouble (distanceToPlane_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end rotate;
   function rotate
     (self : access Inst; a_P : float; axis_P : access QtAda6.QtCore.Qt.Axis.Inst'Class := null)
      return access QtAda6.QtGui.QTransform.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QTransform.Class := new QtAda6.QtGui.QTransform.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "rotate");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (a_P));
      Dict := Dict_New;
      if axis_P /= null then
         Dict_SetItemString (Dict, "axis", axis_P.Python_Proxy);
      end if;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end rotate;
   function rotateRadians
     (self : access Inst; a_P : float; axis_P : access QtAda6.QtCore.Qt.Axis.Inst'Class; distanceToPlane_P : float)
      return access QtAda6.QtGui.QTransform.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QTransform.Class := new QtAda6.QtGui.QTransform.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "rotateRadians");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Float_FromDouble (a_P));
      Tuple_SetItem (Args, 1, (if axis_P /= null then axis_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, Float_FromDouble (distanceToPlane_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end rotateRadians;
   function rotateRadians
     (self : access Inst; a_P : float; axis_P : access QtAda6.QtCore.Qt.Axis.Inst'Class := null)
      return access QtAda6.QtGui.QTransform.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QTransform.Class := new QtAda6.QtGui.QTransform.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "rotateRadians");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (a_P));
      Dict := Dict_New;
      if axis_P /= null then
         Dict_SetItemString (Dict, "axis", axis_P.Python_Proxy);
      end if;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end rotateRadians;
   function scale (self : access Inst; sx_P : float; sy_P : float) return access QtAda6.QtGui.QTransform.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QTransform.Class := new QtAda6.QtGui.QTransform.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "scale");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Float_FromDouble (sx_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (sy_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end scale;
   procedure setMatrix
     (self  : access Inst; m11_P : float; m12_P : float; m13_P : float; m21_P : float; m22_P : float; m23_P : float;
      m31_P : float; m32_P : float; m33_P : float)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setMatrix");
      Args   := Tuple_New (9);
      Tuple_SetItem (Args, 0, Float_FromDouble (m11_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (m12_P));
      Tuple_SetItem (Args, 2, Float_FromDouble (m13_P));
      Tuple_SetItem (Args, 3, Float_FromDouble (m21_P));
      Tuple_SetItem (Args, 4, Float_FromDouble (m22_P));
      Tuple_SetItem (Args, 5, Float_FromDouble (m23_P));
      Tuple_SetItem (Args, 6, Float_FromDouble (m31_P));
      Tuple_SetItem (Args, 7, Float_FromDouble (m32_P));
      Tuple_SetItem (Args, 8, Float_FromDouble (m33_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setMatrix;
   function shear (self : access Inst; sh_P : float; sv_P : float) return access QtAda6.QtGui.QTransform.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QTransform.Class := new QtAda6.QtGui.QTransform.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "shear");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Float_FromDouble (sh_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (sv_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end shear;
   function squareToQuad (arg_1_P : access QtAda6.QtGui.QPolygonF.Inst'Class) return access Object'Class is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTransform");
      Method := Object_GetAttrString (Class, "squareToQuad");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return null;
   end squareToQuad;
   function squareToQuad (arg_1_P : SEQUENCE_QtAda6_QtCore_QRectF) return access Object'Class is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTransform");
      Method := Object_GetAttrString (Class, "squareToQuad");
      Args   := Tuple_New (1);
      List   := List_New (arg_1_P'Length);
      for ind in arg_1_P'Range loop
         List_SetItem
           (List, ssize_t (ind - arg_1_P'First),
            (if arg_1_P (ind) /= null then arg_1_P (ind).Python_Proxy else No_Value));
      end loop;
      Tuple_SetItem (Args, 0, List);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return null;
   end squareToQuad;
   function squareToQuad
     (square_P : access QtAda6.QtGui.QPolygonF.Inst'Class; result_P : access QtAda6.QtGui.QTransform.Inst'Class)
      return bool
   is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTransform");
      Method := Object_GetAttrString (Class, "squareToQuad");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if square_P /= null then square_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if result_P /= null then result_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end squareToQuad;
   function squareToQuad
     (square_P : SEQUENCE_QtAda6_QtCore_QRectF; result_P : access QtAda6.QtGui.QTransform.Inst'Class) return bool
   is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTransform");
      Method := Object_GetAttrString (Class, "squareToQuad");
      Args   := Tuple_New (2);
      List   := List_New (square_P'Length);
      for ind in square_P'Range loop
         List_SetItem
           (List, ssize_t (ind - square_P'First),
            (if square_P (ind) /= null then square_P (ind).Python_Proxy else No_Value));
      end loop;
      Tuple_SetItem (Args, 0, List);
      Tuple_SetItem (Args, 1, (if result_P /= null then result_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end squareToQuad;
   function translate (self : access Inst; dx_P : float; dy_P : float) return access QtAda6.QtGui.QTransform.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QTransform.Class := new QtAda6.QtGui.QTransform.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "translate");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Float_FromDouble (dx_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (dy_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end translate;
   function transposed (self : access Inst) return access QtAda6.QtGui.QTransform.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QTransform.Class := new QtAda6.QtGui.QTransform.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "transposed");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end transposed;
   function type_K (self : access Inst) return access QtAda6.QtGui.QTransform.TransformationType.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret                                          : constant QtAda6.QtGui.QTransform.TransformationType.Class :=
        new QtAda6.QtGui.QTransform.TransformationType.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "type");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end type_K;
end QtAda6.QtGui.QTransform;
