-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qtoolbar.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QPoint;
limited with QtAda6.QtGui.QAction;
limited with QtAda6.QtGui.QActionEvent;
limited with QtAda6.QtCore.QRect;
limited with QtAda6.QtCore.Qt.ToolBarArea;
limited with QtAda6.QtCore.QEvent;
limited with QtAda6.QtCore.QSize;
limited with QtAda6.QtWidgets.QStyleOptionToolBar;
limited with QtAda6.QtCore.Qt.Orientation;
limited with QtAda6.QtGui.QPaintEvent;
limited with QtAda6.QtCore.Qt.ToolButtonStyle;
with QtAda6.QtWidgets.QWidget;
package QtAda6.QtWidgets.QToolBar is
   type ClassVar_Signal is access Any;
   type Optional_QtAda6_QtWidgets_QWidget is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new QtAda6.QtWidgets.QWidget.Inst with null record;
   procedure Finalize (Self : in out Class);
   actionTriggered        : ClassVar_Signal;-- actionTriggered(QAction*)
   allowedAreasChanged    : ClassVar_Signal;-- allowedAreasChanged(Qt::ToolBarAreas)
   iconSizeChanged        : ClassVar_Signal;-- iconSizeChanged(QSize)
   movableChanged         : ClassVar_Signal;-- movableChanged(bool)
   orientationChanged     : ClassVar_Signal;-- orientationChanged(Qt::Orientation)
   toolButtonStyleChanged : ClassVar_Signal;-- toolButtonStyleChanged(Qt::ToolButtonStyle)
   topLevelChanged        : ClassVar_Signal;-- topLevelChanged(bool)
   visibilityChanged      : ClassVar_Signal;-- visibilityChanged(bool)
   function Create (parent_P : Optional_QtAda6_QtWidgets_QWidget) return Class;
   function Create (title_P : str; parent_P : Optional_QtAda6_QtWidgets_QWidget) return Class;
   function actionAt
     (self : access Inst; p_P : access QtAda6.QtCore.QPoint.Inst'Class) return access QtAda6.QtGui.QAction.Inst'Class;
   function actionAt (self : access Inst; x_P : int; y_P : int) return access QtAda6.QtGui.QAction.Inst'Class;
   procedure actionEvent (self : access Inst; event_P : access QtAda6.QtGui.QActionEvent.Inst'Class);
   function actionGeometry
     (self : access Inst; action_P : access QtAda6.QtGui.QAction.Inst'Class)
      return access QtAda6.QtCore.QRect.Inst'Class;
   function addSeparator (self : access Inst) return access QtAda6.QtGui.QAction.Inst'Class;
   function addWidget
     (self : access Inst; widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class)
      return access QtAda6.QtGui.QAction.Inst'Class;
   function allowedAreas (self : access Inst) return access QtAda6.QtCore.Qt.ToolBarArea.Inst'Class;
   procedure changeEvent (self : access Inst; event_P : access QtAda6.QtCore.QEvent.Inst'Class);
   procedure clear (self : access Inst);
   function event (self : access Inst; event_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   function iconSize (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   procedure initStyleOption (self : access Inst; option_P : access QtAda6.QtWidgets.QStyleOptionToolBar.Inst'Class);
   function insertSeparator
     (self : access Inst; before_P : access QtAda6.QtGui.QAction.Inst'Class)
      return access QtAda6.QtGui.QAction.Inst'Class;
   function insertWidget
     (self     : access Inst; before_P : access QtAda6.QtGui.QAction.Inst'Class;
      widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class) return access QtAda6.QtGui.QAction.Inst'Class;
   function isAreaAllowed (self : access Inst; area_P : access QtAda6.QtCore.Qt.ToolBarArea.Inst'Class) return bool;
   function isFloatable (self : access Inst) return bool;
   function isFloating (self : access Inst) return bool;
   function isMovable (self : access Inst) return bool;
   function orientation (self : access Inst) return access QtAda6.QtCore.Qt.Orientation.Inst'Class;
   procedure paintEvent (self : access Inst; event_P : access QtAda6.QtGui.QPaintEvent.Inst'Class);
   procedure setAllowedAreas (self : access Inst; areas_P : access QtAda6.QtCore.Qt.ToolBarArea.Inst'Class);
   procedure setFloatable (self : access Inst; floatable_P : bool);
   procedure setIconSize (self : access Inst; iconSize_P : access QtAda6.QtCore.QSize.Inst'Class);
   procedure setMovable (self : access Inst; movable_P : bool);
   procedure setOrientation (self : access Inst; orientation_P : access QtAda6.QtCore.Qt.Orientation.Inst'Class);
   procedure setToolButtonStyle
     (self : access Inst; toolButtonStyle_P : access QtAda6.QtCore.Qt.ToolButtonStyle.Inst'Class);
   function toggleViewAction (self : access Inst) return access QtAda6.QtGui.QAction.Inst'Class;
   function toolButtonStyle (self : access Inst) return access QtAda6.QtCore.Qt.ToolButtonStyle.Inst'Class;
   function widgetForAction
     (self : access Inst; action_P : access QtAda6.QtGui.QAction.Inst'Class)
      return access QtAda6.QtWidgets.QWidget.Inst'Class;
end QtAda6.QtWidgets.QToolBar;
