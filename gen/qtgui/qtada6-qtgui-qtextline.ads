-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qtextline.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtGui.QTextLine.Edge;
limited with QtAda6.QtGui.QPainter;
limited with QtAda6.QtCore.QPointF;
limited with QtAda6.QtCore.QPoint;
limited with QtAda6.QtGui.QPainterPath.Element;
limited with QtAda6.QtGui.QGlyphRun;
limited with QtAda6.QtCore.QRectF;
limited with QtAda6.QtGui.QTextLine.CursorPosition;
package QtAda6.QtGui.QTextLine is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   subtype LIST_QtAda6_QtGui_QGlyphRun is QtAda6.QtGui.QGlyphRun.Class_Array;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   procedure U_copy_U;
   function ascent (self : access Inst) return float;
   function cursorToX
     (self : access Inst; cursorPos_P : int; edge_P : access QtAda6.QtGui.QTextLine.Edge.Inst'Class := null)
      return access Object'Class;
   function descent (self : access Inst) return float;
   procedure draw
     (self       : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      position_P : access QtAda6.QtCore.QPointF.Inst'Class);
   procedure draw
     (self       : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      position_P : access QtAda6.QtCore.QPoint.Inst'Class);
   procedure draw
     (self       : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      position_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class);
   function glyphRuns (self : access Inst; from_U_P : int := 0; length_P : int := 0) return LIST_QtAda6_QtGui_QGlyphRun;
   function height (self : access Inst) return float;
   function horizontalAdvance (self : access Inst) return float;
   function isValid (self : access Inst) return bool;
   function leading (self : access Inst) return float;
   function leadingIncluded (self : access Inst) return bool;
   function lineNumber (self : access Inst) return int;
   function naturalTextRect (self : access Inst) return access QtAda6.QtCore.QRectF.Inst'Class;
   function naturalTextWidth (self : access Inst) return float;
   function position (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class;
   function rect (self : access Inst) return access QtAda6.QtCore.QRectF.Inst'Class;
   procedure setLeadingIncluded (self : access Inst; included_P : bool);
   procedure setLineWidth (self : access Inst; width_P : float);
   procedure setNumColumns (self : access Inst; columns_P : int);
   procedure setNumColumns (self : access Inst; columns_P : int; alignmentWidth_P : float);
   procedure setPosition (self : access Inst; pos_P : access QtAda6.QtCore.QPointF.Inst'Class);
   procedure setPosition (self : access Inst; pos_P : access QtAda6.QtCore.QPoint.Inst'Class);
   procedure setPosition (self : access Inst; pos_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class);
   function textLength (self : access Inst) return int;
   function textStart (self : access Inst) return int;
   function width (self : access Inst) return float;
   function x (self : access Inst) return float;
   function xToCursor
     (self : access Inst; x_P : float; edge_P : access QtAda6.QtGui.QTextLine.CursorPosition.Inst'Class := null)
      return int;
   function y (self : access Inst) return float;
end QtAda6.QtGui.QTextLine;
