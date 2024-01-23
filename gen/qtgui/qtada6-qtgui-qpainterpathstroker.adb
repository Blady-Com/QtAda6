-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qpainterpathstroker.adb
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
with QtAda6.QtGui.QPen;
with QtAda6.QtCore.Qt.PenStyle;
with QtAda6.QtGui.QColor;
with QtAda6.QtCore.Qt.PenCapStyle;
with QtAda6.QtGui.QPainterPath;
with QtAda6.QtCore.Qt.PenJoinStyle;
package body QtAda6.QtGui.QPainterPathStroker is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPainterPathStroker");
      Args  := Tuple_New (0);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (pen_P : UNION_QtAda6_QtGui_QPenQtAda6_QtCore_Qt_PenStyleQtAda6_QtGui_QColor) return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPainterPathStroker");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if pen_P /= null then pen_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function capStyle (self : access Inst) return access QtAda6.QtCore.Qt.PenCapStyle.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.Qt.PenCapStyle.Class := new QtAda6.QtCore.Qt.PenCapStyle.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "capStyle");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end capStyle;
   function createStroke
     (self : access Inst; path_P : access QtAda6.QtGui.QPainterPath.Inst'Class)
      return access QtAda6.QtGui.QPainterPath.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QPainterPath.Class := new QtAda6.QtGui.QPainterPath.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "createStroke");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if path_P /= null then path_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end createStroke;
   function curveThreshold (self : access Inst) return float is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "curveThreshold");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end curveThreshold;
   function dashOffset (self : access Inst) return float is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "dashOffset");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end dashOffset;
   function dashPattern (self : access Inst) return LIST_float is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "dashPattern");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return (2 .. 1 => <>);
   end dashPattern;
   function joinStyle (self : access Inst) return access QtAda6.QtCore.Qt.PenJoinStyle.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.PenJoinStyle.Class := new QtAda6.QtCore.Qt.PenJoinStyle.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "joinStyle");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end joinStyle;
   function miterLimit (self : access Inst) return float is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "miterLimit");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end miterLimit;
   procedure setCapStyle (self : access Inst; style_P : access QtAda6.QtCore.Qt.PenCapStyle.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setCapStyle");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if style_P /= null then style_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setCapStyle;
   procedure setCurveThreshold (self : access Inst; threshold_P : float) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setCurveThreshold");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (threshold_P));
      Result := Object_CallObject (Method, Args, True);
   end setCurveThreshold;
   procedure setDashOffset (self : access Inst; offset_P : float) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setDashOffset");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (offset_P));
      Result := Object_CallObject (Method, Args, True);
   end setDashOffset;
   procedure setDashPattern (self : access Inst; arg_1_P : access QtAda6.QtCore.Qt.PenStyle.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setDashPattern");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setDashPattern;
   procedure setDashPattern (self : access Inst; dashPattern_P : SEQUENCE_float) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setDashPattern");
      List   := List_New (dashPattern_P'Length);
      for ind in dashPattern_P'Range loop
         List_SetItem (List, ssize_t (ind - dashPattern_P'First), Float_FromDouble (dashPattern_P (ind)));
      end loop;
      Args := Tuple_New (1);
      Tuple_SetItem (Args, 0, List);
      Result := Object_CallObject (Method, Args, True);
   end setDashPattern;
   procedure setJoinStyle (self : access Inst; style_P : access QtAda6.QtCore.Qt.PenJoinStyle.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setJoinStyle");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if style_P /= null then style_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setJoinStyle;
   procedure setMiterLimit (self : access Inst; length_P : float) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setMiterLimit");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (length_P));
      Result := Object_CallObject (Method, Args, True);
   end setMiterLimit;
   procedure setWidth (self : access Inst; width_P : float) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setWidth");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (width_P));
      Result := Object_CallObject (Method, Args, True);
   end setWidth;
   function width (self : access Inst) return float is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "width");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end width;
end QtAda6.QtGui.QPainterPathStroker;
