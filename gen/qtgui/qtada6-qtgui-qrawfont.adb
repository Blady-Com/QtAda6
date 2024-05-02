-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qrawfont.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
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
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create return Class is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QRawFont");
      Args  := Tuple_New (0);
      Dict  := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (fileName_P          : str; pixelSize_P : float;
      hintingPreference_P : access QtAda6.QtGui.QFont.HintingPreference.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QRawFont");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (fileName_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (pixelSize_P));
      Dict := Dict_New;
      if hintingPreference_P /= null then
         Dict_SetItemString (Dict, "hintingPreference", hintingPreference_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (fontData_P          : access QtAda6.QtCore.QByteArray.Inst'Class; pixelSize_P : float;
      hintingPreference_P : access QtAda6.QtGui.QFont.HintingPreference.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QRawFont");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if fontData_P /= null then fontData_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Float_FromDouble (pixelSize_P));
      Dict := Dict_New;
      if hintingPreference_P /= null then
         Dict_SetItemString (Dict, "hintingPreference", hintingPreference_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (fontData_P          : bytes; pixelSize_P : float;
      hintingPreference_P : access QtAda6.QtGui.QFont.HintingPreference.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QRawFont");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, Bytes_FromString (Standard.String (fontData_P.all)));
      Tuple_SetItem (Args, 1, Float_FromDouble (pixelSize_P));
      Dict := Dict_New;
      if hintingPreference_P /= null then
         Dict_SetItemString (Dict, "hintingPreference", hintingPreference_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (other_P : access QtAda6.QtGui.QRawFont.Inst'Class) return Class is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QRawFont");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if other_P /= null then other_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   procedure U_copy_U is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QRawFont");
      Method := Object_GetAttrString (Class, "__copy__");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end U_copy_U;
   function advancesForGlyphIndexes
     (self : access Inst; glyphIndexes_P : SEQUENCE_int) return LIST_QtAda6_QtCore_QPointF
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "advancesForGlyphIndexes");
      Args   := Tuple_New (1);
      List   := List_New (glyphIndexes_P'Length);
      for ind in glyphIndexes_P'Range loop
         List_SetItem (List, ssize_t (ind - glyphIndexes_P'First), Long_FromLong (glyphIndexes_P (ind)));
      end loop;
      Tuple_SetItem (Args, 0, List);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Ret : LIST_QtAda6_QtCore_QPointF (1 .. Natural (List_Size (Result))) do
         for Ind in Ret'Range loop
            Ret (Ind).Python_Proxy := List_GetItem (Result, ssize_t (Ind - Ret'First));
         end loop;
      end return;
   end advancesForGlyphIndexes;
   function advancesForGlyphIndexes
     (self          : access Inst; glyphIndexes_P : SEQUENCE_int;
      layoutFlags_P : access QtAda6.QtGui.QRawFont.LayoutFlag.Inst'Class) return LIST_QtAda6_QtCore_QPointF
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "advancesForGlyphIndexes");
      Args   := Tuple_New (2);
      List   := List_New (glyphIndexes_P'Length);
      for ind in glyphIndexes_P'Range loop
         List_SetItem (List, ssize_t (ind - glyphIndexes_P'First), Long_FromLong (glyphIndexes_P (ind)));
      end loop;
      Tuple_SetItem (Args, 0, List);
      Tuple_SetItem (Args, 1, (if layoutFlags_P /= null then layoutFlags_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Ret : LIST_QtAda6_QtCore_QPointF (1 .. Natural (List_Size (Result))) do
         for Ind in Ret'Range loop
            Ret (Ind).Python_Proxy := List_GetItem (Result, ssize_t (Ind - Ret'First));
         end loop;
      end return;
   end advancesForGlyphIndexes;
   function alphaMapForGlyph
     (self               : access Inst; glyphIndex_P : int;
      antialiasingType_P : access QtAda6.QtGui.QRawFont.AntialiasingType.Inst'Class := null;
      transform_P : access QtAda6.QtGui.QTransform.Inst'Class := null) return access QtAda6.QtGui.QImage.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret                                          : constant QtAda6.QtGui.QImage.Class := new QtAda6.QtGui.QImage.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "alphaMapForGlyph");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (glyphIndex_P));
      Dict := Dict_New;
      if antialiasingType_P /= null then
         Dict_SetItemString (Dict, "antialiasingType", antialiasingType_P.Python_Proxy);
      end if;
      if transform_P /= null then
         Dict_SetItemString (Dict, "transform", transform_P.Python_Proxy);
      end if;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end alphaMapForGlyph;
   function ascent (self : access Inst) return float is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "ascent");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Float_AsDouble (Result);
   end ascent;
   function averageCharWidth (self : access Inst) return float is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "averageCharWidth");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Float_AsDouble (Result);
   end averageCharWidth;
   function boundingRect (self : access Inst; glyphIndex_P : int) return access QtAda6.QtCore.QRectF.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QRectF.Class := new QtAda6.QtCore.QRectF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "boundingRect");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (glyphIndex_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end boundingRect;
   function capHeight (self : access Inst) return float is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "capHeight");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Float_AsDouble (Result);
   end capHeight;
   function descent (self : access Inst) return float is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "descent");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Float_AsDouble (Result);
   end descent;
   function familyName (self : access Inst) return str is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "familyName");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end familyName;
   function fontTable (self : access Inst; tagName_P : bytes) return access QtAda6.QtCore.QByteArray.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "fontTable");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Bytes_FromString (Standard.String (tagName_P.all)));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fontTable;
   function fromFont
     (font_P          : access QtAda6.QtGui.QFont.Inst'Class;
      writingSystem_P : access QtAda6.QtGui.QFontDatabase.WritingSystem.Inst'Class := null)
      return access QtAda6.QtGui.QRawFont.Inst'Class
   is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QRawFont.Class := new QtAda6.QtGui.QRawFont.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QRawFont");
      Method := Object_GetAttrString (Class, "fromFont");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if font_P /= null then font_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if writingSystem_P /= null then
         Dict_SetItemString (Dict, "writingSystem", writingSystem_P.Python_Proxy);
      end if;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fromFont;
   function fromFont
     (font_P : str; writingSystem_P : access QtAda6.QtGui.QFontDatabase.WritingSystem.Inst'Class := null)
      return access QtAda6.QtGui.QRawFont.Inst'Class
   is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QRawFont.Class := new QtAda6.QtGui.QRawFont.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QRawFont");
      Method := Object_GetAttrString (Class, "fromFont");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (font_P));
      Dict := Dict_New;
      if writingSystem_P /= null then
         Dict_SetItemString (Dict, "writingSystem", writingSystem_P.Python_Proxy);
      end if;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fromFont;
   function fromFont
     (font_P : SEQUENCE_str; writingSystem_P : access QtAda6.QtGui.QFontDatabase.WritingSystem.Inst'Class := null)
      return access QtAda6.QtGui.QRawFont.Inst'Class
   is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QRawFont.Class := new QtAda6.QtGui.QRawFont.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QRawFont");
      Method := Object_GetAttrString (Class, "fromFont");
      Args   := Tuple_New (1);
      List   := List_New (font_P'Length);
      for ind in font_P'Range loop
         List_SetItem (List, ssize_t (ind - font_P'First), Unicode_FromString (font_P (ind)));
      end loop;
      Tuple_SetItem (Args, 0, List);
      Dict := Dict_New;
      if writingSystem_P /= null then
         Dict_SetItemString (Dict, "writingSystem", writingSystem_P.Python_Proxy);
      end if;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fromFont;
   function glyphIndexesForString (self : access Inst; text_P : str) return LIST_int is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glyphIndexesForString");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (text_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Ret : LIST_int (1 .. Natural (List_Size (Result))) do
         for Ind in Ret'Range loop
            Ret (Ind) := Long_AsLong (List_GetItem (Result, ssize_t (Ind - Ret'First)));
         end loop;
      end return;
   end glyphIndexesForString;
   function hintingPreference (self : access Inst) return access QtAda6.QtGui.QFont.HintingPreference.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QFont.HintingPreference.Class := new QtAda6.QtGui.QFont.HintingPreference.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "hintingPreference");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end hintingPreference;
   function isValid (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isValid");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isValid;
   function leading (self : access Inst) return float is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "leading");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Float_AsDouble (Result);
   end leading;
   function lineThickness (self : access Inst) return float is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "lineThickness");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Float_AsDouble (Result);
   end lineThickness;
   procedure loadFromData
     (self                : access Inst; fontData_P : access QtAda6.QtCore.QByteArray.Inst'Class; pixelSize_P : float;
      hintingPreference_P : access QtAda6.QtGui.QFont.HintingPreference.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "loadFromData");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if fontData_P /= null then fontData_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Float_FromDouble (pixelSize_P));
      Tuple_SetItem (Args, 2, (if hintingPreference_P /= null then hintingPreference_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end loadFromData;
   procedure loadFromData
     (self                : access Inst; fontData_P : bytes; pixelSize_P : float;
      hintingPreference_P : access QtAda6.QtGui.QFont.HintingPreference.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "loadFromData");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Bytes_FromString (Standard.String (fontData_P.all)));
      Tuple_SetItem (Args, 1, Float_FromDouble (pixelSize_P));
      Tuple_SetItem (Args, 2, (if hintingPreference_P /= null then hintingPreference_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end loadFromData;
   procedure loadFromFile
     (self                : access Inst; fileName_P : str; pixelSize_P : float;
      hintingPreference_P : access QtAda6.QtGui.QFont.HintingPreference.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "loadFromFile");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Unicode_FromString (fileName_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (pixelSize_P));
      Tuple_SetItem (Args, 2, (if hintingPreference_P /= null then hintingPreference_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end loadFromFile;
   function maxCharWidth (self : access Inst) return float is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "maxCharWidth");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Float_AsDouble (Result);
   end maxCharWidth;
   function pathForGlyph (self : access Inst; glyphIndex_P : int) return access QtAda6.QtGui.QPainterPath.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QPainterPath.Class := new QtAda6.QtGui.QPainterPath.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "pathForGlyph");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (glyphIndex_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end pathForGlyph;
   function pixelSize (self : access Inst) return float is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "pixelSize");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Float_AsDouble (Result);
   end pixelSize;
   procedure setPixelSize (self : access Inst; pixelSize_P : float) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPixelSize");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (pixelSize_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPixelSize;
   function style (self : access Inst) return access QtAda6.QtGui.QFont.Style.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QFont.Style.Class := new QtAda6.QtGui.QFont.Style.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "style");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end style;
   function styleName (self : access Inst) return str is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "styleName");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end styleName;
   function supportedWritingSystems (self : access Inst) return LIST_QtAda6_QtGui_QFontDatabase_WritingSystem is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "supportedWritingSystems");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Ret : LIST_QtAda6_QtGui_QFontDatabase_WritingSystem (1 .. Natural (List_Size (Result))) do
         for Ind in Ret'Range loop
            Ret (Ind).Python_Proxy := List_GetItem (Result, ssize_t (Ind - Ret'First));
         end loop;
      end return;
   end supportedWritingSystems;
   function supportsCharacter (self : access Inst; character_P : str) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "supportsCharacter");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (character_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end supportsCharacter;
   function supportsCharacter (self : access Inst; ucs4_P : int) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "supportsCharacter");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (ucs4_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end supportsCharacter;
   procedure swap (self : access Inst; other_P : access QtAda6.QtGui.QRawFont.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "swap");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if other_P /= null then other_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end swap;
   function underlinePosition (self : access Inst) return float is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "underlinePosition");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Float_AsDouble (Result);
   end underlinePosition;
   function unitsPerEm (self : access Inst) return float is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "unitsPerEm");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Float_AsDouble (Result);
   end unitsPerEm;
   function weight (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "weight");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end weight;
   function xHeight (self : access Inst) return float is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "xHeight");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Float_AsDouble (Result);
   end xHeight;
end QtAda6.QtGui.QRawFont;
