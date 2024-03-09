-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qwindow.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.Signal;
limited with QtAda6.QtGui.QScreen;
limited with QtAda6.QtGui.QAccessibleInterface;
limited with QtAda6.QtCore.QSize;
limited with QtAda6.QtGui.QCloseEvent;
limited with QtAda6.QtCore.Qt.ScreenOrientation;
limited with QtAda6.QtGui.QCursor;
limited with QtAda6.QtCore.QEvent;
limited with QtAda6.QtGui.QExposeEvent;
limited with QtAda6.QtCore.Qt.WindowType;
limited with QtAda6.QtGui.QFocusEvent;
limited with QtAda6.QtGui.QSurfaceFormat;
limited with QtAda6.QtCore.QRect;
limited with QtAda6.QtCore.QMargins;
limited with QtAda6.QtCore.QPoint;
limited with QtAda6.QtGui.QHideEvent;
limited with QtAda6.QtGui.QIcon;
limited with QtAda6.QtGui.QWindow.AncestorMode;
limited with QtAda6.QtGui.QKeyEvent;
limited with QtAda6.QtCore.QPointF;
limited with QtAda6.QtGui.QRegion;
limited with QtAda6.QtCore.Qt.WindowModality;
limited with QtAda6.QtGui.QMouseEvent;
limited with QtAda6.QtGui.QMoveEvent;
limited with QtAda6.QtGui.QPaintEvent;
limited with QtAda6.QtGui.QResizeEvent;
limited with QtAda6.QtGui.QSurface.SurfaceType;
limited with QtAda6.QtGui.QWindow.Visibility;
limited with QtAda6.QtCore.Qt.WindowState;
limited with QtAda6.QtGui.QShowEvent;
limited with QtAda6.QtCore.Qt.Edge;
limited with QtAda6.QtGui.QTabletEvent;
limited with QtAda6.QtGui.QTouchEvent;
limited with QtAda6.QtGui.QWheelEvent;
with QtAda6.QtCore.QObject;
with QtAda6.QtGui.QSurface;
package QtAda6.QtGui.QWindow is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtCore.QObject.Inst
--  and QtAda6.QtGui.QSurface.Inst
   with null record;
   type UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element is new Any;
   type UNION_QtAda6_QtCore_QByteArray_bytes is new Any;
   type UNION_QtAda6_QtGui_QCursor_QtAda6_QtCore_Qt_CursorShape_QtAda6_QtGui_QPixmap is new Any;
   type UNION_QtAda6_QtGui_QSurfaceFormat_QtAda6_QtGui_QSurfaceFormat_FormatOption is new Any;
   type UNION_QtAda6_QtGui_QIcon_QtAda6_QtGui_QPixmap is new Any;
   type UNION_QtAda6_QtGui_QRegion_QtAda6_QtGui_QBitmap_QtAda6_QtGui_QPolygon_QtAda6_QtCore_QRect is new Any;
   procedure Finalize (Self : in out Class);
   function activeChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- activeChanged()
   function contentOrientationChanged
     (self : access Inst)
      return access QtAda6.QtCore.Signal.Inst'Class;-- contentOrientationChanged(Qt::ScreenOrientation)
   function focusObjectChanged
     (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- focusObjectChanged(QObject*)
   function heightChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- heightChanged(int)
   function maximumHeightChanged
     (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- maximumHeightChanged(int)
   function maximumWidthChanged
     (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- maximumWidthChanged(int)
   function minimumHeightChanged
     (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- minimumHeightChanged(int)
   function minimumWidthChanged
     (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- minimumWidthChanged(int)
   function modalityChanged
     (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- modalityChanged(Qt::WindowModality)
   function opacityChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- opacityChanged(double)
   function screenChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- screenChanged(QScreen*)
   function transientParentChanged
     (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- transientParentChanged(QWindow*)
   function visibilityChanged
     (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- visibilityChanged(QWindow::Visibility)
   function visibleChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- visibleChanged(bool)
   function widthChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- widthChanged(int)
   function windowStateChanged
     (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- windowStateChanged(Qt::WindowState)
   function windowTitleChanged
     (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- windowTitleChanged(QString)
   function xChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- xChanged(int)
   function yChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- yChanged(int)
   function Create (parent_P : access QtAda6.QtGui.QWindow.Inst'Class) return Class;
   function Create (screen_P : access QtAda6.QtGui.QScreen.Inst'Class := null) return Class;
   function accessibleRoot (self : access Inst) return access QtAda6.QtGui.QAccessibleInterface.Inst'Class;
   procedure alert (self : access Inst; msec_P : int);
   function baseSize (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   function close (self : access Inst) return bool;
   procedure closeEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QCloseEvent.Inst'Class);
   function contentOrientation (self : access Inst) return access QtAda6.QtCore.Qt.ScreenOrientation.Inst'Class;
   procedure create (self : access Inst);
   function cursor (self : access Inst) return access QtAda6.QtGui.QCursor.Inst'Class;
   procedure destroy (self : access Inst);
   function devicePixelRatio (self : access Inst) return float;
   function event (self : access Inst; arg_1_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   procedure exposeEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QExposeEvent.Inst'Class);
   function filePath (self : access Inst) return str;
   function flags (self : access Inst) return access QtAda6.QtCore.Qt.WindowType.Inst'Class;
   procedure focusInEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QFocusEvent.Inst'Class);
   function focusObject (self : access Inst) return access QtAda6.QtCore.QObject.Inst'Class;
   procedure focusOutEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QFocusEvent.Inst'Class);
   function format (self : access Inst) return access QtAda6.QtGui.QSurfaceFormat.Inst'Class;
   function frameGeometry (self : access Inst) return access QtAda6.QtCore.QRect.Inst'Class;
   function frameMargins (self : access Inst) return access QtAda6.QtCore.QMargins.Inst'Class;
   function framePosition (self : access Inst) return access QtAda6.QtCore.QPoint.Inst'Class;
   function fromWinId (id_P : int) return access QtAda6.QtGui.QWindow.Inst'Class;
   function geometry (self : access Inst) return access QtAda6.QtCore.QRect.Inst'Class;
   function height (self : access Inst) return int;
   procedure hide (self : access Inst);
   procedure hideEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QHideEvent.Inst'Class);
   function icon (self : access Inst) return access QtAda6.QtGui.QIcon.Inst'Class;
   function isActive (self : access Inst) return bool;
   function isAncestorOf
     (self   : access Inst; child_P : access QtAda6.QtGui.QWindow.Inst'Class;
      mode_P : access QtAda6.QtGui.QWindow.AncestorMode.Inst'Class := null) return bool;
   function isExposed (self : access Inst) return bool;
   function isModal (self : access Inst) return bool;
   function isTopLevel (self : access Inst) return bool;
   function isVisible (self : access Inst) return bool;
   procedure keyPressEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QKeyEvent.Inst'Class);
   procedure keyReleaseEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QKeyEvent.Inst'Class);
   procedure lower (self : access Inst);
   function mapFromGlobal
     (self : access Inst; pos_P : access QtAda6.QtCore.QPoint.Inst'Class) return access QtAda6.QtCore.QPoint.Inst'Class;
   function mapFromGlobal
     (self : access Inst; pos_P : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element)
      return access QtAda6.QtCore.QPointF.Inst'Class;
   function mapToGlobal
     (self : access Inst; pos_P : access QtAda6.QtCore.QPoint.Inst'Class) return access QtAda6.QtCore.QPoint.Inst'Class;
   function mapToGlobal
     (self : access Inst; pos_P : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element)
      return access QtAda6.QtCore.QPointF.Inst'Class;
   function mask (self : access Inst) return access QtAda6.QtGui.QRegion.Inst'Class;
   function maximumHeight (self : access Inst) return int;
   function maximumSize (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   function maximumWidth (self : access Inst) return int;
   function minimumHeight (self : access Inst) return int;
   function minimumSize (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   function minimumWidth (self : access Inst) return int;
   function modality (self : access Inst) return access QtAda6.QtCore.Qt.WindowModality.Inst'Class;
   procedure mouseDoubleClickEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QMouseEvent.Inst'Class);
   procedure mouseMoveEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QMouseEvent.Inst'Class);
   procedure mousePressEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QMouseEvent.Inst'Class);
   procedure mouseReleaseEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QMouseEvent.Inst'Class);
   procedure moveEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QMoveEvent.Inst'Class);
   function nativeEvent
     (self : access Inst; eventType_P : UNION_QtAda6_QtCore_QByteArray_bytes; message_P : int)
      return access Object'Class;
   function opacity (self : access Inst) return float;
   procedure paintEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QPaintEvent.Inst'Class);
   function parent
     (self : access Inst; mode_P : access QtAda6.QtGui.QWindow.AncestorMode.Inst'Class := null)
      return access QtAda6.QtGui.QWindow.Inst'Class;
   function position (self : access Inst) return access QtAda6.QtCore.QPoint.Inst'Class;
   procedure raise_U (self : access Inst);
   procedure reportContentOrientationChange
     (self : access Inst; orientation_P : access QtAda6.QtCore.Qt.ScreenOrientation.Inst'Class);
   procedure requestActivate (self : access Inst);
   procedure requestUpdate (self : access Inst);
   function requestedFormat (self : access Inst) return access QtAda6.QtGui.QSurfaceFormat.Inst'Class;
   procedure resize (self : access Inst; newSize_P : access QtAda6.QtCore.QSize.Inst'Class);
   procedure resize (self : access Inst; w_P : int; h_P : int);
   procedure resizeEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QResizeEvent.Inst'Class);
   function resolveInterface (self : access Inst; name_P : bytes; revision_P : int) return int;
   function screen (self : access Inst) return access QtAda6.QtGui.QScreen.Inst'Class;
   procedure setBaseSize (self : access Inst; size_P : access QtAda6.QtCore.QSize.Inst'Class);
   procedure setCursor
     (self : access Inst; arg_1_P : UNION_QtAda6_QtGui_QCursor_QtAda6_QtCore_Qt_CursorShape_QtAda6_QtGui_QPixmap);
   procedure setFilePath (self : access Inst; filePath_P : str);
   procedure setFlag
     (self : access Inst; arg_1_P : access QtAda6.QtCore.Qt.WindowType.Inst'Class; on_P : bool := False);
   procedure setFlags (self : access Inst; flags_P : access QtAda6.QtCore.Qt.WindowType.Inst'Class);
   procedure setFormat
     (self : access Inst; format_P : UNION_QtAda6_QtGui_QSurfaceFormat_QtAda6_QtGui_QSurfaceFormat_FormatOption);
   procedure setFramePosition (self : access Inst; point_P : access QtAda6.QtCore.QPoint.Inst'Class);
   procedure setGeometry (self : access Inst; posx_P : int; posy_P : int; w_P : int; h_P : int);
   procedure setGeometry (self : access Inst; rect_P : access QtAda6.QtCore.QRect.Inst'Class);
   procedure setHeight (self : access Inst; arg_P : int);
   procedure setIcon (self : access Inst; icon_P : UNION_QtAda6_QtGui_QIcon_QtAda6_QtGui_QPixmap);
   function setKeyboardGrabEnabled (self : access Inst; grab_P : bool) return bool;
   procedure setMask
     (self     : access Inst;
      region_P : UNION_QtAda6_QtGui_QRegion_QtAda6_QtGui_QBitmap_QtAda6_QtGui_QPolygon_QtAda6_QtCore_QRect);
   procedure setMaximumHeight (self : access Inst; h_P : int);
   procedure setMaximumSize (self : access Inst; size_P : access QtAda6.QtCore.QSize.Inst'Class);
   procedure setMaximumWidth (self : access Inst; w_P : int);
   procedure setMinimumHeight (self : access Inst; h_P : int);
   procedure setMinimumSize (self : access Inst; size_P : access QtAda6.QtCore.QSize.Inst'Class);
   procedure setMinimumWidth (self : access Inst; w_P : int);
   procedure setModality (self : access Inst; modality_P : access QtAda6.QtCore.Qt.WindowModality.Inst'Class);
   function setMouseGrabEnabled (self : access Inst; grab_P : bool) return bool;
   procedure setOpacity (self : access Inst; level_P : float);
   procedure setParent (self : access Inst; parent_P : access QtAda6.QtGui.QWindow.Inst'Class);
   procedure setPosition (self : access Inst; posx_P : int; posy_P : int);
   procedure setPosition (self : access Inst; pt_P : access QtAda6.QtCore.QPoint.Inst'Class);
   procedure setScreen (self : access Inst; screen_P : access QtAda6.QtGui.QScreen.Inst'Class);
   procedure setSizeIncrement (self : access Inst; size_P : access QtAda6.QtCore.QSize.Inst'Class);
   procedure setSurfaceType (self : access Inst; surfaceType_P : access QtAda6.QtGui.QSurface.SurfaceType.Inst'Class);
   procedure setTitle (self : access Inst; arg_1_P : str);
   procedure setTransientParent (self : access Inst; parent_P : access QtAda6.QtGui.QWindow.Inst'Class);
   procedure setVisibility (self : access Inst; v_P : access QtAda6.QtGui.QWindow.Visibility.Inst'Class);
   procedure setVisible (self : access Inst; visible_P : bool);
   procedure setWidth (self : access Inst; arg_P : int);
   procedure setWindowState (self : access Inst; state_P : access QtAda6.QtCore.Qt.WindowState.Inst'Class);
   procedure setWindowStates (self : access Inst; states_P : access QtAda6.QtCore.Qt.WindowState.Inst'Class);
   procedure setX (self : access Inst; arg_P : int);
   procedure setY (self : access Inst; arg_P : int);
   procedure show (self : access Inst);
   procedure showEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QShowEvent.Inst'Class);
   procedure showFullScreen (self : access Inst);
   procedure showMaximized (self : access Inst);
   procedure showMinimized (self : access Inst);
   procedure showNormal (self : access Inst);
   function size (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   function sizeIncrement (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   function startSystemMove (self : access Inst) return bool;
   function startSystemResize (self : access Inst; edges_P : access QtAda6.QtCore.Qt.Edge.Inst'Class) return bool;
   function surfaceHandle (self : access Inst) return int;
   function surfaceType (self : access Inst) return access QtAda6.QtGui.QSurface.SurfaceType.Inst'Class;
   procedure tabletEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QTabletEvent.Inst'Class);
   function title (self : access Inst) return str;
   procedure touchEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QTouchEvent.Inst'Class);
   function transientParent (self : access Inst) return access QtAda6.QtGui.QWindow.Inst'Class;
   function type_K (self : access Inst) return access QtAda6.QtCore.Qt.WindowType.Inst'Class;
   procedure unsetCursor (self : access Inst);
   function visibility_F (self : access Inst) return access QtAda6.QtGui.QWindow.Visibility.Inst'Class;
   procedure wheelEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QWheelEvent.Inst'Class);
   function width (self : access Inst) return int;
   function winId (self : access Inst) return int;
   function windowState (self : access Inst) return access QtAda6.QtCore.Qt.WindowState.Inst'Class;
   function windowStates (self : access Inst) return access QtAda6.QtCore.Qt.WindowState.Inst'Class;
   function x (self : access Inst) return int;
   function y (self : access Inst) return int;
end QtAda6.QtGui.QWindow;
