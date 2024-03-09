-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qtextcharformat.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtGui.QFont;
limited with QtAda6.QtGui.QFont.Capitalization;
limited with QtAda6.QtGui.QFont.HintingPreference;
limited with QtAda6.QtGui.QFont.SpacingType;
limited with QtAda6.QtGui.QFont.StyleHint;
limited with QtAda6.QtGui.QFont.StyleStrategy;
limited with QtAda6.QtGui.QTextCharFormat.FontPropertiesInheritanceBehavior;
limited with QtAda6.QtGui.QTextCharFormat.UnderlineStyle;
limited with QtAda6.QtGui.QTextCharFormat.VerticalAlignment;
limited with QtAda6.QtGui.QPen;
limited with QtAda6.QtGui.QColor;
with QtAda6.QtGui.QTextFormat;
package QtAda6.QtGui.QTextCharFormat is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtGui.QTextFormat.Inst with null record;
   type LIST_str is array (Positive range <>) of str;
   type SEQUENCE_str is array (Positive range <>) of str;
   type UNION_QtAda6_QtGui_QFont_str_SEQUENCE_str is new Any;
   type UNION_QtAda6_QtGui_QPen_QtAda6_QtCore_Qt_PenStyle_QtAda6_QtGui_QColor is new Any;
   type UNION_QtAda6_QtGui_QColor_QtAda6_QtGui_QRgba64_Any_QtAda6_QtCore_Qt_GlobalColor_str_int is new Any;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (QTextCharFormat_P : access QtAda6.QtGui.QTextCharFormat.Inst'Class) return Class;
   function Create (fmt_P : access QtAda6.QtGui.QTextFormat.Inst'Class) return Class;
   procedure U_copy_U;
   function anchorHref (self : access Inst) return str;
   function anchorNames (self : access Inst) return LIST_str;
   function baselineOffset (self : access Inst) return float;
   function font (self : access Inst) return access QtAda6.QtGui.QFont.Inst'Class;
   function fontCapitalization (self : access Inst) return access QtAda6.QtGui.QFont.Capitalization.Inst'Class;
   function fontFamilies (self : access Inst) return Any;
   function fontFamily (self : access Inst) return str;
   function fontFixedPitch (self : access Inst) return bool;
   function fontHintingPreference (self : access Inst) return access QtAda6.QtGui.QFont.HintingPreference.Inst'Class;
   function fontItalic (self : access Inst) return bool;
   function fontKerning (self : access Inst) return bool;
   function fontLetterSpacing (self : access Inst) return float;
   function fontLetterSpacingType (self : access Inst) return access QtAda6.QtGui.QFont.SpacingType.Inst'Class;
   function fontOverline (self : access Inst) return bool;
   function fontPointSize (self : access Inst) return float;
   function fontStretch (self : access Inst) return int;
   function fontStrikeOut (self : access Inst) return bool;
   function fontStyleHint (self : access Inst) return access QtAda6.QtGui.QFont.StyleHint.Inst'Class;
   function fontStyleName (self : access Inst) return Any;
   function fontStyleStrategy (self : access Inst) return access QtAda6.QtGui.QFont.StyleStrategy.Inst'Class;
   function fontUnderline (self : access Inst) return bool;
   function fontWeight (self : access Inst) return int;
   function fontWordSpacing (self : access Inst) return float;
   function isAnchor (self : access Inst) return bool;
   function isValid (self : access Inst) return bool;
   procedure setAnchor (self : access Inst; anchor_P : bool);
   procedure setAnchorHref (self : access Inst; value_P : str);
   procedure setAnchorNames (self : access Inst; names_P : SEQUENCE_str);
   procedure setBaselineOffset (self : access Inst; baseline_P : float);
   procedure setFont
     (self       : access Inst; font_P : UNION_QtAda6_QtGui_QFont_str_SEQUENCE_str;
      behavior_P : access QtAda6.QtGui.QTextCharFormat.FontPropertiesInheritanceBehavior.Inst'Class := null);
   procedure setFontCapitalization
     (self : access Inst; capitalization_P : access QtAda6.QtGui.QFont.Capitalization.Inst'Class);
   procedure setFontFamilies (self : access Inst; families_P : SEQUENCE_str);
   procedure setFontFamily (self : access Inst; family_P : str);
   procedure setFontFixedPitch (self : access Inst; fixedPitch_P : bool);
   procedure setFontHintingPreference
     (self : access Inst; hintingPreference_P : access QtAda6.QtGui.QFont.HintingPreference.Inst'Class);
   procedure setFontItalic (self : access Inst; italic_P : bool);
   procedure setFontKerning (self : access Inst; enable_P : bool);
   procedure setFontLetterSpacing (self : access Inst; spacing_P : float);
   procedure setFontLetterSpacingType
     (self : access Inst; letterSpacingType_P : access QtAda6.QtGui.QFont.SpacingType.Inst'Class);
   procedure setFontOverline (self : access Inst; overline_P : bool);
   procedure setFontPointSize (self : access Inst; size_P : float);
   procedure setFontStretch (self : access Inst; factor_P : int);
   procedure setFontStrikeOut (self : access Inst; strikeOut_P : bool);
   procedure setFontStyleHint
     (self       : access Inst; hint_P : access QtAda6.QtGui.QFont.StyleHint.Inst'Class;
      strategy_P : access QtAda6.QtGui.QFont.StyleStrategy.Inst'Class := null);
   procedure setFontStyleName (self : access Inst; styleName_P : str);
   procedure setFontStyleStrategy (self : access Inst; strategy_P : access QtAda6.QtGui.QFont.StyleStrategy.Inst'Class);
   procedure setFontUnderline (self : access Inst; underline_P : bool);
   procedure setFontWeight (self : access Inst; weight_P : int);
   procedure setFontWordSpacing (self : access Inst; spacing_P : float);
   procedure setSubScriptBaseline (self : access Inst; baseline_P : float);
   procedure setSuperScriptBaseline (self : access Inst; baseline_P : float);
   procedure setTableCellColumnSpan (self : access Inst; tableCellColumnSpan_P : int);
   procedure setTableCellRowSpan (self : access Inst; tableCellRowSpan_P : int);
   procedure setTextOutline
     (self : access Inst; pen_P : UNION_QtAda6_QtGui_QPen_QtAda6_QtCore_Qt_PenStyle_QtAda6_QtGui_QColor);
   procedure setToolTip (self : access Inst; tip_P : str);
   procedure setUnderlineColor
     (self    : access Inst;
      color_P : UNION_QtAda6_QtGui_QColor_QtAda6_QtGui_QRgba64_Any_QtAda6_QtCore_Qt_GlobalColor_str_int);
   procedure setUnderlineStyle
     (self : access Inst; style_P : access QtAda6.QtGui.QTextCharFormat.UnderlineStyle.Inst'Class);
   procedure setVerticalAlignment
     (self : access Inst; alignment_P : access QtAda6.QtGui.QTextCharFormat.VerticalAlignment.Inst'Class);
   function subScriptBaseline (self : access Inst) return float;
   function superScriptBaseline (self : access Inst) return float;
   function tableCellColumnSpan (self : access Inst) return int;
   function tableCellRowSpan (self : access Inst) return int;
   function textOutline (self : access Inst) return access QtAda6.QtGui.QPen.Inst'Class;
   function toolTip (self : access Inst) return str;
   function underlineColor (self : access Inst) return access QtAda6.QtGui.QColor.Inst'Class;
   function underlineStyle_F (self : access Inst) return access QtAda6.QtGui.QTextCharFormat.UnderlineStyle.Inst'Class;
   function verticalAlignment_F
     (self : access Inst) return access QtAda6.QtGui.QTextCharFormat.VerticalAlignment.Inst'Class;
end QtAda6.QtGui.QTextCharFormat;
