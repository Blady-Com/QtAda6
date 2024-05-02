-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qtextframeformat.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtGui.QBrush;
limited with QtAda6.QtGui.QTextFrameFormat.BorderStyle;
limited with QtAda6.QtGui.QTextLength;
limited with QtAda6.QtGui.QTextFormat.PageBreakFlag;
limited with QtAda6.QtGui.QTextFrameFormat.Position;
limited with QtAda6.QtCore.Qt.BrushStyle;
limited with QtAda6.QtCore.Qt.GlobalColor;
limited with QtAda6.QtGui.QColor;
limited with QtAda6.QtGui.QGradient;
limited with QtAda6.QtGui.QImage;
limited with QtAda6.QtGui.QPixmap;
with QtAda6.QtGui.QTextFormat;
package QtAda6.QtGui.QTextFrameFormat is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtGui.QTextFormat.Inst with null record;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (QTextFrameFormat_P : access QtAda6.QtGui.QTextFrameFormat.Inst'Class) return Class;
   function Create (fmt_P : access QtAda6.QtGui.QTextFormat.Inst'Class) return Class;
   procedure U_copy_U;
   function border (self : access Inst) return float;
   function borderBrush (self : access Inst) return access QtAda6.QtGui.QBrush.Inst'Class;
   function borderStyle_F (self : access Inst) return access QtAda6.QtGui.QTextFrameFormat.BorderStyle.Inst'Class;
   function bottomMargin (self : access Inst) return float;
   function height (self : access Inst) return access QtAda6.QtGui.QTextLength.Inst'Class;
   function isValid (self : access Inst) return bool;
   function leftMargin (self : access Inst) return float;
   function margin (self : access Inst) return float;
   function padding (self : access Inst) return float;
   function pageBreakPolicy (self : access Inst) return access QtAda6.QtGui.QTextFormat.PageBreakFlag.Inst'Class;
   function position_F (self : access Inst) return access QtAda6.QtGui.QTextFrameFormat.Position.Inst'Class;
   function rightMargin (self : access Inst) return float;
   procedure setBorder (self : access Inst; border_P : float);
   procedure setBorderBrush (self : access Inst; brush_P : access QtAda6.QtGui.QBrush.Inst'Class);
   procedure setBorderBrush (self : access Inst; brush_P : access QtAda6.QtCore.Qt.BrushStyle.Inst'Class);
   procedure setBorderBrush (self : access Inst; brush_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class);
   procedure setBorderBrush (self : access Inst; brush_P : access QtAda6.QtGui.QColor.Inst'Class);
   procedure setBorderBrush (self : access Inst; brush_P : access QtAda6.QtGui.QGradient.Inst'Class);
   procedure setBorderBrush (self : access Inst; brush_P : access QtAda6.QtGui.QImage.Inst'Class);
   procedure setBorderBrush (self : access Inst; brush_P : access QtAda6.QtGui.QPixmap.Inst'Class);
   procedure setBorderStyle (self : access Inst; style_P : access QtAda6.QtGui.QTextFrameFormat.BorderStyle.Inst'Class);
   procedure setBottomMargin (self : access Inst; margin_P : float);
   procedure setHeight (self : access Inst; height_P : access QtAda6.QtGui.QTextLength.Inst'Class);
   procedure setHeight (self : access Inst; height_P : float);
   procedure setLeftMargin (self : access Inst; margin_P : float);
   procedure setMargin (self : access Inst; margin_P : float);
   procedure setPadding (self : access Inst; padding_P : float);
   procedure setPageBreakPolicy
     (self : access Inst; flags_P : access QtAda6.QtGui.QTextFormat.PageBreakFlag.Inst'Class);
   procedure setPosition (self : access Inst; f_P : access QtAda6.QtGui.QTextFrameFormat.Position.Inst'Class);
   procedure setRightMargin (self : access Inst; margin_P : float);
   procedure setTopMargin (self : access Inst; margin_P : float);
   procedure setWidth (self : access Inst; length_P : access QtAda6.QtGui.QTextLength.Inst'Class);
   procedure setWidth (self : access Inst; width_P : float);
   function topMargin (self : access Inst) return float;
   function width (self : access Inst) return access QtAda6.QtGui.QTextLength.Inst'Class;
end QtAda6.QtGui.QTextFrameFormat;
