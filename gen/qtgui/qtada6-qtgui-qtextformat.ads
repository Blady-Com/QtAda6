-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qtextformat.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtGui.QBrush;
limited with QtAda6.QtGui.QColor;
limited with QtAda6.QtCore.Qt.LayoutDirection;
limited with QtAda6.QtGui.QPen;
limited with QtAda6.QtCore.Qt.BrushStyle;
limited with QtAda6.QtCore.Qt.GlobalColor;
limited with QtAda6.QtGui.QGradient;
limited with QtAda6.QtGui.QImage;
limited with QtAda6.QtGui.QPixmap;
limited with QtAda6.QtGui.QTextBlockFormat;
limited with QtAda6.QtGui.QTextCharFormat;
limited with QtAda6.QtGui.QTextFrameFormat;
limited with QtAda6.QtGui.QTextImageFormat;
limited with QtAda6.QtGui.QTextListFormat;
limited with QtAda6.QtGui.QTextTableCellFormat;
limited with QtAda6.QtGui.QTextTableFormat;
with QtAda6.QtGui.QTextLength;
package QtAda6.QtGui.QTextFormat is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   subtype LIST_QtAda6_QtGui_QTextLength is QtAda6.QtGui.QTextLength.Class_Array;
   type DICT_intAny is new Any;
   type UNION_QtAda6_QtGui_QBrushQtAda6_QtCore_Qt_BrushStyleQtAda6_QtCore_Qt_GlobalColorQtAda6_QtGui_QColorQtAda6_QtGui_QGradientQtAda6_QtGui_QImageQtAda6_QtGui_QPixmap is
     new Any;
   subtype SEQUENCE_QtAda6_QtGui_QTextLength is QtAda6.QtGui.QTextLength.Class_Array;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (rhs_P : access QtAda6.QtGui.QTextFormat.Inst'Class) return Class;
   function Create (type_K_P : int) return Class;
   procedure U_copy_U;
   function background (self : access Inst) return access QtAda6.QtGui.QBrush.Inst'Class;
   function boolProperty (self : access Inst; propertyId_P : int) return bool;
   function brushProperty (self : access Inst; propertyId_P : int) return access QtAda6.QtGui.QBrush.Inst'Class;
   procedure clearBackground (self : access Inst);
   procedure clearForeground (self : access Inst);
   procedure clearProperty (self : access Inst; propertyId_P : int);
   function colorProperty (self : access Inst; propertyId_P : int) return access QtAda6.QtGui.QColor.Inst'Class;
   function doubleProperty (self : access Inst; propertyId_P : int) return float;
   function foreground (self : access Inst) return access QtAda6.QtGui.QBrush.Inst'Class;
   function hasProperty (self : access Inst; propertyId_P : int) return bool;
   function intProperty (self : access Inst; propertyId_P : int) return int;
   function isBlockFormat (self : access Inst) return bool;
   function isCharFormat (self : access Inst) return bool;
   function isEmpty (self : access Inst) return bool;
   function isFrameFormat (self : access Inst) return bool;
   function isImageFormat (self : access Inst) return bool;
   function isListFormat (self : access Inst) return bool;
   function isTableCellFormat (self : access Inst) return bool;
   function isTableFormat (self : access Inst) return bool;
   function isValid (self : access Inst) return bool;
   function layoutDirection (self : access Inst) return access QtAda6.QtCore.Qt.LayoutDirection.Inst'Class;
   function lengthProperty (self : access Inst; propertyId_P : int) return access QtAda6.QtGui.QTextLength.Inst'Class;
   function lengthVectorProperty (self : access Inst; propertyId_P : int) return LIST_QtAda6_QtGui_QTextLength;
   procedure merge (self : access Inst; other_P : access QtAda6.QtGui.QTextFormat.Inst'Class);
   function objectIndex (self : access Inst) return int;
   function objectType_F (self : access Inst) return int;
   function penProperty (self : access Inst; propertyId_P : int) return access QtAda6.QtGui.QPen.Inst'Class;
   function properties (self : access Inst) return DICT_intAny;
   function property_F (self : access Inst; propertyId_P : int) return Any;
   function propertyCount (self : access Inst) return int;
   procedure setBackground
     (self    : access Inst;
      brush_P : UNION_QtAda6_QtGui_QBrushQtAda6_QtCore_Qt_BrushStyleQtAda6_QtCore_Qt_GlobalColorQtAda6_QtGui_QColorQtAda6_QtGui_QGradientQtAda6_QtGui_QImageQtAda6_QtGui_QPixmap);
   procedure setForeground
     (self    : access Inst;
      brush_P : UNION_QtAda6_QtGui_QBrushQtAda6_QtCore_Qt_BrushStyleQtAda6_QtCore_Qt_GlobalColorQtAda6_QtGui_QColorQtAda6_QtGui_QGradientQtAda6_QtGui_QImageQtAda6_QtGui_QPixmap);
   procedure setLayoutDirection (self : access Inst; direction_P : access QtAda6.QtCore.Qt.LayoutDirection.Inst'Class);
   procedure setObjectIndex (self : access Inst; object_P : int);
   procedure setObjectType (self : access Inst; type_K_P : int);
   procedure setProperty (self : access Inst; propertyId_P : int; lengths_P : SEQUENCE_QtAda6_QtGui_QTextLength);
   procedure setProperty (self : access Inst; propertyId_P : int; value_P : Any);
   function stringProperty (self : access Inst; propertyId_P : int) return str;
   procedure swap (self : access Inst; other_P : access QtAda6.QtGui.QTextFormat.Inst'Class);
   function toBlockFormat (self : access Inst) return access QtAda6.QtGui.QTextBlockFormat.Inst'Class;
   function toCharFormat (self : access Inst) return access QtAda6.QtGui.QTextCharFormat.Inst'Class;
   function toFrameFormat (self : access Inst) return access QtAda6.QtGui.QTextFrameFormat.Inst'Class;
   function toImageFormat (self : access Inst) return access QtAda6.QtGui.QTextImageFormat.Inst'Class;
   function toListFormat (self : access Inst) return access QtAda6.QtGui.QTextListFormat.Inst'Class;
   function toTableCellFormat (self : access Inst) return access QtAda6.QtGui.QTextTableCellFormat.Inst'Class;
   function toTableFormat (self : access Inst) return access QtAda6.QtGui.QTextTableFormat.Inst'Class;
   function type_K (self : access Inst) return int;
end QtAda6.QtGui.QTextFormat;
