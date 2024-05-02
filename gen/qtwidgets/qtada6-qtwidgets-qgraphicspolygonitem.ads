-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qgraphicspolygonitem.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtWidgets.QGraphicsItem;
limited with QtAda6.QtGui.QPolygonF;
limited with QtAda6.QtCore.QRectF;
limited with QtAda6.QtCore.QPointF;
limited with QtAda6.QtCore.QPoint;
limited with QtAda6.QtGui.QPainterPath.Element;
limited with QtAda6.QtCore.Qt.FillRule;
limited with QtAda6.QtGui.QPainterPath;
limited with QtAda6.QtGui.QPainter;
limited with QtAda6.QtWidgets.QStyleOptionGraphicsItem;
limited with QtAda6.QtWidgets.QWidget;
with QtAda6.QtWidgets.QAbstractGraphicsShapeItem;
package QtAda6.QtWidgets.QGraphicsPolygonItem is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtWidgets.QAbstractGraphicsShapeItem.Inst with null record;
   subtype SEQUENCE_QtAda6_QtCore_QRectF is QtAda6.QtCore.QRectF.Class_Array;
   procedure Finalize (Self : in out Class);
   function Create (parent_P : access QtAda6.QtWidgets.QGraphicsItem.Inst'Class := null) return Class;
   function Create
     (polygon_P : access QtAda6.QtGui.QPolygonF.Inst'Class;
      parent_P  : access QtAda6.QtWidgets.QGraphicsItem.Inst'Class := null) return Class;
   function Create
     (polygon_P : SEQUENCE_QtAda6_QtCore_QRectF; parent_P : access QtAda6.QtWidgets.QGraphicsItem.Inst'Class := null)
      return Class;
   function boundingRect (self : access Inst) return access QtAda6.QtCore.QRectF.Inst'Class;
   function contains (self : access Inst; point_P : access QtAda6.QtCore.QPointF.Inst'Class) return bool;
   function contains (self : access Inst; point_P : access QtAda6.QtCore.QPoint.Inst'Class) return bool;
   function contains (self : access Inst; point_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class) return bool;
   function extension (self : access Inst; variant_P : Any) return Any;
   function fillRule (self : access Inst) return access QtAda6.QtCore.Qt.FillRule.Inst'Class;
   function isObscuredBy (self : access Inst; item_P : access QtAda6.QtWidgets.QGraphicsItem.Inst'Class) return bool;
   function opaqueArea (self : access Inst) return access QtAda6.QtGui.QPainterPath.Inst'Class;
   procedure paint
     (self     : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      option_P : access QtAda6.QtWidgets.QStyleOptionGraphicsItem.Inst'Class;
      widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null);
   function polygon (self : access Inst) return access QtAda6.QtGui.QPolygonF.Inst'Class;
   procedure setFillRule (self : access Inst; rule_P : access QtAda6.QtCore.Qt.FillRule.Inst'Class);
   procedure setPolygon (self : access Inst; polygon_P : access QtAda6.QtGui.QPolygonF.Inst'Class);
   procedure setPolygon (self : access Inst; polygon_P : SEQUENCE_QtAda6_QtCore_QRectF);
   function shape (self : access Inst) return access QtAda6.QtGui.QPainterPath.Inst'Class;
   function type_K (self : access Inst) return int;
end QtAda6.QtWidgets.QGraphicsPolygonItem;
