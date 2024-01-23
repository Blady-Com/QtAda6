-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qpen.adb
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
with QtAda6.QtCore.Qt.PenStyle;
with QtAda6.QtGui.QBrush;
with QtAda6.QtCore.Qt.BrushStyle;
with QtAda6.QtCore.Qt.GlobalColor;
with QtAda6.QtGui.QColor;
with QtAda6.QtGui.QGradient;
with QtAda6.QtGui.QImage;
with QtAda6.QtGui.QPixmap;
with QtAda6.QtCore.Qt.PenCapStyle;
with QtAda6.QtCore.Qt.PenJoinStyle;
with QtAda6.QtGui.QRgba64;
with QtAda6.QtCore.QDataStream;
package body QtAda6.QtGui.QPen is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPen");
      Args  := Tuple_New (0);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (arg_1_P : access QtAda6.QtCore.Qt.PenStyle.Inst'Class) return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPen");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create
     (brush_P : UNION_QtAda6_QtGui_QBrushQtAda6_QtCore_Qt_BrushStyleQtAda6_QtCore_Qt_GlobalColorQtAda6_QtGui_QColorQtAda6_QtGui_QGradientQtAda6_QtGui_QImageQtAda6_QtGui_QPixmap;
      width_P : float; s_P : access QtAda6.QtCore.Qt.PenStyle.Inst'Class := null;
      c_P     : access QtAda6.QtCore.Qt.PenCapStyle.Inst'Class  := null;
      j_P     : access QtAda6.QtCore.Qt.PenJoinStyle.Inst'Class := null) return Class
   is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPen");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if brush_P /= null then brush_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Float_FromDouble (width_P));
      Tuple_SetItem (Args, 2, (if s_P /= null then s_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if c_P /= null then c_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, (if j_P /= null then j_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create
     (color_P : UNION_QtAda6_QtGui_QColorQtAda6_QtGui_QRgba64AnyQtAda6_QtCore_Qt_GlobalColorstrint) return Class
   is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPen");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if color_P /= null then color_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (pen_P : UNION_QtAda6_QtGui_QPenQtAda6_QtCore_Qt_PenStyleQtAda6_QtGui_QColor) return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPen");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if pen_P /= null then pen_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   procedure U_copy_U is
      Class, Method, Args, List, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPen");
      Method := Object_GetAttrString (Class, "__copy__");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end U_copy_U;
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
   function brush (self : access Inst) return access QtAda6.QtGui.QBrush.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QBrush.Class := new QtAda6.QtGui.QBrush.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "brush");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end brush;
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
   function color (self : access Inst) return access QtAda6.QtGui.QColor.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QColor.Class := new QtAda6.QtGui.QColor.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "color");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end color;
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
   function isCosmetic (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isCosmetic");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isCosmetic;
   function isSolid (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isSolid");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isSolid;
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
   procedure setBrush
     (self    : access Inst;
      brush_P : UNION_QtAda6_QtGui_QBrushQtAda6_QtCore_Qt_BrushStyleQtAda6_QtCore_Qt_GlobalColorQtAda6_QtGui_QColorQtAda6_QtGui_QGradientQtAda6_QtGui_QImageQtAda6_QtGui_QPixmap)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setBrush");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if brush_P /= null then brush_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setBrush;
   procedure setCapStyle (self : access Inst; pcs_P : access QtAda6.QtCore.Qt.PenCapStyle.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setCapStyle");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if pcs_P /= null then pcs_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setCapStyle;
   procedure setColor
     (self : access Inst; color_P : UNION_QtAda6_QtGui_QColorQtAda6_QtGui_QRgba64AnyQtAda6_QtCore_Qt_GlobalColorstrint)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setColor");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if color_P /= null then color_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setColor;
   procedure setCosmetic (self : access Inst; cosmetic_P : bool) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setCosmetic");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (cosmetic_P));
      Result := Object_CallObject (Method, Args, True);
   end setCosmetic;
   procedure setDashOffset (self : access Inst; doffset_P : float) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setDashOffset");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (doffset_P));
      Result := Object_CallObject (Method, Args, True);
   end setDashOffset;
   procedure setDashPattern (self : access Inst; pattern_P : SEQUENCE_float) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setDashPattern");
      List   := List_New (pattern_P'Length);
      for ind in pattern_P'Range loop
         List_SetItem (List, ssize_t (ind - pattern_P'First), Float_FromDouble (pattern_P (ind)));
      end loop;
      Args := Tuple_New (1);
      Tuple_SetItem (Args, 0, List);
      Result := Object_CallObject (Method, Args, True);
   end setDashPattern;
   procedure setJoinStyle (self : access Inst; pcs_P : access QtAda6.QtCore.Qt.PenJoinStyle.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setJoinStyle");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if pcs_P /= null then pcs_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setJoinStyle;
   procedure setMiterLimit (self : access Inst; limit_P : float) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setMiterLimit");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (limit_P));
      Result := Object_CallObject (Method, Args, True);
   end setMiterLimit;
   procedure setStyle (self : access Inst; arg_1_P : access QtAda6.QtCore.Qt.PenStyle.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setStyle");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setStyle;
   procedure setWidth (self : access Inst; width_P : int) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setWidth");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (width_P));
      Result := Object_CallObject (Method, Args, True);
   end setWidth;
   procedure setWidthF (self : access Inst; width_P : float) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setWidthF");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (width_P));
      Result := Object_CallObject (Method, Args, True);
   end setWidthF;
   function style (self : access Inst) return access QtAda6.QtCore.Qt.PenStyle.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.Qt.PenStyle.Class := new QtAda6.QtCore.Qt.PenStyle.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "style");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end style;
   procedure swap (self : access Inst; other_P : UNION_QtAda6_QtGui_QPenQtAda6_QtCore_Qt_PenStyleQtAda6_QtGui_QColor) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "swap");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if other_P /= null then other_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end swap;
   function width (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "width");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end width;
   function widthF (self : access Inst) return float is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "widthF");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end widthF;
end QtAda6.QtGui.QPen;
