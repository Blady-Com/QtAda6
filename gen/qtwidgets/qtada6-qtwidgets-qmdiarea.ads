-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qmdiarea.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtWidgets.QWidget;
limited with QtAda6.QtWidgets.QMdiArea.WindowOrder;
limited with QtAda6.QtWidgets.QMdiSubWindow;
limited with QtAda6.QtCore.Qt.WindowType;
limited with QtAda6.QtGui.QBrush;
limited with QtAda6.QtCore.QChildEvent;
limited with QtAda6.QtCore.QEvent;
limited with QtAda6.QtCore.QObject;
limited with QtAda6.QtCore.QSize;
limited with QtAda6.QtGui.QPaintEvent;
limited with QtAda6.QtGui.QResizeEvent;
limited with QtAda6.QtCore.Qt.BrushStyle;
limited with QtAda6.QtCore.Qt.GlobalColor;
limited with QtAda6.QtGui.QColor;
limited with QtAda6.QtGui.QGradient;
limited with QtAda6.QtGui.QImage;
limited with QtAda6.QtGui.QPixmap;
limited with QtAda6.QtWidgets.QMdiArea.AreaOption;
limited with QtAda6.QtWidgets.QTabWidget.TabPosition;
limited with QtAda6.QtWidgets.QTabWidget.TabShape;
limited with QtAda6.QtWidgets.QMdiArea.ViewMode;
limited with QtAda6.QtGui.QShowEvent;
limited with QtAda6.QtCore.QTimerEvent;
with QtAda6.QtWidgets.QAbstractScrollArea;
with QtAda6.QtCore.Signal;
package QtAda6.QtWidgets.QMdiArea is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtWidgets.QAbstractScrollArea.Inst with null record;
   subtype LIST_QtAda6_QtWidgets_QMdiSubWindow is QtAda6.QtWidgets.QMdiSubWindow.Class_Array;
   procedure Finalize (Self : in out Class);
   function subWindowActivated
     (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- subWindowActivated(QMdiSubWindow*)
   function Create (parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null) return Class;
   procedure activateNextSubWindow (self : access Inst);
   procedure activatePreviousSubWindow (self : access Inst);
   function activationOrder (self : access Inst) return access QtAda6.QtWidgets.QMdiArea.WindowOrder.Inst'Class;
   function activeSubWindow (self : access Inst) return access QtAda6.QtWidgets.QMdiSubWindow.Inst'Class;
   function addSubWindow
     (self    : access Inst; widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class;
      flags_P : access QtAda6.QtCore.Qt.WindowType.Inst'Class := null)
      return access QtAda6.QtWidgets.QMdiSubWindow.Inst'Class;
   function background (self : access Inst) return access QtAda6.QtGui.QBrush.Inst'Class;
   procedure cascadeSubWindows (self : access Inst);
   procedure childEvent (self : access Inst; childEvent_P : access QtAda6.QtCore.QChildEvent.Inst'Class);
   procedure closeActiveSubWindow (self : access Inst);
   procedure closeAllSubWindows (self : access Inst);
   function currentSubWindow (self : access Inst) return access QtAda6.QtWidgets.QMdiSubWindow.Inst'Class;
   function documentMode (self : access Inst) return bool;
   function event (self : access Inst; event_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   function eventFilter
     (self    : access Inst; object_P : access QtAda6.QtCore.QObject.Inst'Class;
      event_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   function minimumSizeHint (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   procedure paintEvent (self : access Inst; paintEvent_P : access QtAda6.QtGui.QPaintEvent.Inst'Class);
   procedure removeSubWindow (self : access Inst; widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class);
   procedure resizeEvent (self : access Inst; resizeEvent_P : access QtAda6.QtGui.QResizeEvent.Inst'Class);
   procedure scrollContentsBy (self : access Inst; dx_P : int; dy_P : int);
   procedure setActivationOrder (self : access Inst; order_P : access QtAda6.QtWidgets.QMdiArea.WindowOrder.Inst'Class);
   procedure setActiveSubWindow (self : access Inst; window_P : access QtAda6.QtWidgets.QMdiSubWindow.Inst'Class);
   procedure setBackground (self : access Inst; background_P : access QtAda6.QtGui.QBrush.Inst'Class);
   procedure setBackground (self : access Inst; background_P : access QtAda6.QtCore.Qt.BrushStyle.Inst'Class);
   procedure setBackground (self : access Inst; background_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class);
   procedure setBackground (self : access Inst; background_P : access QtAda6.QtGui.QColor.Inst'Class);
   procedure setBackground (self : access Inst; background_P : access QtAda6.QtGui.QGradient.Inst'Class);
   procedure setBackground (self : access Inst; background_P : access QtAda6.QtGui.QImage.Inst'Class);
   procedure setBackground (self : access Inst; background_P : access QtAda6.QtGui.QPixmap.Inst'Class);
   procedure setDocumentMode (self : access Inst; enabled_P : bool);
   procedure setOption
     (self : access Inst; option_P : access QtAda6.QtWidgets.QMdiArea.AreaOption.Inst'Class; on_P : bool := False);
   procedure setTabPosition
     (self : access Inst; position_P : access QtAda6.QtWidgets.QTabWidget.TabPosition.Inst'Class);
   procedure setTabShape (self : access Inst; shape_P : access QtAda6.QtWidgets.QTabWidget.TabShape.Inst'Class);
   procedure setTabsClosable (self : access Inst; closable_P : bool);
   procedure setTabsMovable (self : access Inst; movable_P : bool);
   procedure setViewMode (self : access Inst; mode_P : access QtAda6.QtWidgets.QMdiArea.ViewMode.Inst'Class);
   procedure setupViewport (self : access Inst; viewport_P : access QtAda6.QtWidgets.QWidget.Inst'Class);
   procedure showEvent (self : access Inst; showEvent_P : access QtAda6.QtGui.QShowEvent.Inst'Class);
   function sizeHint (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   function subWindowList
     (self : access Inst; order_P : access QtAda6.QtWidgets.QMdiArea.WindowOrder.Inst'Class := null)
      return LIST_QtAda6_QtWidgets_QMdiSubWindow;
   function tabPosition (self : access Inst) return access QtAda6.QtWidgets.QTabWidget.TabPosition.Inst'Class;
   function tabShape (self : access Inst) return access QtAda6.QtWidgets.QTabWidget.TabShape.Inst'Class;
   function tabsClosable (self : access Inst) return bool;
   function tabsMovable (self : access Inst) return bool;
   function testOption
     (self : access Inst; opton_P : access QtAda6.QtWidgets.QMdiArea.AreaOption.Inst'Class) return bool;
   procedure tileSubWindows (self : access Inst);
   procedure timerEvent (self : access Inst; timerEvent_P : access QtAda6.QtCore.QTimerEvent.Inst'Class);
   function viewMode_F (self : access Inst) return access QtAda6.QtWidgets.QMdiArea.ViewMode.Inst'Class;
   function viewportEvent (self : access Inst; event_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
end QtAda6.QtWidgets.QMdiArea;
