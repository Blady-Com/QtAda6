-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qtextlayout.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtGui.QTextBlock;
limited with QtAda6.QtGui.QPaintDevice;
limited with QtAda6.QtCore.QRectF;
limited with QtAda6.QtGui.QTextLine;
limited with QtAda6.QtCore.Qt.CursorMoveStyle;
limited with QtAda6.QtGui.QPainter;
limited with QtAda6.QtGui.QTextLayout.FormatRange;
limited with QtAda6.QtGui.QFont;
limited with QtAda6.QtGui.QGlyphRun;
limited with QtAda6.QtGui.QTextLayout.CursorMode;
limited with QtAda6.QtCore.QPointF;
limited with QtAda6.QtGui.QRawFont;
limited with QtAda6.QtGui.QTextOption;
package QtAda6.QtGui.QTextLayout is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   type UNION_QtAda6_QtGui_QFont_str_SEQUENCE_str is new Any;
   type UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element is new Any;
   subtype SEQUENCE_QtAda6_QtGui_QTextLayout_FormatRange is QtAda6.QtGui.QTextLayout.FormatRange.Class_Array;
   type UNION_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect is new Any;
   subtype LIST_QtAda6_QtGui_QTextLayout_FormatRange is QtAda6.QtGui.QTextLayout.FormatRange.Class_Array;
   subtype LIST_QtAda6_QtGui_QGlyphRun is QtAda6.QtGui.QGlyphRun.Class_Array;
   type UNION_QtAda6_QtGui_QTextOption_QtAda6_QtCore_Qt_AlignmentFlag is new Any;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (b_P : access QtAda6.QtGui.QTextBlock.Inst'Class) return Class;
   function Create (text_P : str) return Class;
   function Create
     (text_P        : str; font_P : UNION_QtAda6_QtGui_QFont_str_SEQUENCE_str;
      paintdevice_P : access QtAda6.QtGui.QPaintDevice.Inst'Class := null) return Class;
   procedure beginLayout (self : access Inst);
   function boundingRect (self : access Inst) return access QtAda6.QtCore.QRectF.Inst'Class;
   function cacheEnabled (self : access Inst) return bool;
   procedure clearFormats (self : access Inst);
   procedure clearLayout (self : access Inst);
   function createLine (self : access Inst) return access QtAda6.QtGui.QTextLine.Inst'Class;
   function cursorMoveStyle (self : access Inst) return access QtAda6.QtCore.Qt.CursorMoveStyle.Inst'Class;
   procedure draw
     (self         : access Inst; p_P : access QtAda6.QtGui.QPainter.Inst'Class;
      pos_P        : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element;
      selections_P : SEQUENCE_QtAda6_QtGui_QTextLayout_FormatRange; --  := (2 .. 1 => <>);
      clip_P       : UNION_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect := null);
   procedure drawCursor
     (self             : access Inst; p_P : access QtAda6.QtGui.QPainter.Inst'Class;
      pos_P            : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element;
      cursorPosition_P : int);
   procedure drawCursor
     (self             : access Inst; p_P : access QtAda6.QtGui.QPainter.Inst'Class;
      pos_P            : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element;
      cursorPosition_P : int; width_P : int);
   procedure endLayout (self : access Inst);
   function font (self : access Inst) return access QtAda6.QtGui.QFont.Inst'Class;
   function formats (self : access Inst) return LIST_QtAda6_QtGui_QTextLayout_FormatRange;
   function glyphRuns (self : access Inst; from_U_P : int := 0; length_P : int := 0) return LIST_QtAda6_QtGui_QGlyphRun;
   function isValidCursorPosition (self : access Inst; pos_P : int) return bool;
   function leftCursorPosition (self : access Inst; oldPos_P : int) return int;
   function lineAt (self : access Inst; i_P : int) return access QtAda6.QtGui.QTextLine.Inst'Class;
   function lineCount (self : access Inst) return int;
   function lineForTextPosition (self : access Inst; pos_P : int) return access QtAda6.QtGui.QTextLine.Inst'Class;
   function maximumWidth (self : access Inst) return float;
   function minimumWidth (self : access Inst) return float;
   function nextCursorPosition
     (self : access Inst; oldPos_P : int; mode_P : access QtAda6.QtGui.QTextLayout.CursorMode.Inst'Class := null)
      return int;
   function position (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class;
   function preeditAreaPosition (self : access Inst) return int;
   function preeditAreaText (self : access Inst) return str;
   function previousCursorPosition
     (self : access Inst; oldPos_P : int; mode_P : access QtAda6.QtGui.QTextLayout.CursorMode.Inst'Class := null)
      return int;
   function rightCursorPosition (self : access Inst; oldPos_P : int) return int;
   procedure setCacheEnabled (self : access Inst; enable_P : bool);
   procedure setCursorMoveStyle (self : access Inst; style_P : access QtAda6.QtCore.Qt.CursorMoveStyle.Inst'Class);
   procedure setFlags (self : access Inst; flags_P : int);
   procedure setFont (self : access Inst; f_P : UNION_QtAda6_QtGui_QFont_str_SEQUENCE_str);
   procedure setFormats (self : access Inst; overrides_P : SEQUENCE_QtAda6_QtGui_QTextLayout_FormatRange);
   procedure setPosition
     (self : access Inst; p_P : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element);
   procedure setPreeditArea (self : access Inst; position_P : int; text_P : str);
   procedure setRawFont (self : access Inst; rawFont_P : access QtAda6.QtGui.QRawFont.Inst'Class);
   procedure setText (self : access Inst; string_P : str);
   procedure setTextOption
     (self : access Inst; option_P : UNION_QtAda6_QtGui_QTextOption_QtAda6_QtCore_Qt_AlignmentFlag);
   function text (self : access Inst) return str;
   function textOption (self : access Inst) return access QtAda6.QtGui.QTextOption.Inst'Class;
end QtAda6.QtGui.QTextLayout;
