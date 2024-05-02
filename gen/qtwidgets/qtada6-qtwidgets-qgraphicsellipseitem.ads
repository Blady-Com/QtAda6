-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qgraphicsellipseitem.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtWidgets.QGraphicsItem;
limited with QtAda6.QtCore.QRectF;
limited with QtAda6.QtCore.QRect;
limited with QtAda6.QtCore.QPointF;
limited with QtAda6.QtCore.QPoint;
limited with QtAda6.QtGui.QPainterPath.Element;
limited with QtAda6.QtGui.QPainterPath;
limited with QtAda6.QtGui.QPainter;
limited with QtAda6.QtWidgets.QStyleOptionGraphicsItem;
limited with QtAda6.QtWidgets.QWidget;
with QtAda6.QtWidgets.QAbstractGraphicsShapeItem;
package QtAda6.QtWidgets.QGraphicsEllipseItem is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtWidgets.QAbstractGraphicsShapeItem.Inst with null record;
   procedure Finalize (Self : in out Class);
   function Create (parent_P : access QtAda6.QtWidgets.QGraphicsItem.Inst'Class := null) return Class;
   function Create
     (rect_P   : access QtAda6.QtCore.QRectF.Inst'Class;
      parent_P : access QtAda6.QtWidgets.QGraphicsItem.Inst'Class := null) return Class;
   function Create
     (rect_P   : access QtAda6.QtCore.QRect.Inst'Class;
      parent_P : access QtAda6.QtWidgets.QGraphicsItem.Inst'Class := null) return Class;
   function Create
     (x_P      : float; y_P : float; w_P : float; h_P : float;
      parent_P : access QtAda6.QtWidgets.QGraphicsItem.Inst'Class := null) return Class;
   function boundingRect (self : access Inst) return access QtAda6.QtCore.QRectF.Inst'Class;
   function contains (self : access Inst; point_P : access QtAda6.QtCore.QPointF.Inst'Class) return bool;
   function contains (self : access Inst; point_P : access QtAda6.QtCore.QPoint.Inst'Class) return bool;
   function contains (self : access Inst; point_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class) return bool;
   function extension (self : access Inst; variant_P : Any) return Any;
   function isObscuredBy (self : access Inst; item_P : access QtAda6.QtWidgets.QGraphicsItem.Inst'Class) return bool;
   function opaqueArea (self : access Inst) return access QtAda6.QtGui.QPainterPath.Inst'Class;
   procedure paint
     (self     : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      option_P : access QtAda6.QtWidgets.QStyleOptionGraphicsItem.Inst'Class;
      widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null);
   function rect (self : access Inst) return access QtAda6.QtCore.QRectF.Inst'Class;
   procedure setRect (self : access Inst; rect_P : access QtAda6.QtCore.QRectF.Inst'Class);
   procedure setRect (self : access Inst; rect_P : access QtAda6.QtCore.QRect.Inst'Class);
   procedure setRect (self : access Inst; x_P : float; y_P : float; w_P : float; h_P : float);
   procedure setSpanAngle (self : access Inst; angle_P : int);
   procedure setStartAngle (self : access Inst; angle_P : int);
   function shape (self : access Inst) return access QtAda6.QtGui.QPainterPath.Inst'Class;
   function spanAngle (self : access Inst) return int;
   function startAngle (self : access Inst) return int;
   function type_K (self : access Inst) return int;
end QtAda6.QtWidgets.QGraphicsEllipseItem;
