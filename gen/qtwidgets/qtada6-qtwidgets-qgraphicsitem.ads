-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qgraphicsitem.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.Qt.MouseButton;
limited with QtAda6.QtCore.QRectF;
limited with QtAda6.QtGui.QTransform;
limited with QtAda6.QtGui.QRegion;
limited with QtAda6.QtWidgets.QGraphicsItem.CacheMode;
limited with QtAda6.QtGui.QPainterPath;
limited with QtAda6.QtCore.Qt.ItemSelectionMode;
limited with QtAda6.QtWidgets.QGraphicsSceneContextMenuEvent;
limited with QtAda6.QtGui.QCursor;
limited with QtAda6.QtWidgets.QGraphicsSceneDragDropEvent;
limited with QtAda6.QtWidgets.QGraphicsItem.GraphicsItemFlag;
limited with QtAda6.QtGui.QFocusEvent;
limited with QtAda6.QtWidgets.QGraphicsEffect;
limited with QtAda6.QtWidgets.QGraphicsItemGroup;
limited with QtAda6.QtWidgets.QGraphicsSceneHoverEvent;
limited with QtAda6.QtGui.QInputMethodEvent;
limited with QtAda6.QtCore.Qt.InputMethodHint;
limited with QtAda6.QtCore.Qt.InputMethodQuery;
limited with QtAda6.QtWidgets.QGraphicsItem.GraphicsItemChange;
limited with QtAda6.QtGui.QKeyEvent;
limited with QtAda6.QtCore.QPointF;
limited with QtAda6.QtGui.QPolygonF;
limited with QtAda6.QtWidgets.QGraphicsSceneMouseEvent;
limited with QtAda6.QtGui.QPainter;
limited with QtAda6.QtWidgets.QStyleOptionGraphicsItem;
limited with QtAda6.QtWidgets.QWidget;
limited with QtAda6.QtWidgets.QGraphicsItem.PanelModality;
limited with QtAda6.QtWidgets.QGraphicsObject;
limited with QtAda6.QtWidgets.QGraphicsWidget;
limited with QtAda6.QtWidgets.QGraphicsScene;
limited with QtAda6.QtCore.QEvent;
limited with QtAda6.QtCore.QSize;
limited with QtAda6.QtCore.Qt.FocusReason;
limited with QtAda6.QtWidgets.QGraphicsTransform;
limited with QtAda6.QtWidgets.QGraphicsSceneWheelEvent;
package QtAda6.QtWidgets.QGraphicsItem is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   subtype LIST_QtAda6_QtWidgets_QGraphicsItem is QtAda6.QtWidgets.QGraphicsItem.Class_Array;
   type UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element is new Any;
   type UNION_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect is new Any;
   type TUPLE is null record;
   type UNION_QtAda6_QtGui_QPolygonF_SEQUENCE_QtAda6_QtCore_QRectF is new Any;
   type UNION_QtAda6_QtGui_QCursor_QtAda6_QtCore_Qt_CursorShape_QtAda6_QtGui_QPixmap is new Any;
   subtype SEQUENCE_QtAda6_QtWidgets_QGraphicsTransform is QtAda6.QtWidgets.QGraphicsTransform.Class_Array;
   subtype LIST_QtAda6_QtWidgets_QGraphicsTransform is QtAda6.QtWidgets.QGraphicsTransform.Class_Array;
   procedure Finalize (Self : in out Class);
   function Create (parent_P : access QtAda6.QtWidgets.QGraphicsItem.Inst'Class := null) return Class;
   function acceptDrops (self : access Inst) return bool;
   function acceptHoverEvents (self : access Inst) return bool;
   function acceptTouchEvents (self : access Inst) return bool;
   function acceptedMouseButtons (self : access Inst) return access QtAda6.QtCore.Qt.MouseButton.Inst'Class;
   procedure addToIndex (self : access Inst);
   procedure advance (self : access Inst; phase_P : int);
   function boundingRect (self : access Inst) return access QtAda6.QtCore.QRectF.Inst'Class;
   function boundingRegion
     (self : access Inst; itemToDeviceTransform_P : access QtAda6.QtGui.QTransform.Inst'Class)
      return access QtAda6.QtGui.QRegion.Inst'Class;
   function boundingRegionGranularity (self : access Inst) return float;
   function cacheMode_F (self : access Inst) return access QtAda6.QtWidgets.QGraphicsItem.CacheMode.Inst'Class;
   function childItems (self : access Inst) return LIST_QtAda6_QtWidgets_QGraphicsItem;
   function childrenBoundingRect (self : access Inst) return access QtAda6.QtCore.QRectF.Inst'Class;
   procedure clearFocus (self : access Inst);
   function clipPath (self : access Inst) return access QtAda6.QtGui.QPainterPath.Inst'Class;
   function collidesWithItem
     (self   : access Inst; other_P : access QtAda6.QtWidgets.QGraphicsItem.Inst'Class;
      mode_P : access QtAda6.QtCore.Qt.ItemSelectionMode.Inst'Class := null) return bool;
   function collidesWithPath
     (self   : access Inst; path_P : access QtAda6.QtGui.QPainterPath.Inst'Class;
      mode_P : access QtAda6.QtCore.Qt.ItemSelectionMode.Inst'Class := null) return bool;
   function collidingItems
     (self : access Inst; mode_P : access QtAda6.QtCore.Qt.ItemSelectionMode.Inst'Class := null)
      return LIST_QtAda6_QtWidgets_QGraphicsItem;
   function commonAncestorItem
     (self : access Inst; other_P : access QtAda6.QtWidgets.QGraphicsItem.Inst'Class)
      return access QtAda6.QtWidgets.QGraphicsItem.Inst'Class;
   function contains
     (self : access Inst; point_P : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element)
      return bool;
   procedure contextMenuEvent
     (self : access Inst; event_P : access QtAda6.QtWidgets.QGraphicsSceneContextMenuEvent.Inst'Class);
   function cursor (self : access Inst) return access QtAda6.QtGui.QCursor.Inst'Class;
   function data (self : access Inst; key_P : int) return Any;
   function deviceTransform
     (self : access Inst; viewportTransform_P : access QtAda6.QtGui.QTransform.Inst'Class)
      return access QtAda6.QtGui.QTransform.Inst'Class;
   procedure dragEnterEvent
     (self : access Inst; event_P : access QtAda6.QtWidgets.QGraphicsSceneDragDropEvent.Inst'Class);
   procedure dragLeaveEvent
     (self : access Inst; event_P : access QtAda6.QtWidgets.QGraphicsSceneDragDropEvent.Inst'Class);
   procedure dragMoveEvent
     (self : access Inst; event_P : access QtAda6.QtWidgets.QGraphicsSceneDragDropEvent.Inst'Class);
   procedure dropEvent (self : access Inst; event_P : access QtAda6.QtWidgets.QGraphicsSceneDragDropEvent.Inst'Class);
   function effectiveOpacity (self : access Inst) return float;
   procedure ensureVisible
     (self      : access Inst; rect_P : UNION_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect := null; xmargin_P : int := 0;
      ymargin_P : int := 0);
   procedure ensureVisible
     (self      : access Inst; x_P : float; y_P : float; w_P : float; h_P : float; xmargin_P : int := 0;
      ymargin_P : int := 0);
   function extension_F (self : access Inst; variant_P : Any) return Any;
   function filtersChildEvents (self : access Inst) return bool;
   function flags (self : access Inst) return access QtAda6.QtWidgets.QGraphicsItem.GraphicsItemFlag.Inst'Class;
   procedure focusInEvent (self : access Inst; event_P : access QtAda6.QtGui.QFocusEvent.Inst'Class);
   function focusItem (self : access Inst) return access QtAda6.QtWidgets.QGraphicsItem.Inst'Class;
   procedure focusOutEvent (self : access Inst; event_P : access QtAda6.QtGui.QFocusEvent.Inst'Class);
   function focusProxy (self : access Inst) return access QtAda6.QtWidgets.QGraphicsItem.Inst'Class;
   function focusScopeItem (self : access Inst) return access QtAda6.QtWidgets.QGraphicsItem.Inst'Class;
   procedure grabKeyboard (self : access Inst);
   procedure grabMouse (self : access Inst);
   function graphicsEffect (self : access Inst) return access QtAda6.QtWidgets.QGraphicsEffect.Inst'Class;
   function group (self : access Inst) return access QtAda6.QtWidgets.QGraphicsItemGroup.Inst'Class;
   function handlesChildEvents (self : access Inst) return bool;
   function hasCursor (self : access Inst) return bool;
   function hasFocus (self : access Inst) return bool;
   procedure hide (self : access Inst);
   procedure hoverEnterEvent
     (self : access Inst; event_P : access QtAda6.QtWidgets.QGraphicsSceneHoverEvent.Inst'Class);
   procedure hoverLeaveEvent
     (self : access Inst; event_P : access QtAda6.QtWidgets.QGraphicsSceneHoverEvent.Inst'Class);
   procedure hoverMoveEvent (self : access Inst; event_P : access QtAda6.QtWidgets.QGraphicsSceneHoverEvent.Inst'Class);
   procedure inputMethodEvent (self : access Inst; event_P : access QtAda6.QtGui.QInputMethodEvent.Inst'Class);
   function inputMethodHints (self : access Inst) return access QtAda6.QtCore.Qt.InputMethodHint.Inst'Class;
   function inputMethodQuery
     (self : access Inst; query_P : access QtAda6.QtCore.Qt.InputMethodQuery.Inst'Class) return Any;
   procedure installSceneEventFilter
     (self : access Inst; filterItem_P : access QtAda6.QtWidgets.QGraphicsItem.Inst'Class);
   function isActive (self : access Inst) return bool;
   function isAncestorOf (self : access Inst; child_P : access QtAda6.QtWidgets.QGraphicsItem.Inst'Class) return bool;
   function isBlockedByModalPanel (self : access Inst) return TUPLE;
   function isClipped (self : access Inst) return bool;
   function isEnabled (self : access Inst) return bool;
   function isObscured
     (self : access Inst; rect_P : UNION_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect := null) return bool;
   function isObscured (self : access Inst; x_P : float; y_P : float; w_P : float; h_P : float) return bool;
   function isObscuredBy (self : access Inst; item_P : access QtAda6.QtWidgets.QGraphicsItem.Inst'Class) return bool;
   function isPanel (self : access Inst) return bool;
   function isSelected (self : access Inst) return bool;
   function isUnderMouse (self : access Inst) return bool;
   function isVisible (self : access Inst) return bool;
   function isVisibleTo (self : access Inst; parent_P : access QtAda6.QtWidgets.QGraphicsItem.Inst'Class) return bool;
   function isWidget (self : access Inst) return bool;
   function isWindow (self : access Inst) return bool;
   function itemChange
     (self : access Inst; change_P : access QtAda6.QtWidgets.QGraphicsItem.GraphicsItemChange.Inst'Class; value_P : Any)
      return Any;
   function itemTransform (self : access Inst; other_P : access QtAda6.QtWidgets.QGraphicsItem.Inst'Class) return TUPLE;
   procedure keyPressEvent (self : access Inst; event_P : access QtAda6.QtGui.QKeyEvent.Inst'Class);
   procedure keyReleaseEvent (self : access Inst; event_P : access QtAda6.QtGui.QKeyEvent.Inst'Class);
   function mapFromItem
     (self   : access Inst; item_P : access QtAda6.QtWidgets.QGraphicsItem.Inst'Class;
      path_P : access QtAda6.QtGui.QPainterPath.Inst'Class) return access QtAda6.QtGui.QPainterPath.Inst'Class;
   function mapFromItem
     (self    : access Inst; item_P : access QtAda6.QtWidgets.QGraphicsItem.Inst'Class;
      point_P : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element)
      return access QtAda6.QtCore.QPointF.Inst'Class;
   function mapFromItem
     (self      : access Inst; item_P : access QtAda6.QtWidgets.QGraphicsItem.Inst'Class;
      polygon_P : UNION_QtAda6_QtGui_QPolygonF_SEQUENCE_QtAda6_QtCore_QRectF)
      return access QtAda6.QtGui.QPolygonF.Inst'Class;
   function mapFromItem
     (self   : access Inst; item_P : access QtAda6.QtWidgets.QGraphicsItem.Inst'Class;
      rect_P : UNION_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect) return access QtAda6.QtGui.QPolygonF.Inst'Class;
   function mapFromItem
     (self : access Inst; item_P : access QtAda6.QtWidgets.QGraphicsItem.Inst'Class; x_P : float; y_P : float)
      return access QtAda6.QtCore.QPointF.Inst'Class;
   function mapFromItem
     (self : access Inst; item_P : access QtAda6.QtWidgets.QGraphicsItem.Inst'Class; x_P : float; y_P : float;
      w_P  : float; h_P : float) return access QtAda6.QtGui.QPolygonF.Inst'Class;
   function mapFromParent
     (self : access Inst; path_P : access QtAda6.QtGui.QPainterPath.Inst'Class)
      return access QtAda6.QtGui.QPainterPath.Inst'Class;
   function mapFromParent
     (self : access Inst; point_P : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element)
      return access QtAda6.QtCore.QPointF.Inst'Class;
   function mapFromParent
     (self : access Inst; polygon_P : UNION_QtAda6_QtGui_QPolygonF_SEQUENCE_QtAda6_QtCore_QRectF)
      return access QtAda6.QtGui.QPolygonF.Inst'Class;
   function mapFromParent
     (self : access Inst; rect_P : UNION_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect)
      return access QtAda6.QtGui.QPolygonF.Inst'Class;
   function mapFromParent (self : access Inst; x_P : float; y_P : float) return access QtAda6.QtCore.QPointF.Inst'Class;
   function mapFromParent
     (self : access Inst; x_P : float; y_P : float; w_P : float; h_P : float)
      return access QtAda6.QtGui.QPolygonF.Inst'Class;
   function mapFromScene
     (self : access Inst; path_P : access QtAda6.QtGui.QPainterPath.Inst'Class)
      return access QtAda6.QtGui.QPainterPath.Inst'Class;
   function mapFromScene
     (self : access Inst; point_P : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element)
      return access QtAda6.QtCore.QPointF.Inst'Class;
   function mapFromScene
     (self : access Inst; polygon_P : UNION_QtAda6_QtGui_QPolygonF_SEQUENCE_QtAda6_QtCore_QRectF)
      return access QtAda6.QtGui.QPolygonF.Inst'Class;
   function mapFromScene
     (self : access Inst; rect_P : UNION_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect)
      return access QtAda6.QtGui.QPolygonF.Inst'Class;
   function mapFromScene (self : access Inst; x_P : float; y_P : float) return access QtAda6.QtCore.QPointF.Inst'Class;
   function mapFromScene
     (self : access Inst; x_P : float; y_P : float; w_P : float; h_P : float)
      return access QtAda6.QtGui.QPolygonF.Inst'Class;
   function mapRectFromItem
     (self   : access Inst; item_P : access QtAda6.QtWidgets.QGraphicsItem.Inst'Class;
      rect_P : UNION_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect) return access QtAda6.QtCore.QRectF.Inst'Class;
   function mapRectFromItem
     (self : access Inst; item_P : access QtAda6.QtWidgets.QGraphicsItem.Inst'Class; x_P : float; y_P : float;
      w_P  : float; h_P : float) return access QtAda6.QtCore.QRectF.Inst'Class;
   function mapRectFromParent
     (self : access Inst; rect_P : UNION_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect)
      return access QtAda6.QtCore.QRectF.Inst'Class;
   function mapRectFromParent
     (self : access Inst; x_P : float; y_P : float; w_P : float; h_P : float)
      return access QtAda6.QtCore.QRectF.Inst'Class;
   function mapRectFromScene
     (self : access Inst; rect_P : UNION_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect)
      return access QtAda6.QtCore.QRectF.Inst'Class;
   function mapRectFromScene
     (self : access Inst; x_P : float; y_P : float; w_P : float; h_P : float)
      return access QtAda6.QtCore.QRectF.Inst'Class;
   function mapRectToItem
     (self   : access Inst; item_P : access QtAda6.QtWidgets.QGraphicsItem.Inst'Class;
      rect_P : UNION_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect) return access QtAda6.QtCore.QRectF.Inst'Class;
   function mapRectToItem
     (self : access Inst; item_P : access QtAda6.QtWidgets.QGraphicsItem.Inst'Class; x_P : float; y_P : float;
      w_P  : float; h_P : float) return access QtAda6.QtCore.QRectF.Inst'Class;
   function mapRectToParent
     (self : access Inst; rect_P : UNION_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect)
      return access QtAda6.QtCore.QRectF.Inst'Class;
   function mapRectToParent
     (self : access Inst; x_P : float; y_P : float; w_P : float; h_P : float)
      return access QtAda6.QtCore.QRectF.Inst'Class;
   function mapRectToScene
     (self : access Inst; rect_P : UNION_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect)
      return access QtAda6.QtCore.QRectF.Inst'Class;
   function mapRectToScene
     (self : access Inst; x_P : float; y_P : float; w_P : float; h_P : float)
      return access QtAda6.QtCore.QRectF.Inst'Class;
   function mapToItem
     (self   : access Inst; item_P : access QtAda6.QtWidgets.QGraphicsItem.Inst'Class;
      path_P : access QtAda6.QtGui.QPainterPath.Inst'Class) return access QtAda6.QtGui.QPainterPath.Inst'Class;
   function mapToItem
     (self    : access Inst; item_P : access QtAda6.QtWidgets.QGraphicsItem.Inst'Class;
      point_P : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element)
      return access QtAda6.QtCore.QPointF.Inst'Class;
   function mapToItem
     (self      : access Inst; item_P : access QtAda6.QtWidgets.QGraphicsItem.Inst'Class;
      polygon_P : UNION_QtAda6_QtGui_QPolygonF_SEQUENCE_QtAda6_QtCore_QRectF)
      return access QtAda6.QtGui.QPolygonF.Inst'Class;
   function mapToItem
     (self   : access Inst; item_P : access QtAda6.QtWidgets.QGraphicsItem.Inst'Class;
      rect_P : UNION_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect) return access QtAda6.QtGui.QPolygonF.Inst'Class;
   function mapToItem
     (self : access Inst; item_P : access QtAda6.QtWidgets.QGraphicsItem.Inst'Class; x_P : float; y_P : float)
      return access QtAda6.QtCore.QPointF.Inst'Class;
   function mapToItem
     (self : access Inst; item_P : access QtAda6.QtWidgets.QGraphicsItem.Inst'Class; x_P : float; y_P : float;
      w_P  : float; h_P : float) return access QtAda6.QtGui.QPolygonF.Inst'Class;
   function mapToParent
     (self : access Inst; path_P : access QtAda6.QtGui.QPainterPath.Inst'Class)
      return access QtAda6.QtGui.QPainterPath.Inst'Class;
   function mapToParent
     (self : access Inst; point_P : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element)
      return access QtAda6.QtCore.QPointF.Inst'Class;
   function mapToParent
     (self : access Inst; polygon_P : UNION_QtAda6_QtGui_QPolygonF_SEQUENCE_QtAda6_QtCore_QRectF)
      return access QtAda6.QtGui.QPolygonF.Inst'Class;
   function mapToParent
     (self : access Inst; rect_P : UNION_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect)
      return access QtAda6.QtGui.QPolygonF.Inst'Class;
   function mapToParent (self : access Inst; x_P : float; y_P : float) return access QtAda6.QtCore.QPointF.Inst'Class;
   function mapToParent
     (self : access Inst; x_P : float; y_P : float; w_P : float; h_P : float)
      return access QtAda6.QtGui.QPolygonF.Inst'Class;
   function mapToScene
     (self : access Inst; path_P : access QtAda6.QtGui.QPainterPath.Inst'Class)
      return access QtAda6.QtGui.QPainterPath.Inst'Class;
   function mapToScene
     (self : access Inst; point_P : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element)
      return access QtAda6.QtCore.QPointF.Inst'Class;
   function mapToScene
     (self : access Inst; polygon_P : UNION_QtAda6_QtGui_QPolygonF_SEQUENCE_QtAda6_QtCore_QRectF)
      return access QtAda6.QtGui.QPolygonF.Inst'Class;
   function mapToScene
     (self : access Inst; rect_P : UNION_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect)
      return access QtAda6.QtGui.QPolygonF.Inst'Class;
   function mapToScene (self : access Inst; x_P : float; y_P : float) return access QtAda6.QtCore.QPointF.Inst'Class;
   function mapToScene
     (self : access Inst; x_P : float; y_P : float; w_P : float; h_P : float)
      return access QtAda6.QtGui.QPolygonF.Inst'Class;
   procedure mouseDoubleClickEvent
     (self : access Inst; event_P : access QtAda6.QtWidgets.QGraphicsSceneMouseEvent.Inst'Class);
   procedure mouseMoveEvent (self : access Inst; event_P : access QtAda6.QtWidgets.QGraphicsSceneMouseEvent.Inst'Class);
   procedure mousePressEvent
     (self : access Inst; event_P : access QtAda6.QtWidgets.QGraphicsSceneMouseEvent.Inst'Class);
   procedure mouseReleaseEvent
     (self : access Inst; event_P : access QtAda6.QtWidgets.QGraphicsSceneMouseEvent.Inst'Class);
   procedure moveBy (self : access Inst; dx_P : float; dy_P : float);
   function opacity (self : access Inst) return float;
   function opaqueArea (self : access Inst) return access QtAda6.QtGui.QPainterPath.Inst'Class;
   procedure paint
     (self     : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      option_P : access QtAda6.QtWidgets.QStyleOptionGraphicsItem.Inst'Class;
      widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null);
   function panel (self : access Inst) return access QtAda6.QtWidgets.QGraphicsItem.Inst'Class;
   function panelModality_F (self : access Inst) return access QtAda6.QtWidgets.QGraphicsItem.PanelModality.Inst'Class;
   function parentItem (self : access Inst) return access QtAda6.QtWidgets.QGraphicsItem.Inst'Class;
   function parentObject (self : access Inst) return access QtAda6.QtWidgets.QGraphicsObject.Inst'Class;
   function parentWidget (self : access Inst) return access QtAda6.QtWidgets.QGraphicsWidget.Inst'Class;
   function pos (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class;
   procedure prepareGeometryChange (self : access Inst);
   procedure removeFromIndex (self : access Inst);
   procedure removeSceneEventFilter
     (self : access Inst; filterItem_P : access QtAda6.QtWidgets.QGraphicsItem.Inst'Class);
   procedure resetTransform (self : access Inst);
   function rotation (self : access Inst) return float;
   function scale (self : access Inst) return float;
   function scene (self : access Inst) return access QtAda6.QtWidgets.QGraphicsScene.Inst'Class;
   function sceneBoundingRect (self : access Inst) return access QtAda6.QtCore.QRectF.Inst'Class;
   function sceneEvent (self : access Inst; event_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   function sceneEventFilter
     (self    : access Inst; watched_P : access QtAda6.QtWidgets.QGraphicsItem.Inst'Class;
      event_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   function scenePos (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class;
   function sceneTransform (self : access Inst) return access QtAda6.QtGui.QTransform.Inst'Class;
   procedure scroll
     (self : access Inst; dx_P : float; dy_P : float; rect_P : UNION_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect := null);
   procedure setAcceptDrops (self : access Inst; on_P : bool);
   procedure setAcceptHoverEvents (self : access Inst; enabled_P : bool);
   procedure setAcceptTouchEvents (self : access Inst; enabled_P : bool);
   procedure setAcceptedMouseButtons (self : access Inst; buttons_P : access QtAda6.QtCore.Qt.MouseButton.Inst'Class);
   procedure setActive (self : access Inst; active_P : bool);
   procedure setBoundingRegionGranularity (self : access Inst; granularity_P : float);
   procedure setCacheMode
     (self        : access Inst; mode_P : access QtAda6.QtWidgets.QGraphicsItem.CacheMode.Inst'Class;
      cacheSize_P : access QtAda6.QtCore.QSize.Inst'Class := null);
   procedure setCursor
     (self : access Inst; cursor_P : UNION_QtAda6_QtGui_QCursor_QtAda6_QtCore_Qt_CursorShape_QtAda6_QtGui_QPixmap);
   procedure setData (self : access Inst; key_P : int; value_P : Any);
   procedure setEnabled (self : access Inst; enabled_P : bool);
   procedure setFiltersChildEvents (self : access Inst; enabled_P : bool);
   procedure setFlag
     (self      : access Inst; flag_P : access QtAda6.QtWidgets.QGraphicsItem.GraphicsItemFlag.Inst'Class;
      enabled_P : bool := False);
   procedure setFlags (self : access Inst; flags_P : access QtAda6.QtWidgets.QGraphicsItem.GraphicsItemFlag.Inst'Class);
   procedure setFocus (self : access Inst; focusReason_P : access QtAda6.QtCore.Qt.FocusReason.Inst'Class := null);
   procedure setFocusProxy (self : access Inst; item_P : access QtAda6.QtWidgets.QGraphicsItem.Inst'Class);
   procedure setGraphicsEffect (self : access Inst; effect_P : access QtAda6.QtWidgets.QGraphicsEffect.Inst'Class);
   procedure setGroup (self : access Inst; group_P : access QtAda6.QtWidgets.QGraphicsItemGroup.Inst'Class);
   procedure setHandlesChildEvents (self : access Inst; enabled_P : bool);
   procedure setInputMethodHints (self : access Inst; hints_P : access QtAda6.QtCore.Qt.InputMethodHint.Inst'Class);
   procedure setOpacity (self : access Inst; opacity_P : float);
   procedure setPanelModality
     (self : access Inst; panelModality_P : access QtAda6.QtWidgets.QGraphicsItem.PanelModality.Inst'Class);
   procedure setParentItem (self : access Inst; parent_P : access QtAda6.QtWidgets.QGraphicsItem.Inst'Class);
   procedure setPos
     (self : access Inst; pos_P : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element);
   procedure setPos (self : access Inst; x_P : float; y_P : float);
   procedure setRotation (self : access Inst; angle_P : float);
   procedure setScale (self : access Inst; scale_P : float);
   procedure setSelected (self : access Inst; selected_P : bool);
   procedure setToolTip (self : access Inst; toolTip_P : str);
   procedure setTransform
     (self : access Inst; matrix_P : access QtAda6.QtGui.QTransform.Inst'Class; combine_P : bool := False);
   procedure setTransformOriginPoint (self : access Inst; ax_P : float; ay_P : float);
   procedure setTransformOriginPoint
     (self     : access Inst;
      origin_P : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element);
   procedure setTransformations (self : access Inst; transformations_P : SEQUENCE_QtAda6_QtWidgets_QGraphicsTransform);
   procedure setVisible (self : access Inst; visible_P : bool);
   procedure setX (self : access Inst; x_P : float);
   procedure setY (self : access Inst; y_P : float);
   procedure setZValue (self : access Inst; z_P : float);
   function shape (self : access Inst) return access QtAda6.QtGui.QPainterPath.Inst'Class;
   procedure show (self : access Inst);
   procedure stackBefore (self : access Inst; sibling_P : access QtAda6.QtWidgets.QGraphicsItem.Inst'Class);
   function toGraphicsObject (self : access Inst) return access QtAda6.QtWidgets.QGraphicsObject.Inst'Class;
   function toolTip (self : access Inst) return str;
   function topLevelItem (self : access Inst) return access QtAda6.QtWidgets.QGraphicsItem.Inst'Class;
   function topLevelWidget (self : access Inst) return access QtAda6.QtWidgets.QGraphicsWidget.Inst'Class;
   function transform (self : access Inst) return access QtAda6.QtGui.QTransform.Inst'Class;
   function transformOriginPoint (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class;
   function transformations (self : access Inst) return LIST_QtAda6_QtWidgets_QGraphicsTransform;
   function type_K (self : access Inst) return int;
   procedure ungrabKeyboard (self : access Inst);
   procedure ungrabMouse (self : access Inst);
   procedure unsetCursor (self : access Inst);
   procedure update (self : access Inst; rect_P : UNION_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect := null);
   procedure update (self : access Inst; x_P : float; y_P : float; width_P : float; height_P : float);
   procedure updateMicroFocus (self : access Inst);
   procedure wheelEvent (self : access Inst; event_P : access QtAda6.QtWidgets.QGraphicsSceneWheelEvent.Inst'Class);
   function window (self : access Inst) return access QtAda6.QtWidgets.QGraphicsWidget.Inst'Class;
   function x (self : access Inst) return float;
   function y (self : access Inst) return float;
   function zValue (self : access Inst) return float;
end QtAda6.QtWidgets.QGraphicsItem;
