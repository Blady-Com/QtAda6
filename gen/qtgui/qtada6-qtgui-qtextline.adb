-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qtextline.adb
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
with QtAda6.QtGui.QTextLine.Edge;
with QtAda6.QtGui.QPainter;
with QtAda6.QtCore.QPointF;
with QtAda6.QtCore.QPoint;
with QtAda6.QtGui.QPainterPath.Element;
with QtAda6.QtGui.QGlyphRun;
with QtAda6.QtCore.QRectF;
with QtAda6.QtGui.QTextLine.CursorPosition;
package body QtAda6.QtGui.QTextLine is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextLine");
      Args  := Tuple_New (0);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   procedure U_copy_U is
      Class, Method, Args, List, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextLine");
      Method := Object_GetAttrString (Class, "__copy__");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end U_copy_U;
   function ascent (self : access Inst) return float is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "ascent");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end ascent;
   function cursorToX
     (self : access Inst; cursorPos_P : int; edge_P : access QtAda6.QtGui.QTextLine.Edge.Inst'Class := null)
      return access Object'Class
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "cursorToX");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (cursorPos_P));
      Tuple_SetItem (Args, 1, (if edge_P /= null then edge_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return null;
   end cursorToX;
   function descent (self : access Inst) return float is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "descent");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end descent;
   procedure draw
     (self       : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      position_P : UNION_QtAda6_QtCore_QPointFQtAda6_QtCore_QPointQtAda6_QtGui_QPainterPath_Element)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "draw");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if painter_P /= null then painter_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if position_P /= null then position_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end draw;
   function glyphRuns (self : access Inst; from_U_P : int := 0; length_P : int := 0) return LIST_QtAda6_QtGui_QGlyphRun
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glyphRuns");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (from_U_P));
      Tuple_SetItem (Args, 1, Long_FromLong (length_P));
      Result := Object_CallObject (Method, Args, True);
      return (2 .. 1 => <>);
   end glyphRuns;
   function height (self : access Inst) return float is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "height");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end height;
   function horizontalAdvance (self : access Inst) return float is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "horizontalAdvance");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end horizontalAdvance;
   function isValid (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isValid");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isValid;
   function leading (self : access Inst) return float is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "leading");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end leading;
   function leadingIncluded (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "leadingIncluded");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end leadingIncluded;
   function lineNumber (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "lineNumber");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end lineNumber;
   function naturalTextRect (self : access Inst) return access QtAda6.QtCore.QRectF.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QRectF.Class := new QtAda6.QtCore.QRectF.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "naturalTextRect");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end naturalTextRect;
   function naturalTextWidth (self : access Inst) return float is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "naturalTextWidth");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end naturalTextWidth;
   function position_F (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QPointF.Class := new QtAda6.QtCore.QPointF.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "position");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end position_F;
   function rect (self : access Inst) return access QtAda6.QtCore.QRectF.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QRectF.Class := new QtAda6.QtCore.QRectF.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "rect");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end rect;
   procedure setLeadingIncluded (self : access Inst; included_P : bool) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setLeadingIncluded");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (included_P));
      Result := Object_CallObject (Method, Args, True);
   end setLeadingIncluded;
   procedure setLineWidth (self : access Inst; width_P : float) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setLineWidth");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (width_P));
      Result := Object_CallObject (Method, Args, True);
   end setLineWidth;
   procedure setNumColumns (self : access Inst; columns_P : int) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setNumColumns");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (columns_P));
      Result := Object_CallObject (Method, Args, True);
   end setNumColumns;
   procedure setNumColumns (self : access Inst; columns_P : int; alignmentWidth_P : float) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setNumColumns");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (columns_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (alignmentWidth_P));
      Result := Object_CallObject (Method, Args, True);
   end setNumColumns;
   procedure setPosition
     (self : access Inst; pos_P : UNION_QtAda6_QtCore_QPointFQtAda6_QtCore_QPointQtAda6_QtGui_QPainterPath_Element)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPosition");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if pos_P /= null then pos_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setPosition;
   function textLength (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "textLength");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end textLength;
   function textStart (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "textStart");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end textStart;
   function width (self : access Inst) return float is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "width");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end width;
   function x (self : access Inst) return float is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "x");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end x;
   function xToCursor
     (self : access Inst; x_P : float; edge_P : access QtAda6.QtGui.QTextLine.CursorPosition.Inst'Class := null)
      return int
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "xToCursor");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Float_FromDouble (x_P));
      Tuple_SetItem (Args, 1, (if edge_P /= null then edge_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end xToCursor;
   function y (self : access Inst) return float is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "y");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end y;
end QtAda6.QtGui.QTextLine;
