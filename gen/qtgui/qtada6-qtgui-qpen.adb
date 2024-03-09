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
with QtAda6.QtCore.Qt.PenCapStyle;
with QtAda6.QtCore.Qt.PenJoinStyle;
with QtAda6.QtCore.QDataStream;
with QtAda6.QtGui.QBrush;
with QtAda6.QtGui.QColor;
package body QtAda6.QtGui.QPen is
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
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPen");
      Args  := Tuple_New (0);
      Dict  := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (arg_1_P : access QtAda6.QtCore.Qt.PenStyle.Inst'Class) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPen");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (brush_P : UNION_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap;
      width_P : float; s_P : access QtAda6.QtCore.Qt.PenStyle.Inst'Class := null;
      c_P     : access QtAda6.QtCore.Qt.PenCapStyle.Inst'Class  := null;
      j_P     : access QtAda6.QtCore.Qt.PenJoinStyle.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPen");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if brush_P /= null then brush_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Float_FromDouble (width_P));
      Dict := Dict_New;
      if s_P /= null then
         Dict_SetItemString (Dict, "s", s_P.Python_Proxy);
      end if;
      if c_P /= null then
         Dict_SetItemString (Dict, "c", c_P.Python_Proxy);
      end if;
      if j_P /= null then
         Dict_SetItemString (Dict, "j", j_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (color_P : UNION_QtAda6_QtGui_QColor_QtAda6_QtGui_QRgba64_Any_QtAda6_QtCore_Qt_GlobalColor_str_int) return Class
   is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPen");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if color_P /= null then color_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (pen_P : UNION_QtAda6_QtGui_QPen_QtAda6_QtCore_Qt_PenStyle_QtAda6_QtGui_QColor) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPen");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if pen_P /= null then pen_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   procedure U_copy_U is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPen");
      Method := Object_GetAttrString (Class, "__copy__");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end U_copy_U;
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
   function brush (self : access Inst) return access QtAda6.QtGui.QBrush.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QBrush.Class := new QtAda6.QtGui.QBrush.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "brush");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end brush;
   function capStyle (self : access Inst) return access QtAda6.QtCore.Qt.PenCapStyle.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.PenCapStyle.Class := new QtAda6.QtCore.Qt.PenCapStyle.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "capStyle");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end capStyle;
   function color (self : access Inst) return access QtAda6.QtGui.QColor.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QColor.Class := new QtAda6.QtGui.QColor.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "color");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end color;
   function dashOffset (self : access Inst) return float is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "dashOffset");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Float_AsDouble (Result);
   end dashOffset;
   function dashPattern (self : access Inst) return LIST_float is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "dashPattern");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return (2 .. 1 => <>);
   end dashPattern;
   function isCosmetic (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isCosmetic");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isCosmetic;
   function isSolid (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isSolid");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isSolid;
   function joinStyle (self : access Inst) return access QtAda6.QtCore.Qt.PenJoinStyle.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.PenJoinStyle.Class := new QtAda6.QtCore.Qt.PenJoinStyle.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "joinStyle");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end joinStyle;
   function miterLimit (self : access Inst) return float is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "miterLimit");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Float_AsDouble (Result);
   end miterLimit;
   procedure setBrush
     (self    : access Inst;
      brush_P : UNION_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setBrush");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if brush_P /= null then brush_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setBrush;
   procedure setCapStyle (self : access Inst; pcs_P : access QtAda6.QtCore.Qt.PenCapStyle.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setCapStyle");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if pcs_P /= null then pcs_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setCapStyle;
   procedure setColor
     (self    : access Inst;
      color_P : UNION_QtAda6_QtGui_QColor_QtAda6_QtGui_QRgba64_Any_QtAda6_QtCore_Qt_GlobalColor_str_int)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setColor");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if color_P /= null then color_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setColor;
   procedure setCosmetic (self : access Inst; cosmetic_P : bool) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setCosmetic");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (cosmetic_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setCosmetic;
   procedure setDashOffset (self : access Inst; doffset_P : float) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setDashOffset");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (doffset_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setDashOffset;
   procedure setDashPattern (self : access Inst; pattern_P : SEQUENCE_float) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setDashPattern");
      List   := List_New (pattern_P'Length);
      for ind in pattern_P'Range loop
         List_SetItem (List, ssize_t (ind - pattern_P'First), Float_FromDouble (pattern_P (ind)));
      end loop;
      Args := Tuple_New (1);
      Tuple_SetItem (Args, 0, List);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setDashPattern;
   procedure setJoinStyle (self : access Inst; pcs_P : access QtAda6.QtCore.Qt.PenJoinStyle.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setJoinStyle");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if pcs_P /= null then pcs_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setJoinStyle;
   procedure setMiterLimit (self : access Inst; limit_P : float) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setMiterLimit");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (limit_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setMiterLimit;
   procedure setStyle (self : access Inst; arg_1_P : access QtAda6.QtCore.Qt.PenStyle.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setStyle");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setStyle;
   procedure setWidth (self : access Inst; width_P : int) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setWidth");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (width_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setWidth;
   procedure setWidthF (self : access Inst; width_P : float) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setWidthF");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (width_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setWidthF;
   function style (self : access Inst) return access QtAda6.QtCore.Qt.PenStyle.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.PenStyle.Class := new QtAda6.QtCore.Qt.PenStyle.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "style");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end style;
   procedure swap (self : access Inst; other_P : UNION_QtAda6_QtGui_QPen_QtAda6_QtCore_Qt_PenStyle_QtAda6_QtGui_QColor)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "swap");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if other_P /= null then other_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end swap;
   function width (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "width");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end width;
   function widthF (self : access Inst) return float is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "widthF");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Float_AsDouble (Result);
   end widthF;
end QtAda6.QtGui.QPen;
