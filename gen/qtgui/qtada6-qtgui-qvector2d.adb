-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qvector2d.adb
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
with QtAda6.QtGui.QVector3D;
with QtAda6.QtGui.QVector4D;
with QtAda6.QtGui.QVector2D;
with QtAda6.QtCore.QDataStream;
with QtAda6.QtCore.QPointF;
package body QtAda6.QtGui.QVector2D is
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
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QVector2D");
      Args  := Tuple_New (0);
      Dict  := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (point_P : access QtAda6.QtCore.QPoint.Inst'Class) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QVector2D");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if point_P /= null then point_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (point_P : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element) return Class
   is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QVector2D");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if point_P /= null then point_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (vector_P : access QtAda6.QtGui.QVector3D.Inst'Class) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QVector2D");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if vector_P /= null then vector_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (vector_P : access QtAda6.QtGui.QVector4D.Inst'Class) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QVector2D");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if vector_P /= null then vector_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (xpos_P : float; ypos_P : float) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QVector2D");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, Float_FromDouble (xpos_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (ypos_P));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function U_add_U
     (self : access Inst; v2_P : access QtAda6.QtGui.QVector2D.Inst'Class)
      return access QtAda6.QtGui.QVector2D.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QVector2D.Class := new QtAda6.QtGui.QVector2D.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__add__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if v2_P /= null then v2_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_add_U;
   procedure U_copy_U is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QVector2D");
      Method := Object_GetAttrString (Class, "__copy__");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end U_copy_U;
   function U_iadd_U
     (self : access Inst; vector_P : access QtAda6.QtGui.QVector2D.Inst'Class)
      return access QtAda6.QtGui.QVector2D.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QVector2D.Class := new QtAda6.QtGui.QVector2D.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__iadd__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if vector_P /= null then vector_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_iadd_U;
   function U_imul_U (self : access Inst; factor_P : float) return access QtAda6.QtGui.QVector2D.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QVector2D.Class := new QtAda6.QtGui.QVector2D.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__imul__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (factor_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_imul_U;
   function U_imul_U
     (self : access Inst; vector_P : access QtAda6.QtGui.QVector2D.Inst'Class)
      return access QtAda6.QtGui.QVector2D.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QVector2D.Class := new QtAda6.QtGui.QVector2D.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__imul__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if vector_P /= null then vector_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_imul_U;
   function U_isub_U
     (self : access Inst; vector_P : access QtAda6.QtGui.QVector2D.Inst'Class)
      return access QtAda6.QtGui.QVector2D.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QVector2D.Class := new QtAda6.QtGui.QVector2D.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__isub__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if vector_P /= null then vector_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_isub_U;
   function U_lshift_U
     (self : access Inst; arg_1_P : access QtAda6.QtCore.QDataStream.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
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
   function U_mul_U (self : access Inst; factor_P : float) return access QtAda6.QtGui.QVector2D.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QVector2D.Class := new QtAda6.QtGui.QVector2D.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__mul__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (factor_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_mul_U;
   function U_mul_U
     (self : access Inst; v2_P : access QtAda6.QtGui.QVector2D.Inst'Class)
      return access QtAda6.QtGui.QVector2D.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QVector2D.Class := new QtAda6.QtGui.QVector2D.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__mul__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if v2_P /= null then v2_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_mul_U;
   function U_neg_U (self : access Inst) return access QtAda6.QtGui.QVector2D.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QVector2D.Class := new QtAda6.QtGui.QVector2D.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "__neg__");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_neg_U;
   function U_reduce_U (self : access Inst) return access Object'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__reduce__");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return null;
   end U_reduce_U;
   function U_repr_U (self : access Inst) return access Object'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
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
      Method, Args, Dict, List, Tuple, Result : Handle;
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
   function U_sub_U
     (self : access Inst; v2_P : access QtAda6.QtGui.QVector2D.Inst'Class)
      return access QtAda6.QtGui.QVector2D.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QVector2D.Class := new QtAda6.QtGui.QVector2D.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__sub__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if v2_P /= null then v2_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_sub_U;
   function distanceToLine
     (self        : access Inst; point_P : access QtAda6.QtGui.QVector2D.Inst'Class;
      direction_P : access QtAda6.QtGui.QVector2D.Inst'Class) return float
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "distanceToLine");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if point_P /= null then point_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if direction_P /= null then direction_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Float_AsDouble (Result);
   end distanceToLine;
   function distanceToPoint (self : access Inst; point_P : access QtAda6.QtGui.QVector2D.Inst'Class) return float is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "distanceToPoint");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if point_P /= null then point_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Float_AsDouble (Result);
   end distanceToPoint;
   function dotProduct
     (v1_P : access QtAda6.QtGui.QVector2D.Inst'Class; v2_P : access QtAda6.QtGui.QVector2D.Inst'Class) return float
   is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QVector2D");
      Method := Object_GetAttrString (Class, "dotProduct");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if v1_P /= null then v1_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if v2_P /= null then v2_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Float_AsDouble (Result);
   end dotProduct;
   function isNull (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isNull");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isNull;
   function length (self : access Inst) return float is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "length");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Float_AsDouble (Result);
   end length;
   function lengthSquared (self : access Inst) return float is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "lengthSquared");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Float_AsDouble (Result);
   end lengthSquared;
   procedure normalize (self : access Inst) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "normalize");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end normalize;
   function normalized (self : access Inst) return access QtAda6.QtGui.QVector2D.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QVector2D.Class := new QtAda6.QtGui.QVector2D.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "normalized");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end normalized;
   procedure setX (self : access Inst; x_P : float) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setX");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (x_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setX;
   procedure setY (self : access Inst; y_P : float) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setY");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (y_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setY;
   function toPoint (self : access Inst) return access QtAda6.QtCore.QPoint.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QPoint.Class := new QtAda6.QtCore.QPoint.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "toPoint");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end toPoint;
   function toPointF (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QPointF.Class := new QtAda6.QtCore.QPointF.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "toPointF");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end toPointF;
   function toTuple (self : access Inst) return access Object'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toTuple");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return null;
   end toTuple;
   function toVector3D (self : access Inst) return access QtAda6.QtGui.QVector3D.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QVector3D.Class := new QtAda6.QtGui.QVector3D.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "toVector3D");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end toVector3D;
   function toVector4D (self : access Inst) return access QtAda6.QtGui.QVector4D.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QVector4D.Class := new QtAda6.QtGui.QVector4D.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "toVector4D");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end toVector4D;
   function x (self : access Inst) return float is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "x");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Float_AsDouble (Result);
   end x;
   function y (self : access Inst) return float is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "y");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Float_AsDouble (Result);
   end y;
end QtAda6.QtGui.QVector2D;
