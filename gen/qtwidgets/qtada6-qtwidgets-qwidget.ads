-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qwidget.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.Qt.WindowType;
limited with QtAda6.QtGui.QActionEvent;
limited with QtAda6.QtGui.QAction;
limited with QtAda6.QtGui.QIcon;
limited with QtAda6.QtGui.QPixmap;
limited with QtAda6.QtCore.Qt.ConnectionType;
limited with QtAda6.QtGui.QKeySequence;
limited with QtAda6.QtCore.QKeyCombination;
limited with QtAda6.QtGui.QKeySequence.StandardKey;
limited with QtAda6.QtGui.QPalette.ColorRole;
limited with QtAda6.QtGui.QBackingStore;
limited with QtAda6.QtCore.QSize;
limited with QtAda6.QtCore.QEvent;
limited with QtAda6.QtCore.QPoint;
limited with QtAda6.QtCore.QRect;
limited with QtAda6.QtGui.QRegion;
limited with QtAda6.QtGui.QCloseEvent;
limited with QtAda6.QtCore.QMargins;
limited with QtAda6.QtGui.QContextMenuEvent;
limited with QtAda6.QtCore.Qt.ContextMenuPolicy;
limited with QtAda6.QtGui.QWindow;
limited with QtAda6.QtGui.QCursor;
limited with QtAda6.QtGui.QDragEnterEvent;
limited with QtAda6.QtGui.QDragLeaveEvent;
limited with QtAda6.QtGui.QDragMoveEvent;
limited with QtAda6.QtGui.QDropEvent;
limited with QtAda6.QtGui.QEnterEvent;
limited with QtAda6.QtGui.QFocusEvent;
limited with QtAda6.QtCore.Qt.FocusPolicy;
limited with QtAda6.QtGui.QFont;
limited with QtAda6.QtGui.QFontInfo;
limited with QtAda6.QtGui.QFontMetrics;
limited with QtAda6.QtCore.Qt.GestureType;
limited with QtAda6.QtCore.Qt.GestureFlag;
limited with QtAda6.QtCore.Qt.CursorShape;
limited with QtAda6.QtCore.Qt.ShortcutContext;
limited with QtAda6.QtWidgets.QGraphicsEffect;
limited with QtAda6.QtWidgets.QGraphicsProxyWidget;
limited with QtAda6.QtGui.QHideEvent;
limited with QtAda6.QtGui.QPainter;
limited with QtAda6.QtGui.QInputMethodEvent;
limited with QtAda6.QtCore.Qt.InputMethodHint;
limited with QtAda6.QtCore.Qt.InputMethodQuery;
limited with QtAda6.QtGui.QKeyEvent;
limited with QtAda6.QtWidgets.QLayout;
limited with QtAda6.QtCore.Qt.LayoutDirection;
limited with QtAda6.QtCore.QLocale;
limited with QtAda6.QtCore.QPointF;
limited with QtAda6.QtGui.QPainterPath.Element;
limited with QtAda6.QtGui.QPaintDevice.PaintDeviceMetric;
limited with QtAda6.QtGui.QMouseEvent;
limited with QtAda6.QtGui.QMoveEvent;
limited with QtAda6.QtCore.QByteArray;
limited with QtAda6.QtCore.Qt.WindowState;
limited with QtAda6.QtGui.QPaintEngine;
limited with QtAda6.QtGui.QPaintEvent;
limited with QtAda6.QtGui.QPalette;
limited with QtAda6.QtGui.QBitmap;
limited with QtAda6.QtGui.QPolygon;
limited with QtAda6.QtWidgets.QWidget.RenderFlag;
limited with QtAda6.QtGui.QResizeEvent;
limited with QtAda6.QtGui.QScreen;
limited with QtAda6.QtCore.Qt.WidgetAttribute;
limited with QtAda6.QtCore.Qt.FocusReason;
limited with QtAda6.QtCore.QLocale.Language;
limited with QtAda6.QtCore.Qt.GlobalColor;
limited with QtAda6.QtGui.QColor;
limited with QtAda6.QtWidgets.QSizePolicy;
limited with QtAda6.QtWidgets.QSizePolicy.Policy;
limited with QtAda6.QtWidgets.QStyle;
limited with QtAda6.QtCore.Qt.WindowModality;
limited with QtAda6.QtGui.QShowEvent;
limited with QtAda6.QtGui.QTabletEvent;
limited with QtAda6.QtGui.QWheelEvent;
with QtAda6.QtCore.QObject;
with QtAda6.QtGui.QPaintDevice;
package QtAda6.QtWidgets.QWidget is
   type ClassVar_Signal is access Any;
   type Optional_QtAda6_QtWidgets_QWidget is access Any;
   type List_QtAda6_QtGui_QAction is access Any;
   type Union_QtAda6_QtGui_QIcon_QtAda6_QtGui_QPixmap is access Any;
   type Union_QtAda6_QtGui_QKeySequence_QtAda6_QtCore_QKeyCombination_QtAda6_QtGui_QKeySequence_StandardKey_str_int is
     access Any;
   type Sequence_QtAda6_QtGui_QAction is access Any;
   type Union_QtAda6_QtGui_QCursor_QtAda6_QtCore_Qt_CursorShape_QtAda6_QtGui_QPixmap is access Any;
   type Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element is access Any;
   type Union_QtAda6_QtCore_QByteArray_bytes is access Any;
   type Union_QtAda6_QtGui_QRegion_QtAda6_QtGui_QBitmap_QtAda6_QtGui_QPolygon_QtAda6_QtCore_QRect is access Any;
   type Union_QtAda6_QtGui_QFont_str_Sequence_str is access Any;
   type Union_QtAda6_QtCore_QLocale_QtAda6_QtCore_QLocale_Language is access Any;
   type Union_QtAda6_QtGui_QBitmap_str is access Any;
   type Union_QtAda6_QtGui_QPalette_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new QtAda6.QtCore.QObject.Inst
--  and QtAda6.QtGui.QPaintDevice.Inst
   with null record;
   procedure Finalize (Self : in out Class);
   customContextMenuRequested : ClassVar_Signal;-- customContextMenuRequested(QPoint)
   windowIconChanged          : ClassVar_Signal;-- windowIconChanged(QIcon)
   windowIconTextChanged      : ClassVar_Signal;-- windowIconTextChanged(QString)
   windowTitleChanged         : ClassVar_Signal;-- windowTitleChanged(QString)
   function Create
     (parent_P : Optional_QtAda6_QtWidgets_QWidget := null; f_P : access QtAda6.QtCore.Qt.WindowType.Inst'Class := null)
      return Class;
   function acceptDrops (self : access Inst) return bool;
   function accessibleDescription (self : access Inst) return str;
   function accessibleName (self : access Inst) return str;
   procedure actionEvent (self : access Inst; event_P : access QtAda6.QtGui.QActionEvent.Inst'Class);
   function actions (self : access Inst) return List_QtAda6_QtGui_QAction;
   procedure activateWindow (self : access Inst);
   procedure addAction (self : access Inst; action_P : access QtAda6.QtGui.QAction.Inst'Class);
   function addAction
     (self : access Inst; icon_P : Union_QtAda6_QtGui_QIcon_QtAda6_QtGui_QPixmap; text_P : str)
      return access QtAda6.QtGui.QAction.Inst'Class;
   function addAction
     (self : access Inst; icon_P : Union_QtAda6_QtGui_QIcon_QtAda6_QtGui_QPixmap; text_P : str; callable_P : Object)
      return access QtAda6.QtGui.QAction.Inst'Class;
   function addAction
     (self       : access Inst; icon_P : Union_QtAda6_QtGui_QIcon_QtAda6_QtGui_QPixmap; text_P : str;
      receiver_P : access QtAda6.QtCore.QObject.Inst'Class; member_P : bytes;
      type_K_P   : access QtAda6.QtCore.Qt.ConnectionType.Inst'Class) return access QtAda6.QtGui.QAction.Inst'Class;
   function addAction
     (self       : access Inst; icon_P : Union_QtAda6_QtGui_QIcon_QtAda6_QtGui_QPixmap; text_P : str;
      shortcut_P : Union_QtAda6_QtGui_QKeySequence_QtAda6_QtCore_QKeyCombination_QtAda6_QtGui_QKeySequence_StandardKey_str_int)
      return access QtAda6.QtGui.QAction.Inst'Class;
   function addAction
     (self       : access Inst; icon_P : Union_QtAda6_QtGui_QIcon_QtAda6_QtGui_QPixmap; text_P : str;
      shortcut_P : Union_QtAda6_QtGui_QKeySequence_QtAda6_QtCore_QKeyCombination_QtAda6_QtGui_QKeySequence_StandardKey_str_int;
      callable_P : Object) return access QtAda6.QtGui.QAction.Inst'Class;
   function addAction
     (self       : access Inst; icon_P : Union_QtAda6_QtGui_QIcon_QtAda6_QtGui_QPixmap; text_P : str;
      shortcut_P : Union_QtAda6_QtGui_QKeySequence_QtAda6_QtCore_QKeyCombination_QtAda6_QtGui_QKeySequence_StandardKey_str_int;
      receiver_P : access QtAda6.QtCore.QObject.Inst'Class; member_P : bytes;
      type_K_P   : access QtAda6.QtCore.Qt.ConnectionType.Inst'Class) return access QtAda6.QtGui.QAction.Inst'Class;
   function addAction (self : access Inst; text_P : str) return access QtAda6.QtGui.QAction.Inst'Class;
   function addAction
     (self : access Inst; text_P : str; callable_P : Object) return access QtAda6.QtGui.QAction.Inst'Class;
   function addAction
     (self     : access Inst; text_P : str; receiver_P : access QtAda6.QtCore.QObject.Inst'Class; member_P : bytes;
      type_K_P : access QtAda6.QtCore.Qt.ConnectionType.Inst'Class) return access QtAda6.QtGui.QAction.Inst'Class;
   function addAction
     (self       : access Inst; text_P : str;
      shortcut_P : Union_QtAda6_QtGui_QKeySequence_QtAda6_QtCore_QKeyCombination_QtAda6_QtGui_QKeySequence_StandardKey_str_int)
      return access QtAda6.QtGui.QAction.Inst'Class;
   function addAction
     (self       : access Inst; text_P : str;
      shortcut_P : Union_QtAda6_QtGui_QKeySequence_QtAda6_QtCore_QKeyCombination_QtAda6_QtGui_QKeySequence_StandardKey_str_int;
      callable_P : Object) return access QtAda6.QtGui.QAction.Inst'Class;
   function addAction
     (self       : access Inst; text_P : str;
      shortcut_P : Union_QtAda6_QtGui_QKeySequence_QtAda6_QtCore_QKeyCombination_QtAda6_QtGui_QKeySequence_StandardKey_str_int;
      receiver_P : access QtAda6.QtCore.QObject.Inst'Class; member_P : bytes;
      type_K_P   : access QtAda6.QtCore.Qt.ConnectionType.Inst'Class) return access QtAda6.QtGui.QAction.Inst'Class;
   procedure addActions (self : access Inst; actions_P : Sequence_QtAda6_QtGui_QAction);
   procedure adjustSize (self : access Inst);
   function autoFillBackground (self : access Inst) return bool;
   function backgroundRole (self : access Inst) return access QtAda6.QtGui.QPalette.ColorRole.Inst'Class;
   function backingStore (self : access Inst) return access QtAda6.QtGui.QBackingStore.Inst'Class;
   function baseSize (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   procedure changeEvent (self : access Inst; event_P : access QtAda6.QtCore.QEvent.Inst'Class);
   function childAt
     (self : access Inst; p_P : access QtAda6.QtCore.QPoint.Inst'Class)
      return access QtAda6.QtWidgets.QWidget.Inst'Class;
   function childAt (self : access Inst; x_P : int; y_P : int) return access QtAda6.QtWidgets.QWidget.Inst'Class;
   function childrenRect (self : access Inst) return access QtAda6.QtCore.QRect.Inst'Class;
   function childrenRegion (self : access Inst) return access QtAda6.QtGui.QRegion.Inst'Class;
   procedure clearFocus (self : access Inst);
   procedure clearMask (self : access Inst);
   function close (self : access Inst) return bool;
   procedure closeEvent (self : access Inst; event_P : access QtAda6.QtGui.QCloseEvent.Inst'Class);
   function contentsMargins (self : access Inst) return access QtAda6.QtCore.QMargins.Inst'Class;
   function contentsRect (self : access Inst) return access QtAda6.QtCore.QRect.Inst'Class;
   procedure contextMenuEvent (self : access Inst; event_P : access QtAda6.QtGui.QContextMenuEvent.Inst'Class);
   function contextMenuPolicy (self : access Inst) return access QtAda6.QtCore.Qt.ContextMenuPolicy.Inst'Class;
   procedure create (self : access Inst; arg_1_P : int; initializeWindow_P : bool; destroyOldWindow_P : bool);
   procedure createWinId (self : access Inst);
   function createWindowContainer
     (window_P : access QtAda6.QtGui.QWindow.Inst'Class; parent_P : Optional_QtAda6_QtWidgets_QWidget;
      flags_P  : access QtAda6.QtCore.Qt.WindowType.Inst'Class) return access QtAda6.QtWidgets.QWidget.Inst'Class;
   function cursor (self : access Inst) return access QtAda6.QtGui.QCursor.Inst'Class;
   procedure destroy (self : access Inst; destroyWindow_P : bool; destroySubWindows_P : bool);
   function devType (self : access Inst) return int;
   procedure dragEnterEvent (self : access Inst; event_P : access QtAda6.QtGui.QDragEnterEvent.Inst'Class);
   procedure dragLeaveEvent (self : access Inst; event_P : access QtAda6.QtGui.QDragLeaveEvent.Inst'Class);
   procedure dragMoveEvent (self : access Inst; event_P : access QtAda6.QtGui.QDragMoveEvent.Inst'Class);
   procedure dropEvent (self : access Inst; event_P : access QtAda6.QtGui.QDropEvent.Inst'Class);
   function effectiveWinId (self : access Inst) return int;
   procedure ensurePolished (self : access Inst);
   procedure enterEvent (self : access Inst; event_P : access QtAda6.QtGui.QEnterEvent.Inst'Class);
   function event (self : access Inst; event_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   function find (arg_1_P : int) return access QtAda6.QtWidgets.QWidget.Inst'Class;
   procedure focusInEvent (self : access Inst; event_P : access QtAda6.QtGui.QFocusEvent.Inst'Class);
   function focusNextChild (self : access Inst) return bool;
   function focusNextPrevChild (self : access Inst; next_P : bool) return bool;
   procedure focusOutEvent (self : access Inst; event_P : access QtAda6.QtGui.QFocusEvent.Inst'Class);
   function focusPolicy (self : access Inst) return access QtAda6.QtCore.Qt.FocusPolicy.Inst'Class;
   function focusPreviousChild (self : access Inst) return bool;
   function focusProxy (self : access Inst) return access QtAda6.QtWidgets.QWidget.Inst'Class;
   function focusWidget (self : access Inst) return access QtAda6.QtWidgets.QWidget.Inst'Class;
   function font (self : access Inst) return access QtAda6.QtGui.QFont.Inst'Class;
   function fontInfo (self : access Inst) return access QtAda6.QtGui.QFontInfo.Inst'Class;
   function fontMetrics (self : access Inst) return access QtAda6.QtGui.QFontMetrics.Inst'Class;
   function foregroundRole (self : access Inst) return access QtAda6.QtGui.QPalette.ColorRole.Inst'Class;
   function frameGeometry (self : access Inst) return access QtAda6.QtCore.QRect.Inst'Class;
   function frameSize (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   function geometry (self : access Inst) return access QtAda6.QtCore.QRect.Inst'Class;
   function grab
     (self : access Inst; rectangle_P : access QtAda6.QtCore.QRect.Inst'Class)
      return access QtAda6.QtGui.QPixmap.Inst'Class;
   procedure grabGesture
     (self    : access Inst; type_K_P : access QtAda6.QtCore.Qt.GestureType.Inst'Class;
      flags_P : access QtAda6.QtCore.Qt.GestureFlag.Inst'Class);
   procedure grabKeyboard (self : access Inst);
   procedure grabMouse (self : access Inst);
   procedure grabMouse
     (self : access Inst; arg_1_P : Union_QtAda6_QtGui_QCursor_QtAda6_QtCore_Qt_CursorShape_QtAda6_QtGui_QPixmap);
   function grabShortcut
     (self      : access Inst;
      key_P : Union_QtAda6_QtGui_QKeySequence_QtAda6_QtCore_QKeyCombination_QtAda6_QtGui_QKeySequence_StandardKey_str_int;
      context_P : access QtAda6.QtCore.Qt.ShortcutContext.Inst'Class) return int;
   function graphicsEffect (self : access Inst) return access QtAda6.QtWidgets.QGraphicsEffect.Inst'Class;
   function graphicsProxyWidget (self : access Inst) return access QtAda6.QtWidgets.QGraphicsProxyWidget.Inst'Class;
   function hasFocus (self : access Inst) return bool;
   function hasHeightForWidth (self : access Inst) return bool;
   function hasMouseTracking (self : access Inst) return bool;
   function hasTabletTracking (self : access Inst) return bool;
   function height (self : access Inst) return int;
   function heightForWidth (self : access Inst; arg_1_P : int) return int;
   procedure hide (self : access Inst);
   procedure hideEvent (self : access Inst; event_P : access QtAda6.QtGui.QHideEvent.Inst'Class);
   procedure initPainter (self : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class);
   procedure inputMethodEvent (self : access Inst; event_P : access QtAda6.QtGui.QInputMethodEvent.Inst'Class);
   function inputMethodHints (self : access Inst) return access QtAda6.QtCore.Qt.InputMethodHint.Inst'Class;
   function inputMethodQuery
     (self : access Inst; arg_1_P : access QtAda6.QtCore.Qt.InputMethodQuery.Inst'Class) return Any;
   procedure insertAction
     (self     : access Inst; before_P : access QtAda6.QtGui.QAction.Inst'Class;
      action_P : access QtAda6.QtGui.QAction.Inst'Class);
   procedure insertActions
     (self : access Inst; before_P : access QtAda6.QtGui.QAction.Inst'Class; actions_P : Sequence_QtAda6_QtGui_QAction);
   function internalWinId (self : access Inst) return int;
   function isActiveWindow (self : access Inst) return bool;
   function isAncestorOf (self : access Inst; child_P : access QtAda6.QtWidgets.QWidget.Inst'Class) return bool;
   function isEnabled (self : access Inst) return bool;
   function isEnabledTo (self : access Inst; arg_1_P : access QtAda6.QtWidgets.QWidget.Inst'Class) return bool;
   function isFullScreen (self : access Inst) return bool;
   function isHidden (self : access Inst) return bool;
   function isLeftToRight (self : access Inst) return bool;
   function isMaximized (self : access Inst) return bool;
   function isMinimized (self : access Inst) return bool;
   function isModal (self : access Inst) return bool;
   function isRightToLeft (self : access Inst) return bool;
   function isTopLevel (self : access Inst) return bool;
   function isVisible (self : access Inst) return bool;
   function isVisibleTo (self : access Inst; arg_1_P : access QtAda6.QtWidgets.QWidget.Inst'Class) return bool;
   function isWindow (self : access Inst) return bool;
   function isWindowModified (self : access Inst) return bool;
   procedure keyPressEvent (self : access Inst; event_P : access QtAda6.QtGui.QKeyEvent.Inst'Class);
   procedure keyReleaseEvent (self : access Inst; event_P : access QtAda6.QtGui.QKeyEvent.Inst'Class);
   function keyboardGrabber return access QtAda6.QtWidgets.QWidget.Inst'Class;
   function layout (self : access Inst) return access QtAda6.QtWidgets.QLayout.Inst'Class;
   function layoutDirection (self : access Inst) return access QtAda6.QtCore.Qt.LayoutDirection.Inst'Class;
   procedure leaveEvent (self : access Inst; event_P : access QtAda6.QtCore.QEvent.Inst'Class);
   function locale (self : access Inst) return access QtAda6.QtCore.QLocale.Inst'Class;
   procedure lower (self : access Inst);
   function mapFrom
     (self    : access Inst; arg_1_P : access QtAda6.QtWidgets.QWidget.Inst'Class;
      arg_2_P : access QtAda6.QtCore.QPoint.Inst'Class) return access QtAda6.QtCore.QPoint.Inst'Class;
   function mapFrom
     (self    : access Inst; arg_1_P : access QtAda6.QtWidgets.QWidget.Inst'Class;
      arg_2_P : Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element)
      return access QtAda6.QtCore.QPointF.Inst'Class;
   function mapFromGlobal
     (self : access Inst; arg_1_P : access QtAda6.QtCore.QPoint.Inst'Class)
      return access QtAda6.QtCore.QPoint.Inst'Class;
   function mapFromGlobal
     (self : access Inst; arg_1_P : Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element)
      return access QtAda6.QtCore.QPointF.Inst'Class;
   function mapFromParent
     (self : access Inst; arg_1_P : access QtAda6.QtCore.QPoint.Inst'Class)
      return access QtAda6.QtCore.QPoint.Inst'Class;
   function mapFromParent
     (self : access Inst; arg_1_P : Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element)
      return access QtAda6.QtCore.QPointF.Inst'Class;
   function mapTo
     (self    : access Inst; arg_1_P : access QtAda6.QtWidgets.QWidget.Inst'Class;
      arg_2_P : access QtAda6.QtCore.QPoint.Inst'Class) return access QtAda6.QtCore.QPoint.Inst'Class;
   function mapTo
     (self    : access Inst; arg_1_P : access QtAda6.QtWidgets.QWidget.Inst'Class;
      arg_2_P : Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element)
      return access QtAda6.QtCore.QPointF.Inst'Class;
   function mapToGlobal
     (self : access Inst; arg_1_P : access QtAda6.QtCore.QPoint.Inst'Class)
      return access QtAda6.QtCore.QPoint.Inst'Class;
   function mapToGlobal
     (self : access Inst; arg_1_P : Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element)
      return access QtAda6.QtCore.QPointF.Inst'Class;
   function mapToParent
     (self : access Inst; arg_1_P : access QtAda6.QtCore.QPoint.Inst'Class)
      return access QtAda6.QtCore.QPoint.Inst'Class;
   function mapToParent
     (self : access Inst; arg_1_P : Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element)
      return access QtAda6.QtCore.QPointF.Inst'Class;
   function mask (self : access Inst) return access QtAda6.QtGui.QRegion.Inst'Class;
   function maximumHeight (self : access Inst) return int;
   function maximumSize (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   function maximumWidth (self : access Inst) return int;
   function metric
     (self : access Inst; arg_1_P : access QtAda6.QtGui.QPaintDevice.PaintDeviceMetric.Inst'Class) return int;
   function minimumHeight (self : access Inst) return int;
   function minimumSize (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   function minimumSizeHint (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   function minimumWidth (self : access Inst) return int;
   procedure mouseDoubleClickEvent (self : access Inst; event_P : access QtAda6.QtGui.QMouseEvent.Inst'Class);
   function mouseGrabber return access QtAda6.QtWidgets.QWidget.Inst'Class;
   procedure mouseMoveEvent (self : access Inst; event_P : access QtAda6.QtGui.QMouseEvent.Inst'Class);
   procedure mousePressEvent (self : access Inst; event_P : access QtAda6.QtGui.QMouseEvent.Inst'Class);
   procedure mouseReleaseEvent (self : access Inst; event_P : access QtAda6.QtGui.QMouseEvent.Inst'Class);
   procedure move (self : access Inst; arg_1_P : access QtAda6.QtCore.QPoint.Inst'Class);
   procedure move (self : access Inst; x_P : int; y_P : int);
   procedure moveEvent (self : access Inst; event_P : access QtAda6.QtGui.QMoveEvent.Inst'Class);
   function nativeEvent
     (self : access Inst; eventType_P : Union_QtAda6_QtCore_QByteArray_bytes; message_P : int) return Object;
   function nativeParentWidget (self : access Inst) return access QtAda6.QtWidgets.QWidget.Inst'Class;
   function nextInFocusChain (self : access Inst) return access QtAda6.QtWidgets.QWidget.Inst'Class;
   function normalGeometry (self : access Inst) return access QtAda6.QtCore.QRect.Inst'Class;
   procedure overrideWindowFlags (self : access Inst; type_K_P : access QtAda6.QtCore.Qt.WindowType.Inst'Class);
   procedure overrideWindowState (self : access Inst; state_P : access QtAda6.QtCore.Qt.WindowState.Inst'Class);
   function paintEngine (self : access Inst) return access QtAda6.QtGui.QPaintEngine.Inst'Class;
   procedure paintEvent (self : access Inst; event_P : access QtAda6.QtGui.QPaintEvent.Inst'Class);
   function palette (self : access Inst) return access QtAda6.QtGui.QPalette.Inst'Class;
   function parentWidget (self : access Inst) return access QtAda6.QtWidgets.QWidget.Inst'Class;
   function pos (self : access Inst) return access QtAda6.QtCore.QPoint.Inst'Class;
   function previousInFocusChain (self : access Inst) return access QtAda6.QtWidgets.QWidget.Inst'Class;
   procedure raise_U (self : access Inst);
   function rect (self : access Inst) return access QtAda6.QtCore.QRect.Inst'Class;
   function redirected
     (self : access Inst; offset_P : access QtAda6.QtCore.QPoint.Inst'Class)
      return access QtAda6.QtGui.QPaintDevice.Inst'Class;
   procedure releaseKeyboard (self : access Inst);
   procedure releaseMouse (self : access Inst);
   procedure releaseShortcut (self : access Inst; id_P : int);
   procedure removeAction (self : access Inst; action_P : access QtAda6.QtGui.QAction.Inst'Class);
   procedure render_F
     (self           : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      targetOffset_P : access QtAda6.QtCore.QPoint.Inst'Class;
      sourceRegion_P : Union_QtAda6_QtGui_QRegion_QtAda6_QtGui_QBitmap_QtAda6_QtGui_QPolygon_QtAda6_QtCore_QRect;
      renderFlags_P  : access QtAda6.QtWidgets.QWidget.RenderFlag.Inst'Class);
   procedure render_F
     (self           : access Inst; target_P : access QtAda6.QtGui.QPaintDevice.Inst'Class;
      targetOffset_P : access QtAda6.QtCore.QPoint.Inst'Class;
      sourceRegion_P : Union_QtAda6_QtGui_QRegion_QtAda6_QtGui_QBitmap_QtAda6_QtGui_QPolygon_QtAda6_QtCore_QRect;
      renderFlags_P  : access QtAda6.QtWidgets.QWidget.RenderFlag.Inst'Class);
   procedure repaint (self : access Inst);
   procedure repaint (self : access Inst; arg_1_P : access QtAda6.QtCore.QRect.Inst'Class);
   procedure repaint
     (self    : access Inst;
      arg_1_P : Union_QtAda6_QtGui_QRegion_QtAda6_QtGui_QBitmap_QtAda6_QtGui_QPolygon_QtAda6_QtCore_QRect);
   procedure repaint (self : access Inst; x_P : int; y_P : int; w_P : int; h_P : int);
   procedure resize (self : access Inst; arg_1_P : access QtAda6.QtCore.QSize.Inst'Class);
   procedure resize (self : access Inst; w_P : int; h_P : int);
   procedure resizeEvent (self : access Inst; event_P : access QtAda6.QtGui.QResizeEvent.Inst'Class);
   function restoreGeometry (self : access Inst; geometry_P : Union_QtAda6_QtCore_QByteArray_bytes) return bool;
   function saveGeometry (self : access Inst) return access QtAda6.QtCore.QByteArray.Inst'Class;
   function screen (self : access Inst) return access QtAda6.QtGui.QScreen.Inst'Class;
   procedure scroll (self : access Inst; dx_P : int; dy_P : int);
   procedure scroll (self : access Inst; dx_P : int; dy_P : int; arg_3_P : access QtAda6.QtCore.QRect.Inst'Class);
   procedure setAcceptDrops (self : access Inst; on_P : bool);
   procedure setAccessibleDescription (self : access Inst; description_P : str);
   procedure setAccessibleName (self : access Inst; name_P : str);
   procedure setAttribute
     (self : access Inst; arg_1_P : access QtAda6.QtCore.Qt.WidgetAttribute.Inst'Class; on_P : bool);
   procedure setAutoFillBackground (self : access Inst; enabled_P : bool);
   procedure setBackgroundRole (self : access Inst; arg_1_P : access QtAda6.QtGui.QPalette.ColorRole.Inst'Class);
   procedure setBaseSize (self : access Inst; arg_1_P : access QtAda6.QtCore.QSize.Inst'Class);
   procedure setBaseSize (self : access Inst; basew_P : int; baseh_P : int);
   procedure setContentsMargins (self : access Inst; left_P : int; top_P : int; right_P : int; bottom_P : int);
   procedure setContentsMargins (self : access Inst; margins_P : access QtAda6.QtCore.QMargins.Inst'Class);
   procedure setContextMenuPolicy (self : access Inst; policy_P : access QtAda6.QtCore.Qt.ContextMenuPolicy.Inst'Class);
   procedure setCursor
     (self : access Inst; arg_1_P : Union_QtAda6_QtGui_QCursor_QtAda6_QtCore_Qt_CursorShape_QtAda6_QtGui_QPixmap);
   procedure setDisabled (self : access Inst; arg_1_P : bool);
   procedure setEnabled (self : access Inst; arg_1_P : bool);
   procedure setFixedHeight (self : access Inst; h_P : int);
   procedure setFixedSize (self : access Inst; arg_1_P : access QtAda6.QtCore.QSize.Inst'Class);
   procedure setFixedSize (self : access Inst; w_P : int; h_P : int);
   procedure setFixedWidth (self : access Inst; w_P : int);
   procedure setFocus (self : access Inst);
   procedure setFocus (self : access Inst; reason_P : access QtAda6.QtCore.Qt.FocusReason.Inst'Class);
   procedure setFocusPolicy (self : access Inst; policy_P : access QtAda6.QtCore.Qt.FocusPolicy.Inst'Class);
   procedure setFocusProxy (self : access Inst; arg_1_P : access QtAda6.QtWidgets.QWidget.Inst'Class);
   procedure setFont (self : access Inst; arg_1_P : Union_QtAda6_QtGui_QFont_str_Sequence_str);
   procedure setForegroundRole (self : access Inst; arg_1_P : access QtAda6.QtGui.QPalette.ColorRole.Inst'Class);
   procedure setGeometry (self : access Inst; arg_1_P : access QtAda6.QtCore.QRect.Inst'Class);
   procedure setGeometry (self : access Inst; x_P : int; y_P : int; w_P : int; h_P : int);
   procedure setGraphicsEffect (self : access Inst; effect_P : access QtAda6.QtWidgets.QGraphicsEffect.Inst'Class);
   procedure setHidden (self : access Inst; hidden_P : bool);
   procedure setInputMethodHints (self : access Inst; hints_P : access QtAda6.QtCore.Qt.InputMethodHint.Inst'Class);
   procedure setLayout (self : access Inst; arg_1_P : access QtAda6.QtWidgets.QLayout.Inst'Class);
   procedure setLayoutDirection (self : access Inst; direction_P : access QtAda6.QtCore.Qt.LayoutDirection.Inst'Class);
   procedure setLocale (self : access Inst; locale_P : Union_QtAda6_QtCore_QLocale_QtAda6_QtCore_QLocale_Language);
   procedure setMask (self : access Inst; arg_1_P : Union_QtAda6_QtGui_QBitmap_str);
   procedure setMask
     (self    : access Inst;
      arg_1_P : Union_QtAda6_QtGui_QRegion_QtAda6_QtGui_QBitmap_QtAda6_QtGui_QPolygon_QtAda6_QtCore_QRect);
   procedure setMaximumHeight (self : access Inst; maxh_P : int);
   procedure setMaximumSize (self : access Inst; arg_1_P : access QtAda6.QtCore.QSize.Inst'Class);
   procedure setMaximumSize (self : access Inst; maxw_P : int; maxh_P : int);
   procedure setMaximumWidth (self : access Inst; maxw_P : int);
   procedure setMinimumHeight (self : access Inst; minh_P : int);
   procedure setMinimumSize (self : access Inst; arg_1_P : access QtAda6.QtCore.QSize.Inst'Class);
   procedure setMinimumSize (self : access Inst; minw_P : int; minh_P : int);
   procedure setMinimumWidth (self : access Inst; minw_P : int);
   procedure setMouseTracking (self : access Inst; enable_P : bool);
   procedure setPalette
     (self : access Inst; arg_1_P : Union_QtAda6_QtGui_QPalette_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor);
   procedure setParent (self : access Inst; parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class);
   procedure setParent
     (self : access Inst; parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class;
      f_P  : access QtAda6.QtCore.Qt.WindowType.Inst'Class);
   procedure setScreen (self : access Inst; arg_1_P : access QtAda6.QtGui.QScreen.Inst'Class);
   procedure setShortcutAutoRepeat (self : access Inst; id_P : int; enable_P : bool);
   procedure setShortcutEnabled (self : access Inst; id_P : int; enable_P : bool);
   procedure setSizeIncrement (self : access Inst; arg_1_P : access QtAda6.QtCore.QSize.Inst'Class);
   procedure setSizeIncrement (self : access Inst; w_P : int; h_P : int);
   procedure setSizePolicy (self : access Inst; arg_1_P : access QtAda6.QtWidgets.QSizePolicy.Inst'Class);
   procedure setSizePolicy
     (self       : access Inst; horizontal_P : access QtAda6.QtWidgets.QSizePolicy.Policy.Inst'Class;
      vertical_P : access QtAda6.QtWidgets.QSizePolicy.Policy.Inst'Class);
   procedure setStatusTip (self : access Inst; arg_1_P : str);
   procedure setStyle (self : access Inst; arg_1_P : access QtAda6.QtWidgets.QStyle.Inst'Class);
   procedure setStyleSheet (self : access Inst; styleSheet_P : str);
   procedure setTabOrder
     (arg_1_P : access QtAda6.QtWidgets.QWidget.Inst'Class; arg_2_P : access QtAda6.QtWidgets.QWidget.Inst'Class);
   procedure setTabletTracking (self : access Inst; enable_P : bool);
   procedure setToolTip (self : access Inst; arg_1_P : str);
   procedure setToolTipDuration (self : access Inst; msec_P : int);
   procedure setUpdatesEnabled (self : access Inst; enable_P : bool);
   procedure setVisible (self : access Inst; visible_P : bool);
   procedure setWhatsThis (self : access Inst; arg_1_P : str);
   procedure setWindowFilePath (self : access Inst; filePath_P : str);
   procedure setWindowFlag (self : access Inst; arg_1_P : access QtAda6.QtCore.Qt.WindowType.Inst'Class; on_P : bool);
   procedure setWindowFlags (self : access Inst; type_K_P : access QtAda6.QtCore.Qt.WindowType.Inst'Class);
   procedure setWindowIcon (self : access Inst; icon_P : Union_QtAda6_QtGui_QIcon_QtAda6_QtGui_QPixmap);
   procedure setWindowIconText (self : access Inst; arg_1_P : str);
   procedure setWindowModality
     (self : access Inst; windowModality_P : access QtAda6.QtCore.Qt.WindowModality.Inst'Class);
   procedure setWindowModified (self : access Inst; arg_1_P : bool);
   procedure setWindowOpacity (self : access Inst; level_P : float);
   procedure setWindowRole (self : access Inst; arg_1_P : str);
   procedure setWindowState (self : access Inst; state_P : access QtAda6.QtCore.Qt.WindowState.Inst'Class);
   procedure setWindowTitle (self : access Inst; arg_1_P : str);
   function sharedPainter (self : access Inst) return access QtAda6.QtGui.QPainter.Inst'Class;
   procedure show (self : access Inst);
   procedure showEvent (self : access Inst; event_P : access QtAda6.QtGui.QShowEvent.Inst'Class);
   procedure showFullScreen (self : access Inst);
   procedure showMaximized (self : access Inst);
   procedure showMinimized (self : access Inst);
   procedure showNormal (self : access Inst);
   function size (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   function sizeHint (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   function sizeIncrement (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   function sizePolicy (self : access Inst) return access QtAda6.QtWidgets.QSizePolicy.Inst'Class;
   procedure stackUnder (self : access Inst; arg_1_P : access QtAda6.QtWidgets.QWidget.Inst'Class);
   function statusTip (self : access Inst) return str;
   function style (self : access Inst) return access QtAda6.QtWidgets.QStyle.Inst'Class;
   function styleSheet (self : access Inst) return str;
   procedure tabletEvent (self : access Inst; event_P : access QtAda6.QtGui.QTabletEvent.Inst'Class);
   function testAttribute
     (self : access Inst; arg_1_P : access QtAda6.QtCore.Qt.WidgetAttribute.Inst'Class) return bool;
   function toolTip (self : access Inst) return str;
   function toolTipDuration (self : access Inst) return int;
   function topLevelWidget (self : access Inst) return access QtAda6.QtWidgets.QWidget.Inst'Class;
   function underMouse (self : access Inst) return bool;
   procedure ungrabGesture (self : access Inst; type_K_P : access QtAda6.QtCore.Qt.GestureType.Inst'Class);
   procedure unsetCursor (self : access Inst);
   procedure unsetLayoutDirection (self : access Inst);
   procedure unsetLocale (self : access Inst);
   procedure update (self : access Inst);
   procedure update (self : access Inst; arg_1_P : access QtAda6.QtCore.QRect.Inst'Class);
   procedure update
     (self    : access Inst;
      arg_1_P : Union_QtAda6_QtGui_QRegion_QtAda6_QtGui_QBitmap_QtAda6_QtGui_QPolygon_QtAda6_QtCore_QRect);
   procedure update (self : access Inst; x_P : int; y_P : int; w_P : int; h_P : int);
   procedure updateGeometry (self : access Inst);
   procedure updateMicroFocus (self : access Inst; query_P : access QtAda6.QtCore.Qt.InputMethodQuery.Inst'Class);
   function updatesEnabled (self : access Inst) return bool;
   function visibleRegion (self : access Inst) return access QtAda6.QtGui.QRegion.Inst'Class;
   function whatsThis (self : access Inst) return str;
   procedure wheelEvent (self : access Inst; event_P : access QtAda6.QtGui.QWheelEvent.Inst'Class);
   function width (self : access Inst) return int;
   function winId (self : access Inst) return int;
   function window (self : access Inst) return access QtAda6.QtWidgets.QWidget.Inst'Class;
   function windowFilePath (self : access Inst) return str;
   function windowFlags (self : access Inst) return access QtAda6.QtCore.Qt.WindowType.Inst'Class;
   function windowHandle (self : access Inst) return access QtAda6.QtGui.QWindow.Inst'Class;
   function windowIcon (self : access Inst) return access QtAda6.QtGui.QIcon.Inst'Class;
   function windowIconText (self : access Inst) return str;
   function windowModality (self : access Inst) return access QtAda6.QtCore.Qt.WindowModality.Inst'Class;
   function windowOpacity (self : access Inst) return float;
   function windowRole (self : access Inst) return str;
   function windowState (self : access Inst) return access QtAda6.QtCore.Qt.WindowState.Inst'Class;
   function windowTitle (self : access Inst) return str;
   function windowType (self : access Inst) return access QtAda6.QtCore.Qt.WindowType.Inst'Class;
   function x (self : access Inst) return int;
   function y (self : access Inst) return int;
end QtAda6.QtWidgets.QWidget;
