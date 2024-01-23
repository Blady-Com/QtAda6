-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qtextlayout.adb
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
with QtAda6.QtGui.QTextBlock;
with QtAda6.QtGui.QFont;
with QtAda6.QtGui.QPaintDevice;
with QtAda6.QtCore.QRectF;
with QtAda6.QtGui.QTextLine;
with QtAda6.QtCore.Qt.CursorMoveStyle;
with QtAda6.QtGui.QPainter;
with QtAda6.QtCore.QPointF;
with QtAda6.QtCore.QPoint;
with QtAda6.QtGui.QPainterPath.Element;
with QtAda6.QtGui.QTextLayout.FormatRange;
with QtAda6.QtCore.QRect;
with QtAda6.QtGui.QGlyphRun;
with QtAda6.QtGui.QTextLayout.CursorMode;
with QtAda6.QtGui.QRawFont;
with QtAda6.QtGui.QTextOption;
with QtAda6.QtCore.Qt.AlignmentFlag;
package body QtAda6.QtGui.QTextLayout is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextLayout");
      Args  := Tuple_New (0);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (b_P : access QtAda6.QtGui.QTextBlock.Inst'Class) return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextLayout");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if b_P /= null then b_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (text_P : str) return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextLayout");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (text_P));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create
     (text_P        : str; font_P : UNION_QtAda6_QtGui_QFontstrSEQUENCE_str;
      paintdevice_P : access QtAda6.QtGui.QPaintDevice.Inst'Class := null) return Class
   is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextLayout");
      Args  := Tuple_New (3);
      Tuple_SetItem (Args, 0, Unicode_FromString (text_P));
      Tuple_SetItem (Args, 1, (if font_P /= null then font_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if paintdevice_P /= null then paintdevice_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   procedure beginLayout (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "beginLayout");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end beginLayout;
   function boundingRect (self : access Inst) return access QtAda6.QtCore.QRectF.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QRectF.Class := new QtAda6.QtCore.QRectF.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "boundingRect");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end boundingRect;
   function cacheEnabled (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "cacheEnabled");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end cacheEnabled;
   procedure clearFormats (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "clearFormats");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end clearFormats;
   procedure clearLayout (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "clearLayout");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end clearLayout;
   function createLine (self : access Inst) return access QtAda6.QtGui.QTextLine.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QTextLine.Class := new QtAda6.QtGui.QTextLine.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "createLine");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end createLine;
   function cursorMoveStyle (self : access Inst) return access QtAda6.QtCore.Qt.CursorMoveStyle.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.CursorMoveStyle.Class := new QtAda6.QtCore.Qt.CursorMoveStyle.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "cursorMoveStyle");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end cursorMoveStyle;
   procedure draw
     (self         : access Inst; p_P : access QtAda6.QtGui.QPainter.Inst'Class;
      pos_P        : UNION_QtAda6_QtCore_QPointFQtAda6_QtCore_QPointQtAda6_QtGui_QPainterPath_Element;
      selections_P : SEQUENCE_QtAda6_QtGui_QTextLayout_FormatRange := (2 .. 1 => <>);
      clip_P       : UNION_QtAda6_QtCore_QRectFQtAda6_QtCore_QRect := null)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "draw");
      List   := List_New (selections_P'Length);
      for ind in selections_P'Range loop
         List_SetItem
           (List, ssize_t (ind - selections_P'First),
            (if selections_P (ind) /= null then selections_P (ind).Python_Proxy else No_Value));
      end loop;
      Args := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if p_P /= null then p_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if pos_P /= null then pos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, List);
      Tuple_SetItem (Args, 3, (if clip_P /= null then clip_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end draw;
   procedure drawCursor
     (self  : access Inst; p_P : access QtAda6.QtGui.QPainter.Inst'Class;
      pos_P : UNION_QtAda6_QtCore_QPointFQtAda6_QtCore_QPointQtAda6_QtGui_QPainterPath_Element; cursorPosition_P : int)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawCursor");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if p_P /= null then p_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if pos_P /= null then pos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, Long_FromLong (cursorPosition_P));
      Result := Object_CallObject (Method, Args, True);
   end drawCursor;
   procedure drawCursor
     (self    : access Inst; p_P : access QtAda6.QtGui.QPainter.Inst'Class;
      pos_P : UNION_QtAda6_QtCore_QPointFQtAda6_QtCore_QPointQtAda6_QtGui_QPainterPath_Element; cursorPosition_P : int;
      width_P : int)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawCursor");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if p_P /= null then p_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if pos_P /= null then pos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, Long_FromLong (cursorPosition_P));
      Tuple_SetItem (Args, 3, Long_FromLong (width_P));
      Result := Object_CallObject (Method, Args, True);
   end drawCursor;
   procedure endLayout (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "endLayout");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end endLayout;
   function font (self : access Inst) return access QtAda6.QtGui.QFont.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QFont.Class := new QtAda6.QtGui.QFont.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "font");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end font;
   function formats (self : access Inst) return LIST_QtAda6_QtGui_QTextLayout_FormatRange is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "formats");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return (2 .. 1 => <>);
   end formats;
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
   function isValidCursorPosition (self : access Inst; pos_P : int) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isValidCursorPosition");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (pos_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isValidCursorPosition;
   function leftCursorPosition (self : access Inst; oldPos_P : int) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "leftCursorPosition");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (oldPos_P));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end leftCursorPosition;
   function lineAt (self : access Inst; i_P : int) return access QtAda6.QtGui.QTextLine.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QTextLine.Class := new QtAda6.QtGui.QTextLine.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "lineAt");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (i_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end lineAt;
   function lineCount (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "lineCount");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end lineCount;
   function lineForTextPosition (self : access Inst; pos_P : int) return access QtAda6.QtGui.QTextLine.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QTextLine.Class := new QtAda6.QtGui.QTextLine.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "lineForTextPosition");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (pos_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end lineForTextPosition;
   function maximumWidth (self : access Inst) return float is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "maximumWidth");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end maximumWidth;
   function minimumWidth (self : access Inst) return float is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "minimumWidth");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end minimumWidth;
   function nextCursorPosition
     (self : access Inst; oldPos_P : int; mode_P : access QtAda6.QtGui.QTextLayout.CursorMode.Inst'Class := null)
      return int
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "nextCursorPosition");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (oldPos_P));
      Tuple_SetItem (Args, 1, (if mode_P /= null then mode_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end nextCursorPosition;
   function position (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QPointF.Class := new QtAda6.QtCore.QPointF.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "position");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end position;
   function preeditAreaPosition (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "preeditAreaPosition");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end preeditAreaPosition;
   function preeditAreaText (self : access Inst) return str is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "preeditAreaText");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end preeditAreaText;
   function previousCursorPosition
     (self : access Inst; oldPos_P : int; mode_P : access QtAda6.QtGui.QTextLayout.CursorMode.Inst'Class := null)
      return int
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "previousCursorPosition");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (oldPos_P));
      Tuple_SetItem (Args, 1, (if mode_P /= null then mode_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end previousCursorPosition;
   function rightCursorPosition (self : access Inst; oldPos_P : int) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "rightCursorPosition");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (oldPos_P));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end rightCursorPosition;
   procedure setCacheEnabled (self : access Inst; enable_P : bool) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setCacheEnabled");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (enable_P));
      Result := Object_CallObject (Method, Args, True);
   end setCacheEnabled;
   procedure setCursorMoveStyle (self : access Inst; style_P : access QtAda6.QtCore.Qt.CursorMoveStyle.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setCursorMoveStyle");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if style_P /= null then style_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setCursorMoveStyle;
   procedure setFlags (self : access Inst; flags_P : int) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFlags");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (flags_P));
      Result := Object_CallObject (Method, Args, True);
   end setFlags;
   procedure setFont (self : access Inst; f_P : UNION_QtAda6_QtGui_QFontstrSEQUENCE_str) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFont");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if f_P /= null then f_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setFont;
   procedure setFormats (self : access Inst; overrides_P : SEQUENCE_QtAda6_QtGui_QTextLayout_FormatRange) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFormats");
      List   := List_New (overrides_P'Length);
      for ind in overrides_P'Range loop
         List_SetItem
           (List, ssize_t (ind - overrides_P'First),
            (if overrides_P (ind) /= null then overrides_P (ind).Python_Proxy else No_Value));
      end loop;
      Args := Tuple_New (1);
      Tuple_SetItem (Args, 0, List);
      Result := Object_CallObject (Method, Args, True);
   end setFormats;
   procedure setPosition
     (self : access Inst; p_P : UNION_QtAda6_QtCore_QPointFQtAda6_QtCore_QPointQtAda6_QtGui_QPainterPath_Element)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPosition");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if p_P /= null then p_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setPosition;
   procedure setPreeditArea (self : access Inst; position_P : int; text_P : str) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPreeditArea");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (position_P));
      Tuple_SetItem (Args, 1, Unicode_FromString (text_P));
      Result := Object_CallObject (Method, Args, True);
   end setPreeditArea;
   procedure setRawFont (self : access Inst; rawFont_P : access QtAda6.QtGui.QRawFont.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setRawFont");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if rawFont_P /= null then rawFont_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setRawFont;
   procedure setText (self : access Inst; string_P : str) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setText");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (string_P));
      Result := Object_CallObject (Method, Args, True);
   end setText;
   procedure setTextOption (self : access Inst; option_P : UNION_QtAda6_QtGui_QTextOptionQtAda6_QtCore_Qt_AlignmentFlag)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setTextOption");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if option_P /= null then option_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setTextOption;
   function text (self : access Inst) return str is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "text");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end text;
   function textOption (self : access Inst) return access QtAda6.QtGui.QTextOption.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QTextOption.Class := new QtAda6.QtGui.QTextOption.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "textOption");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end textOption;
end QtAda6.QtGui.QTextLayout;
