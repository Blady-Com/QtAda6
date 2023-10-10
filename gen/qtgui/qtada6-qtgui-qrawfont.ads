-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qrawfont.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtGui.QFont.HintingPreference;
limited with QtAda6.QtCore.QByteArray;
limited with QtAda6.QtCore.QPointF;
limited with QtAda6.QtGui.QRawFont.LayoutFlag;
limited with QtAda6.QtGui.QRawFont.AntialiasingType;
limited with QtAda6.QtGui.QTransform;
limited with QtAda6.QtGui.QImage;
limited with QtAda6.QtCore.QRectF;
limited with QtAda6.QtGui.QFont;
limited with QtAda6.QtGui.QFontDatabase.WritingSystem;
limited with QtAda6.QtGui.QPainterPath;
limited with QtAda6.QtGui.QFont.Style;
package QtAda6.QtGui.QRawFont is
   type Union_QtAda6_QtCore_QByteArray_bytes is access Any;
   type Sequence_int is access Any;
   type List_QtAda6_QtCore_QPointF is access Any;
   type Union_QtAda6_QtGui_QFont_str_Sequence_str is access Any;
   type List_int is access Any;
   type List_QtAda6_QtGui_QFontDatabase_WritingSystem is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create
     (fileName_P          : str; pixelSize_P : float;
      hintingPreference_P : access QtAda6.QtGui.QFont.HintingPreference.Inst'Class) return Class;
   function Create
     (fontData_P          : Union_QtAda6_QtCore_QByteArray_bytes; pixelSize_P : float;
      hintingPreference_P : access QtAda6.QtGui.QFont.HintingPreference.Inst'Class) return Class;
   function Create (other_P : access QtAda6.QtGui.QRawFont.Inst'Class) return Class;
   procedure U_copy_U;
   function advancesForGlyphIndexes
     (self : access Inst; glyphIndexes_P : Sequence_int) return List_QtAda6_QtCore_QPointF;
   function advancesForGlyphIndexes
     (self          : access Inst; glyphIndexes_P : Sequence_int;
      layoutFlags_P : access QtAda6.QtGui.QRawFont.LayoutFlag.Inst'Class) return List_QtAda6_QtCore_QPointF;
   function alphaMapForGlyph
     (self               : access Inst; glyphIndex_P : int;
      antialiasingType_P : access QtAda6.QtGui.QRawFont.AntialiasingType.Inst'Class;
      transform_P        : access QtAda6.QtGui.QTransform.Inst'Class) return access QtAda6.QtGui.QImage.Inst'Class;
   function ascent (self : access Inst) return float;
   function averageCharWidth (self : access Inst) return float;
   function boundingRect (self : access Inst; glyphIndex_P : int) return access QtAda6.QtCore.QRectF.Inst'Class;
   function capHeight (self : access Inst) return float;
   function descent (self : access Inst) return float;
   function familyName (self : access Inst) return str;
   function fontTable (self : access Inst; tagName_P : bytes) return access QtAda6.QtCore.QByteArray.Inst'Class;
   function fromFont
     (font_P          : Union_QtAda6_QtGui_QFont_str_Sequence_str;
      writingSystem_P : access QtAda6.QtGui.QFontDatabase.WritingSystem.Inst'Class)
      return access QtAda6.QtGui.QRawFont.Inst'Class;
   function glyphIndexesForString (self : access Inst; text_P : str) return List_int;
   function hintingPreference (self : access Inst) return access QtAda6.QtGui.QFont.HintingPreference.Inst'Class;
   function isValid (self : access Inst) return bool;
   function leading (self : access Inst) return float;
   function lineThickness (self : access Inst) return float;
   procedure loadFromData
     (self                : access Inst; fontData_P : Union_QtAda6_QtCore_QByteArray_bytes; pixelSize_P : float;
      hintingPreference_P : access QtAda6.QtGui.QFont.HintingPreference.Inst'Class);
   procedure loadFromFile
     (self                : access Inst; fileName_P : str; pixelSize_P : float;
      hintingPreference_P : access QtAda6.QtGui.QFont.HintingPreference.Inst'Class);
   function maxCharWidth (self : access Inst) return float;
   function pathForGlyph (self : access Inst; glyphIndex_P : int) return access QtAda6.QtGui.QPainterPath.Inst'Class;
   function pixelSize (self : access Inst) return float;
   procedure setPixelSize (self : access Inst; pixelSize_P : float);
   function style (self : access Inst) return access QtAda6.QtGui.QFont.Style.Inst'Class;
   function styleName (self : access Inst) return str;
   function supportedWritingSystems (self : access Inst) return List_QtAda6_QtGui_QFontDatabase_WritingSystem;
   function supportsCharacter (self : access Inst; character_P : str) return bool;
   function supportsCharacter (self : access Inst; ucs4_P : int) return bool;
   procedure swap (self : access Inst; other_P : access QtAda6.QtGui.QRawFont.Inst'Class);
   function underlinePosition (self : access Inst) return float;
   function unitsPerEm (self : access Inst) return float;
   function weight (self : access Inst) return int;
   function xHeight (self : access Inst) return float;
end QtAda6.QtGui.QRawFont;
