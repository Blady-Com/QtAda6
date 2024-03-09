-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qgraphicspixmapitem.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QRectF;
limited with QtAda6.QtCore.QPointF;
limited with QtAda6.QtGui.QPainterPath;
limited with QtAda6.QtGui.QPainter;
limited with QtAda6.QtWidgets.QStyleOptionGraphicsItem;
limited with QtAda6.QtWidgets.QWidget;
limited with QtAda6.QtGui.QPixmap;
limited with QtAda6.QtWidgets.QGraphicsPixmapItem.ShapeMode;
limited with QtAda6.QtCore.Qt.TransformationMode;
with QtAda6.QtWidgets.QGraphicsItem;
package QtAda6.QtWidgets.QGraphicsPixmapItem is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtWidgets.QGraphicsItem.Inst with null record;
   type UNION_QtAda6_QtGui_QPixmap_QtAda6_QtGui_QImage_str is new Any;
   type UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element is new Any;
   procedure Finalize (Self : in out Class);
   function Create (parent_P : access QtAda6.QtWidgets.QGraphicsItem.Inst'Class := null) return Class;
   function Create
     (pixmap_P : UNION_QtAda6_QtGui_QPixmap_QtAda6_QtGui_QImage_str;
      parent_P : access QtAda6.QtWidgets.QGraphicsItem.Inst'Class := null) return Class;
   function boundingRect (self : access Inst) return access QtAda6.QtCore.QRectF.Inst'Class;
   function contains
     (self : access Inst; point_P : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element)
      return bool;
   function extension (self : access Inst; variant_P : Any) return Any;
   function isObscuredBy (self : access Inst; item_P : access QtAda6.QtWidgets.QGraphicsItem.Inst'Class) return bool;
   function offset (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class;
   function opaqueArea (self : access Inst) return access QtAda6.QtGui.QPainterPath.Inst'Class;
   procedure paint
     (self     : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      option_P : access QtAda6.QtWidgets.QStyleOptionGraphicsItem.Inst'Class;
      widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class);
   function pixmap (self : access Inst) return access QtAda6.QtGui.QPixmap.Inst'Class;
   procedure setOffset
     (self     : access Inst;
      offset_P : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element);
   procedure setOffset (self : access Inst; x_P : float; y_P : float);
   procedure setPixmap (self : access Inst; pixmap_P : UNION_QtAda6_QtGui_QPixmap_QtAda6_QtGui_QImage_str);
   procedure setShapeMode
     (self : access Inst; mode_P : access QtAda6.QtWidgets.QGraphicsPixmapItem.ShapeMode.Inst'Class);
   procedure setTransformationMode (self : access Inst; mode_P : access QtAda6.QtCore.Qt.TransformationMode.Inst'Class);
   function shape (self : access Inst) return access QtAda6.QtGui.QPainterPath.Inst'Class;
   function shapeMode_F (self : access Inst) return access QtAda6.QtWidgets.QGraphicsPixmapItem.ShapeMode.Inst'Class;
   function transformationMode (self : access Inst) return access QtAda6.QtCore.Qt.TransformationMode.Inst'Class;
   function type_K (self : access Inst) return int;
end QtAda6.QtWidgets.QGraphicsPixmapItem;
