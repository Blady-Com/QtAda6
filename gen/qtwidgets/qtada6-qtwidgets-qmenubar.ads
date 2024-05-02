-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qmenubar.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QPoint;
limited with QtAda6.QtGui.QAction;
limited with QtAda6.QtGui.QActionEvent;
limited with QtAda6.QtCore.QRect;
limited with QtAda6.QtGui.QIcon;
limited with QtAda6.QtWidgets.QMenu;
limited with QtAda6.QtGui.QPixmap;
limited with QtAda6.QtCore.QEvent;
limited with QtAda6.QtCore.Qt.Corner;
limited with QtAda6.QtCore.QObject;
limited with QtAda6.QtGui.QFocusEvent;
limited with QtAda6.QtWidgets.QStyleOptionMenuItem;
limited with QtAda6.QtGui.QKeyEvent;
limited with QtAda6.QtCore.QSize;
limited with QtAda6.QtGui.QMouseEvent;
limited with QtAda6.QtGui.QPaintEvent;
limited with QtAda6.QtGui.QResizeEvent;
limited with QtAda6.QtCore.QTimerEvent;
with QtAda6.QtWidgets.QWidget;
with QtAda6.QtCore.Signal;
package QtAda6.QtWidgets.QMenuBar is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtWidgets.QWidget.Inst with null record;
   procedure Finalize (Self : in out Class);
   function hovered (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- hovered(QAction*)
   function triggered (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- triggered(QAction*)
   function Create (parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null) return Class;
   function actionAt
     (self : access Inst; arg_1_P : access QtAda6.QtCore.QPoint.Inst'Class)
      return access QtAda6.QtGui.QAction.Inst'Class;
   procedure actionEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QActionEvent.Inst'Class);
   function actionGeometry
     (self : access Inst; arg_1_P : access QtAda6.QtGui.QAction.Inst'Class)
      return access QtAda6.QtCore.QRect.Inst'Class;
   function activeAction (self : access Inst) return access QtAda6.QtGui.QAction.Inst'Class;
   function addMenu
     (self : access Inst; icon_P : access QtAda6.QtGui.QIcon.Inst'Class; title_P : str)
      return access QtAda6.QtWidgets.QMenu.Inst'Class;
   function addMenu
     (self : access Inst; icon_P : access QtAda6.QtGui.QPixmap.Inst'Class; title_P : str)
      return access QtAda6.QtWidgets.QMenu.Inst'Class;
   function addMenu
     (self : access Inst; menu_P : access QtAda6.QtWidgets.QMenu.Inst'Class)
      return access QtAda6.QtGui.QAction.Inst'Class;
   function addMenu (self : access Inst; title_P : str) return access QtAda6.QtWidgets.QMenu.Inst'Class;
   function addSeparator (self : access Inst) return access QtAda6.QtGui.QAction.Inst'Class;
   procedure changeEvent (self : access Inst; arg_1_P : access QtAda6.QtCore.QEvent.Inst'Class);
   procedure clear (self : access Inst);
   function cornerWidget
     (self : access Inst; corner_P : access QtAda6.QtCore.Qt.Corner.Inst'Class := null)
      return access QtAda6.QtWidgets.QWidget.Inst'Class;
   function event (self : access Inst; arg_1_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   function eventFilter
     (self    : access Inst; arg_1_P : access QtAda6.QtCore.QObject.Inst'Class;
      arg_2_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   procedure focusInEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QFocusEvent.Inst'Class);
   procedure focusOutEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QFocusEvent.Inst'Class);
   function heightForWidth (self : access Inst; arg_1_P : int) return int;
   procedure initStyleOption
     (self     : access Inst; option_P : access QtAda6.QtWidgets.QStyleOptionMenuItem.Inst'Class;
      action_P : access QtAda6.QtGui.QAction.Inst'Class);
   function insertMenu
     (self   : access Inst; before_P : access QtAda6.QtGui.QAction.Inst'Class;
      menu_P : access QtAda6.QtWidgets.QMenu.Inst'Class) return access QtAda6.QtGui.QAction.Inst'Class;
   function insertSeparator
     (self : access Inst; before_P : access QtAda6.QtGui.QAction.Inst'Class)
      return access QtAda6.QtGui.QAction.Inst'Class;
   function isDefaultUp (self : access Inst) return bool;
   function isNativeMenuBar (self : access Inst) return bool;
   procedure keyPressEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QKeyEvent.Inst'Class);
   procedure leaveEvent (self : access Inst; arg_1_P : access QtAda6.QtCore.QEvent.Inst'Class);
   function minimumSizeHint (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   procedure mouseMoveEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QMouseEvent.Inst'Class);
   procedure mousePressEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QMouseEvent.Inst'Class);
   procedure mouseReleaseEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QMouseEvent.Inst'Class);
   procedure paintEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QPaintEvent.Inst'Class);
   procedure resizeEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QResizeEvent.Inst'Class);
   procedure setActiveAction (self : access Inst; action_P : access QtAda6.QtGui.QAction.Inst'Class);
   procedure setCornerWidget
     (self     : access Inst; w_P : access QtAda6.QtWidgets.QWidget.Inst'Class;
      corner_P : access QtAda6.QtCore.Qt.Corner.Inst'Class := null);
   procedure setDefaultUp (self : access Inst; arg_1_P : bool);
   procedure setNativeMenuBar (self : access Inst; nativeMenuBar_P : bool);
   procedure setVisible (self : access Inst; visible_P : bool);
   function sizeHint (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   procedure timerEvent (self : access Inst; arg_1_P : access QtAda6.QtCore.QTimerEvent.Inst'Class);
end QtAda6.QtWidgets.QMenuBar;
