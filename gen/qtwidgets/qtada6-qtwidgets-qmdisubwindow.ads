-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qmdisubwindow.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.Qt.WindowType;
limited with QtAda6.QtCore.QEvent;
limited with QtAda6.QtCore.QChildEvent;
limited with QtAda6.QtGui.QCloseEvent;
limited with QtAda6.QtGui.QContextMenuEvent;
limited with QtAda6.QtCore.QObject;
limited with QtAda6.QtGui.QFocusEvent;
limited with QtAda6.QtGui.QHideEvent;
limited with QtAda6.QtGui.QKeyEvent;
limited with QtAda6.QtWidgets.QMdiArea;
limited with QtAda6.QtCore.QSize;
limited with QtAda6.QtGui.QMouseEvent;
limited with QtAda6.QtGui.QMoveEvent;
limited with QtAda6.QtGui.QPaintEvent;
limited with QtAda6.QtGui.QResizeEvent;
limited with QtAda6.QtWidgets.QMdiSubWindow.SubWindowOption;
limited with QtAda6.QtWidgets.QMenu;
limited with QtAda6.QtGui.QShowEvent;
limited with QtAda6.QtCore.QTimerEvent;
with QtAda6.QtWidgets.QWidget;
with QtAda6.QtCore.Signal;
package QtAda6.QtWidgets.QMdiSubWindow is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtWidgets.QWidget.Inst with null record;
   procedure Finalize (Self : in out Class);
   function aboutToActivate (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- aboutToActivate()
   function windowStateChanged
     (self : access Inst)
      return access QtAda6.QtCore.Signal.Inst'Class;-- windowStateChanged(Qt::WindowStates,Qt::WindowStates)
   function Create
     (parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class    := null;
      flags_P  : access QtAda6.QtCore.Qt.WindowType.Inst'Class := null) return Class;
   procedure changeEvent (self : access Inst; changeEvent_P : access QtAda6.QtCore.QEvent.Inst'Class);
   procedure childEvent (self : access Inst; childEvent_P : access QtAda6.QtCore.QChildEvent.Inst'Class);
   procedure closeEvent (self : access Inst; closeEvent_P : access QtAda6.QtGui.QCloseEvent.Inst'Class);
   procedure contextMenuEvent
     (self : access Inst; contextMenuEvent_P : access QtAda6.QtGui.QContextMenuEvent.Inst'Class);
   function event (self : access Inst; event_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   function eventFilter
     (self    : access Inst; object_P : access QtAda6.QtCore.QObject.Inst'Class;
      event_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   procedure focusInEvent (self : access Inst; focusInEvent_P : access QtAda6.QtGui.QFocusEvent.Inst'Class);
   procedure focusOutEvent (self : access Inst; focusOutEvent_P : access QtAda6.QtGui.QFocusEvent.Inst'Class);
   procedure hideEvent (self : access Inst; hideEvent_P : access QtAda6.QtGui.QHideEvent.Inst'Class);
   function isShaded (self : access Inst) return bool;
   procedure keyPressEvent (self : access Inst; keyEvent_P : access QtAda6.QtGui.QKeyEvent.Inst'Class);
   function keyboardPageStep (self : access Inst) return int;
   function keyboardSingleStep (self : access Inst) return int;
   procedure leaveEvent (self : access Inst; leaveEvent_P : access QtAda6.QtCore.QEvent.Inst'Class);
   function maximizedButtonsWidget (self : access Inst) return access QtAda6.QtWidgets.QWidget.Inst'Class;
   function maximizedSystemMenuIconWidget (self : access Inst) return access QtAda6.QtWidgets.QWidget.Inst'Class;
   function mdiArea (self : access Inst) return access QtAda6.QtWidgets.QMdiArea.Inst'Class;
   function minimumSizeHint (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   procedure mouseDoubleClickEvent (self : access Inst; mouseEvent_P : access QtAda6.QtGui.QMouseEvent.Inst'Class);
   procedure mouseMoveEvent (self : access Inst; mouseEvent_P : access QtAda6.QtGui.QMouseEvent.Inst'Class);
   procedure mousePressEvent (self : access Inst; mouseEvent_P : access QtAda6.QtGui.QMouseEvent.Inst'Class);
   procedure mouseReleaseEvent (self : access Inst; mouseEvent_P : access QtAda6.QtGui.QMouseEvent.Inst'Class);
   procedure moveEvent (self : access Inst; moveEvent_P : access QtAda6.QtGui.QMoveEvent.Inst'Class);
   procedure paintEvent (self : access Inst; paintEvent_P : access QtAda6.QtGui.QPaintEvent.Inst'Class);
   procedure resizeEvent (self : access Inst; resizeEvent_P : access QtAda6.QtGui.QResizeEvent.Inst'Class);
   procedure setKeyboardPageStep (self : access Inst; step_P : int);
   procedure setKeyboardSingleStep (self : access Inst; step_P : int);
   procedure setOption
     (self : access Inst; option_P : access QtAda6.QtWidgets.QMdiSubWindow.SubWindowOption.Inst'Class;
      on_P : bool := False);
   procedure setSystemMenu (self : access Inst; systemMenu_P : access QtAda6.QtWidgets.QMenu.Inst'Class);
   procedure setWidget (self : access Inst; widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class);
   procedure showEvent (self : access Inst; showEvent_P : access QtAda6.QtGui.QShowEvent.Inst'Class);
   procedure showShaded (self : access Inst);
   procedure showSystemMenu (self : access Inst);
   function sizeHint (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   function systemMenu (self : access Inst) return access QtAda6.QtWidgets.QMenu.Inst'Class;
   function testOption
     (self : access Inst; arg_1_P : access QtAda6.QtWidgets.QMdiSubWindow.SubWindowOption.Inst'Class) return bool;
   procedure timerEvent (self : access Inst; timerEvent_P : access QtAda6.QtCore.QTimerEvent.Inst'Class);
   function widget (self : access Inst) return access QtAda6.QtWidgets.QWidget.Inst'Class;
end QtAda6.QtWidgets.QMdiSubWindow;
