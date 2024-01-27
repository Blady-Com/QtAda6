-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qgraphicsscene.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QRectF;
limited with QtAda6.QtCore.QRect;
limited with QtAda6.QtWidgets.QGraphicsWidget;
limited with QtAda6.QtGui.QPen;
limited with QtAda6.QtCore.Qt.PenStyle;
limited with QtAda6.QtGui.QColor;
limited with QtAda6.QtGui.QBrush;
limited with QtAda6.QtCore.Qt.BrushStyle;
limited with QtAda6.QtCore.Qt.GlobalColor;
limited with QtAda6.QtGui.QGradient;
limited with QtAda6.QtGui.QImage;
limited with QtAda6.QtGui.QPixmap;
limited with QtAda6.QtWidgets.QGraphicsEllipseItem;
limited with QtAda6.QtCore.QLineF;
limited with QtAda6.QtCore.QLine;
limited with QtAda6.QtWidgets.QGraphicsLineItem;
limited with QtAda6.QtGui.QPainterPath;
limited with QtAda6.QtWidgets.QGraphicsPathItem;
limited with QtAda6.QtWidgets.QGraphicsPixmapItem;
limited with QtAda6.QtGui.QPolygonF;
limited with QtAda6.QtCore.QPointF;
limited with QtAda6.QtGui.QPolygon;
limited with QtAda6.QtWidgets.QGraphicsPolygonItem;
limited with QtAda6.QtWidgets.QGraphicsRectItem;
limited with QtAda6.QtGui.QFont;
limited with QtAda6.QtWidgets.QGraphicsSimpleTextItem;
limited with QtAda6.QtWidgets.QGraphicsTextItem;
limited with QtAda6.QtWidgets.QWidget;
limited with QtAda6.QtCore.Qt.WindowType;
limited with QtAda6.QtWidgets.QGraphicsProxyWidget;
limited with QtAda6.QtCore.Qt.ItemSelectionMode;
limited with QtAda6.QtWidgets.QGraphicsSceneContextMenuEvent;
limited with QtAda6.QtWidgets.QGraphicsItemGroup;
limited with QtAda6.QtWidgets.QGraphicsSceneDragDropEvent;
limited with QtAda6.QtGui.QPainter;
limited with QtAda6.QtCore.QEvent;
limited with QtAda6.QtGui.QFocusEvent;
limited with QtAda6.QtWidgets.QGraphicsSceneHelpEvent;
limited with QtAda6.QtGui.QInputMethodEvent;
limited with QtAda6.QtCore.Qt.InputMethodQuery;
limited with QtAda6.QtWidgets.QGraphicsScene.SceneLayer;
limited with QtAda6.QtCore.QPoint;
limited with QtAda6.QtGui.QPainterPath.Element;
limited with QtAda6.QtGui.QTransform;
limited with QtAda6.QtWidgets.QGraphicsScene.ItemIndexMethod;
limited with QtAda6.QtCore.Qt.SortOrder;
limited with QtAda6.QtGui.QKeyEvent;
limited with QtAda6.QtWidgets.QGraphicsSceneMouseEvent;
limited with QtAda6.QtGui.QPalette;
limited with QtAda6.QtCore.Qt.AspectRatioMode;
limited with QtAda6.QtCore.Qt.FocusReason;
limited with QtAda6.QtCore.Qt.ItemSelectionOperation;
limited with QtAda6.QtWidgets.QStyle;
limited with QtAda6.QtWidgets.QGraphicsSceneWheelEvent;
with QtAda6.QtCore.QObject;
with QtAda6.QtCore.Signal;
with QtAda6.QtWidgets.QGraphicsItem;
with QtAda6.QtWidgets.QGraphicsView;
package QtAda6.QtWidgets.QGraphicsScene is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtCore.QObject.Inst with null record;
   subtype CLASSVAR_Signal is QtAda6.QtCore.Signal.Class;
   type UNION_QtAda6_QtCore_QRectFQtAda6_QtCore_QRect is new Any;
   type UNION_QtAda6_QtGui_QPenQtAda6_QtCore_Qt_PenStyleQtAda6_QtGui_QColor is new Any;
   type UNION_QtAda6_QtGui_QBrushQtAda6_QtCore_Qt_BrushStyleQtAda6_QtCore_Qt_GlobalColorQtAda6_QtGui_QColorQtAda6_QtGui_QGradientQtAda6_QtGui_QImageQtAda6_QtGui_QPixmap is
     new Any;
   type UNION_QtAda6_QtCore_QLineFQtAda6_QtCore_QLine is new Any;
   type UNION_QtAda6_QtGui_QPixmapQtAda6_QtGui_QImagestr is new Any;
   type UNION_QtAda6_QtGui_QPolygonFSEQUENCE_QtAda6_QtCore_QRectF is new Any;
   type UNION_QtAda6_QtGui_QFontstrSEQUENCE_str is new Any;
   subtype LIST_QtAda6_QtWidgets_QGraphicsItem is QtAda6.QtWidgets.QGraphicsItem.Class_Array;
   subtype SEQUENCE_QtAda6_QtWidgets_QGraphicsItem is QtAda6.QtWidgets.QGraphicsItem.Class_Array;
   type UNION_QtAda6_QtCore_QPointFQtAda6_QtCore_QPointQtAda6_QtGui_QPainterPath_Element is new Any;
   type UNION_QtAda6_QtGui_QPaletteQtAda6_QtCore_Qt_GlobalColorQtAda6_QtGui_QColor is new Any;
   subtype LIST_QtAda6_QtWidgets_QGraphicsView is QtAda6.QtWidgets.QGraphicsView.Class_Array;
   procedure Finalize (Self : in out Class);
   function changed (self : access Inst) return CLASSVAR_Signal;-- changed(QList<QRectF>)
   function focusItemChanged
     (self : access Inst) return CLASSVAR_Signal;-- focusItemChanged(QGraphicsItem*,QGraphicsItem*,Qt::FocusReason)
   function sceneRectChanged (self : access Inst) return CLASSVAR_Signal;-- sceneRectChanged(QRectF)
   function selectionChanged (self : access Inst) return CLASSVAR_Signal;-- selectionChanged()
   function Create (parent_P : access QtAda6.QtCore.QObject.Inst'Class := null) return Class;
   function Create
     (sceneRect_P : UNION_QtAda6_QtCore_QRectFQtAda6_QtCore_QRect;
      parent_P    : access QtAda6.QtCore.QObject.Inst'Class := null) return Class;
   function Create
     (x_P      : float; y_P : float; width_P : float; height_P : float;
      parent_P : access QtAda6.QtCore.QObject.Inst'Class := null) return Class;
   function activePanel (self : access Inst) return access QtAda6.QtWidgets.QGraphicsItem.Inst'Class;
   function activeWindow (self : access Inst) return access QtAda6.QtWidgets.QGraphicsWidget.Inst'Class;
   function addEllipse
     (self    : access Inst; rect_P : UNION_QtAda6_QtCore_QRectFQtAda6_QtCore_QRect;
      pen_P   : UNION_QtAda6_QtGui_QPenQtAda6_QtCore_Qt_PenStyleQtAda6_QtGui_QColor := null;
      brush_P : UNION_QtAda6_QtGui_QBrushQtAda6_QtCore_Qt_BrushStyleQtAda6_QtCore_Qt_GlobalColorQtAda6_QtGui_QColorQtAda6_QtGui_QGradientQtAda6_QtGui_QImageQtAda6_QtGui_QPixmap :=
        null)
      return access QtAda6.QtWidgets.QGraphicsEllipseItem.Inst'Class;
   function addEllipse
     (self    : access Inst; x_P : float; y_P : float; w_P : float; h_P : float;
      pen_P   : UNION_QtAda6_QtGui_QPenQtAda6_QtCore_Qt_PenStyleQtAda6_QtGui_QColor := null;
      brush_P : UNION_QtAda6_QtGui_QBrushQtAda6_QtCore_Qt_BrushStyleQtAda6_QtCore_Qt_GlobalColorQtAda6_QtGui_QColorQtAda6_QtGui_QGradientQtAda6_QtGui_QImageQtAda6_QtGui_QPixmap :=
        null)
      return access QtAda6.QtWidgets.QGraphicsEllipseItem.Inst'Class;
   procedure addItem (self : access Inst; item_P : access QtAda6.QtWidgets.QGraphicsItem.Inst'Class);
   function addLine
     (self  : access Inst; line_P : UNION_QtAda6_QtCore_QLineFQtAda6_QtCore_QLine;
      pen_P : UNION_QtAda6_QtGui_QPenQtAda6_QtCore_Qt_PenStyleQtAda6_QtGui_QColor := null)
      return access QtAda6.QtWidgets.QGraphicsLineItem.Inst'Class;
   function addLine
     (self  : access Inst; x1_P : float; y1_P : float; x2_P : float; y2_P : float;
      pen_P : UNION_QtAda6_QtGui_QPenQtAda6_QtCore_Qt_PenStyleQtAda6_QtGui_QColor := null)
      return access QtAda6.QtWidgets.QGraphicsLineItem.Inst'Class;
   function addPath
     (self    : access Inst; path_P : access QtAda6.QtGui.QPainterPath.Inst'Class;
      pen_P   : UNION_QtAda6_QtGui_QPenQtAda6_QtCore_Qt_PenStyleQtAda6_QtGui_QColor := null;
      brush_P : UNION_QtAda6_QtGui_QBrushQtAda6_QtCore_Qt_BrushStyleQtAda6_QtCore_Qt_GlobalColorQtAda6_QtGui_QColorQtAda6_QtGui_QGradientQtAda6_QtGui_QImageQtAda6_QtGui_QPixmap :=
        null)
      return access QtAda6.QtWidgets.QGraphicsPathItem.Inst'Class;
   function addPixmap
     (self : access Inst; pixmap_P : UNION_QtAda6_QtGui_QPixmapQtAda6_QtGui_QImagestr)
      return access QtAda6.QtWidgets.QGraphicsPixmapItem.Inst'Class;
   function addPolygon
     (self    : access Inst; polygon_P : UNION_QtAda6_QtGui_QPolygonFSEQUENCE_QtAda6_QtCore_QRectF;
      pen_P   : UNION_QtAda6_QtGui_QPenQtAda6_QtCore_Qt_PenStyleQtAda6_QtGui_QColor := null;
      brush_P : UNION_QtAda6_QtGui_QBrushQtAda6_QtCore_Qt_BrushStyleQtAda6_QtCore_Qt_GlobalColorQtAda6_QtGui_QColorQtAda6_QtGui_QGradientQtAda6_QtGui_QImageQtAda6_QtGui_QPixmap :=
        null)
      return access QtAda6.QtWidgets.QGraphicsPolygonItem.Inst'Class;
   function addRect
     (self    : access Inst; rect_P : UNION_QtAda6_QtCore_QRectFQtAda6_QtCore_QRect;
      pen_P   : UNION_QtAda6_QtGui_QPenQtAda6_QtCore_Qt_PenStyleQtAda6_QtGui_QColor := null;
      brush_P : UNION_QtAda6_QtGui_QBrushQtAda6_QtCore_Qt_BrushStyleQtAda6_QtCore_Qt_GlobalColorQtAda6_QtGui_QColorQtAda6_QtGui_QGradientQtAda6_QtGui_QImageQtAda6_QtGui_QPixmap :=
        null)
      return access QtAda6.QtWidgets.QGraphicsRectItem.Inst'Class;
   function addRect
     (self    : access Inst; x_P : float; y_P : float; w_P : float; h_P : float;
      pen_P   : UNION_QtAda6_QtGui_QPenQtAda6_QtCore_Qt_PenStyleQtAda6_QtGui_QColor := null;
      brush_P : UNION_QtAda6_QtGui_QBrushQtAda6_QtCore_Qt_BrushStyleQtAda6_QtCore_Qt_GlobalColorQtAda6_QtGui_QColorQtAda6_QtGui_QGradientQtAda6_QtGui_QImageQtAda6_QtGui_QPixmap :=
        null)
      return access QtAda6.QtWidgets.QGraphicsRectItem.Inst'Class;
   function addSimpleText
     (self : access Inst; text_P : str; font_P : UNION_QtAda6_QtGui_QFontstrSEQUENCE_str := null)
      return access QtAda6.QtWidgets.QGraphicsSimpleTextItem.Inst'Class;
   function addText
     (self : access Inst; text_P : str; font_P : UNION_QtAda6_QtGui_QFontstrSEQUENCE_str := null)
      return access QtAda6.QtWidgets.QGraphicsTextItem.Inst'Class;
   function addWidget
     (self     : access Inst; widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class;
      wFlags_P : access QtAda6.QtCore.Qt.WindowType.Inst'Class := null)
      return access QtAda6.QtWidgets.QGraphicsProxyWidget.Inst'Class;
   procedure advance (self : access Inst);
   function backgroundBrush (self : access Inst) return access QtAda6.QtGui.QBrush.Inst'Class;
   function bspTreeDepth (self : access Inst) return int;
   procedure clear (self : access Inst);
   procedure clearFocus (self : access Inst);
   procedure clearSelection (self : access Inst);
   function collidingItems
     (self   : access Inst; item_P : access QtAda6.QtWidgets.QGraphicsItem.Inst'Class;
      mode_P : access QtAda6.QtCore.Qt.ItemSelectionMode.Inst'Class := null) return LIST_QtAda6_QtWidgets_QGraphicsItem;
   procedure contextMenuEvent
     (self : access Inst; event_P : access QtAda6.QtWidgets.QGraphicsSceneContextMenuEvent.Inst'Class);
   function createItemGroup
     (self : access Inst; items_P : SEQUENCE_QtAda6_QtWidgets_QGraphicsItem)
      return access QtAda6.QtWidgets.QGraphicsItemGroup.Inst'Class;
   procedure destroyItemGroup (self : access Inst; group_P : access QtAda6.QtWidgets.QGraphicsItemGroup.Inst'Class);
   procedure dragEnterEvent
     (self : access Inst; event_P : access QtAda6.QtWidgets.QGraphicsSceneDragDropEvent.Inst'Class);
   procedure dragLeaveEvent
     (self : access Inst; event_P : access QtAda6.QtWidgets.QGraphicsSceneDragDropEvent.Inst'Class);
   procedure dragMoveEvent
     (self : access Inst; event_P : access QtAda6.QtWidgets.QGraphicsSceneDragDropEvent.Inst'Class);
   procedure drawBackground
     (self   : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      rect_P : UNION_QtAda6_QtCore_QRectFQtAda6_QtCore_QRect);
   procedure drawForeground
     (self   : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      rect_P : UNION_QtAda6_QtCore_QRectFQtAda6_QtCore_QRect);
   procedure dropEvent (self : access Inst; event_P : access QtAda6.QtWidgets.QGraphicsSceneDragDropEvent.Inst'Class);
   function event (self : access Inst; event_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   function eventFilter
     (self    : access Inst; watched_P : access QtAda6.QtCore.QObject.Inst'Class;
      event_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   procedure focusInEvent (self : access Inst; event_P : access QtAda6.QtGui.QFocusEvent.Inst'Class);
   function focusItem (self : access Inst) return access QtAda6.QtWidgets.QGraphicsItem.Inst'Class;
   function focusNextPrevChild (self : access Inst; next_P : bool) return bool;
   function focusOnTouch (self : access Inst) return bool;
   procedure focusOutEvent (self : access Inst; event_P : access QtAda6.QtGui.QFocusEvent.Inst'Class);
   function font (self : access Inst) return access QtAda6.QtGui.QFont.Inst'Class;
   function foregroundBrush (self : access Inst) return access QtAda6.QtGui.QBrush.Inst'Class;
   function hasFocus (self : access Inst) return bool;
   function height (self : access Inst) return float;
   procedure helpEvent (self : access Inst; event_P : access QtAda6.QtWidgets.QGraphicsSceneHelpEvent.Inst'Class);
   procedure inputMethodEvent (self : access Inst; event_P : access QtAda6.QtGui.QInputMethodEvent.Inst'Class);
   function inputMethodQuery
     (self : access Inst; query_P : access QtAda6.QtCore.Qt.InputMethodQuery.Inst'Class) return Any;
   procedure invalidate
     (self     : access Inst; rect_P : UNION_QtAda6_QtCore_QRectFQtAda6_QtCore_QRect := null;
      layers_P : access QtAda6.QtWidgets.QGraphicsScene.SceneLayer.Inst'Class := null);
   procedure invalidate
     (self     : access Inst; x_P : float; y_P : float; w_P : float; h_P : float;
      layers_P : access QtAda6.QtWidgets.QGraphicsScene.SceneLayer.Inst'Class := null);
   function isActive (self : access Inst) return bool;
   function itemAt
     (self : access Inst; pos_P : UNION_QtAda6_QtCore_QPointFQtAda6_QtCore_QPointQtAda6_QtGui_QPainterPath_Element;
      deviceTransform_P : access QtAda6.QtGui.QTransform.Inst'Class)
      return access QtAda6.QtWidgets.QGraphicsItem.Inst'Class;
   function itemAt
     (self : access Inst; x_P : float; y_P : float; deviceTransform_P : access QtAda6.QtGui.QTransform.Inst'Class)
      return access QtAda6.QtWidgets.QGraphicsItem.Inst'Class;
   function itemIndexMethod_F
     (self : access Inst) return access QtAda6.QtWidgets.QGraphicsScene.ItemIndexMethod.Inst'Class;
   function items
     (self : access Inst; order_P : access QtAda6.QtCore.Qt.SortOrder.Inst'Class := null)
      return LIST_QtAda6_QtWidgets_QGraphicsItem;
   function items
     (self              : access Inst; path_P : access QtAda6.QtGui.QPainterPath.Inst'Class;
      mode_P            : access QtAda6.QtCore.Qt.ItemSelectionMode.Inst'Class := null;
      order_P           : access QtAda6.QtCore.Qt.SortOrder.Inst'Class         := null;
      deviceTransform_P : access QtAda6.QtGui.QTransform.Inst'Class := null) return LIST_QtAda6_QtWidgets_QGraphicsItem;
   function items
     (self              : access Inst; polygon_P : UNION_QtAda6_QtGui_QPolygonFSEQUENCE_QtAda6_QtCore_QRectF;
      mode_P            : access QtAda6.QtCore.Qt.ItemSelectionMode.Inst'Class := null;
      order_P           : access QtAda6.QtCore.Qt.SortOrder.Inst'Class         := null;
      deviceTransform_P : access QtAda6.QtGui.QTransform.Inst'Class := null) return LIST_QtAda6_QtWidgets_QGraphicsItem;
   function items
     (self : access Inst; pos_P : UNION_QtAda6_QtCore_QPointFQtAda6_QtCore_QPointQtAda6_QtGui_QPainterPath_Element;
      mode_P            : access QtAda6.QtCore.Qt.ItemSelectionMode.Inst'Class := null;
      order_P           : access QtAda6.QtCore.Qt.SortOrder.Inst'Class         := null;
      deviceTransform_P : access QtAda6.QtGui.QTransform.Inst'Class := null) return LIST_QtAda6_QtWidgets_QGraphicsItem;
   function items
     (self              : access Inst; rect_P : UNION_QtAda6_QtCore_QRectFQtAda6_QtCore_QRect;
      mode_P            : access QtAda6.QtCore.Qt.ItemSelectionMode.Inst'Class := null;
      order_P           : access QtAda6.QtCore.Qt.SortOrder.Inst'Class         := null;
      deviceTransform_P : access QtAda6.QtGui.QTransform.Inst'Class := null) return LIST_QtAda6_QtWidgets_QGraphicsItem;
   function items
     (self              : access Inst; x_P : float; y_P : float; w_P : float; h_P : float;
      mode_P            : access QtAda6.QtCore.Qt.ItemSelectionMode.Inst'Class;
      order_P           : access QtAda6.QtCore.Qt.SortOrder.Inst'Class;
      deviceTransform_P : access QtAda6.QtGui.QTransform.Inst'Class := null) return LIST_QtAda6_QtWidgets_QGraphicsItem;
   function itemsBoundingRect (self : access Inst) return access QtAda6.QtCore.QRectF.Inst'Class;
   procedure keyPressEvent (self : access Inst; event_P : access QtAda6.QtGui.QKeyEvent.Inst'Class);
   procedure keyReleaseEvent (self : access Inst; event_P : access QtAda6.QtGui.QKeyEvent.Inst'Class);
   function minimumRenderSize (self : access Inst) return float;
   procedure mouseDoubleClickEvent
     (self : access Inst; event_P : access QtAda6.QtWidgets.QGraphicsSceneMouseEvent.Inst'Class);
   function mouseGrabberItem (self : access Inst) return access QtAda6.QtWidgets.QGraphicsItem.Inst'Class;
   procedure mouseMoveEvent (self : access Inst; event_P : access QtAda6.QtWidgets.QGraphicsSceneMouseEvent.Inst'Class);
   procedure mousePressEvent
     (self : access Inst; event_P : access QtAda6.QtWidgets.QGraphicsSceneMouseEvent.Inst'Class);
   procedure mouseReleaseEvent
     (self : access Inst; event_P : access QtAda6.QtWidgets.QGraphicsSceneMouseEvent.Inst'Class);
   function palette (self : access Inst) return access QtAda6.QtGui.QPalette.Inst'Class;
   procedure removeItem (self : access Inst; item_P : access QtAda6.QtWidgets.QGraphicsItem.Inst'Class);
   procedure render
     (self              : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      target_P          : UNION_QtAda6_QtCore_QRectFQtAda6_QtCore_QRect      := null;
      source_P          : UNION_QtAda6_QtCore_QRectFQtAda6_QtCore_QRect      := null;
      aspectRatioMode_P : access QtAda6.QtCore.Qt.AspectRatioMode.Inst'Class := null);
   function sceneRect (self : access Inst) return access QtAda6.QtCore.QRectF.Inst'Class;
   function selectedItems (self : access Inst) return LIST_QtAda6_QtWidgets_QGraphicsItem;
   function selectionArea (self : access Inst) return access QtAda6.QtGui.QPainterPath.Inst'Class;
   function sendEvent
     (self    : access Inst; item_P : access QtAda6.QtWidgets.QGraphicsItem.Inst'Class;
      event_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   procedure setActivePanel (self : access Inst; item_P : access QtAda6.QtWidgets.QGraphicsItem.Inst'Class);
   procedure setActiveWindow (self : access Inst; widget_P : access QtAda6.QtWidgets.QGraphicsWidget.Inst'Class);
   procedure setBackgroundBrush
     (self    : access Inst;
      brush_P : UNION_QtAda6_QtGui_QBrushQtAda6_QtCore_Qt_BrushStyleQtAda6_QtCore_Qt_GlobalColorQtAda6_QtGui_QColorQtAda6_QtGui_QGradientQtAda6_QtGui_QImageQtAda6_QtGui_QPixmap);
   procedure setBspTreeDepth (self : access Inst; depth_P : int);
   procedure setFocus (self : access Inst; focusReason_P : access QtAda6.QtCore.Qt.FocusReason.Inst'Class := null);
   procedure setFocusItem
     (self          : access Inst; item_P : access QtAda6.QtWidgets.QGraphicsItem.Inst'Class;
      focusReason_P : access QtAda6.QtCore.Qt.FocusReason.Inst'Class := null);
   procedure setFocusOnTouch (self : access Inst; enabled_P : bool);
   procedure setFont (self : access Inst; font_P : UNION_QtAda6_QtGui_QFontstrSEQUENCE_str);
   procedure setForegroundBrush
     (self    : access Inst;
      brush_P : UNION_QtAda6_QtGui_QBrushQtAda6_QtCore_Qt_BrushStyleQtAda6_QtCore_Qt_GlobalColorQtAda6_QtGui_QColorQtAda6_QtGui_QGradientQtAda6_QtGui_QImageQtAda6_QtGui_QPixmap);
   procedure setItemIndexMethod
     (self : access Inst; method_P : access QtAda6.QtWidgets.QGraphicsScene.ItemIndexMethod.Inst'Class);
   procedure setMinimumRenderSize (self : access Inst; minSize_P : float);
   procedure setPalette
     (self : access Inst; palette_P : UNION_QtAda6_QtGui_QPaletteQtAda6_QtCore_Qt_GlobalColorQtAda6_QtGui_QColor);
   procedure setSceneRect (self : access Inst; rect_P : UNION_QtAda6_QtCore_QRectFQtAda6_QtCore_QRect);
   procedure setSceneRect (self : access Inst; x_P : float; y_P : float; w_P : float; h_P : float);
   procedure setSelectionArea
     (self              : access Inst; path_P : access QtAda6.QtGui.QPainterPath.Inst'Class;
      deviceTransform_P : access QtAda6.QtGui.QTransform.Inst'Class);
   procedure setSelectionArea
     (self                 : access Inst; path_P : access QtAda6.QtGui.QPainterPath.Inst'Class;
      selectionOperation_P : access QtAda6.QtCore.Qt.ItemSelectionOperation.Inst'Class := null;
      mode_P               : access QtAda6.QtCore.Qt.ItemSelectionMode.Inst'Class      := null;
      deviceTransform_P    : access QtAda6.QtGui.QTransform.Inst'Class                 := null);
   procedure setStickyFocus (self : access Inst; enabled_P : bool);
   procedure setStyle (self : access Inst; style_P : access QtAda6.QtWidgets.QStyle.Inst'Class);
   function stickyFocus (self : access Inst) return bool;
   function style (self : access Inst) return access QtAda6.QtWidgets.QStyle.Inst'Class;
   procedure update (self : access Inst; rect_P : UNION_QtAda6_QtCore_QRectFQtAda6_QtCore_QRect := null);
   procedure update (self : access Inst; x_P : float; y_P : float; w_P : float; h_P : float);
   function views (self : access Inst) return LIST_QtAda6_QtWidgets_QGraphicsView;
   procedure wheelEvent (self : access Inst; event_P : access QtAda6.QtWidgets.QGraphicsSceneWheelEvent.Inst'Class);
   function width (self : access Inst) return float;
end QtAda6.QtWidgets.QGraphicsScene;
