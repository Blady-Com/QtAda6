-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qtextframeformat.adb
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
with QtAda6.QtGui.QTextFrameFormat;
with QtAda6.QtGui.QTextFormat;
with QtAda6.QtGui.QBrush;
with QtAda6.QtGui.QTextFrameFormat.BorderStyle;
with QtAda6.QtGui.QTextLength;
with QtAda6.QtGui.QTextFormat.PageBreakFlag;
with QtAda6.QtGui.QTextFrameFormat.Position;
package body QtAda6.QtGui.QTextFrameFormat is
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
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFrameFormat");
      Args  := Tuple_New (0);
      Dict  := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (QTextFrameFormat_P : access QtAda6.QtGui.QTextFrameFormat.Inst'Class) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFrameFormat");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if QTextFrameFormat_P /= null then QTextFrameFormat_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (fmt_P : access QtAda6.QtGui.QTextFormat.Inst'Class) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFrameFormat");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if fmt_P /= null then fmt_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   procedure U_copy_U is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFrameFormat");
      Method := Object_GetAttrString (Class, "__copy__");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end U_copy_U;
   function border (self : access Inst) return float is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "border");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Float_AsDouble (Result);
   end border;
   function borderBrush (self : access Inst) return access QtAda6.QtGui.QBrush.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QBrush.Class := new QtAda6.QtGui.QBrush.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "borderBrush");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end borderBrush;
   function borderStyle_F (self : access Inst) return access QtAda6.QtGui.QTextFrameFormat.BorderStyle.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QTextFrameFormat.BorderStyle.Class :=
        new QtAda6.QtGui.QTextFrameFormat.BorderStyle.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "borderStyle");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end borderStyle_F;
   function bottomMargin (self : access Inst) return float is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "bottomMargin");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Float_AsDouble (Result);
   end bottomMargin;
   function height (self : access Inst) return access QtAda6.QtGui.QTextLength.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QTextLength.Class := new QtAda6.QtGui.QTextLength.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "height");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end height;
   function isValid (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isValid");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isValid;
   function leftMargin (self : access Inst) return float is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "leftMargin");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Float_AsDouble (Result);
   end leftMargin;
   function margin (self : access Inst) return float is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "margin");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Float_AsDouble (Result);
   end margin;
   function padding (self : access Inst) return float is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "padding");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Float_AsDouble (Result);
   end padding;
   function pageBreakPolicy (self : access Inst) return access QtAda6.QtGui.QTextFormat.PageBreakFlag.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QTextFormat.PageBreakFlag.Class := new QtAda6.QtGui.QTextFormat.PageBreakFlag.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "pageBreakPolicy");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end pageBreakPolicy;
   function position_F (self : access Inst) return access QtAda6.QtGui.QTextFrameFormat.Position.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QTextFrameFormat.Position.Class := new QtAda6.QtGui.QTextFrameFormat.Position.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "position");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end position_F;
   function rightMargin (self : access Inst) return float is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "rightMargin");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Float_AsDouble (Result);
   end rightMargin;
   procedure setBorder (self : access Inst; border_P : float) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setBorder");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (border_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setBorder;
   procedure setBorderBrush
     (self    : access Inst;
      brush_P : UNION_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setBorderBrush");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if brush_P /= null then brush_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setBorderBrush;
   procedure setBorderStyle (self : access Inst; style_P : access QtAda6.QtGui.QTextFrameFormat.BorderStyle.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setBorderStyle");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if style_P /= null then style_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setBorderStyle;
   procedure setBottomMargin (self : access Inst; margin_P : float) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setBottomMargin");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (margin_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setBottomMargin;
   procedure setHeight (self : access Inst; height_P : access QtAda6.QtGui.QTextLength.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setHeight");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if height_P /= null then height_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setHeight;
   procedure setHeight (self : access Inst; height_P : float) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setHeight");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (height_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setHeight;
   procedure setLeftMargin (self : access Inst; margin_P : float) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setLeftMargin");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (margin_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setLeftMargin;
   procedure setMargin (self : access Inst; margin_P : float) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setMargin");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (margin_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setMargin;
   procedure setPadding (self : access Inst; padding_P : float) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPadding");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (padding_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPadding;
   procedure setPageBreakPolicy (self : access Inst; flags_P : access QtAda6.QtGui.QTextFormat.PageBreakFlag.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPageBreakPolicy");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if flags_P /= null then flags_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPageBreakPolicy;
   procedure setPosition (self : access Inst; f_P : access QtAda6.QtGui.QTextFrameFormat.Position.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPosition");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if f_P /= null then f_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPosition;
   procedure setRightMargin (self : access Inst; margin_P : float) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setRightMargin");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (margin_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setRightMargin;
   procedure setTopMargin (self : access Inst; margin_P : float) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setTopMargin");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (margin_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setTopMargin;
   procedure setWidth (self : access Inst; length_P : access QtAda6.QtGui.QTextLength.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setWidth");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if length_P /= null then length_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setWidth;
   procedure setWidth (self : access Inst; width_P : float) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setWidth");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (width_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setWidth;
   function topMargin (self : access Inst) return float is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "topMargin");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Float_AsDouble (Result);
   end topMargin;
   function width (self : access Inst) return access QtAda6.QtGui.QTextLength.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QTextLength.Class := new QtAda6.QtGui.QTextLength.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "width");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end width;
end QtAda6.QtGui.QTextFrameFormat;
