-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qlinef.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Py; use Py;
with Ada.Unchecked_Deallocation;
with QtAda6.QtCore.QLine;
with QtAda6.QtCore.QPointF;
with QtAda6.QtCore.QPoint;
package body QtAda6.QtCore.QLineF is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLineF");
      Args  := Tuple_New (0);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (QLineF_P : Union_QtAda6_QtCore_QLineF_QtAda6_QtCore_QLine) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLineF");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (line_P : access QtAda6.QtCore.QLine.Inst'Class) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLineF");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, line_P.Python_Proxy);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create
     (pt1_P : Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint;
      pt2_P : Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint) return Class
   is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLineF");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, No_Value);
      Tuple_SetItem (Args, 1, No_Value);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (x1_P : float; y1_P : float; x2_P : float; y2_P : float) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLineF");
      Args  := Tuple_New (4);
      Tuple_SetItem (Args, 0, Float_FromDouble (x1_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (y1_P));
      Tuple_SetItem (Args, 2, Float_FromDouble (x2_P));
      Tuple_SetItem (Args, 3, Float_FromDouble (y2_P));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   procedure U_copy_U is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLineF");
      Method := Object_GetAttrString (Class, "__copy__");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end U_copy_U;
   function U_reduce_U (self : access Inst) return Object is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__reduce__");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return (Python_Proxy => Result);
   end U_reduce_U;
   function U_repr_U (self : access Inst) return Object is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__repr__");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return (Python_Proxy => Result);
   end U_repr_U;
   function angle (self : access Inst) return float is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "angle");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end angle;
   function angleTo (self : access Inst; l_P : Union_QtAda6_QtCore_QLineF_QtAda6_QtCore_QLine) return float is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "angleTo");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end angleTo;
   function center (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QPointF.Class := new QtAda6.QtCore.QPointF.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "center");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end center;
   function dx (self : access Inst) return float is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "dx");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end dx;
   function dy (self : access Inst) return float is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "dy");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end dy;
   function fromPolar (length_P : float; angle_P : float) return access QtAda6.QtCore.QLineF.Inst'Class is
      Class, Method, Args, Result : Handle;
      Ret                         : constant QtAda6.QtCore.QLineF.Class := new QtAda6.QtCore.QLineF.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLineF");
      Method := Object_GetAttrString (Class, "fromPolar");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Float_FromDouble (length_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (angle_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fromPolar;
   function intersects (self : access Inst; l_P : Union_QtAda6_QtCore_QLineF_QtAda6_QtCore_QLine) return Tuple is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "intersects");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
      return Tuple_conv_P2A_is_not_supported;
   end intersects;
   function isNull (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isNull");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isNull;
   function length (self : access Inst) return float is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "length");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end length;
   function normalVector (self : access Inst) return access QtAda6.QtCore.QLineF.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QLineF.Class := new QtAda6.QtCore.QLineF.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "normalVector");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end normalVector;
   function p1 (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QPointF.Class := new QtAda6.QtCore.QPointF.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "p1");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end p1;
   function p2 (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QPointF.Class := new QtAda6.QtCore.QPointF.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "p2");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end p2;
   function pointAt (self : access Inst; t_P : float) return access QtAda6.QtCore.QPointF.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QPointF.Class := new QtAda6.QtCore.QPointF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "pointAt");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (t_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end pointAt;
   procedure setAngle (self : access Inst; angle_P : float) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setAngle");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (angle_P));
      Result := Object_CallObject (Method, Args, True);
   end setAngle;
   procedure setLength (self : access Inst; len_P : float) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setLength");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (len_P));
      Result := Object_CallObject (Method, Args, True);
   end setLength;
   procedure setLine (self : access Inst; x1_P : float; y1_P : float; x2_P : float; y2_P : float) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setLine");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Float_FromDouble (x1_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (y1_P));
      Tuple_SetItem (Args, 2, Float_FromDouble (x2_P));
      Tuple_SetItem (Args, 3, Float_FromDouble (y2_P));
      Result := Object_CallObject (Method, Args, True);
   end setLine;
   procedure setP1 (self : access Inst; p1_P : Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setP1");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end setP1;
   procedure setP2 (self : access Inst; p2_P : Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setP2");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end setP2;
   procedure setPoints
     (self : access Inst; p1_P : Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint;
      p2_P : Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPoints");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, No_Value);
      Tuple_SetItem (Args, 1, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end setPoints;
   function toLine (self : access Inst) return access QtAda6.QtCore.QLine.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QLine.Class := new QtAda6.QtCore.QLine.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "toLine");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end toLine;
   function toTuple (self : access Inst) return Object is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toTuple");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return (Python_Proxy => Result);
   end toTuple;
   procedure translate (self : access Inst; dx_P : float; dy_P : float) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "translate");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Float_FromDouble (dx_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (dy_P));
      Result := Object_CallObject (Method, Args, True);
   end translate;
   procedure translate (self : access Inst; p_P : Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "translate");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end translate;
   function translated (self : access Inst; dx_P : float; dy_P : float) return access QtAda6.QtCore.QLineF.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QLineF.Class := new QtAda6.QtCore.QLineF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "translated");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Float_FromDouble (dx_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (dy_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end translated;
   function translated
     (self : access Inst; p_P : Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint)
      return access QtAda6.QtCore.QLineF.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QLineF.Class := new QtAda6.QtCore.QLineF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "translated");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end translated;
   function unitVector (self : access Inst) return access QtAda6.QtCore.QLineF.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QLineF.Class := new QtAda6.QtCore.QLineF.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "unitVector");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end unitVector;
   function x1 (self : access Inst) return float is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "x1");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end x1;
   function x2 (self : access Inst) return float is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "x2");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end x2;
   function y1 (self : access Inst) return float is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "y1");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end y1;
   function y2 (self : access Inst) return float is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "y2");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end y2;
end QtAda6.QtCore.QLineF;
