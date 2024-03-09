-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qgraphicswidget.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.Signal;
limited with QtAda6.QtWidgets.QGraphicsItem;
limited with QtAda6.QtCore.Qt.WindowType;
limited with QtAda6.QtGui.QAction;
limited with QtAda6.QtCore.QRectF;
limited with QtAda6.QtCore.QEvent;
limited with QtAda6.QtGui.QCloseEvent;
limited with QtAda6.QtGui.QFocusEvent;
limited with QtAda6.QtCore.Qt.FocusPolicy;
limited with QtAda6.QtGui.QFont;
limited with QtAda6.QtCore.Qt.ShortcutContext;
limited with QtAda6.QtGui.QHideEvent;
limited with QtAda6.QtWidgets.QGraphicsSceneHoverEvent;
limited with QtAda6.QtWidgets.QStyleOption;
limited with QtAda6.QtWidgets.QGraphicsItem.GraphicsItemChange;
limited with QtAda6.QtWidgets.QGraphicsLayout;
limited with QtAda6.QtCore.Qt.LayoutDirection;
limited with QtAda6.QtWidgets.QGraphicsSceneMoveEvent;
limited with QtAda6.QtGui.QPainter;
limited with QtAda6.QtWidgets.QStyleOptionGraphicsItem;
limited with QtAda6.QtWidgets.QWidget;
limited with QtAda6.QtGui.QPalette;
limited with QtAda6.QtWidgets.QGraphicsSceneResizeEvent;
limited with QtAda6.QtCore.Qt.WidgetAttribute;
limited with QtAda6.QtWidgets.QStyle;
limited with QtAda6.QtGui.QPainterPath;
limited with QtAda6.QtGui.QShowEvent;
limited with QtAda6.QtCore.QSizeF;
limited with QtAda6.QtCore.Qt.SizeHint;
limited with QtAda6.QtCore.Qt.WindowFrameSection;
with QtAda6.QtWidgets.QGraphicsObject;
with QtAda6.QtWidgets.QGraphicsLayoutItem;
package QtAda6.QtWidgets.QGraphicsWidget is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtWidgets.QGraphicsObject.Inst
--  and QtAda6.QtWidgets.QGraphicsLayoutItem.Inst
   with null record;
   subtype LIST_QtAda6_QtGui_QAction is QtAda6.QtGui.QAction.Class_Array;
   subtype SEQUENCE_QtAda6_QtGui_QAction is QtAda6.QtGui.QAction.Class_Array;
   type UNION_QtAda6_QtGui_QKeySequence_QtAda6_QtCore_QKeyCombination_QtAda6_QtGui_QKeySequence_StandardKey_str_int is
     new Any;
   type UNION_QtAda6_QtCore_QSizeF_QtAda6_QtCore_QSize is new Any;
   type UNION_QtAda6_QtCore_QMarginsF_QtAda6_QtCore_QMargins is new Any;
   type UNION_QtAda6_QtGui_QFont_str_SEQUENCE_str is new Any;
   type UNION_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect is new Any;
   type UNION_QtAda6_QtGui_QPalette_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor is new Any;
   type UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element is new Any;
   procedure Finalize (Self : in out Class);
   function geometryChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- geometryChanged()
   function layoutChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- layoutChanged()
   function Create
     (parent_P : access QtAda6.QtWidgets.QGraphicsItem.Inst'Class := null;
      wFlags_P : access QtAda6.QtCore.Qt.WindowType.Inst'Class    := null) return Class;
   function actions (self : access Inst) return LIST_QtAda6_QtGui_QAction;
   procedure addAction (self : access Inst; action_P : access QtAda6.QtGui.QAction.Inst'Class);
   procedure addActions (self : access Inst; actions_P : SEQUENCE_QtAda6_QtGui_QAction);
   procedure adjustSize (self : access Inst);
   function autoFillBackground (self : access Inst) return bool;
   function boundingRect (self : access Inst) return access QtAda6.QtCore.QRectF.Inst'Class;
   procedure changeEvent (self : access Inst; event_P : access QtAda6.QtCore.QEvent.Inst'Class);
   function close (self : access Inst) return bool;
   procedure closeEvent (self : access Inst; event_P : access QtAda6.QtGui.QCloseEvent.Inst'Class);
   function event (self : access Inst; event_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   procedure focusInEvent (self : access Inst; event_P : access QtAda6.QtGui.QFocusEvent.Inst'Class);
   function focusNextPrevChild (self : access Inst; next_P : bool) return bool;
   procedure focusOutEvent (self : access Inst; event_P : access QtAda6.QtGui.QFocusEvent.Inst'Class);
   function focusPolicy (self : access Inst) return access QtAda6.QtCore.Qt.FocusPolicy.Inst'Class;
   function focusWidget (self : access Inst) return access QtAda6.QtWidgets.QGraphicsWidget.Inst'Class;
   function font (self : access Inst) return access QtAda6.QtGui.QFont.Inst'Class;
   function getContentsMargins (self : access Inst) return access Object'Class;
   function getWindowFrameMargins (self : access Inst) return access Object'Class;
   procedure grabKeyboardEvent (self : access Inst; event_P : access QtAda6.QtCore.QEvent.Inst'Class);
   procedure grabMouseEvent (self : access Inst; event_P : access QtAda6.QtCore.QEvent.Inst'Class);
   function grabShortcut
     (self       : access Inst;
      sequence_P : UNION_QtAda6_QtGui_QKeySequence_QtAda6_QtCore_QKeyCombination_QtAda6_QtGui_QKeySequence_StandardKey_str_int;
      context_P  : access QtAda6.QtCore.Qt.ShortcutContext.Inst'Class := null) return int;
   procedure hideEvent (self : access Inst; event_P : access QtAda6.QtGui.QHideEvent.Inst'Class);
   procedure hoverLeaveEvent
     (self : access Inst; event_P : access QtAda6.QtWidgets.QGraphicsSceneHoverEvent.Inst'Class);
   procedure hoverMoveEvent (self : access Inst; event_P : access QtAda6.QtWidgets.QGraphicsSceneHoverEvent.Inst'Class);
   procedure initStyleOption (self : access Inst; option_P : access QtAda6.QtWidgets.QStyleOption.Inst'Class);
   procedure insertAction
     (self     : access Inst; before_P : access QtAda6.QtGui.QAction.Inst'Class;
      action_P : access QtAda6.QtGui.QAction.Inst'Class);
   procedure insertActions
     (self : access Inst; before_P : access QtAda6.QtGui.QAction.Inst'Class; actions_P : SEQUENCE_QtAda6_QtGui_QAction);
   function isActiveWindow (self : access Inst) return bool;
   function itemChange
     (self : access Inst; change_P : access QtAda6.QtWidgets.QGraphicsItem.GraphicsItemChange.Inst'Class; value_P : Any)
      return Any;
   function layout (self : access Inst) return access QtAda6.QtWidgets.QGraphicsLayout.Inst'Class;
   function layoutDirection (self : access Inst) return access QtAda6.QtCore.Qt.LayoutDirection.Inst'Class;
   procedure moveEvent (self : access Inst; event_P : access QtAda6.QtWidgets.QGraphicsSceneMoveEvent.Inst'Class);
   procedure paint
     (self     : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      option_P : access QtAda6.QtWidgets.QStyleOptionGraphicsItem.Inst'Class;
      widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null);
   procedure paintWindowFrame
     (self     : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      option_P : access QtAda6.QtWidgets.QStyleOptionGraphicsItem.Inst'Class;
      widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null);
   function palette (self : access Inst) return access QtAda6.QtGui.QPalette.Inst'Class;
   procedure polishEvent (self : access Inst);
   function propertyChange (self : access Inst; propertyName_P : str; value_P : Any) return Any;
   function rect (self : access Inst) return access QtAda6.QtCore.QRectF.Inst'Class;
   procedure releaseShortcut (self : access Inst; id_P : int);
   procedure removeAction (self : access Inst; action_P : access QtAda6.QtGui.QAction.Inst'Class);
   procedure resize (self : access Inst; size_P : UNION_QtAda6_QtCore_QSizeF_QtAda6_QtCore_QSize);
   procedure resize (self : access Inst; w_P : float; h_P : float);
   procedure resizeEvent (self : access Inst; event_P : access QtAda6.QtWidgets.QGraphicsSceneResizeEvent.Inst'Class);
   function sceneEvent (self : access Inst; event_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   procedure setAttribute
     (self : access Inst; attribute_P : access QtAda6.QtCore.Qt.WidgetAttribute.Inst'Class; on_P : bool := False);
   procedure setAutoFillBackground (self : access Inst; enabled_P : bool);
   procedure setContentsMargins (self : access Inst; left_P : float; top_P : float; right_P : float; bottom_P : float);
   procedure setContentsMargins (self : access Inst; margins_P : UNION_QtAda6_QtCore_QMarginsF_QtAda6_QtCore_QMargins);
   procedure setFocusPolicy (self : access Inst; policy_P : access QtAda6.QtCore.Qt.FocusPolicy.Inst'Class);
   procedure setFont (self : access Inst; font_P : UNION_QtAda6_QtGui_QFont_str_SEQUENCE_str);
   procedure setGeometry (self : access Inst; rect_P : UNION_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect);
   procedure setGeometry (self : access Inst; x_P : float; y_P : float; w_P : float; h_P : float);
   procedure setLayout (self : access Inst; layout_P : access QtAda6.QtWidgets.QGraphicsLayout.Inst'Class);
   procedure setLayoutDirection (self : access Inst; direction_P : access QtAda6.QtCore.Qt.LayoutDirection.Inst'Class);
   procedure setPalette
     (self : access Inst; palette_P : UNION_QtAda6_QtGui_QPalette_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor);
   procedure setShortcutAutoRepeat (self : access Inst; id_P : int; enabled_P : bool := False);
   procedure setShortcutEnabled (self : access Inst; id_P : int; enabled_P : bool := False);
   procedure setStyle (self : access Inst; style_P : access QtAda6.QtWidgets.QStyle.Inst'Class);
   procedure setTabOrder
     (first_P  : access QtAda6.QtWidgets.QGraphicsWidget.Inst'Class;
      second_P : access QtAda6.QtWidgets.QGraphicsWidget.Inst'Class);
   procedure setWindowFlags (self : access Inst; wFlags_P : access QtAda6.QtCore.Qt.WindowType.Inst'Class);
   procedure setWindowFrameMargins
     (self : access Inst; left_P : float; top_P : float; right_P : float; bottom_P : float);
   procedure setWindowFrameMargins
     (self : access Inst; margins_P : UNION_QtAda6_QtCore_QMarginsF_QtAda6_QtCore_QMargins);
   procedure setWindowTitle (self : access Inst; title_P : str);
   function shape (self : access Inst) return access QtAda6.QtGui.QPainterPath.Inst'Class;
   procedure showEvent (self : access Inst; event_P : access QtAda6.QtGui.QShowEvent.Inst'Class);
   function size (self : access Inst) return access QtAda6.QtCore.QSizeF.Inst'Class;
   function sizeHint
     (self         : access Inst; which_P : access QtAda6.QtCore.Qt.SizeHint.Inst'Class;
      constraint_P : UNION_QtAda6_QtCore_QSizeF_QtAda6_QtCore_QSize := null)
      return access QtAda6.QtCore.QSizeF.Inst'Class;
   function style (self : access Inst) return access QtAda6.QtWidgets.QStyle.Inst'Class;
   function testAttribute
     (self : access Inst; attribute_P : access QtAda6.QtCore.Qt.WidgetAttribute.Inst'Class) return bool;
   function type_K (self : access Inst) return int;
   procedure ungrabKeyboardEvent (self : access Inst; event_P : access QtAda6.QtCore.QEvent.Inst'Class);
   procedure ungrabMouseEvent (self : access Inst; event_P : access QtAda6.QtCore.QEvent.Inst'Class);
   procedure unsetLayoutDirection (self : access Inst);
   procedure unsetWindowFrameMargins (self : access Inst);
   procedure updateGeometry (self : access Inst);
   function windowFlags (self : access Inst) return access QtAda6.QtCore.Qt.WindowType.Inst'Class;
   function windowFrameEvent (self : access Inst; e_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   function windowFrameGeometry (self : access Inst) return access QtAda6.QtCore.QRectF.Inst'Class;
   function windowFrameRect (self : access Inst) return access QtAda6.QtCore.QRectF.Inst'Class;
   function windowFrameSectionAt
     (self : access Inst; pos_P : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element)
      return access QtAda6.QtCore.Qt.WindowFrameSection.Inst'Class;
   function windowTitle (self : access Inst) return str;
   function windowType (self : access Inst) return access QtAda6.QtCore.Qt.WindowType.Inst'Class;
end QtAda6.QtWidgets.QGraphicsWidget;
