-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qglyphrun.adb
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
with QtAda6.QtCore.QRectF;
with QtAda6.QtGui.QGlyphRun.GlyphRunFlag;
with QtAda6.QtCore.QPointF;
with QtAda6.QtGui.QRawFont;
with QtAda6.QtCore.QRect;
with QtAda6.QtCore.QPoint;
with QtAda6.QtGui.QPainterPath.Element;
package body QtAda6.QtGui.QGlyphRun is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGlyphRun");
      Args  := Tuple_New (0);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (other_P : access QtAda6.QtGui.QGlyphRun.Inst'Class) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGlyphRun");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, other_P.Python_Proxy);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   procedure U_copy_U is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QGlyphRun");
      Method := Object_GetAttrString (Class, "__copy__");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end U_copy_U;
   function boundingRect (self : access Inst) return access QtAda6.QtCore.QRectF.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QRectF.Class := new QtAda6.QtCore.QRectF.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "boundingRect");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end boundingRect;
   procedure clear (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "clear");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end clear;
   function flags (self : access Inst) return access QtAda6.QtGui.QGlyphRun.GlyphRunFlag.Inst'Class is
      Method, Args, Result : Handle;
      Ret : constant QtAda6.QtGui.QGlyphRun.GlyphRunFlag.Class := new QtAda6.QtGui.QGlyphRun.GlyphRunFlag.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "flags");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end flags;
   function glyphIndexes (self : access Inst) return List_int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "glyphIndexes");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end glyphIndexes;
   function isEmpty (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isEmpty");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isEmpty;
   function isRightToLeft (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isRightToLeft");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isRightToLeft;
   function overline (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "overline");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end overline;
   function positions (self : access Inst) return List_QtAda6_QtCore_QPointF is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "positions");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end positions;
   function rawFont (self : access Inst) return access QtAda6.QtGui.QRawFont.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QRawFont.Class := new QtAda6.QtGui.QRawFont.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "rawFont");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end rawFont;
   procedure setBoundingRect (self : access Inst; boundingRect_P : Union_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setBoundingRect");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end setBoundingRect;
   procedure setFlag
     (self : access Inst; flag_P : access QtAda6.QtGui.QGlyphRun.GlyphRunFlag.Inst'Class; enabled_P : bool)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFlag");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, flag_P.Python_Proxy);
      Tuple_SetItem (Args, 1, To_Python (enabled_P));
      Result := Object_CallObject (Method, Args, True);
   end setFlag;
   procedure setFlags (self : access Inst; flags_P : access QtAda6.QtGui.QGlyphRun.GlyphRunFlag.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFlags");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, flags_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setFlags;
   procedure setGlyphIndexes (self : access Inst; glyphIndexes_P : Sequence_int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setGlyphIndexes");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end setGlyphIndexes;
   procedure setOverline (self : access Inst; overline_P : bool) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setOverline");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (overline_P));
      Result := Object_CallObject (Method, Args, True);
   end setOverline;
   procedure setPositions (self : access Inst; positions_P : Sequence_QtAda6_QtCore_QPointF) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPositions");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end setPositions;
   procedure setRawData
     (self                 : access Inst; glyphIndexArray_P : int;
      glyphPositionArray_P : Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element;
      size_P               : int)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setRawData");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (glyphIndexArray_P));
      Tuple_SetItem (Args, 1, No_Value);
      Tuple_SetItem (Args, 2, Long_FromLong (size_P));
      Result := Object_CallObject (Method, Args, True);
   end setRawData;
   procedure setRawFont (self : access Inst; rawFont_P : access QtAda6.QtGui.QRawFont.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setRawFont");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, rawFont_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setRawFont;
   procedure setRightToLeft (self : access Inst; on_P : bool) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setRightToLeft");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (on_P));
      Result := Object_CallObject (Method, Args, True);
   end setRightToLeft;
   procedure setSourceString (self : access Inst; sourceString_P : str) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setSourceString");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (sourceString_P));
      Result := Object_CallObject (Method, Args, True);
   end setSourceString;
   procedure setStrikeOut (self : access Inst; strikeOut_P : bool) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setStrikeOut");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (strikeOut_P));
      Result := Object_CallObject (Method, Args, True);
   end setStrikeOut;
   procedure setStringIndexes (self : access Inst; stringIndexes_P : Sequence_int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setStringIndexes");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end setStringIndexes;
   procedure setUnderline (self : access Inst; underline_P : bool) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setUnderline");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (underline_P));
      Result := Object_CallObject (Method, Args, True);
   end setUnderline;
   function sourceString (self : access Inst) return str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "sourceString");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end sourceString;
   function strikeOut (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "strikeOut");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end strikeOut;
   function stringIndexes (self : access Inst) return List_int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "stringIndexes");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end stringIndexes;
   procedure swap (self : access Inst; other_P : access QtAda6.QtGui.QGlyphRun.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "swap");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, other_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end swap;
   function underline (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "underline");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end underline;
end QtAda6.QtGui.QGlyphRun;
