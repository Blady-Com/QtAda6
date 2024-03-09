-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qgraphicsproxywidget.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtWidgets.QGraphicsItem;
limited with QtAda6.QtCore.Qt.WindowType;
limited with QtAda6.QtWidgets.QGraphicsSceneContextMenuEvent;
limited with QtAda6.QtWidgets.QWidget;
limited with QtAda6.QtWidgets.QGraphicsSceneDragDropEvent;
limited with QtAda6.QtCore.QEvent;
limited with QtAda6.QtCore.QObject;
limited with QtAda6.QtGui.QFocusEvent;
limited with QtAda6.QtGui.QHideEvent;
limited with QtAda6.QtWidgets.QGraphicsSceneHoverEvent;
limited with QtAda6.QtGui.QInputMethodEvent;
limited with QtAda6.QtCore.Qt.InputMethodQuery;
limited with QtAda6.QtWidgets.QGraphicsItem.GraphicsItemChange;
limited with QtAda6.QtGui.QKeyEvent;
limited with QtAda6.QtWidgets.QGraphicsSceneMouseEvent;
limited with QtAda6.QtGui.QPainter;
limited with QtAda6.QtWidgets.QStyleOptionGraphicsItem;
limited with QtAda6.QtWidgets.QGraphicsSceneResizeEvent;
limited with QtAda6.QtGui.QShowEvent;
limited with QtAda6.QtCore.Qt.SizeHint;
limited with QtAda6.QtCore.QSizeF;
limited with QtAda6.QtCore.QRectF;
limited with QtAda6.QtWidgets.QGraphicsSceneWheelEvent;
with QtAda6.QtWidgets.QGraphicsWidget;
package QtAda6.QtWidgets.QGraphicsProxyWidget is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtWidgets.QGraphicsWidget.Inst with null record;
   type UNION_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect is new Any;
   type UNION_QtAda6_QtCore_QSizeF_QtAda6_QtCore_QSize is new Any;
   procedure Finalize (Self : in out Class);
   function Create
     (parent_P : access QtAda6.QtWidgets.QGraphicsItem.Inst'Class := null;
      wFlags_P : access QtAda6.QtCore.Qt.WindowType.Inst'Class    := null) return Class;
   procedure contextMenuEvent
     (self : access Inst; event_P : access QtAda6.QtWidgets.QGraphicsSceneContextMenuEvent.Inst'Class);
   function createProxyForChildWidget
     (self : access Inst; child_P : access QtAda6.QtWidgets.QWidget.Inst'Class)
      return access QtAda6.QtWidgets.QGraphicsProxyWidget.Inst'Class;
   procedure dragEnterEvent
     (self : access Inst; event_P : access QtAda6.QtWidgets.QGraphicsSceneDragDropEvent.Inst'Class);
   procedure dragLeaveEvent
     (self : access Inst; event_P : access QtAda6.QtWidgets.QGraphicsSceneDragDropEvent.Inst'Class);
   procedure dragMoveEvent
     (self : access Inst; event_P : access QtAda6.QtWidgets.QGraphicsSceneDragDropEvent.Inst'Class);
   procedure dropEvent (self : access Inst; event_P : access QtAda6.QtWidgets.QGraphicsSceneDragDropEvent.Inst'Class);
   function event (self : access Inst; event_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   function eventFilter
     (self    : access Inst; object_P : access QtAda6.QtCore.QObject.Inst'Class;
      event_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   procedure focusInEvent (self : access Inst; event_P : access QtAda6.QtGui.QFocusEvent.Inst'Class);
   function focusNextPrevChild (self : access Inst; next_P : bool) return bool;
   procedure focusOutEvent (self : access Inst; event_P : access QtAda6.QtGui.QFocusEvent.Inst'Class);
   procedure grabMouseEvent (self : access Inst; event_P : access QtAda6.QtCore.QEvent.Inst'Class);
   procedure hideEvent (self : access Inst; event_P : access QtAda6.QtGui.QHideEvent.Inst'Class);
   procedure hoverEnterEvent
     (self : access Inst; event_P : access QtAda6.QtWidgets.QGraphicsSceneHoverEvent.Inst'Class);
   procedure hoverLeaveEvent
     (self : access Inst; event_P : access QtAda6.QtWidgets.QGraphicsSceneHoverEvent.Inst'Class);
   procedure hoverMoveEvent (self : access Inst; event_P : access QtAda6.QtWidgets.QGraphicsSceneHoverEvent.Inst'Class);
   procedure inputMethodEvent (self : access Inst; event_P : access QtAda6.QtGui.QInputMethodEvent.Inst'Class);
   function inputMethodQuery
     (self : access Inst; query_P : access QtAda6.QtCore.Qt.InputMethodQuery.Inst'Class) return Any;
   function itemChange
     (self : access Inst; change_P : access QtAda6.QtWidgets.QGraphicsItem.GraphicsItemChange.Inst'Class; value_P : Any)
      return Any;
   procedure keyPressEvent (self : access Inst; event_P : access QtAda6.QtGui.QKeyEvent.Inst'Class);
   procedure keyReleaseEvent (self : access Inst; event_P : access QtAda6.QtGui.QKeyEvent.Inst'Class);
   procedure mouseDoubleClickEvent
     (self : access Inst; event_P : access QtAda6.QtWidgets.QGraphicsSceneMouseEvent.Inst'Class);
   procedure mouseMoveEvent (self : access Inst; event_P : access QtAda6.QtWidgets.QGraphicsSceneMouseEvent.Inst'Class);
   procedure mousePressEvent
     (self : access Inst; event_P : access QtAda6.QtWidgets.QGraphicsSceneMouseEvent.Inst'Class);
   procedure mouseReleaseEvent
     (self : access Inst; event_P : access QtAda6.QtWidgets.QGraphicsSceneMouseEvent.Inst'Class);
   function newProxyWidget
     (self : access Inst; arg_1_P : access QtAda6.QtWidgets.QWidget.Inst'Class)
      return access QtAda6.QtWidgets.QGraphicsProxyWidget.Inst'Class;
   procedure paint
     (self     : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      option_P : access QtAda6.QtWidgets.QStyleOptionGraphicsItem.Inst'Class;
      widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class);
   procedure resizeEvent (self : access Inst; event_P : access QtAda6.QtWidgets.QGraphicsSceneResizeEvent.Inst'Class);
   procedure setGeometry (self : access Inst; rect_P : UNION_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect);
   procedure setGeometry (self : access Inst; x_P : float; y_P : float; w_P : float; h_P : float);
   procedure setWidget (self : access Inst; widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class);
   procedure showEvent (self : access Inst; event_P : access QtAda6.QtGui.QShowEvent.Inst'Class);
   function sizeHint
     (self         : access Inst; which_P : access QtAda6.QtCore.Qt.SizeHint.Inst'Class;
      constraint_P : UNION_QtAda6_QtCore_QSizeF_QtAda6_QtCore_QSize := null)
      return access QtAda6.QtCore.QSizeF.Inst'Class;
   function subWidgetRect
     (self : access Inst; widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class)
      return access QtAda6.QtCore.QRectF.Inst'Class;
   function type_K (self : access Inst) return int;
   procedure ungrabMouseEvent (self : access Inst; event_P : access QtAda6.QtCore.QEvent.Inst'Class);
   procedure wheelEvent (self : access Inst; event_P : access QtAda6.QtWidgets.QGraphicsSceneWheelEvent.Inst'Class);
   function widget (self : access Inst) return access QtAda6.QtWidgets.QWidget.Inst'Class;
end QtAda6.QtWidgets.QGraphicsProxyWidget;
