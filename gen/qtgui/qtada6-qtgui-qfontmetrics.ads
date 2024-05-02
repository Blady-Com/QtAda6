-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qfontmetrics.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtGui.QFont;
limited with QtAda6.QtGui.QPaintDevice;
limited with QtAda6.QtCore.QRect;
limited with QtAda6.QtGui.QTextOption;
limited with QtAda6.QtCore.Qt.AlignmentFlag;
limited with QtAda6.QtCore.Qt.TextElideMode;
limited with QtAda6.QtCore.QSize;
package QtAda6.QtGui.QFontMetrics is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   type SEQUENCE_str is array (Positive range <>) of str;
   procedure Finalize (Self : in out Class);
   function Create (arg_1_P : access QtAda6.QtGui.QFontMetrics.Inst'Class) return Class;
   function Create (arg_1_P : access QtAda6.QtGui.QFont.Inst'Class) return Class;
   function Create (arg_1_P : str) return Class;
   function Create (arg_1_P : SEQUENCE_str) return Class;
   function Create
     (font_P : access QtAda6.QtGui.QFont.Inst'Class; pd_P : access QtAda6.QtGui.QPaintDevice.Inst'Class) return Class;
   function Create (font_P : str; pd_P : access QtAda6.QtGui.QPaintDevice.Inst'Class) return Class;
   function Create (font_P : SEQUENCE_str; pd_P : access QtAda6.QtGui.QPaintDevice.Inst'Class) return Class;
   procedure U_copy_U;
   function ascent (self : access Inst) return int;
   function averageCharWidth (self : access Inst) return int;
   function boundingRect
     (self : access Inst; r_P : access QtAda6.QtCore.QRect.Inst'Class; flags_P : int; text_P : str; tabstops_P : int;
      tabarray_P : access Object'Class := null) return access QtAda6.QtCore.QRect.Inst'Class;
   function boundingRect (self : access Inst; text_P : str) return access QtAda6.QtCore.QRect.Inst'Class;
   function boundingRect
     (self : access Inst; text_P : str; textOption_P : access QtAda6.QtGui.QTextOption.Inst'Class)
      return access QtAda6.QtCore.QRect.Inst'Class;
   function boundingRect
     (self : access Inst; text_P : str; textOption_P : access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class)
      return access QtAda6.QtCore.QRect.Inst'Class;
   function boundingRect
     (self : access Inst; x_P : int; y_P : int; w_P : int; h_P : int; flags_P : int; text_P : str; tabstops_P : int;
      tabarray_P : access Object'Class := null) return access QtAda6.QtCore.QRect.Inst'Class;
   function boundingRectChar (self : access Inst; arg_1_P : int) return access QtAda6.QtCore.QRect.Inst'Class;
   function capHeight (self : access Inst) return int;
   function descent (self : access Inst) return int;
   function elidedText
     (self    : access Inst; text_P : str; mode_P : access QtAda6.QtCore.Qt.TextElideMode.Inst'Class; width_P : int;
      flags_P : int := 0) return str;
   function fontDpi (self : access Inst) return float;
   function height (self : access Inst) return int;
   function horizontalAdvance (self : access Inst; arg_1_P : str; len_P : int := 0) return int;
   function horizontalAdvance
     (self : access Inst; arg_1_P : str; textOption_P : access QtAda6.QtGui.QTextOption.Inst'Class) return int;
   function horizontalAdvance
     (self : access Inst; arg_1_P : str; textOption_P : access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class) return int;
   function horizontalAdvanceChar (self : access Inst; arg_1_P : int) return int;
   function inFont (self : access Inst; arg_1_P : str) return bool;
   function inFontUcs4 (self : access Inst; ucs4_P : int) return bool;
   function leading (self : access Inst) return int;
   function leftBearing (self : access Inst; arg_1_P : str) return int;
   function lineSpacing (self : access Inst) return int;
   function lineWidth (self : access Inst) return int;
   function maxWidth (self : access Inst) return int;
   function minLeftBearing (self : access Inst) return int;
   function minRightBearing (self : access Inst) return int;
   function overlinePos (self : access Inst) return int;
   function rightBearing (self : access Inst; arg_1_P : str) return int;
   function size
     (self : access Inst; flags_P : int; str_P : str; tabstops_P : int; tabarray_P : access Object'Class := null)
      return access QtAda6.QtCore.QSize.Inst'Class;
   function strikeOutPos (self : access Inst) return int;
   procedure swap (self : access Inst; other_P : access QtAda6.QtGui.QFontMetrics.Inst'Class);
   function tightBoundingRect (self : access Inst; text_P : str) return access QtAda6.QtCore.QRect.Inst'Class;
   function tightBoundingRect
     (self : access Inst; text_P : str; textOption_P : access QtAda6.QtGui.QTextOption.Inst'Class)
      return access QtAda6.QtCore.QRect.Inst'Class;
   function tightBoundingRect
     (self : access Inst; text_P : str; textOption_P : access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class)
      return access QtAda6.QtCore.QRect.Inst'Class;
   function underlinePos (self : access Inst) return int;
   function xHeight (self : access Inst) return int;
end QtAda6.QtGui.QFontMetrics;
