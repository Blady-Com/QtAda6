-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qtextcharformat.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Py; use Py;
with Ada.Unchecked_Deallocation;
with QtAda6.QtGui.QTextFormat;
with QtAda6.QtGui.QFont;
with QtAda6.QtGui.QFont.Capitalization;
with QtAda6.QtGui.QFont.HintingPreference;
with QtAda6.QtGui.QFont.SpacingType;
with QtAda6.QtGui.QFont.StyleHint;
with QtAda6.QtGui.QFont.StyleStrategy;
with QtAda6.QtGui.QTextCharFormat.FontPropertiesInheritanceBehavior;
with QtAda6.QtGui.QPen;
with QtAda6.QtCore.Qt.PenStyle;
with QtAda6.QtGui.QColor;
with QtAda6.QtGui.QRgba64;
with QtAda6.QtCore.Qt.GlobalColor;
with QtAda6.QtGui.QTextCharFormat.UnderlineStyle;
with QtAda6.QtGui.QTextCharFormat.VerticalAlignment;
package body QtAda6.QtGui.QTextCharFormat is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextCharFormat");
      Args  := Tuple_New (0);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (QTextCharFormat_P : access QtAda6.QtGui.QTextCharFormat.Inst'Class) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextCharFormat");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, QTextCharFormat_P.Python_Proxy);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (fmt_P : access QtAda6.QtGui.QTextFormat.Inst'Class) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextCharFormat");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, fmt_P.Python_Proxy);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   procedure U_copy_U is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextCharFormat");
      Method := Object_GetAttrString (Class, "__copy__");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end U_copy_U;
   function anchorHref (self : access Inst) return str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "anchorHref");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end anchorHref;
   function anchorNames (self : access Inst) return List_str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "anchorNames");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end anchorNames;
   function baselineOffset (self : access Inst) return float is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "baselineOffset");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end baselineOffset;
   function font_F (self : access Inst) return access QtAda6.QtGui.QFont.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QFont.Class := new QtAda6.QtGui.QFont.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "font");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end font_F;
   function fontCapitalization (self : access Inst) return access QtAda6.QtGui.QFont.Capitalization.Inst'Class is
      Method, Args, Result : Handle;
      Ret : constant QtAda6.QtGui.QFont.Capitalization.Class := new QtAda6.QtGui.QFont.Capitalization.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "fontCapitalization");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fontCapitalization;
   function fontFamilies (self : access Inst) return Any is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "fontFamilies");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Any_conv_P2A_is_not_supported;
   end fontFamilies;
   function fontFamily (self : access Inst) return str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "fontFamily");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end fontFamily;
   function fontFixedPitch (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "fontFixedPitch");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end fontFixedPitch;
   function fontHintingPreference (self : access Inst) return access QtAda6.QtGui.QFont.HintingPreference.Inst'Class is
      Method, Args, Result : Handle;
      Ret : constant QtAda6.QtGui.QFont.HintingPreference.Class := new QtAda6.QtGui.QFont.HintingPreference.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "fontHintingPreference");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fontHintingPreference;
   function fontItalic (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "fontItalic");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end fontItalic;
   function fontKerning (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "fontKerning");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end fontKerning;
   function fontLetterSpacing (self : access Inst) return float is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "fontLetterSpacing");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end fontLetterSpacing;
   function fontLetterSpacingType (self : access Inst) return access QtAda6.QtGui.QFont.SpacingType.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QFont.SpacingType.Class := new QtAda6.QtGui.QFont.SpacingType.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "fontLetterSpacingType");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fontLetterSpacingType;
   function fontOverline (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "fontOverline");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end fontOverline;
   function fontPointSize (self : access Inst) return float is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "fontPointSize");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end fontPointSize;
   function fontStretch (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "fontStretch");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end fontStretch;
   function fontStrikeOut (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "fontStrikeOut");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end fontStrikeOut;
   function fontStyleHint (self : access Inst) return access QtAda6.QtGui.QFont.StyleHint.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QFont.StyleHint.Class := new QtAda6.QtGui.QFont.StyleHint.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "fontStyleHint");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fontStyleHint;
   function fontStyleName (self : access Inst) return Any is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "fontStyleName");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Any_conv_P2A_is_not_supported;
   end fontStyleName;
   function fontStyleStrategy (self : access Inst) return access QtAda6.QtGui.QFont.StyleStrategy.Inst'Class is
      Method, Args, Result : Handle;
      Ret : constant QtAda6.QtGui.QFont.StyleStrategy.Class := new QtAda6.QtGui.QFont.StyleStrategy.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "fontStyleStrategy");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fontStyleStrategy;
   function fontUnderline (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "fontUnderline");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end fontUnderline;
   function fontWeight (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "fontWeight");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end fontWeight;
   function fontWordSpacing (self : access Inst) return float is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "fontWordSpacing");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end fontWordSpacing;
   function isAnchor (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isAnchor");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isAnchor;
   function isValid (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isValid");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isValid;
   procedure setAnchor (self : access Inst; anchor_P : bool) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setAnchor");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (anchor_P));
      Result := Object_CallObject (Method, Args, True);
   end setAnchor;
   procedure setAnchorHref (self : access Inst; value_P : str) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setAnchorHref");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (value_P));
      Result := Object_CallObject (Method, Args, True);
   end setAnchorHref;
   procedure setAnchorNames (self : access Inst; names_P : Sequence_str) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setAnchorNames");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end setAnchorNames;
   procedure setBaselineOffset (self : access Inst; baseline_P : float) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setBaselineOffset");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (baseline_P));
      Result := Object_CallObject (Method, Args, True);
   end setBaselineOffset;
   procedure setFont
     (self       : access Inst; font_P : Union_QtAda6_QtGui_QFont_str_Sequence_str;
      behavior_P : access QtAda6.QtGui.QTextCharFormat.FontPropertiesInheritanceBehavior.Inst'Class)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFont");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, No_Value);
      Tuple_SetItem (Args, 1, behavior_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setFont;
   procedure setFontCapitalization
     (self : access Inst; capitalization_P : access QtAda6.QtGui.QFont.Capitalization.Inst'Class)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFontCapitalization");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, capitalization_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setFontCapitalization;
   procedure setFontFamilies (self : access Inst; families_P : Sequence_str) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFontFamilies");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end setFontFamilies;
   procedure setFontFamily (self : access Inst; family_P : str) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFontFamily");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (family_P));
      Result := Object_CallObject (Method, Args, True);
   end setFontFamily;
   procedure setFontFixedPitch (self : access Inst; fixedPitch_P : bool) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFontFixedPitch");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (fixedPitch_P));
      Result := Object_CallObject (Method, Args, True);
   end setFontFixedPitch;
   procedure setFontHintingPreference
     (self : access Inst; hintingPreference_P : access QtAda6.QtGui.QFont.HintingPreference.Inst'Class)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFontHintingPreference");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, hintingPreference_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setFontHintingPreference;
   procedure setFontItalic (self : access Inst; italic_P : bool) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFontItalic");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (italic_P));
      Result := Object_CallObject (Method, Args, True);
   end setFontItalic;
   procedure setFontKerning (self : access Inst; enable_P : bool) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFontKerning");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (enable_P));
      Result := Object_CallObject (Method, Args, True);
   end setFontKerning;
   procedure setFontLetterSpacing (self : access Inst; spacing_P : float) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFontLetterSpacing");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (spacing_P));
      Result := Object_CallObject (Method, Args, True);
   end setFontLetterSpacing;
   procedure setFontLetterSpacingType
     (self : access Inst; letterSpacingType_P : access QtAda6.QtGui.QFont.SpacingType.Inst'Class)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFontLetterSpacingType");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, letterSpacingType_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setFontLetterSpacingType;
   procedure setFontOverline (self : access Inst; overline_P : bool) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFontOverline");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (overline_P));
      Result := Object_CallObject (Method, Args, True);
   end setFontOverline;
   procedure setFontPointSize (self : access Inst; size_P : float) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFontPointSize");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (size_P));
      Result := Object_CallObject (Method, Args, True);
   end setFontPointSize;
   procedure setFontStretch (self : access Inst; factor_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFontStretch");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (factor_P));
      Result := Object_CallObject (Method, Args, True);
   end setFontStretch;
   procedure setFontStrikeOut (self : access Inst; strikeOut_P : bool) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFontStrikeOut");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (strikeOut_P));
      Result := Object_CallObject (Method, Args, True);
   end setFontStrikeOut;
   procedure setFontStyleHint
     (self       : access Inst; hint_P : access QtAda6.QtGui.QFont.StyleHint.Inst'Class;
      strategy_P : access QtAda6.QtGui.QFont.StyleStrategy.Inst'Class)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFontStyleHint");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, hint_P.Python_Proxy);
      Tuple_SetItem (Args, 1, strategy_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setFontStyleHint;
   procedure setFontStyleName (self : access Inst; styleName_P : str) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFontStyleName");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (styleName_P));
      Result := Object_CallObject (Method, Args, True);
   end setFontStyleName;
   procedure setFontStyleStrategy (self : access Inst; strategy_P : access QtAda6.QtGui.QFont.StyleStrategy.Inst'Class)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFontStyleStrategy");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, strategy_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setFontStyleStrategy;
   procedure setFontUnderline (self : access Inst; underline_P : bool) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFontUnderline");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (underline_P));
      Result := Object_CallObject (Method, Args, True);
   end setFontUnderline;
   procedure setFontWeight (self : access Inst; weight_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFontWeight");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (weight_P));
      Result := Object_CallObject (Method, Args, True);
   end setFontWeight;
   procedure setFontWordSpacing (self : access Inst; spacing_P : float) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFontWordSpacing");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (spacing_P));
      Result := Object_CallObject (Method, Args, True);
   end setFontWordSpacing;
   procedure setSubScriptBaseline (self : access Inst; baseline_P : float) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setSubScriptBaseline");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (baseline_P));
      Result := Object_CallObject (Method, Args, True);
   end setSubScriptBaseline;
   procedure setSuperScriptBaseline (self : access Inst; baseline_P : float) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setSuperScriptBaseline");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (baseline_P));
      Result := Object_CallObject (Method, Args, True);
   end setSuperScriptBaseline;
   procedure setTableCellColumnSpan (self : access Inst; tableCellColumnSpan_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setTableCellColumnSpan");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (tableCellColumnSpan_P));
      Result := Object_CallObject (Method, Args, True);
   end setTableCellColumnSpan;
   procedure setTableCellRowSpan (self : access Inst; tableCellRowSpan_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setTableCellRowSpan");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (tableCellRowSpan_P));
      Result := Object_CallObject (Method, Args, True);
   end setTableCellRowSpan;
   procedure setTextOutline
     (self : access Inst; pen_P : Union_QtAda6_QtGui_QPen_QtAda6_QtCore_Qt_PenStyle_QtAda6_QtGui_QColor)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setTextOutline");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end setTextOutline;
   procedure setToolTip (self : access Inst; tip_P : str) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setToolTip");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (tip_P));
      Result := Object_CallObject (Method, Args, True);
   end setToolTip;
   procedure setUnderlineColor
     (self    : access Inst;
      color_P : Union_QtAda6_QtGui_QColor_QtAda6_QtGui_QRgba64_Any_QtAda6_QtCore_Qt_GlobalColor_str_int)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setUnderlineColor");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end setUnderlineColor;
   procedure setUnderlineStyle
     (self : access Inst; style_P : access QtAda6.QtGui.QTextCharFormat.UnderlineStyle.Inst'Class)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setUnderlineStyle");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, style_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setUnderlineStyle;
   procedure setVerticalAlignment
     (self : access Inst; alignment_P : access QtAda6.QtGui.QTextCharFormat.VerticalAlignment.Inst'Class)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setVerticalAlignment");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, alignment_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setVerticalAlignment;
   function subScriptBaseline (self : access Inst) return float is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "subScriptBaseline");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end subScriptBaseline;
   function superScriptBaseline (self : access Inst) return float is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "superScriptBaseline");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end superScriptBaseline;
   function tableCellColumnSpan (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "tableCellColumnSpan");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end tableCellColumnSpan;
   function tableCellRowSpan (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "tableCellRowSpan");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end tableCellRowSpan;
   function textOutline (self : access Inst) return access QtAda6.QtGui.QPen.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QPen.Class := new QtAda6.QtGui.QPen.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "textOutline");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end textOutline;
   function toolTip (self : access Inst) return str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toolTip");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end toolTip;
   function underlineColor (self : access Inst) return access QtAda6.QtGui.QColor.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QColor.Class := new QtAda6.QtGui.QColor.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "underlineColor");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end underlineColor;
   function underlineStyle_F (self : access Inst) return access QtAda6.QtGui.QTextCharFormat.UnderlineStyle.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QTextCharFormat.UnderlineStyle.Class :=
        new QtAda6.QtGui.QTextCharFormat.UnderlineStyle.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "underlineStyle");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end underlineStyle_F;
   function verticalAlignment_F
     (self : access Inst) return access QtAda6.QtGui.QTextCharFormat.VerticalAlignment.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QTextCharFormat.VerticalAlignment.Class :=
        new QtAda6.QtGui.QTextCharFormat.VerticalAlignment.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "verticalAlignment");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end verticalAlignment_F;
end QtAda6.QtGui.QTextCharFormat;
