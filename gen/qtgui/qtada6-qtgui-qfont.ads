-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qfont.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtGui.QPaintDevice;
limited with QtAda6.QtCore.QDataStream;
limited with QtAda6.QtGui.QFont.Capitalization;
limited with QtAda6.QtGui.QFont.HintingPreference;
limited with QtAda6.QtGui.QFont.SpacingType;
limited with QtAda6.QtGui.QFont.Style;
limited with QtAda6.QtGui.QFont.StyleHint;
limited with QtAda6.QtGui.QFont.StyleStrategy;
limited with QtAda6.QtGui.QFont.Weight;
package QtAda6.QtGui.QFont is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   type SEQUENCE_str is array (Positive range <>) of str;
   type UNION_QtAda6_QtGui_QFontstrSEQUENCE_str is new Any;
   type LIST_str is array (Positive range <>) of str;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create
     (families_P : SEQUENCE_str; pointSize_P : int := 0; weight_P : int := 0; italic_P : bool := False) return Class;
   function Create (family_P : str; pointSize_P : int := 0; weight_P : int := 0; italic_P : bool := False) return Class;
   function Create (font_P : UNION_QtAda6_QtGui_QFontstrSEQUENCE_str) return Class;
   function Create
     (font_P : UNION_QtAda6_QtGui_QFontstrSEQUENCE_str; pd_P : access QtAda6.QtGui.QPaintDevice.Inst'Class)
      return Class;
   procedure U_copy_U;
   function U_lshift_U
     (self : access Inst; arg_1_P : access QtAda6.QtCore.QDataStream.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class;
   function U_rshift_U
     (self : access Inst; arg_1_P : access QtAda6.QtCore.QDataStream.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class;
   function bold (self : access Inst) return bool;
   procedure cacheStatistics;
   function capitalization_F (self : access Inst) return access QtAda6.QtGui.QFont.Capitalization.Inst'Class;
   procedure cleanup;
   function defaultFamily (self : access Inst) return str;
   function exactMatch (self : access Inst) return bool;
   function families (self : access Inst) return LIST_str;
   function family (self : access Inst) return str;
   function fixedPitch (self : access Inst) return bool;
   function fromString (self : access Inst; arg_1_P : str) return bool;
   function hintingPreference_F (self : access Inst) return access QtAda6.QtGui.QFont.HintingPreference.Inst'Class;
   procedure initialize;
   procedure insertSubstitution (arg_1_P : str; arg_2_P : str);
   procedure insertSubstitutions (arg_1_P : str; arg_2_P : SEQUENCE_str);
   function isCopyOf (self : access Inst; arg_1_P : UNION_QtAda6_QtGui_QFontstrSEQUENCE_str) return bool;
   function italic (self : access Inst) return bool;
   function kerning (self : access Inst) return bool;
   function key (self : access Inst) return str;
   function legacyWeight (self : access Inst) return int;
   function letterSpacing (self : access Inst) return float;
   function letterSpacingType (self : access Inst) return access QtAda6.QtGui.QFont.SpacingType.Inst'Class;
   function overline (self : access Inst) return bool;
   function pixelSize (self : access Inst) return int;
   function pointSize (self : access Inst) return int;
   function pointSizeF (self : access Inst) return float;
   procedure removeSubstitutions (arg_1_P : str);
   function resolve
     (self : access Inst; arg_1_P : UNION_QtAda6_QtGui_QFontstrSEQUENCE_str)
      return access QtAda6.QtGui.QFont.Inst'Class;
   function resolveMask (self : access Inst) return int;
   procedure setBold (self : access Inst; arg_1_P : bool);
   procedure setCapitalization (self : access Inst; arg_1_P : access QtAda6.QtGui.QFont.Capitalization.Inst'Class);
   procedure setFamilies (self : access Inst; arg_1_P : SEQUENCE_str);
   procedure setFamily (self : access Inst; arg_1_P : str);
   procedure setFixedPitch (self : access Inst; arg_1_P : bool);
   procedure setHintingPreference
     (self : access Inst; hintingPreference_P : access QtAda6.QtGui.QFont.HintingPreference.Inst'Class);
   procedure setItalic (self : access Inst; b_P : bool);
   procedure setKerning (self : access Inst; arg_1_P : bool);
   procedure setLegacyWeight (self : access Inst; legacyWeight_P : int);
   procedure setLetterSpacing
     (self : access Inst; type_K_P : access QtAda6.QtGui.QFont.SpacingType.Inst'Class; spacing_P : float);
   procedure setOverline (self : access Inst; arg_1_P : bool);
   procedure setPixelSize (self : access Inst; arg_1_P : int);
   procedure setPointSize (self : access Inst; arg_1_P : int);
   procedure setPointSizeF (self : access Inst; arg_1_P : float);
   procedure setResolveMask (self : access Inst; mask_P : int);
   procedure setStretch (self : access Inst; arg_1_P : int);
   procedure setStrikeOut (self : access Inst; arg_1_P : bool);
   procedure setStyle (self : access Inst; style_P : access QtAda6.QtGui.QFont.Style.Inst'Class);
   procedure setStyleHint
     (self       : access Inst; arg_1_P : access QtAda6.QtGui.QFont.StyleHint.Inst'Class;
      strategy_P : access QtAda6.QtGui.QFont.StyleStrategy.Inst'Class := null);
   procedure setStyleName (self : access Inst; arg_1_P : str);
   procedure setStyleStrategy (self : access Inst; s_P : access QtAda6.QtGui.QFont.StyleStrategy.Inst'Class);
   procedure setUnderline (self : access Inst; arg_1_P : bool);
   procedure setWeight (self : access Inst; weight_P : access QtAda6.QtGui.QFont.Weight.Inst'Class);
   procedure setWordSpacing (self : access Inst; spacing_P : float);
   function stretch_F (self : access Inst) return int;
   function strikeOut (self : access Inst) return bool;
   function style_F (self : access Inst) return access QtAda6.QtGui.QFont.Style.Inst'Class;
   function styleHint_F (self : access Inst) return access QtAda6.QtGui.QFont.StyleHint.Inst'Class;
   function styleName (self : access Inst) return str;
   function styleStrategy_F (self : access Inst) return access QtAda6.QtGui.QFont.StyleStrategy.Inst'Class;
   function substitute (arg_1_P : str) return str;
   function substitutes (arg_1_P : str) return LIST_str;
   function substitutions return LIST_str;
   procedure swap (self : access Inst; other_P : UNION_QtAda6_QtGui_QFontstrSEQUENCE_str);
   function toString (self : access Inst) return str;
   function underline (self : access Inst) return bool;
   function weight_F (self : access Inst) return access QtAda6.QtGui.QFont.Weight.Inst'Class;
   function wordSpacing (self : access Inst) return float;
end QtAda6.QtGui.QFont;
