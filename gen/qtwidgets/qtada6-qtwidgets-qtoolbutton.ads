-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qtoolbutton.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.Signal;
limited with QtAda6.QtWidgets.QWidget;
limited with QtAda6.QtGui.QActionEvent;
limited with QtAda6.QtCore.Qt.ArrowType;
limited with QtAda6.QtCore.QEvent;
limited with QtAda6.QtGui.QAction;
limited with QtAda6.QtGui.QEnterEvent;
limited with QtAda6.QtCore.QPoint;
limited with QtAda6.QtWidgets.QStyleOptionToolButton;
limited with QtAda6.QtWidgets.QMenu;
limited with QtAda6.QtCore.QSize;
limited with QtAda6.QtGui.QMouseEvent;
limited with QtAda6.QtGui.QPaintEvent;
limited with QtAda6.QtWidgets.QToolButton.ToolButtonPopupMode;
limited with QtAda6.QtCore.Qt.ToolButtonStyle;
limited with QtAda6.QtCore.QTimerEvent;
with QtAda6.QtWidgets.QAbstractButton;
package QtAda6.QtWidgets.QToolButton is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtWidgets.QAbstractButton.Inst with null record;
   procedure Finalize (Self : in out Class);
   function triggered (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- triggered(QAction*)
   function Create (parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null) return Class;
   procedure actionEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QActionEvent.Inst'Class);
   function arrowType (self : access Inst) return access QtAda6.QtCore.Qt.ArrowType.Inst'Class;
   function autoRaise (self : access Inst) return bool;
   procedure changeEvent (self : access Inst; arg_1_P : access QtAda6.QtCore.QEvent.Inst'Class);
   procedure checkStateSet (self : access Inst);
   function defaultAction (self : access Inst) return access QtAda6.QtGui.QAction.Inst'Class;
   procedure enterEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QEnterEvent.Inst'Class);
   function event (self : access Inst; e_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   function hitButton (self : access Inst; pos_P : access QtAda6.QtCore.QPoint.Inst'Class) return bool;
   procedure initStyleOption (self : access Inst; option_P : access QtAda6.QtWidgets.QStyleOptionToolButton.Inst'Class);
   procedure leaveEvent (self : access Inst; arg_1_P : access QtAda6.QtCore.QEvent.Inst'Class);
   function menu (self : access Inst) return access QtAda6.QtWidgets.QMenu.Inst'Class;
   function minimumSizeHint (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   procedure mousePressEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QMouseEvent.Inst'Class);
   procedure mouseReleaseEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QMouseEvent.Inst'Class);
   procedure nextCheckState (self : access Inst);
   procedure paintEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QPaintEvent.Inst'Class);
   function popupMode (self : access Inst) return access QtAda6.QtWidgets.QToolButton.ToolButtonPopupMode.Inst'Class;
   procedure setArrowType (self : access Inst; type_K_P : access QtAda6.QtCore.Qt.ArrowType.Inst'Class);
   procedure setAutoRaise (self : access Inst; enable_P : bool);
   procedure setDefaultAction (self : access Inst; arg_1_P : access QtAda6.QtGui.QAction.Inst'Class);
   procedure setMenu (self : access Inst; menu_P : access QtAda6.QtWidgets.QMenu.Inst'Class);
   procedure setPopupMode
     (self : access Inst; mode_P : access QtAda6.QtWidgets.QToolButton.ToolButtonPopupMode.Inst'Class);
   procedure setToolButtonStyle (self : access Inst; style_P : access QtAda6.QtCore.Qt.ToolButtonStyle.Inst'Class);
   procedure showMenu (self : access Inst);
   function sizeHint (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   procedure timerEvent (self : access Inst; arg_1_P : access QtAda6.QtCore.QTimerEvent.Inst'Class);
   function toolButtonStyle (self : access Inst) return access QtAda6.QtCore.Qt.ToolButtonStyle.Inst'Class;
end QtAda6.QtWidgets.QToolButton;
