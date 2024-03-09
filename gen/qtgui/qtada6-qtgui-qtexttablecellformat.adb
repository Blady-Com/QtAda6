-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qtexttablecellformat.adb
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
with QtAda6.QtGui.QTextTableCellFormat;
with QtAda6.QtGui.QTextFormat;
with QtAda6.QtGui.QBrush;
with QtAda6.QtGui.QTextFrameFormat.BorderStyle;
package body QtAda6.QtGui.QTextTableCellFormat is
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
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextTableCellFormat");
      Args  := Tuple_New (0);
      Dict  := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (QTextTableCellFormat_P : access QtAda6.QtGui.QTextTableCellFormat.Inst'Class) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextTableCellFormat");
      Args  := Tuple_New (1);
      Tuple_SetItem
        (Args, 0, (if QTextTableCellFormat_P /= null then QTextTableCellFormat_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (fmt_P : access QtAda6.QtGui.QTextFormat.Inst'Class) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextTableCellFormat");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if fmt_P /= null then fmt_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   procedure U_copy_U is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextTableCellFormat");
      Method := Object_GetAttrString (Class, "__copy__");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end U_copy_U;
   function bottomBorder (self : access Inst) return float is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "bottomBorder");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Float_AsDouble (Result);
   end bottomBorder;
   function bottomBorderBrush (self : access Inst) return access QtAda6.QtGui.QBrush.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QBrush.Class := new QtAda6.QtGui.QBrush.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "bottomBorderBrush");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end bottomBorderBrush;
   function bottomBorderStyle (self : access Inst) return access QtAda6.QtGui.QTextFrameFormat.BorderStyle.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QTextFrameFormat.BorderStyle.Class :=
        new QtAda6.QtGui.QTextFrameFormat.BorderStyle.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "bottomBorderStyle");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end bottomBorderStyle;
   function bottomPadding (self : access Inst) return float is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "bottomPadding");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Float_AsDouble (Result);
   end bottomPadding;
   function isValid (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isValid");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isValid;
   function leftBorder (self : access Inst) return float is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "leftBorder");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Float_AsDouble (Result);
   end leftBorder;
   function leftBorderBrush (self : access Inst) return access QtAda6.QtGui.QBrush.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QBrush.Class := new QtAda6.QtGui.QBrush.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "leftBorderBrush");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end leftBorderBrush;
   function leftBorderStyle (self : access Inst) return access QtAda6.QtGui.QTextFrameFormat.BorderStyle.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QTextFrameFormat.BorderStyle.Class :=
        new QtAda6.QtGui.QTextFrameFormat.BorderStyle.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "leftBorderStyle");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end leftBorderStyle;
   function leftPadding (self : access Inst) return float is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "leftPadding");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Float_AsDouble (Result);
   end leftPadding;
   function rightBorder (self : access Inst) return float is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "rightBorder");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Float_AsDouble (Result);
   end rightBorder;
   function rightBorderBrush (self : access Inst) return access QtAda6.QtGui.QBrush.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QBrush.Class := new QtAda6.QtGui.QBrush.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "rightBorderBrush");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end rightBorderBrush;
   function rightBorderStyle (self : access Inst) return access QtAda6.QtGui.QTextFrameFormat.BorderStyle.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QTextFrameFormat.BorderStyle.Class :=
        new QtAda6.QtGui.QTextFrameFormat.BorderStyle.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "rightBorderStyle");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end rightBorderStyle;
   function rightPadding (self : access Inst) return float is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "rightPadding");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Float_AsDouble (Result);
   end rightPadding;
   procedure setBorder (self : access Inst; width_P : float) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setBorder");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (width_P));
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
   procedure setBottomBorder (self : access Inst; width_P : float) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setBottomBorder");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (width_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setBottomBorder;
   procedure setBottomBorderBrush
     (self    : access Inst;
      brush_P : UNION_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setBottomBorderBrush");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if brush_P /= null then brush_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setBottomBorderBrush;
   procedure setBottomBorderStyle
     (self : access Inst; style_P : access QtAda6.QtGui.QTextFrameFormat.BorderStyle.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setBottomBorderStyle");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if style_P /= null then style_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setBottomBorderStyle;
   procedure setBottomPadding (self : access Inst; padding_P : float) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setBottomPadding");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (padding_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setBottomPadding;
   procedure setLeftBorder (self : access Inst; width_P : float) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setLeftBorder");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (width_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setLeftBorder;
   procedure setLeftBorderBrush
     (self    : access Inst;
      brush_P : UNION_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setLeftBorderBrush");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if brush_P /= null then brush_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setLeftBorderBrush;
   procedure setLeftBorderStyle
     (self : access Inst; style_P : access QtAda6.QtGui.QTextFrameFormat.BorderStyle.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setLeftBorderStyle");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if style_P /= null then style_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setLeftBorderStyle;
   procedure setLeftPadding (self : access Inst; padding_P : float) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setLeftPadding");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (padding_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setLeftPadding;
   procedure setPadding (self : access Inst; padding_P : float) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPadding");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (padding_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPadding;
   procedure setRightBorder (self : access Inst; width_P : float) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setRightBorder");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (width_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setRightBorder;
   procedure setRightBorderBrush
     (self    : access Inst;
      brush_P : UNION_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setRightBorderBrush");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if brush_P /= null then brush_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setRightBorderBrush;
   procedure setRightBorderStyle
     (self : access Inst; style_P : access QtAda6.QtGui.QTextFrameFormat.BorderStyle.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setRightBorderStyle");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if style_P /= null then style_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setRightBorderStyle;
   procedure setRightPadding (self : access Inst; padding_P : float) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setRightPadding");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (padding_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setRightPadding;
   procedure setTopBorder (self : access Inst; width_P : float) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setTopBorder");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (width_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setTopBorder;
   procedure setTopBorderBrush
     (self    : access Inst;
      brush_P : UNION_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setTopBorderBrush");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if brush_P /= null then brush_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setTopBorderBrush;
   procedure setTopBorderStyle
     (self : access Inst; style_P : access QtAda6.QtGui.QTextFrameFormat.BorderStyle.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setTopBorderStyle");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if style_P /= null then style_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setTopBorderStyle;
   procedure setTopPadding (self : access Inst; padding_P : float) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setTopPadding");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (padding_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setTopPadding;
   function topBorder (self : access Inst) return float is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "topBorder");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Float_AsDouble (Result);
   end topBorder;
   function topBorderBrush (self : access Inst) return access QtAda6.QtGui.QBrush.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QBrush.Class := new QtAda6.QtGui.QBrush.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "topBorderBrush");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end topBorderBrush;
   function topBorderStyle (self : access Inst) return access QtAda6.QtGui.QTextFrameFormat.BorderStyle.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QTextFrameFormat.BorderStyle.Class :=
        new QtAda6.QtGui.QTextFrameFormat.BorderStyle.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "topBorderStyle");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end topBorderStyle;
   function topPadding (self : access Inst) return float is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "topPadding");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Float_AsDouble (Result);
   end topPadding;
end QtAda6.QtGui.QTextTableCellFormat;
