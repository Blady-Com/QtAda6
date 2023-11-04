-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qdockwidget.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.Qt.WindowType;
limited with QtAda6.QtCore.Qt.DockWidgetArea;
limited with QtAda6.QtCore.QEvent;
limited with QtAda6.QtGui.QCloseEvent;
limited with QtAda6.QtWidgets.QDockWidget.DockWidgetFeature;
limited with QtAda6.QtWidgets.QStyleOptionDockWidget;
limited with QtAda6.QtGui.QPaintEvent;
limited with QtAda6.QtGui.QAction;
with QtAda6.QtWidgets.QWidget;
package QtAda6.QtWidgets.QDockWidget is
   type ClassVar_Signal is access Any;
   type Optional_QtAda6_QtWidgets_QWidget is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new QtAda6.QtWidgets.QWidget.Inst with null record;
   procedure Finalize (Self : in out Class);
   allowedAreasChanged : ClassVar_Signal;-- allowedAreasChanged(Qt::DockWidgetAreas)
   dockLocationChanged : ClassVar_Signal;-- dockLocationChanged(Qt::DockWidgetArea)
   featuresChanged     : ClassVar_Signal;-- featuresChanged(QDockWidget::DockWidgetFeatures)
   topLevelChanged     : ClassVar_Signal;-- topLevelChanged(bool)
   visibilityChanged   : ClassVar_Signal;-- visibilityChanged(bool)
   function Create
     (parent_P : Optional_QtAda6_QtWidgets_QWidget; flags_P : access QtAda6.QtCore.Qt.WindowType.Inst'Class)
      return Class;
   function Create
     (title_P : str; parent_P : Optional_QtAda6_QtWidgets_QWidget;
      flags_P : access QtAda6.QtCore.Qt.WindowType.Inst'Class) return Class;
   function allowedAreas (self : access Inst) return access QtAda6.QtCore.Qt.DockWidgetArea.Inst'Class;
   procedure changeEvent (self : access Inst; event_P : access QtAda6.QtCore.QEvent.Inst'Class);
   procedure closeEvent (self : access Inst; event_P : access QtAda6.QtGui.QCloseEvent.Inst'Class);
   function event (self : access Inst; event_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   function features (self : access Inst) return access QtAda6.QtWidgets.QDockWidget.DockWidgetFeature.Inst'Class;
   procedure initStyleOption (self : access Inst; option_P : access QtAda6.QtWidgets.QStyleOptionDockWidget.Inst'Class);
   function isAreaAllowed (self : access Inst; area_P : access QtAda6.QtCore.Qt.DockWidgetArea.Inst'Class) return bool;
   function isFloating (self : access Inst) return bool;
   procedure paintEvent (self : access Inst; event_P : access QtAda6.QtGui.QPaintEvent.Inst'Class);
   procedure setAllowedAreas (self : access Inst; areas_P : access QtAda6.QtCore.Qt.DockWidgetArea.Inst'Class);
   procedure setFeatures
     (self : access Inst; features_P : access QtAda6.QtWidgets.QDockWidget.DockWidgetFeature.Inst'Class);
   procedure setFloating (self : access Inst; floating_P : bool);
   procedure setTitleBarWidget (self : access Inst; widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class);
   procedure setWidget (self : access Inst; widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class);
   function titleBarWidget (self : access Inst) return access QtAda6.QtWidgets.QWidget.Inst'Class;
   function toggleViewAction (self : access Inst) return access QtAda6.QtGui.QAction.Inst'Class;
   function widget_F (self : access Inst) return access QtAda6.QtWidgets.QWidget.Inst'Class;
end QtAda6.QtWidgets.QDockWidget;
