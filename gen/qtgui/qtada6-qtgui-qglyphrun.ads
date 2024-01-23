-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qglyphrun.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QRectF;
limited with QtAda6.QtGui.QGlyphRun.GlyphRunFlag;
limited with QtAda6.QtGui.QRawFont;
limited with QtAda6.QtCore.QRect;
limited with QtAda6.QtCore.QPoint;
limited with QtAda6.QtGui.QPainterPath.Element;
with QtAda6.QtCore.QPointF;
package QtAda6.QtGui.QGlyphRun is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   type LIST_int is array (Positive range <>) of int;
   subtype LIST_QtAda6_QtCore_QPointF is QtAda6.QtCore.QPointF.Class_Array;
   type UNION_QtAda6_QtCore_QRectFQtAda6_QtCore_QRect is new Any;
   type SEQUENCE_int is array (Positive range <>) of int;
   subtype SEQUENCE_QtAda6_QtCore_QPointF is QtAda6.QtCore.QPointF.Class_Array;
   type UNION_QtAda6_QtCore_QPointFQtAda6_QtCore_QPointQtAda6_QtGui_QPainterPath_Element is new Any;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (other_P : access QtAda6.QtGui.QGlyphRun.Inst'Class) return Class;
   procedure U_copy_U;
   function boundingRect (self : access Inst) return access QtAda6.QtCore.QRectF.Inst'Class;
   procedure clear (self : access Inst);
   function flags (self : access Inst) return access QtAda6.QtGui.QGlyphRun.GlyphRunFlag.Inst'Class;
   function glyphIndexes (self : access Inst) return LIST_int;
   function isEmpty (self : access Inst) return bool;
   function isRightToLeft (self : access Inst) return bool;
   function overline (self : access Inst) return bool;
   function positions (self : access Inst) return LIST_QtAda6_QtCore_QPointF;
   function rawFont (self : access Inst) return access QtAda6.QtGui.QRawFont.Inst'Class;
   procedure setBoundingRect (self : access Inst; boundingRect_P : UNION_QtAda6_QtCore_QRectFQtAda6_QtCore_QRect);
   procedure setFlag
     (self : access Inst; flag_P : access QtAda6.QtGui.QGlyphRun.GlyphRunFlag.Inst'Class; enabled_P : bool := False);
   procedure setFlags (self : access Inst; flags_P : access QtAda6.QtGui.QGlyphRun.GlyphRunFlag.Inst'Class);
   procedure setGlyphIndexes (self : access Inst; glyphIndexes_P : SEQUENCE_int);
   procedure setOverline (self : access Inst; overline_P : bool);
   procedure setPositions (self : access Inst; positions_P : SEQUENCE_QtAda6_QtCore_QPointF);
   procedure setRawData
     (self                 : access Inst; glyphIndexArray_P : int;
      glyphPositionArray_P : UNION_QtAda6_QtCore_QPointFQtAda6_QtCore_QPointQtAda6_QtGui_QPainterPath_Element;
      size_P               : int);
   procedure setRawFont (self : access Inst; rawFont_P : access QtAda6.QtGui.QRawFont.Inst'Class);
   procedure setRightToLeft (self : access Inst; on_P : bool);
   procedure setSourceString (self : access Inst; sourceString_P : str);
   procedure setStrikeOut (self : access Inst; strikeOut_P : bool);
   procedure setStringIndexes (self : access Inst; stringIndexes_P : SEQUENCE_int);
   procedure setUnderline (self : access Inst; underline_P : bool);
   function sourceString (self : access Inst) return str;
   function strikeOut (self : access Inst) return bool;
   function stringIndexes (self : access Inst) return LIST_int;
   procedure swap (self : access Inst; other_P : access QtAda6.QtGui.QGlyphRun.Inst'Class);
   function underline (self : access Inst) return bool;
end QtAda6.QtGui.QGlyphRun;
