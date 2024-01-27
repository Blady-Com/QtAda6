-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qmainwindow.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.Qt.WindowType;
limited with QtAda6.QtCore.Qt.DockWidgetArea;
limited with QtAda6.QtCore.Qt.Orientation;
limited with QtAda6.QtCore.Qt.ToolBarArea;
limited with QtAda6.QtWidgets.QToolBar;
limited with QtAda6.QtGui.QContextMenuEvent;
limited with QtAda6.QtCore.Qt.Corner;
limited with QtAda6.QtWidgets.QMenu;
limited with QtAda6.QtWidgets.QMainWindow.DockOption;
limited with QtAda6.QtCore.QEvent;
limited with QtAda6.QtCore.QSize;
limited with QtAda6.QtCore.QPoint;
limited with QtAda6.QtWidgets.QMenuBar;
limited with QtAda6.QtCore.QByteArray;
limited with QtAda6.QtWidgets.QStatusBar;
limited with QtAda6.QtWidgets.QTabWidget.TabPosition;
limited with QtAda6.QtWidgets.QTabWidget.TabShape;
limited with QtAda6.QtCore.Qt.ToolButtonStyle;
with QtAda6.QtWidgets.QWidget;
with QtAda6.QtCore.Signal;
with QtAda6.QtWidgets.QDockWidget;
package QtAda6.QtWidgets.QMainWindow is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtWidgets.QWidget.Inst with null record;
   subtype CLASSVAR_Signal is QtAda6.QtCore.Signal.Class;
   subtype SEQUENCE_QtAda6_QtWidgets_QDockWidget is QtAda6.QtWidgets.QDockWidget.Class_Array;
   type SEQUENCE_int is array (Positive range <>) of int;
   type UNION_QtAda6_QtCore_QByteArraybytes is new Any;
   subtype LIST_QtAda6_QtWidgets_QDockWidget is QtAda6.QtWidgets.QDockWidget.Class_Array;
   procedure Finalize (Self : in out Class);
   function iconSizeChanged (self : access Inst) return CLASSVAR_Signal;-- iconSizeChanged(QSize)
   function tabifiedDockWidgetActivated
     (self : access Inst) return CLASSVAR_Signal;-- tabifiedDockWidgetActivated(QDockWidget*)
   function toolButtonStyleChanged
     (self : access Inst) return CLASSVAR_Signal;-- toolButtonStyleChanged(Qt::ToolButtonStyle)
   function Create
     (parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class    := null;
      flags_P  : access QtAda6.QtCore.Qt.WindowType.Inst'Class := null) return Class;
   procedure addDockWidget
     (self         : access Inst; area_P : access QtAda6.QtCore.Qt.DockWidgetArea.Inst'Class;
      dockwidget_P : access QtAda6.QtWidgets.QDockWidget.Inst'Class);
   procedure addDockWidget
     (self          : access Inst; area_P : access QtAda6.QtCore.Qt.DockWidgetArea.Inst'Class;
      dockwidget_P  : access QtAda6.QtWidgets.QDockWidget.Inst'Class;
      orientation_P : access QtAda6.QtCore.Qt.Orientation.Inst'Class);
   procedure addToolBar
     (self      : access Inst; area_P : access QtAda6.QtCore.Qt.ToolBarArea.Inst'Class;
      toolbar_P : access QtAda6.QtWidgets.QToolBar.Inst'Class);
   function addToolBar (self : access Inst; title_P : str) return access QtAda6.QtWidgets.QToolBar.Inst'Class;
   procedure addToolBar (self : access Inst; toolbar_P : access QtAda6.QtWidgets.QToolBar.Inst'Class);
   procedure addToolBarBreak (self : access Inst; area_P : access QtAda6.QtCore.Qt.ToolBarArea.Inst'Class := null);
   function centralWidget (self : access Inst) return access QtAda6.QtWidgets.QWidget.Inst'Class;
   procedure contextMenuEvent (self : access Inst; event_P : access QtAda6.QtGui.QContextMenuEvent.Inst'Class);
   function corner
     (self : access Inst; corner_P : access QtAda6.QtCore.Qt.Corner.Inst'Class)
      return access QtAda6.QtCore.Qt.DockWidgetArea.Inst'Class;
   function createPopupMenu (self : access Inst) return access QtAda6.QtWidgets.QMenu.Inst'Class;
   function dockOptions (self : access Inst) return access QtAda6.QtWidgets.QMainWindow.DockOption.Inst'Class;
   function dockWidgetArea
     (self : access Inst; dockwidget_P : access QtAda6.QtWidgets.QDockWidget.Inst'Class)
      return access QtAda6.QtCore.Qt.DockWidgetArea.Inst'Class;
   function documentMode (self : access Inst) return bool;
   function event (self : access Inst; event_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   function iconSize (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   procedure insertToolBar
     (self      : access Inst; before_P : access QtAda6.QtWidgets.QToolBar.Inst'Class;
      toolbar_P : access QtAda6.QtWidgets.QToolBar.Inst'Class);
   procedure insertToolBarBreak (self : access Inst; before_P : access QtAda6.QtWidgets.QToolBar.Inst'Class);
   function isAnimated (self : access Inst) return bool;
   function isDockNestingEnabled (self : access Inst) return bool;
   function isSeparator (self : access Inst; pos_P : access QtAda6.QtCore.QPoint.Inst'Class) return bool;
   function menuBar (self : access Inst) return access QtAda6.QtWidgets.QMenuBar.Inst'Class;
   function menuWidget (self : access Inst) return access QtAda6.QtWidgets.QWidget.Inst'Class;
   procedure removeDockWidget (self : access Inst; dockwidget_P : access QtAda6.QtWidgets.QDockWidget.Inst'Class);
   procedure removeToolBar (self : access Inst; toolbar_P : access QtAda6.QtWidgets.QToolBar.Inst'Class);
   procedure removeToolBarBreak (self : access Inst; before_P : access QtAda6.QtWidgets.QToolBar.Inst'Class);
   procedure resizeDocks
     (self          : access Inst; docks_P : SEQUENCE_QtAda6_QtWidgets_QDockWidget; sizes_P : SEQUENCE_int;
      orientation_P : access QtAda6.QtCore.Qt.Orientation.Inst'Class);
   function restoreDockWidget
     (self : access Inst; dockwidget_P : access QtAda6.QtWidgets.QDockWidget.Inst'Class) return bool;
   function restoreState
     (self : access Inst; state_P : UNION_QtAda6_QtCore_QByteArraybytes; version_P : int := 0) return bool;
   function saveState (self : access Inst; version_P : int := 0) return access QtAda6.QtCore.QByteArray.Inst'Class;
   procedure setAnimated (self : access Inst; enabled_P : bool);
   procedure setCentralWidget (self : access Inst; widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class);
   procedure setCorner
     (self   : access Inst; corner_P : access QtAda6.QtCore.Qt.Corner.Inst'Class;
      area_P : access QtAda6.QtCore.Qt.DockWidgetArea.Inst'Class);
   procedure setDockNestingEnabled (self : access Inst; enabled_P : bool);
   procedure setDockOptions (self : access Inst; options_P : access QtAda6.QtWidgets.QMainWindow.DockOption.Inst'Class);
   procedure setDocumentMode (self : access Inst; enabled_P : bool);
   procedure setIconSize (self : access Inst; iconSize_P : access QtAda6.QtCore.QSize.Inst'Class);
   procedure setMenuBar (self : access Inst; menubar_P : access QtAda6.QtWidgets.QMenuBar.Inst'Class);
   procedure setMenuWidget (self : access Inst; menubar_P : access QtAda6.QtWidgets.QWidget.Inst'Class);
   procedure setStatusBar (self : access Inst; statusbar_P : access QtAda6.QtWidgets.QStatusBar.Inst'Class);
   procedure setTabPosition
     (self          : access Inst; areas_P : access QtAda6.QtCore.Qt.DockWidgetArea.Inst'Class;
      tabPosition_P : access QtAda6.QtWidgets.QTabWidget.TabPosition.Inst'Class);
   procedure setTabShape (self : access Inst; tabShape_P : access QtAda6.QtWidgets.QTabWidget.TabShape.Inst'Class);
   procedure setToolButtonStyle
     (self : access Inst; toolButtonStyle_P : access QtAda6.QtCore.Qt.ToolButtonStyle.Inst'Class);
   procedure setUnifiedTitleAndToolBarOnMac (self : access Inst; set_P : bool);
   procedure splitDockWidget
     (self          : access Inst; after_P : access QtAda6.QtWidgets.QDockWidget.Inst'Class;
      dockwidget_P  : access QtAda6.QtWidgets.QDockWidget.Inst'Class;
      orientation_P : access QtAda6.QtCore.Qt.Orientation.Inst'Class);
   function statusBar (self : access Inst) return access QtAda6.QtWidgets.QStatusBar.Inst'Class;
   function tabPosition
     (self : access Inst; area_P : access QtAda6.QtCore.Qt.DockWidgetArea.Inst'Class)
      return access QtAda6.QtWidgets.QTabWidget.TabPosition.Inst'Class;
   function tabShape (self : access Inst) return access QtAda6.QtWidgets.QTabWidget.TabShape.Inst'Class;
   function tabifiedDockWidgets
     (self : access Inst; dockwidget_P : access QtAda6.QtWidgets.QDockWidget.Inst'Class)
      return LIST_QtAda6_QtWidgets_QDockWidget;
   procedure tabifyDockWidget
     (self     : access Inst; first_P : access QtAda6.QtWidgets.QDockWidget.Inst'Class;
      second_P : access QtAda6.QtWidgets.QDockWidget.Inst'Class);
   function takeCentralWidget (self : access Inst) return access QtAda6.QtWidgets.QWidget.Inst'Class;
   function toolBarArea
     (self : access Inst; toolbar_P : access QtAda6.QtWidgets.QToolBar.Inst'Class)
      return access QtAda6.QtCore.Qt.ToolBarArea.Inst'Class;
   function toolBarBreak (self : access Inst; toolbar_P : access QtAda6.QtWidgets.QToolBar.Inst'Class) return bool;
   function toolButtonStyle (self : access Inst) return access QtAda6.QtCore.Qt.ToolButtonStyle.Inst'Class;
   function unifiedTitleAndToolBarOnMac (self : access Inst) return bool;
end QtAda6.QtWidgets.QMainWindow;
