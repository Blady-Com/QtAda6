-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qtextframeformat.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Py; use Py;
with Ada.Unchecked_Deallocation;
with QtAda6.QtGui.QTextFormat;
with QtAda6.QtGui.QBrush;
with QtAda6.QtGui.QTextFrameFormat.BorderStyle;
with QtAda6.QtGui.QTextLength;
with QtAda6.QtGui.QTextFormat.PageBreakFlag;
with QtAda6.QtGui.QTextFrameFormat.Position;
with QtAda6.QtCore.Qt.BrushStyle;
with QtAda6.QtCore.Qt.GlobalColor;
with QtAda6.QtGui.QColor;
with QtAda6.QtGui.QGradient;
with QtAda6.QtGui.QImage;
with QtAda6.QtGui.QPixmap;
package body QtAda6.QtGui.QTextFrameFormat is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFrameFormat");
      Args  := Tuple_New (0);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (QTextFrameFormat_P : access QtAda6.QtGui.QTextFrameFormat.Inst'Class) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFrameFormat");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, QTextFrameFormat_P.Python_Proxy);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (fmt_P : access QtAda6.QtGui.QTextFormat.Inst'Class) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFrameFormat");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, fmt_P.Python_Proxy);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   procedure U_copy_U is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFrameFormat");
      Method := Object_GetAttrString (Class, "__copy__");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end U_copy_U;
   function border_F (self : access Inst) return float is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "border");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end border_F;
   function borderBrush (self : access Inst) return access QtAda6.QtGui.QBrush.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QBrush.Class := new QtAda6.QtGui.QBrush.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "borderBrush");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end borderBrush;
   function borderStyle_F (self : access Inst) return access QtAda6.QtGui.QTextFrameFormat.BorderStyle.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QTextFrameFormat.BorderStyle.Class :=
        new QtAda6.QtGui.QTextFrameFormat.BorderStyle.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "borderStyle");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end borderStyle_F;
   function bottomMargin (self : access Inst) return float is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "bottomMargin");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end bottomMargin;
   function height (self : access Inst) return access QtAda6.QtGui.QTextLength.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QTextLength.Class := new QtAda6.QtGui.QTextLength.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "height");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end height;
   function isValid (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isValid");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isValid;
   function leftMargin (self : access Inst) return float is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "leftMargin");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end leftMargin;
   function margin (self : access Inst) return float is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "margin");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end margin;
   function padding (self : access Inst) return float is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "padding");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end padding;
   function pageBreakPolicy (self : access Inst) return access QtAda6.QtGui.QTextFormat.PageBreakFlag.Inst'Class is
      Method, Args, Result : Handle;
      Ret : constant QtAda6.QtGui.QTextFormat.PageBreakFlag.Class := new QtAda6.QtGui.QTextFormat.PageBreakFlag.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "pageBreakPolicy");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end pageBreakPolicy;
   function position_F (self : access Inst) return access QtAda6.QtGui.QTextFrameFormat.Position.Inst'Class is
      Method, Args, Result : Handle;
      Ret : constant QtAda6.QtGui.QTextFrameFormat.Position.Class := new QtAda6.QtGui.QTextFrameFormat.Position.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "position");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end position_F;
   function rightMargin (self : access Inst) return float is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "rightMargin");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end rightMargin;
   procedure setBorder (self : access Inst; border_P : float) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setBorder");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (border_P));
      Result := Object_CallObject (Method, Args, True);
   end setBorder;
   procedure setBorderBrush
     (self    : access Inst;
      brush_P : Union_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setBorderBrush");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end setBorderBrush;
   procedure setBorderStyle (self : access Inst; style_P : access QtAda6.QtGui.QTextFrameFormat.BorderStyle.Inst'Class)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setBorderStyle");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, style_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setBorderStyle;
   procedure setBottomMargin (self : access Inst; margin_P : float) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setBottomMargin");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (margin_P));
      Result := Object_CallObject (Method, Args, True);
   end setBottomMargin;
   procedure setHeight (self : access Inst; height_P : access QtAda6.QtGui.QTextLength.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setHeight");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, height_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setHeight;
   procedure setHeight (self : access Inst; height_P : float) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setHeight");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (height_P));
      Result := Object_CallObject (Method, Args, True);
   end setHeight;
   procedure setLeftMargin (self : access Inst; margin_P : float) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setLeftMargin");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (margin_P));
      Result := Object_CallObject (Method, Args, True);
   end setLeftMargin;
   procedure setMargin (self : access Inst; margin_P : float) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setMargin");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (margin_P));
      Result := Object_CallObject (Method, Args, True);
   end setMargin;
   procedure setPadding (self : access Inst; padding_P : float) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPadding");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (padding_P));
      Result := Object_CallObject (Method, Args, True);
   end setPadding;
   procedure setPageBreakPolicy (self : access Inst; flags_P : access QtAda6.QtGui.QTextFormat.PageBreakFlag.Inst'Class)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPageBreakPolicy");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, flags_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setPageBreakPolicy;
   procedure setPosition (self : access Inst; f_P : access QtAda6.QtGui.QTextFrameFormat.Position.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPosition");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, f_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setPosition;
   procedure setRightMargin (self : access Inst; margin_P : float) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setRightMargin");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (margin_P));
      Result := Object_CallObject (Method, Args, True);
   end setRightMargin;
   procedure setTopMargin (self : access Inst; margin_P : float) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setTopMargin");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (margin_P));
      Result := Object_CallObject (Method, Args, True);
   end setTopMargin;
   procedure setWidth (self : access Inst; length_P : access QtAda6.QtGui.QTextLength.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setWidth");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, length_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setWidth;
   procedure setWidth (self : access Inst; width_P : float) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setWidth");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (width_P));
      Result := Object_CallObject (Method, Args, True);
   end setWidth;
   function topMargin (self : access Inst) return float is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "topMargin");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end topMargin;
   function width (self : access Inst) return access QtAda6.QtGui.QTextLength.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QTextLength.Class := new QtAda6.QtGui.QTextLength.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "width");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end width;
end QtAda6.QtGui.QTextFrameFormat;
