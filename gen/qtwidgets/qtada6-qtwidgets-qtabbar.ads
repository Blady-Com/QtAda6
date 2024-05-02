-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qtabbar.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtGui.QIcon;
limited with QtAda6.QtGui.QPixmap;
limited with QtAda6.QtCore.QEvent;
limited with QtAda6.QtCore.Qt.TextElideMode;
limited with QtAda6.QtGui.QHideEvent;
limited with QtAda6.QtCore.QSize;
limited with QtAda6.QtWidgets.QStyleOptionTab;
limited with QtAda6.QtGui.QKeyEvent;
limited with QtAda6.QtGui.QMouseEvent;
limited with QtAda6.QtGui.QPaintEvent;
limited with QtAda6.QtGui.QResizeEvent;
limited with QtAda6.QtWidgets.QTabBar.SelectionBehavior;
limited with QtAda6.QtWidgets.QTabBar.Shape;
limited with QtAda6.QtWidgets.QTabBar.ButtonPosition;
limited with QtAda6.QtGui.QColor;
limited with QtAda6.QtGui.QRgba64;
limited with QtAda6.QtCore.Qt.GlobalColor;
limited with QtAda6.QtGui.QShowEvent;
limited with QtAda6.QtCore.QPoint;
limited with QtAda6.QtCore.QRect;
limited with QtAda6.QtCore.QTimerEvent;
limited with QtAda6.QtGui.QWheelEvent;
with QtAda6.QtWidgets.QWidget;
with QtAda6.QtCore.Signal;
package QtAda6.QtWidgets.QTabBar is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtWidgets.QWidget.Inst with null record;
   procedure Finalize (Self : in out Class);
   function currentChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- currentChanged(int)
   function tabBarClicked (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- tabBarClicked(int)
   function tabBarDoubleClicked
     (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- tabBarDoubleClicked(int)
   function tabCloseRequested
     (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- tabCloseRequested(int)
   function tabMoved (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- tabMoved(int,int)
   function Create (parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null) return Class;
   function accessibleTabName (self : access Inst; index_P : int) return str;
   function addTab (self : access Inst; icon_P : access QtAda6.QtGui.QIcon.Inst'Class; text_P : str) return int;
   function addTab (self : access Inst; icon_P : access QtAda6.QtGui.QPixmap.Inst'Class; text_P : str) return int;
   function addTab (self : access Inst; text_P : str) return int;
   function autoHide (self : access Inst) return bool;
   function changeCurrentOnDrag (self : access Inst) return bool;
   procedure changeEvent (self : access Inst; arg_1_P : access QtAda6.QtCore.QEvent.Inst'Class);
   function count (self : access Inst) return int;
   function currentIndex (self : access Inst) return int;
   function documentMode (self : access Inst) return bool;
   function drawBase (self : access Inst) return bool;
   function elideMode (self : access Inst) return access QtAda6.QtCore.Qt.TextElideMode.Inst'Class;
   function event (self : access Inst; arg_1_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   function expanding (self : access Inst) return bool;
   procedure hideEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QHideEvent.Inst'Class);
   function iconSize (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   procedure initStyleOption
     (self : access Inst; option_P : access QtAda6.QtWidgets.QStyleOptionTab.Inst'Class; tabIndex_P : int);
   function insertTab
     (self : access Inst; index_P : int; icon_P : access QtAda6.QtGui.QIcon.Inst'Class; text_P : str) return int;
   function insertTab
     (self : access Inst; index_P : int; icon_P : access QtAda6.QtGui.QPixmap.Inst'Class; text_P : str) return int;
   function insertTab (self : access Inst; index_P : int; text_P : str) return int;
   function isMovable (self : access Inst) return bool;
   function isTabEnabled (self : access Inst; index_P : int) return bool;
   function isTabVisible (self : access Inst; index_P : int) return bool;
   procedure keyPressEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QKeyEvent.Inst'Class);
   function minimumSizeHint (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   function minimumTabSizeHint (self : access Inst; index_P : int) return access QtAda6.QtCore.QSize.Inst'Class;
   procedure mouseDoubleClickEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QMouseEvent.Inst'Class);
   procedure mouseMoveEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QMouseEvent.Inst'Class);
   procedure mousePressEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QMouseEvent.Inst'Class);
   procedure mouseReleaseEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QMouseEvent.Inst'Class);
   procedure moveTab (self : access Inst; from_U_P : int; to_P : int);
   procedure paintEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QPaintEvent.Inst'Class);
   procedure removeTab (self : access Inst; index_P : int);
   procedure resizeEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QResizeEvent.Inst'Class);
   function selectionBehaviorOnRemove
     (self : access Inst) return access QtAda6.QtWidgets.QTabBar.SelectionBehavior.Inst'Class;
   procedure setAccessibleTabName (self : access Inst; index_P : int; name_P : str);
   procedure setAutoHide (self : access Inst; hide_P : bool);
   procedure setChangeCurrentOnDrag (self : access Inst; change_P : bool);
   procedure setCurrentIndex (self : access Inst; index_P : int);
   procedure setDocumentMode (self : access Inst; set_P : bool);
   procedure setDrawBase (self : access Inst; drawTheBase_P : bool);
   procedure setElideMode (self : access Inst; mode_P : access QtAda6.QtCore.Qt.TextElideMode.Inst'Class);
   procedure setExpanding (self : access Inst; enabled_P : bool);
   procedure setIconSize (self : access Inst; size_P : access QtAda6.QtCore.QSize.Inst'Class);
   procedure setMovable (self : access Inst; movable_P : bool);
   procedure setSelectionBehaviorOnRemove
     (self : access Inst; behavior_P : access QtAda6.QtWidgets.QTabBar.SelectionBehavior.Inst'Class);
   procedure setShape (self : access Inst; shape_P : access QtAda6.QtWidgets.QTabBar.Shape.Inst'Class);
   procedure setTabButton
     (self     : access Inst; index_P : int; position_P : access QtAda6.QtWidgets.QTabBar.ButtonPosition.Inst'Class;
      widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class);
   procedure setTabData (self : access Inst; index_P : int; data_P : Any);
   procedure setTabEnabled (self : access Inst; index_P : int; enabled_P : bool);
   procedure setTabIcon (self : access Inst; index_P : int; icon_P : access QtAda6.QtGui.QIcon.Inst'Class);
   procedure setTabIcon (self : access Inst; index_P : int; icon_P : access QtAda6.QtGui.QPixmap.Inst'Class);
   procedure setTabText (self : access Inst; index_P : int; text_P : str);
   procedure setTabTextColor (self : access Inst; index_P : int; color_P : access QtAda6.QtGui.QColor.Inst'Class);
   procedure setTabTextColor (self : access Inst; index_P : int; color_P : access QtAda6.QtGui.QRgba64.Inst'Class);
   procedure setTabTextColor (self : access Inst; index_P : int; color_P : Any);
   procedure setTabTextColor
     (self : access Inst; index_P : int; color_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class);
   procedure setTabTextColor (self : access Inst; index_P : int; color_P : str);
   procedure setTabTextColor (self : access Inst; index_P : int; color_P : int);
   procedure setTabToolTip (self : access Inst; index_P : int; tip_P : str);
   procedure setTabVisible (self : access Inst; index_P : int; visible_P : bool);
   procedure setTabWhatsThis (self : access Inst; index_P : int; text_P : str);
   procedure setTabsClosable (self : access Inst; closable_P : bool);
   procedure setUsesScrollButtons (self : access Inst; useButtons_P : bool);
   function shape_F (self : access Inst) return access QtAda6.QtWidgets.QTabBar.Shape.Inst'Class;
   procedure showEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QShowEvent.Inst'Class);
   function sizeHint (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   function tabAt (self : access Inst; pos_P : access QtAda6.QtCore.QPoint.Inst'Class) return int;
   function tabButton
     (self : access Inst; index_P : int; position_P : access QtAda6.QtWidgets.QTabBar.ButtonPosition.Inst'Class)
      return access QtAda6.QtWidgets.QWidget.Inst'Class;
   function tabData (self : access Inst; index_P : int) return Any;
   function tabIcon (self : access Inst; index_P : int) return access QtAda6.QtGui.QIcon.Inst'Class;
   procedure tabInserted (self : access Inst; index_P : int);
   procedure tabLayoutChange (self : access Inst);
   function tabRect (self : access Inst; index_P : int) return access QtAda6.QtCore.QRect.Inst'Class;
   procedure tabRemoved (self : access Inst; index_P : int);
   function tabSizeHint (self : access Inst; index_P : int) return access QtAda6.QtCore.QSize.Inst'Class;
   function tabText (self : access Inst; index_P : int) return str;
   function tabTextColor (self : access Inst; index_P : int) return access QtAda6.QtGui.QColor.Inst'Class;
   function tabToolTip (self : access Inst; index_P : int) return str;
   function tabWhatsThis (self : access Inst; index_P : int) return str;
   function tabsClosable (self : access Inst) return bool;
   procedure timerEvent (self : access Inst; event_P : access QtAda6.QtCore.QTimerEvent.Inst'Class);
   function usesScrollButtons (self : access Inst) return bool;
   procedure wheelEvent (self : access Inst; event_P : access QtAda6.QtGui.QWheelEvent.Inst'Class);
end QtAda6.QtWidgets.QTabBar;
