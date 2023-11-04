-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qgraphicsview.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtWidgets.QWidget;
limited with QtAda6.QtWidgets.QGraphicsScene;
limited with QtAda6.QtCore.Qt.AlignmentFlag;
limited with QtAda6.QtGui.QBrush;
limited with QtAda6.QtWidgets.QGraphicsView.CacheModeFlag;
limited with QtAda6.QtWidgets.QGraphicsItem;
limited with QtAda6.QtCore.QPointF;
limited with QtAda6.QtCore.QPoint;
limited with QtAda6.QtGui.QPainterPath.Element;
limited with QtAda6.QtGui.QContextMenuEvent;
limited with QtAda6.QtGui.QDragEnterEvent;
limited with QtAda6.QtGui.QDragLeaveEvent;
limited with QtAda6.QtWidgets.QGraphicsView.DragMode;
limited with QtAda6.QtGui.QDragMoveEvent;
limited with QtAda6.QtGui.QPainter;
limited with QtAda6.QtCore.QRectF;
limited with QtAda6.QtCore.QRect;
limited with QtAda6.QtGui.QDropEvent;
limited with QtAda6.QtCore.QEvent;
limited with QtAda6.QtCore.Qt.AspectRatioMode;
limited with QtAda6.QtGui.QFocusEvent;
limited with QtAda6.QtGui.QInputMethodEvent;
limited with QtAda6.QtCore.Qt.InputMethodQuery;
limited with QtAda6.QtWidgets.QGraphicsScene.SceneLayer;
limited with QtAda6.QtGui.QPainterPath;
limited with QtAda6.QtCore.Qt.ItemSelectionMode;
limited with QtAda6.QtGui.QPolygon;
limited with QtAda6.QtGui.QKeyEvent;
limited with QtAda6.QtGui.QPolygonF;
limited with QtAda6.QtGui.QMouseEvent;
limited with QtAda6.QtWidgets.QGraphicsView.OptimizationFlag;
limited with QtAda6.QtGui.QPaintEvent;
limited with QtAda6.QtGui.QPainter.RenderHint;
limited with QtAda6.QtWidgets.QGraphicsView.ViewportAnchor;
limited with QtAda6.QtGui.QResizeEvent;
limited with QtAda6.QtCore.Qt.BrushStyle;
limited with QtAda6.QtCore.Qt.GlobalColor;
limited with QtAda6.QtGui.QColor;
limited with QtAda6.QtGui.QGradient;
limited with QtAda6.QtGui.QImage;
limited with QtAda6.QtGui.QPixmap;
limited with QtAda6.QtGui.QTransform;
limited with QtAda6.QtWidgets.QGraphicsView.ViewportUpdateMode;
limited with QtAda6.QtGui.QShowEvent;
limited with QtAda6.QtCore.QSize;
limited with QtAda6.QtGui.QWheelEvent;
with QtAda6.QtWidgets.QAbstractScrollArea;
package QtAda6.QtWidgets.QGraphicsView is
   type ClassVar_Signal is access Any;
   type Optional_QtAda6_QtWidgets_QWidget is access Any;
   type Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element is access Any;
   type Union_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect is access Any;
   type List_QtAda6_QtWidgets_QGraphicsItem is access Any;
   type Union_QtAda6_QtGui_QPolygon_Sequence_QtAda6_QtCore_QPoint_QtAda6_QtCore_QRect is access Any;
   type Union_QtAda6_QtGui_QPolygonF_Sequence_QtAda6_QtCore_QPointF_QtAda6_QtGui_QPolygon_QtAda6_QtCore_QRectF is
     access Any;
   type Union_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap is
     access Any;
   type Sequence_QtAda6_QtCore_QRectF is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new QtAda6.QtWidgets.QAbstractScrollArea.Inst with null record;
   procedure Finalize (Self : in out Class);
   rubberBandChanged : ClassVar_Signal;-- rubberBandChanged(QRect,QPointF,QPointF)
   function Create (parent_P : Optional_QtAda6_QtWidgets_QWidget) return Class;
   function Create
     (scene_P : access QtAda6.QtWidgets.QGraphicsScene.Inst'Class; parent_P : Optional_QtAda6_QtWidgets_QWidget)
      return Class;
   function alignment (self : access Inst) return access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class;
   function backgroundBrush (self : access Inst) return access QtAda6.QtGui.QBrush.Inst'Class;
   function cacheMode_F (self : access Inst) return access QtAda6.QtWidgets.QGraphicsView.CacheModeFlag.Inst'Class;
   procedure centerOn (self : access Inst; item_P : access QtAda6.QtWidgets.QGraphicsItem.Inst'Class);
   procedure centerOn
     (self : access Inst; pos_P : Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element);
   procedure centerOn (self : access Inst; x_P : float; y_P : float);
   procedure contextMenuEvent (self : access Inst; event_P : access QtAda6.QtGui.QContextMenuEvent.Inst'Class);
   procedure dragEnterEvent (self : access Inst; event_P : access QtAda6.QtGui.QDragEnterEvent.Inst'Class);
   procedure dragLeaveEvent (self : access Inst; event_P : access QtAda6.QtGui.QDragLeaveEvent.Inst'Class);
   function dragMode_F (self : access Inst) return access QtAda6.QtWidgets.QGraphicsView.DragMode.Inst'Class;
   procedure dragMoveEvent (self : access Inst; event_P : access QtAda6.QtGui.QDragMoveEvent.Inst'Class);
   procedure drawBackground
     (self   : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      rect_P : Union_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect);
   procedure drawForeground
     (self   : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      rect_P : Union_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect);
   procedure drawItems
     (self      : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class; items_P : Iterable;
      options_P : Iterable);
   procedure dropEvent (self : access Inst; event_P : access QtAda6.QtGui.QDropEvent.Inst'Class);
   procedure ensureVisible
     (self : access Inst; item_P : access QtAda6.QtWidgets.QGraphicsItem.Inst'Class; xmargin_P : int; ymargin_P : int);
   procedure ensureVisible
     (self : access Inst; rect_P : Union_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect; xmargin_P : int; ymargin_P : int);
   procedure ensureVisible
     (self : access Inst; x_P : float; y_P : float; w_P : float; h_P : float; xmargin_P : int; ymargin_P : int);
   function event (self : access Inst; event_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   procedure fitInView
     (self              : access Inst; item_P : access QtAda6.QtWidgets.QGraphicsItem.Inst'Class;
      aspectRadioMode_P : access QtAda6.QtCore.Qt.AspectRatioMode.Inst'Class);
   procedure fitInView
     (self              : access Inst; rect_P : Union_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect;
      aspectRadioMode_P : access QtAda6.QtCore.Qt.AspectRatioMode.Inst'Class);
   procedure fitInView
     (self              : access Inst; x_P : float; y_P : float; w_P : float; h_P : float;
      aspectRadioMode_P : access QtAda6.QtCore.Qt.AspectRatioMode.Inst'Class);
   procedure focusInEvent (self : access Inst; event_P : access QtAda6.QtGui.QFocusEvent.Inst'Class);
   function focusNextPrevChild (self : access Inst; next_P : bool) return bool;
   procedure focusOutEvent (self : access Inst; event_P : access QtAda6.QtGui.QFocusEvent.Inst'Class);
   function foregroundBrush (self : access Inst) return access QtAda6.QtGui.QBrush.Inst'Class;
   procedure inputMethodEvent (self : access Inst; event_P : access QtAda6.QtGui.QInputMethodEvent.Inst'Class);
   function inputMethodQuery
     (self : access Inst; query_P : access QtAda6.QtCore.Qt.InputMethodQuery.Inst'Class) return Any;
   procedure invalidateScene
     (self     : access Inst; rect_P : Union_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect;
      layers_P : access QtAda6.QtWidgets.QGraphicsScene.SceneLayer.Inst'Class);
   function isInteractive (self : access Inst) return bool;
   function isTransformed (self : access Inst) return bool;
   function itemAt
     (self : access Inst; pos_P : access QtAda6.QtCore.QPoint.Inst'Class)
      return access QtAda6.QtWidgets.QGraphicsItem.Inst'Class;
   function itemAt (self : access Inst; x_P : int; y_P : int) return access QtAda6.QtWidgets.QGraphicsItem.Inst'Class;
   function items (self : access Inst) return List_QtAda6_QtWidgets_QGraphicsItem;
   function items
     (self   : access Inst; path_P : access QtAda6.QtGui.QPainterPath.Inst'Class;
      mode_P : access QtAda6.QtCore.Qt.ItemSelectionMode.Inst'Class) return List_QtAda6_QtWidgets_QGraphicsItem;
   function items
     (self   : access Inst; polygon_P : Union_QtAda6_QtGui_QPolygon_Sequence_QtAda6_QtCore_QPoint_QtAda6_QtCore_QRect;
      mode_P : access QtAda6.QtCore.Qt.ItemSelectionMode.Inst'Class) return List_QtAda6_QtWidgets_QGraphicsItem;
   function items
     (self : access Inst; pos_P : access QtAda6.QtCore.QPoint.Inst'Class) return List_QtAda6_QtWidgets_QGraphicsItem;
   function items
     (self   : access Inst; rect_P : access QtAda6.QtCore.QRect.Inst'Class;
      mode_P : access QtAda6.QtCore.Qt.ItemSelectionMode.Inst'Class) return List_QtAda6_QtWidgets_QGraphicsItem;
   function items (self : access Inst; x_P : int; y_P : int) return List_QtAda6_QtWidgets_QGraphicsItem;
   function items
     (self   : access Inst; x_P : int; y_P : int; w_P : int; h_P : int;
      mode_P : access QtAda6.QtCore.Qt.ItemSelectionMode.Inst'Class) return List_QtAda6_QtWidgets_QGraphicsItem;
   procedure keyPressEvent (self : access Inst; event_P : access QtAda6.QtGui.QKeyEvent.Inst'Class);
   procedure keyReleaseEvent (self : access Inst; event_P : access QtAda6.QtGui.QKeyEvent.Inst'Class);
   function mapFromScene
     (self : access Inst; path_P : access QtAda6.QtGui.QPainterPath.Inst'Class)
      return access QtAda6.QtGui.QPainterPath.Inst'Class;
   function mapFromScene
     (self : access Inst; point_P : Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element)
      return access QtAda6.QtCore.QPoint.Inst'Class;
   function mapFromScene
     (self      : access Inst;
      polygon_P : Union_QtAda6_QtGui_QPolygonF_Sequence_QtAda6_QtCore_QPointF_QtAda6_QtGui_QPolygon_QtAda6_QtCore_QRectF)
      return access QtAda6.QtGui.QPolygon.Inst'Class;
   function mapFromScene
     (self : access Inst; rect_P : Union_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect)
      return access QtAda6.QtGui.QPolygon.Inst'Class;
   function mapFromScene (self : access Inst; x_P : float; y_P : float) return access QtAda6.QtCore.QPoint.Inst'Class;
   function mapFromScene
     (self : access Inst; x_P : float; y_P : float; w_P : float; h_P : float)
      return access QtAda6.QtGui.QPolygon.Inst'Class;
   function mapToScene
     (self : access Inst; path_P : access QtAda6.QtGui.QPainterPath.Inst'Class)
      return access QtAda6.QtGui.QPainterPath.Inst'Class;
   function mapToScene
     (self : access Inst; point_P : access QtAda6.QtCore.QPoint.Inst'Class)
      return access QtAda6.QtCore.QPointF.Inst'Class;
   function mapToScene
     (self : access Inst; polygon_P : Union_QtAda6_QtGui_QPolygon_Sequence_QtAda6_QtCore_QPoint_QtAda6_QtCore_QRect)
      return access QtAda6.QtGui.QPolygonF.Inst'Class;
   function mapToScene
     (self : access Inst; rect_P : access QtAda6.QtCore.QRect.Inst'Class)
      return access QtAda6.QtGui.QPolygonF.Inst'Class;
   function mapToScene (self : access Inst; x_P : int; y_P : int) return access QtAda6.QtCore.QPointF.Inst'Class;
   function mapToScene
     (self : access Inst; x_P : int; y_P : int; w_P : int; h_P : int) return access QtAda6.QtGui.QPolygonF.Inst'Class;
   procedure mouseDoubleClickEvent (self : access Inst; event_P : access QtAda6.QtGui.QMouseEvent.Inst'Class);
   procedure mouseMoveEvent (self : access Inst; event_P : access QtAda6.QtGui.QMouseEvent.Inst'Class);
   procedure mousePressEvent (self : access Inst; event_P : access QtAda6.QtGui.QMouseEvent.Inst'Class);
   procedure mouseReleaseEvent (self : access Inst; event_P : access QtAda6.QtGui.QMouseEvent.Inst'Class);
   function optimizationFlags
     (self : access Inst) return access QtAda6.QtWidgets.QGraphicsView.OptimizationFlag.Inst'Class;
   procedure paintEvent (self : access Inst; event_P : access QtAda6.QtGui.QPaintEvent.Inst'Class);
   procedure render
     (self              : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      target_P : Union_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect; source_P : access QtAda6.QtCore.QRect.Inst'Class;
      aspectRatioMode_P : access QtAda6.QtCore.Qt.AspectRatioMode.Inst'Class);
   function renderHints (self : access Inst) return access QtAda6.QtGui.QPainter.RenderHint.Inst'Class;
   procedure resetCachedContent (self : access Inst);
   procedure resetTransform (self : access Inst);
   function resizeAnchor (self : access Inst) return access QtAda6.QtWidgets.QGraphicsView.ViewportAnchor.Inst'Class;
   procedure resizeEvent (self : access Inst; event_P : access QtAda6.QtGui.QResizeEvent.Inst'Class);
   procedure rotate (self : access Inst; angle_P : float);
   function rubberBandRect (self : access Inst) return access QtAda6.QtCore.QRect.Inst'Class;
   function rubberBandSelectionMode (self : access Inst) return access QtAda6.QtCore.Qt.ItemSelectionMode.Inst'Class;
   procedure scale (self : access Inst; sx_P : float; sy_P : float);
   function scene (self : access Inst) return access QtAda6.QtWidgets.QGraphicsScene.Inst'Class;
   function sceneRect (self : access Inst) return access QtAda6.QtCore.QRectF.Inst'Class;
   procedure scrollContentsBy (self : access Inst; dx_P : int; dy_P : int);
   procedure setAlignment (self : access Inst; alignment_P : access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class);
   procedure setBackgroundBrush
     (self    : access Inst;
      brush_P : Union_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap);
   procedure setCacheMode (self : access Inst; mode_P : access QtAda6.QtWidgets.QGraphicsView.CacheModeFlag.Inst'Class);
   procedure setDragMode (self : access Inst; mode_P : access QtAda6.QtWidgets.QGraphicsView.DragMode.Inst'Class);
   procedure setForegroundBrush
     (self    : access Inst;
      brush_P : Union_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap);
   procedure setInteractive (self : access Inst; allowed_P : bool);
   procedure setOptimizationFlag
     (self : access Inst; flag_P : access QtAda6.QtWidgets.QGraphicsView.OptimizationFlag.Inst'Class; enabled_P : bool);
   procedure setOptimizationFlags
     (self : access Inst; flags_P : access QtAda6.QtWidgets.QGraphicsView.OptimizationFlag.Inst'Class);
   procedure setRenderHint
     (self : access Inst; hint_P : access QtAda6.QtGui.QPainter.RenderHint.Inst'Class; enabled_P : bool);
   procedure setRenderHints (self : access Inst; hints_P : access QtAda6.QtGui.QPainter.RenderHint.Inst'Class);
   procedure setResizeAnchor
     (self : access Inst; anchor_P : access QtAda6.QtWidgets.QGraphicsView.ViewportAnchor.Inst'Class);
   procedure setRubberBandSelectionMode
     (self : access Inst; mode_P : access QtAda6.QtCore.Qt.ItemSelectionMode.Inst'Class);
   procedure setScene (self : access Inst; scene_P : access QtAda6.QtWidgets.QGraphicsScene.Inst'Class);
   procedure setSceneRect (self : access Inst; rect_P : Union_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect);
   procedure setSceneRect (self : access Inst; x_P : float; y_P : float; w_P : float; h_P : float);
   procedure setTransform (self : access Inst; matrix_P : access QtAda6.QtGui.QTransform.Inst'Class; combine_P : bool);
   procedure setTransformationAnchor
     (self : access Inst; anchor_P : access QtAda6.QtWidgets.QGraphicsView.ViewportAnchor.Inst'Class);
   procedure setViewportUpdateMode
     (self : access Inst; mode_P : access QtAda6.QtWidgets.QGraphicsView.ViewportUpdateMode.Inst'Class);
   procedure setupViewport (self : access Inst; widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class);
   procedure shear (self : access Inst; sh_P : float; sv_P : float);
   procedure showEvent (self : access Inst; event_P : access QtAda6.QtGui.QShowEvent.Inst'Class);
   function sizeHint (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   function transform (self : access Inst) return access QtAda6.QtGui.QTransform.Inst'Class;
   function transformationAnchor
     (self : access Inst) return access QtAda6.QtWidgets.QGraphicsView.ViewportAnchor.Inst'Class;
   procedure translate (self : access Inst; dx_P : float; dy_P : float);
   procedure updateScene (self : access Inst; rects_P : Sequence_QtAda6_QtCore_QRectF);
   procedure updateSceneRect (self : access Inst; rect_P : Union_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect);
   function viewportEvent (self : access Inst; event_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   function viewportTransform (self : access Inst) return access QtAda6.QtGui.QTransform.Inst'Class;
   function viewportUpdateMode_F
     (self : access Inst) return access QtAda6.QtWidgets.QGraphicsView.ViewportUpdateMode.Inst'Class;
   procedure wheelEvent (self : access Inst; event_P : access QtAda6.QtGui.QWheelEvent.Inst'Class);
end QtAda6.QtWidgets.QGraphicsView;
