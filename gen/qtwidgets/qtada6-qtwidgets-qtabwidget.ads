-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qtabwidget.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtGui.QIcon;
limited with QtAda6.QtGui.QPixmap;
limited with QtAda6.QtCore.QEvent;
limited with QtAda6.QtCore.Qt.Corner;
limited with QtAda6.QtCore.Qt.TextElideMode;
limited with QtAda6.QtCore.QSize;
limited with QtAda6.QtWidgets.QStyleOptionTabWidgetFrame;
limited with QtAda6.QtGui.QKeyEvent;
limited with QtAda6.QtGui.QPaintEvent;
limited with QtAda6.QtGui.QResizeEvent;
limited with QtAda6.QtWidgets.QTabBar;
limited with QtAda6.QtWidgets.QTabWidget.TabPosition;
limited with QtAda6.QtWidgets.QTabWidget.TabShape;
limited with QtAda6.QtGui.QShowEvent;
with QtAda6.QtWidgets.QWidget;
package QtAda6.QtWidgets.QTabWidget is
   type ClassVar_Signal is access Any;
   type Optional_QtAda6_QtWidgets_QWidget is access Any;
   type Union_QtAda6_QtGui_QIcon_QtAda6_QtGui_QPixmap is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new QtAda6.QtWidgets.QWidget.Inst with null record;
   procedure Finalize (Self : in out Class);
   currentChanged      : ClassVar_Signal;-- currentChanged(int)
   tabBarClicked       : ClassVar_Signal;-- tabBarClicked(int)
   tabBarDoubleClicked : ClassVar_Signal;-- tabBarDoubleClicked(int)
   tabCloseRequested   : ClassVar_Signal;-- tabCloseRequested(int)
   function Create (parent_P : Optional_QtAda6_QtWidgets_QWidget) return Class;
   function addTab
     (self : access Inst; widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class; arg_2_P : str) return int;
   function addTab
     (self   : access Inst; widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class;
      icon_P : Union_QtAda6_QtGui_QIcon_QtAda6_QtGui_QPixmap; label_P : str) return int;
   procedure changeEvent (self : access Inst; arg_1_P : access QtAda6.QtCore.QEvent.Inst'Class);
   procedure clear (self : access Inst);
   function cornerWidget
     (self : access Inst; corner_P : access QtAda6.QtCore.Qt.Corner.Inst'Class)
      return access QtAda6.QtWidgets.QWidget.Inst'Class;
   function count (self : access Inst) return int;
   function currentIndex (self : access Inst) return int;
   function currentWidget (self : access Inst) return access QtAda6.QtWidgets.QWidget.Inst'Class;
   function documentMode (self : access Inst) return bool;
   function elideMode (self : access Inst) return access QtAda6.QtCore.Qt.TextElideMode.Inst'Class;
   function event (self : access Inst; arg_1_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   function hasHeightForWidth (self : access Inst) return bool;
   function heightForWidth (self : access Inst; width_P : int) return int;
   function iconSize (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   function indexOf (self : access Inst; widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class) return int;
   procedure initStyleOption
     (self : access Inst; option_P : access QtAda6.QtWidgets.QStyleOptionTabWidgetFrame.Inst'Class);
   function insertTab
     (self : access Inst; index_P : int; widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class; arg_3_P : str)
      return int;
   function insertTab
     (self   : access Inst; index_P : int; widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class;
      icon_P : Union_QtAda6_QtGui_QIcon_QtAda6_QtGui_QPixmap; label_P : str) return int;
   function isMovable (self : access Inst) return bool;
   function isTabEnabled (self : access Inst; index_P : int) return bool;
   function isTabVisible (self : access Inst; index_P : int) return bool;
   procedure keyPressEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QKeyEvent.Inst'Class);
   function minimumSizeHint (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   procedure paintEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QPaintEvent.Inst'Class);
   procedure removeTab (self : access Inst; index_P : int);
   procedure resizeEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QResizeEvent.Inst'Class);
   procedure setCornerWidget
     (self     : access Inst; w_P : access QtAda6.QtWidgets.QWidget.Inst'Class;
      corner_P : access QtAda6.QtCore.Qt.Corner.Inst'Class);
   procedure setCurrentIndex (self : access Inst; index_P : int);
   procedure setCurrentWidget (self : access Inst; widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class);
   procedure setDocumentMode (self : access Inst; set_P : bool);
   procedure setElideMode (self : access Inst; mode_P : access QtAda6.QtCore.Qt.TextElideMode.Inst'Class);
   procedure setIconSize (self : access Inst; size_P : access QtAda6.QtCore.QSize.Inst'Class);
   procedure setMovable (self : access Inst; movable_P : bool);
   procedure setTabBar (self : access Inst; arg_1_P : access QtAda6.QtWidgets.QTabBar.Inst'Class);
   procedure setTabBarAutoHide (self : access Inst; enabled_P : bool);
   procedure setTabEnabled (self : access Inst; index_P : int; enabled_P : bool);
   procedure setTabIcon (self : access Inst; index_P : int; icon_P : Union_QtAda6_QtGui_QIcon_QtAda6_QtGui_QPixmap);
   procedure setTabPosition
     (self : access Inst; position_P : access QtAda6.QtWidgets.QTabWidget.TabPosition.Inst'Class);
   procedure setTabShape (self : access Inst; s_P : access QtAda6.QtWidgets.QTabWidget.TabShape.Inst'Class);
   procedure setTabText (self : access Inst; index_P : int; text_P : str);
   procedure setTabToolTip (self : access Inst; index_P : int; tip_P : str);
   procedure setTabVisible (self : access Inst; index_P : int; visible_P : bool);
   procedure setTabWhatsThis (self : access Inst; index_P : int; text_P : str);
   procedure setTabsClosable (self : access Inst; closeable_P : bool);
   procedure setUsesScrollButtons (self : access Inst; useButtons_P : bool);
   procedure showEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QShowEvent.Inst'Class);
   function sizeHint (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   function tabBar (self : access Inst) return access QtAda6.QtWidgets.QTabBar.Inst'Class;
   function tabBarAutoHide (self : access Inst) return bool;
   function tabIcon (self : access Inst; index_P : int) return access QtAda6.QtGui.QIcon.Inst'Class;
   procedure tabInserted (self : access Inst; index_P : int);
   function tabPosition_F (self : access Inst) return access QtAda6.QtWidgets.QTabWidget.TabPosition.Inst'Class;
   procedure tabRemoved (self : access Inst; index_P : int);
   function tabShape_F (self : access Inst) return access QtAda6.QtWidgets.QTabWidget.TabShape.Inst'Class;
   function tabText (self : access Inst; index_P : int) return str;
   function tabToolTip (self : access Inst; index_P : int) return str;
   function tabWhatsThis (self : access Inst; index_P : int) return str;
   function tabsClosable (self : access Inst) return bool;
   function usesScrollButtons (self : access Inst) return bool;
   function widget (self : access Inst; index_P : int) return access QtAda6.QtWidgets.QWidget.Inst'Class;
end QtAda6.QtWidgets.QTabWidget;
