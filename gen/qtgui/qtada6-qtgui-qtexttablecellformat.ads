-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qtexttablecellformat.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtGui.QTextFormat;
limited with QtAda6.QtGui.QBrush;
limited with QtAda6.QtGui.QTextFrameFormat.BorderStyle;
with QtAda6.QtGui.QTextCharFormat;
package QtAda6.QtGui.QTextTableCellFormat is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtGui.QTextCharFormat.Inst with null record;
   type UNION_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap is
     new Any;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (QTextTableCellFormat_P : access QtAda6.QtGui.QTextTableCellFormat.Inst'Class) return Class;
   function Create (fmt_P : access QtAda6.QtGui.QTextFormat.Inst'Class) return Class;
   procedure U_copy_U;
   function bottomBorder (self : access Inst) return float;
   function bottomBorderBrush (self : access Inst) return access QtAda6.QtGui.QBrush.Inst'Class;
   function bottomBorderStyle (self : access Inst) return access QtAda6.QtGui.QTextFrameFormat.BorderStyle.Inst'Class;
   function bottomPadding (self : access Inst) return float;
   function isValid (self : access Inst) return bool;
   function leftBorder (self : access Inst) return float;
   function leftBorderBrush (self : access Inst) return access QtAda6.QtGui.QBrush.Inst'Class;
   function leftBorderStyle (self : access Inst) return access QtAda6.QtGui.QTextFrameFormat.BorderStyle.Inst'Class;
   function leftPadding (self : access Inst) return float;
   function rightBorder (self : access Inst) return float;
   function rightBorderBrush (self : access Inst) return access QtAda6.QtGui.QBrush.Inst'Class;
   function rightBorderStyle (self : access Inst) return access QtAda6.QtGui.QTextFrameFormat.BorderStyle.Inst'Class;
   function rightPadding (self : access Inst) return float;
   procedure setBorder (self : access Inst; width_P : float);
   procedure setBorderBrush
     (self    : access Inst;
      brush_P : UNION_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap);
   procedure setBorderStyle (self : access Inst; style_P : access QtAda6.QtGui.QTextFrameFormat.BorderStyle.Inst'Class);
   procedure setBottomBorder (self : access Inst; width_P : float);
   procedure setBottomBorderBrush
     (self    : access Inst;
      brush_P : UNION_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap);
   procedure setBottomBorderStyle
     (self : access Inst; style_P : access QtAda6.QtGui.QTextFrameFormat.BorderStyle.Inst'Class);
   procedure setBottomPadding (self : access Inst; padding_P : float);
   procedure setLeftBorder (self : access Inst; width_P : float);
   procedure setLeftBorderBrush
     (self    : access Inst;
      brush_P : UNION_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap);
   procedure setLeftBorderStyle
     (self : access Inst; style_P : access QtAda6.QtGui.QTextFrameFormat.BorderStyle.Inst'Class);
   procedure setLeftPadding (self : access Inst; padding_P : float);
   procedure setPadding (self : access Inst; padding_P : float);
   procedure setRightBorder (self : access Inst; width_P : float);
   procedure setRightBorderBrush
     (self    : access Inst;
      brush_P : UNION_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap);
   procedure setRightBorderStyle
     (self : access Inst; style_P : access QtAda6.QtGui.QTextFrameFormat.BorderStyle.Inst'Class);
   procedure setRightPadding (self : access Inst; padding_P : float);
   procedure setTopBorder (self : access Inst; width_P : float);
   procedure setTopBorderBrush
     (self    : access Inst;
      brush_P : UNION_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap);
   procedure setTopBorderStyle
     (self : access Inst; style_P : access QtAda6.QtGui.QTextFrameFormat.BorderStyle.Inst'Class);
   procedure setTopPadding (self : access Inst; padding_P : float);
   function topBorder (self : access Inst) return float;
   function topBorderBrush (self : access Inst) return access QtAda6.QtGui.QBrush.Inst'Class;
   function topBorderStyle (self : access Inst) return access QtAda6.QtGui.QTextFrameFormat.BorderStyle.Inst'Class;
   function topPadding (self : access Inst) return float;
end QtAda6.QtGui.QTextTableCellFormat;
