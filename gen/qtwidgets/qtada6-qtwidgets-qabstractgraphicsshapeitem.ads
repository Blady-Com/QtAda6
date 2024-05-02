-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qabstractgraphicsshapeitem.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtGui.QBrush;
limited with QtAda6.QtGui.QPainterPath;
limited with QtAda6.QtGui.QPen;
limited with QtAda6.QtCore.Qt.BrushStyle;
limited with QtAda6.QtCore.Qt.GlobalColor;
limited with QtAda6.QtGui.QColor;
limited with QtAda6.QtGui.QGradient;
limited with QtAda6.QtGui.QImage;
limited with QtAda6.QtGui.QPixmap;
limited with QtAda6.QtCore.Qt.PenStyle;
with QtAda6.QtWidgets.QGraphicsItem;
package QtAda6.QtWidgets.QAbstractGraphicsShapeItem is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtWidgets.QGraphicsItem.Inst with null record;
   procedure Finalize (Self : in out Class);
   function Create (parent_P : access QtAda6.QtWidgets.QGraphicsItem.Inst'Class := null) return Class;
   function brush (self : access Inst) return access QtAda6.QtGui.QBrush.Inst'Class;
   function isObscuredBy (self : access Inst; item_P : access QtAda6.QtWidgets.QGraphicsItem.Inst'Class) return bool;
   function opaqueArea (self : access Inst) return access QtAda6.QtGui.QPainterPath.Inst'Class;
   function pen (self : access Inst) return access QtAda6.QtGui.QPen.Inst'Class;
   procedure setBrush (self : access Inst; brush_P : access QtAda6.QtGui.QBrush.Inst'Class);
   procedure setBrush (self : access Inst; brush_P : access QtAda6.QtCore.Qt.BrushStyle.Inst'Class);
   procedure setBrush (self : access Inst; brush_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class);
   procedure setBrush (self : access Inst; brush_P : access QtAda6.QtGui.QColor.Inst'Class);
   procedure setBrush (self : access Inst; brush_P : access QtAda6.QtGui.QGradient.Inst'Class);
   procedure setBrush (self : access Inst; brush_P : access QtAda6.QtGui.QImage.Inst'Class);
   procedure setBrush (self : access Inst; brush_P : access QtAda6.QtGui.QPixmap.Inst'Class);
   procedure setPen (self : access Inst; pen_P : access QtAda6.QtGui.QPen.Inst'Class);
   procedure setPen (self : access Inst; pen_P : access QtAda6.QtCore.Qt.PenStyle.Inst'Class);
   procedure setPen (self : access Inst; pen_P : access QtAda6.QtGui.QColor.Inst'Class);
end QtAda6.QtWidgets.QAbstractGraphicsShapeItem;
