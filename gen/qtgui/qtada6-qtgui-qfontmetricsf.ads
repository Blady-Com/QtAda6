-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qfontmetricsf.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtGui.QFontMetrics;
limited with QtAda6.QtGui.QFont;
limited with QtAda6.QtGui.QPaintDevice;
limited with QtAda6.QtCore.QRectF;
limited with QtAda6.QtCore.QRect;
limited with QtAda6.QtGui.QTextOption;
limited with QtAda6.QtCore.Qt.AlignmentFlag;
limited with QtAda6.QtCore.Qt.TextElideMode;
limited with QtAda6.QtCore.QSizeF;
package QtAda6.QtGui.QFontMetricsF is
   type Union_QtAda6_QtGui_QFontMetricsF_QtAda6_QtGui_QFontMetrics is access Any;
   type Union_QtAda6_QtGui_QFont_str_Sequence_str is access Any;
   type Union_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect is access Any;
   type Union_QtAda6_QtGui_QTextOption_QtAda6_QtCore_Qt_AlignmentFlag is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create (arg_1_P : access QtAda6.QtGui.QFontMetrics.Inst'Class) return Class;
   function Create (arg_1_P : Union_QtAda6_QtGui_QFontMetricsF_QtAda6_QtGui_QFontMetrics) return Class;
   function Create (font_P : Union_QtAda6_QtGui_QFont_str_Sequence_str) return Class;
   function Create
     (font_P : Union_QtAda6_QtGui_QFont_str_Sequence_str; pd_P : access QtAda6.QtGui.QPaintDevice.Inst'Class)
      return Class;
   procedure U_copy_U;
   function ascent (self : access Inst) return float;
   function averageCharWidth (self : access Inst) return float;
   function boundingRect
     (self       : access Inst; r_P : Union_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect; flags_P : int; string_P : str;
      tabstops_P : int; tabarray_P : Object) return access QtAda6.QtCore.QRectF.Inst'Class;
   function boundingRect (self : access Inst; string_P : str) return access QtAda6.QtCore.QRectF.Inst'Class;
   function boundingRect
     (self : access Inst; text_P : str; textOption_P : Union_QtAda6_QtGui_QTextOption_QtAda6_QtCore_Qt_AlignmentFlag)
      return access QtAda6.QtCore.QRectF.Inst'Class;
   function boundingRectChar (self : access Inst; arg_1_P : int) return access QtAda6.QtCore.QRectF.Inst'Class;
   function capHeight (self : access Inst) return float;
   function descent (self : access Inst) return float;
   function elidedText
     (self    : access Inst; text_P : str; mode_P : access QtAda6.QtCore.Qt.TextElideMode.Inst'Class; width_P : float;
      flags_P : int) return str;
   function fontDpi (self : access Inst) return float;
   function height (self : access Inst) return float;
   function horizontalAdvance (self : access Inst; string_P : str; length_P : int) return float;
   function horizontalAdvance
     (self : access Inst; string_P : str; textOption_P : Union_QtAda6_QtGui_QTextOption_QtAda6_QtCore_Qt_AlignmentFlag)
      return float;
   function horizontalAdvanceChar (self : access Inst; arg_1_P : int) return float;
   function inFont (self : access Inst; arg_1_P : str) return bool;
   function inFontUcs4 (self : access Inst; ucs4_P : int) return bool;
   function leading (self : access Inst) return float;
   function leftBearing (self : access Inst; arg_1_P : str) return float;
   function lineSpacing (self : access Inst) return float;
   function lineWidth (self : access Inst) return float;
   function maxWidth (self : access Inst) return float;
   function minLeftBearing (self : access Inst) return float;
   function minRightBearing (self : access Inst) return float;
   function overlinePos (self : access Inst) return float;
   function rightBearing (self : access Inst; arg_1_P : str) return float;
   function size
     (self : access Inst; flags_P : int; str_P : str; tabstops_P : int; tabarray_P : Object)
      return access QtAda6.QtCore.QSizeF.Inst'Class;
   function strikeOutPos (self : access Inst) return float;
   procedure swap (self : access Inst; other_P : Union_QtAda6_QtGui_QFontMetricsF_QtAda6_QtGui_QFontMetrics);
   function tightBoundingRect (self : access Inst; text_P : str) return access QtAda6.QtCore.QRectF.Inst'Class;
   function tightBoundingRect
     (self : access Inst; text_P : str; textOption_P : Union_QtAda6_QtGui_QTextOption_QtAda6_QtCore_Qt_AlignmentFlag)
      return access QtAda6.QtCore.QRectF.Inst'Class;
   function underlinePos (self : access Inst) return float;
   function xHeight (self : access Inst) return float;
end QtAda6.QtGui.QFontMetricsF;
