-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qrawfont.adb
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
with QtAda6.QtGui.QFont.HintingPreference;
with QtAda6.QtCore.QByteArray;
with QtAda6.QtCore.QPointF;
with QtAda6.QtGui.QRawFont.LayoutFlag;
with QtAda6.QtGui.QRawFont.AntialiasingType;
with QtAda6.QtGui.QTransform;
with QtAda6.QtGui.QImage;
with QtAda6.QtCore.QRectF;
with QtAda6.QtGui.QFont;
with QtAda6.QtGui.QFontDatabase.WritingSystem;
with QtAda6.QtGui.QPainterPath;
with QtAda6.QtGui.QFont.Style;
package body QtAda6.QtGui.QRawFont is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QRawFont");
      Args  := Tuple_New (0);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create
     (fileName_P          : str; pixelSize_P : float;
      hintingPreference_P : access QtAda6.QtGui.QFont.HintingPreference.Inst'Class) return Class
   is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QRawFont");
      Args  := Tuple_New (3);
      Tuple_SetItem (Args, 0, Unicode_FromString (fileName_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (pixelSize_P));
      Tuple_SetItem (Args, 2, hintingPreference_P.Python_Proxy);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create
     (fontData_P          : Union_QtAda6_QtCore_QByteArray_bytes; pixelSize_P : float;
      hintingPreference_P : access QtAda6.QtGui.QFont.HintingPreference.Inst'Class) return Class
   is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QRawFont");
      Args  := Tuple_New (3);
      Tuple_SetItem (Args, 0, No_Value);
      Tuple_SetItem (Args, 1, Float_FromDouble (pixelSize_P));
      Tuple_SetItem (Args, 2, hintingPreference_P.Python_Proxy);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (other_P : access QtAda6.QtGui.QRawFont.Inst'Class) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QRawFont");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, other_P.Python_Proxy);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   procedure U_copy_U is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QRawFont");
      Method := Object_GetAttrString (Class, "__copy__");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end U_copy_U;
   function advancesForGlyphIndexes
     (self : access Inst; glyphIndexes_P : Sequence_int) return List_QtAda6_QtCore_QPointF
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "advancesForGlyphIndexes");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end advancesForGlyphIndexes;
   function advancesForGlyphIndexes
     (self          : access Inst; glyphIndexes_P : Sequence_int;
      layoutFlags_P : access QtAda6.QtGui.QRawFont.LayoutFlag.Inst'Class) return List_QtAda6_QtCore_QPointF
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "advancesForGlyphIndexes");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, No_Value);
      Tuple_SetItem (Args, 1, layoutFlags_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end advancesForGlyphIndexes;
   function alphaMapForGlyph
     (self               : access Inst; glyphIndex_P : int;
      antialiasingType_P : access QtAda6.QtGui.QRawFont.AntialiasingType.Inst'Class;
      transform_P        : access QtAda6.QtGui.QTransform.Inst'Class) return access QtAda6.QtGui.QImage.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QImage.Class := new QtAda6.QtGui.QImage.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "alphaMapForGlyph");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (glyphIndex_P));
      Tuple_SetItem (Args, 1, antialiasingType_P.Python_Proxy);
      Tuple_SetItem (Args, 2, transform_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end alphaMapForGlyph;
   function ascent (self : access Inst) return float is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "ascent");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end ascent;
   function averageCharWidth (self : access Inst) return float is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "averageCharWidth");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end averageCharWidth;
   function boundingRect (self : access Inst; glyphIndex_P : int) return access QtAda6.QtCore.QRectF.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QRectF.Class := new QtAda6.QtCore.QRectF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "boundingRect");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (glyphIndex_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end boundingRect;
   function capHeight (self : access Inst) return float is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "capHeight");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end capHeight;
   function descent (self : access Inst) return float is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "descent");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end descent;
   function familyName (self : access Inst) return str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "familyName");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end familyName;
   function fontTable (self : access Inst; tagName_P : bytes) return access QtAda6.QtCore.QByteArray.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "fontTable");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Bytes_FromString (String (tagName_P)));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fontTable;
   function fromFont
     (font_P          : Union_QtAda6_QtGui_QFont_str_Sequence_str;
      writingSystem_P : access QtAda6.QtGui.QFontDatabase.WritingSystem.Inst'Class)
      return access QtAda6.QtGui.QRawFont.Inst'Class
   is
      Class, Method, Args, Result : Handle;
      Ret                         : constant QtAda6.QtGui.QRawFont.Class := new QtAda6.QtGui.QRawFont.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QRawFont");
      Method := Object_GetAttrString (Class, "fromFont");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, No_Value);
      Tuple_SetItem (Args, 1, writingSystem_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fromFont;
   function glyphIndexesForString (self : access Inst; text_P : str) return List_int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glyphIndexesForString");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (text_P));
      Result := Object_CallObject (Method, Args, True);
      return null;
   end glyphIndexesForString;
   function hintingPreference (self : access Inst) return access QtAda6.QtGui.QFont.HintingPreference.Inst'Class is
      Method, Args, Result : Handle;
      Ret : constant QtAda6.QtGui.QFont.HintingPreference.Class := new QtAda6.QtGui.QFont.HintingPreference.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "hintingPreference");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end hintingPreference;
   function isValid (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isValid");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isValid;
   function leading (self : access Inst) return float is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "leading");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end leading;
   function lineThickness (self : access Inst) return float is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "lineThickness");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end lineThickness;
   procedure loadFromData
     (self                : access Inst; fontData_P : Union_QtAda6_QtCore_QByteArray_bytes; pixelSize_P : float;
      hintingPreference_P : access QtAda6.QtGui.QFont.HintingPreference.Inst'Class)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "loadFromData");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, No_Value);
      Tuple_SetItem (Args, 1, Float_FromDouble (pixelSize_P));
      Tuple_SetItem (Args, 2, hintingPreference_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end loadFromData;
   procedure loadFromFile
     (self                : access Inst; fileName_P : str; pixelSize_P : float;
      hintingPreference_P : access QtAda6.QtGui.QFont.HintingPreference.Inst'Class)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "loadFromFile");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Unicode_FromString (fileName_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (pixelSize_P));
      Tuple_SetItem (Args, 2, hintingPreference_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end loadFromFile;
   function maxCharWidth (self : access Inst) return float is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "maxCharWidth");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end maxCharWidth;
   function pathForGlyph (self : access Inst; glyphIndex_P : int) return access QtAda6.QtGui.QPainterPath.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QPainterPath.Class := new QtAda6.QtGui.QPainterPath.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "pathForGlyph");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (glyphIndex_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end pathForGlyph;
   function pixelSize (self : access Inst) return float is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "pixelSize");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end pixelSize;
   procedure setPixelSize (self : access Inst; pixelSize_P : float) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPixelSize");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (pixelSize_P));
      Result := Object_CallObject (Method, Args, True);
   end setPixelSize;
   function style (self : access Inst) return access QtAda6.QtGui.QFont.Style.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QFont.Style.Class := new QtAda6.QtGui.QFont.Style.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "style");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end style;
   function styleName (self : access Inst) return str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "styleName");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end styleName;
   function supportedWritingSystems (self : access Inst) return List_QtAda6_QtGui_QFontDatabase_WritingSystem is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "supportedWritingSystems");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end supportedWritingSystems;
   function supportsCharacter (self : access Inst; character_P : str) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "supportsCharacter");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (character_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end supportsCharacter;
   function supportsCharacter (self : access Inst; ucs4_P : int) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "supportsCharacter");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (ucs4_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end supportsCharacter;
   procedure swap (self : access Inst; other_P : access QtAda6.QtGui.QRawFont.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "swap");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, other_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end swap;
   function underlinePosition (self : access Inst) return float is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "underlinePosition");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end underlinePosition;
   function unitsPerEm (self : access Inst) return float is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "unitsPerEm");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end unitsPerEm;
   function weight (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "weight");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end weight;
   function xHeight (self : access Inst) return float is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "xHeight");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end xHeight;
end QtAda6.QtGui.QRawFont;
