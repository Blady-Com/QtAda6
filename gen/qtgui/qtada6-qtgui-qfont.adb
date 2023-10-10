-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qfont.adb
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
with QtAda6.QtGui.QPaintDevice;
with QtAda6.QtCore.QDataStream;
with QtAda6.QtGui.QFont.Capitalization;
with QtAda6.QtGui.QFont.HintingPreference;
with QtAda6.QtGui.QFont.SpacingType;
with QtAda6.QtGui.QFont.Style;
with QtAda6.QtGui.QFont.StyleHint;
with QtAda6.QtGui.QFont.StyleStrategy;
with QtAda6.QtGui.QFont.Weight;
package body QtAda6.QtGui.QFont is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFont");
      Args  := Tuple_New (0);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (families_P : Sequence_str; pointSize_P : int; weight_P : int; italic_P : bool) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFont");
      Args  := Tuple_New (4);
      Tuple_SetItem (Args, 0, No_Value);
      Tuple_SetItem (Args, 1, Long_FromLong (pointSize_P));
      Tuple_SetItem (Args, 2, Long_FromLong (weight_P));
      Tuple_SetItem (Args, 3, To_Python (italic_P));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (family_P : str; pointSize_P : int; weight_P : int; italic_P : bool) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFont");
      Args  := Tuple_New (4);
      Tuple_SetItem (Args, 0, Unicode_FromString (family_P));
      Tuple_SetItem (Args, 1, Long_FromLong (pointSize_P));
      Tuple_SetItem (Args, 2, Long_FromLong (weight_P));
      Tuple_SetItem (Args, 3, To_Python (italic_P));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (font_P : Union_QtAda6_QtGui_QFont_str_Sequence_str) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFont");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create
     (font_P : Union_QtAda6_QtGui_QFont_str_Sequence_str; pd_P : access QtAda6.QtGui.QPaintDevice.Inst'Class)
      return Class
   is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFont");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, No_Value);
      Tuple_SetItem (Args, 1, pd_P.Python_Proxy);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   procedure U_copy_U is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFont");
      Method := Object_GetAttrString (Class, "__copy__");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end U_copy_U;
   function U_lshift_U
     (self : access Inst; arg_1_P : access QtAda6.QtCore.QDataStream.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QDataStream.Class := new QtAda6.QtCore.QDataStream.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__lshift__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, arg_1_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_lshift_U;
   function U_rshift_U
     (self : access Inst; arg_1_P : access QtAda6.QtCore.QDataStream.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QDataStream.Class := new QtAda6.QtCore.QDataStream.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__rshift__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, arg_1_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_rshift_U;
   function bold (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "bold");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end bold;
   procedure cacheStatistics is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFont");
      Method := Object_GetAttrString (Class, "cacheStatistics");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end cacheStatistics;
   function capitalization_F (self : access Inst) return access QtAda6.QtGui.QFont.Capitalization.Inst'Class is
      Method, Args, Result : Handle;
      Ret : constant QtAda6.QtGui.QFont.Capitalization.Class := new QtAda6.QtGui.QFont.Capitalization.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "capitalization");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end capitalization_F;
   procedure cleanup is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFont");
      Method := Object_GetAttrString (Class, "cleanup");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end cleanup;
   function defaultFamily (self : access Inst) return str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "defaultFamily");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end defaultFamily;
   function exactMatch (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "exactMatch");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end exactMatch;
   function families (self : access Inst) return List_str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "families");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end families;
   function family (self : access Inst) return str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "family");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end family;
   function fixedPitch (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "fixedPitch");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end fixedPitch;
   function fromString (self : access Inst; arg_1_P : str) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "fromString");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (arg_1_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end fromString;
   function hintingPreference_F (self : access Inst) return access QtAda6.QtGui.QFont.HintingPreference.Inst'Class is
      Method, Args, Result : Handle;
      Ret : constant QtAda6.QtGui.QFont.HintingPreference.Class := new QtAda6.QtGui.QFont.HintingPreference.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "hintingPreference");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end hintingPreference_F;
   procedure initialize is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFont");
      Method := Object_GetAttrString (Class, "initialize");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end initialize;
   procedure insertSubstitution (arg_1_P : str; arg_2_P : str) is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFont");
      Method := Object_GetAttrString (Class, "insertSubstitution");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (arg_1_P));
      Tuple_SetItem (Args, 1, Unicode_FromString (arg_2_P));
      Result := Object_CallObject (Method, Args, True);
   end insertSubstitution;
   procedure insertSubstitutions (arg_1_P : str; arg_2_P : Sequence_str) is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFont");
      Method := Object_GetAttrString (Class, "insertSubstitutions");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (arg_1_P));
      Tuple_SetItem (Args, 1, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end insertSubstitutions;
   function isCopyOf (self : access Inst; arg_1_P : Union_QtAda6_QtGui_QFont_str_Sequence_str) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isCopyOf");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isCopyOf;
   function italic (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "italic");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end italic;
   function kerning (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "kerning");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end kerning;
   function key (self : access Inst) return str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "key");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end key;
   function legacyWeight (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "legacyWeight");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end legacyWeight;
   function letterSpacing (self : access Inst) return float is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "letterSpacing");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end letterSpacing;
   function letterSpacingType (self : access Inst) return access QtAda6.QtGui.QFont.SpacingType.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QFont.SpacingType.Class := new QtAda6.QtGui.QFont.SpacingType.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "letterSpacingType");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end letterSpacingType;
   function overline (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "overline");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end overline;
   function pixelSize (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "pixelSize");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end pixelSize;
   function pointSize (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "pointSize");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end pointSize;
   function pointSizeF (self : access Inst) return float is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "pointSizeF");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end pointSizeF;
   procedure removeSubstitutions (arg_1_P : str) is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFont");
      Method := Object_GetAttrString (Class, "removeSubstitutions");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (arg_1_P));
      Result := Object_CallObject (Method, Args, True);
   end removeSubstitutions;
   function resolve
     (self : access Inst; arg_1_P : Union_QtAda6_QtGui_QFont_str_Sequence_str)
      return access QtAda6.QtGui.QFont.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QFont.Class := new QtAda6.QtGui.QFont.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "resolve");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end resolve;
   function resolveMask (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "resolveMask");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end resolveMask;
   procedure setBold (self : access Inst; arg_1_P : bool) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setBold");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (arg_1_P));
      Result := Object_CallObject (Method, Args, True);
   end setBold;
   procedure setCapitalization (self : access Inst; arg_1_P : access QtAda6.QtGui.QFont.Capitalization.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setCapitalization");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, arg_1_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setCapitalization;
   procedure setFamilies (self : access Inst; arg_1_P : Sequence_str) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFamilies");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end setFamilies;
   procedure setFamily (self : access Inst; arg_1_P : str) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFamily");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (arg_1_P));
      Result := Object_CallObject (Method, Args, True);
   end setFamily;
   procedure setFixedPitch (self : access Inst; arg_1_P : bool) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFixedPitch");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (arg_1_P));
      Result := Object_CallObject (Method, Args, True);
   end setFixedPitch;
   procedure setHintingPreference
     (self : access Inst; hintingPreference_P : access QtAda6.QtGui.QFont.HintingPreference.Inst'Class)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setHintingPreference");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, hintingPreference_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setHintingPreference;
   procedure setItalic (self : access Inst; b_P : bool) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setItalic");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (b_P));
      Result := Object_CallObject (Method, Args, True);
   end setItalic;
   procedure setKerning (self : access Inst; arg_1_P : bool) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setKerning");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (arg_1_P));
      Result := Object_CallObject (Method, Args, True);
   end setKerning;
   procedure setLegacyWeight (self : access Inst; legacyWeight_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setLegacyWeight");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (legacyWeight_P));
      Result := Object_CallObject (Method, Args, True);
   end setLegacyWeight;
   procedure setLetterSpacing
     (self : access Inst; type_K_P : access QtAda6.QtGui.QFont.SpacingType.Inst'Class; spacing_P : float)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setLetterSpacing");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, type_K_P.Python_Proxy);
      Tuple_SetItem (Args, 1, Float_FromDouble (spacing_P));
      Result := Object_CallObject (Method, Args, True);
   end setLetterSpacing;
   procedure setOverline (self : access Inst; arg_1_P : bool) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setOverline");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (arg_1_P));
      Result := Object_CallObject (Method, Args, True);
   end setOverline;
   procedure setPixelSize (self : access Inst; arg_1_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPixelSize");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (arg_1_P));
      Result := Object_CallObject (Method, Args, True);
   end setPixelSize;
   procedure setPointSize (self : access Inst; arg_1_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPointSize");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (arg_1_P));
      Result := Object_CallObject (Method, Args, True);
   end setPointSize;
   procedure setPointSizeF (self : access Inst; arg_1_P : float) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPointSizeF");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (arg_1_P));
      Result := Object_CallObject (Method, Args, True);
   end setPointSizeF;
   procedure setResolveMask (self : access Inst; mask_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setResolveMask");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (mask_P));
      Result := Object_CallObject (Method, Args, True);
   end setResolveMask;
   procedure setStretch (self : access Inst; arg_1_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setStretch");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (arg_1_P));
      Result := Object_CallObject (Method, Args, True);
   end setStretch;
   procedure setStrikeOut (self : access Inst; arg_1_P : bool) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setStrikeOut");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (arg_1_P));
      Result := Object_CallObject (Method, Args, True);
   end setStrikeOut;
   procedure setStyle (self : access Inst; style_P : access QtAda6.QtGui.QFont.Style.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setStyle");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, style_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setStyle;
   procedure setStyleHint
     (self       : access Inst; arg_1_P : access QtAda6.QtGui.QFont.StyleHint.Inst'Class;
      strategy_P : access QtAda6.QtGui.QFont.StyleStrategy.Inst'Class)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setStyleHint");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, arg_1_P.Python_Proxy);
      Tuple_SetItem (Args, 1, strategy_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setStyleHint;
   procedure setStyleName (self : access Inst; arg_1_P : str) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setStyleName");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (arg_1_P));
      Result := Object_CallObject (Method, Args, True);
   end setStyleName;
   procedure setStyleStrategy (self : access Inst; s_P : access QtAda6.QtGui.QFont.StyleStrategy.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setStyleStrategy");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, s_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setStyleStrategy;
   procedure setUnderline (self : access Inst; arg_1_P : bool) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setUnderline");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (arg_1_P));
      Result := Object_CallObject (Method, Args, True);
   end setUnderline;
   procedure setWeight (self : access Inst; weight_P : access QtAda6.QtGui.QFont.Weight.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setWeight");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, weight_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setWeight;
   procedure setWordSpacing (self : access Inst; spacing_P : float) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setWordSpacing");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (spacing_P));
      Result := Object_CallObject (Method, Args, True);
   end setWordSpacing;
   function stretch_F (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "stretch");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end stretch_F;
   function strikeOut (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "strikeOut");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end strikeOut;
   function style_F (self : access Inst) return access QtAda6.QtGui.QFont.Style.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QFont.Style.Class := new QtAda6.QtGui.QFont.Style.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "style");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end style_F;
   function styleHint_F (self : access Inst) return access QtAda6.QtGui.QFont.StyleHint.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QFont.StyleHint.Class := new QtAda6.QtGui.QFont.StyleHint.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "styleHint");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end styleHint_F;
   function styleName (self : access Inst) return str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "styleName");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end styleName;
   function styleStrategy_F (self : access Inst) return access QtAda6.QtGui.QFont.StyleStrategy.Inst'Class is
      Method, Args, Result : Handle;
      Ret : constant QtAda6.QtGui.QFont.StyleStrategy.Class := new QtAda6.QtGui.QFont.StyleStrategy.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "styleStrategy");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end styleStrategy_F;
   function substitute (arg_1_P : str) return str is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFont");
      Method := Object_GetAttrString (Class, "substitute");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (arg_1_P));
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end substitute;
   function substitutes (arg_1_P : str) return List_str is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFont");
      Method := Object_GetAttrString (Class, "substitutes");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (arg_1_P));
      Result := Object_CallObject (Method, Args, True);
      return null;
   end substitutes;
   function substitutions return List_str is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFont");
      Method := Object_GetAttrString (Class, "substitutions");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end substitutions;
   procedure swap (self : access Inst; other_P : Union_QtAda6_QtGui_QFont_str_Sequence_str) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "swap");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end swap;
   function toString (self : access Inst) return str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toString");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end toString;
   function underline (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "underline");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end underline;
   function weight_F (self : access Inst) return access QtAda6.QtGui.QFont.Weight.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QFont.Weight.Class := new QtAda6.QtGui.QFont.Weight.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "weight");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end weight_F;
   function wordSpacing (self : access Inst) return float is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "wordSpacing");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end wordSpacing;
end QtAda6.QtGui.QFont;
