-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qmdiarea.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Py; use Py;
with Ada.Unchecked_Deallocation;
with QtAda6.QtWidgets.QAbstractScrollArea;
with QtAda6.QtWidgets.QWidget;
with QtAda6.QtWidgets.QMdiArea.WindowOrder;
with QtAda6.QtWidgets.QMdiSubWindow;
with QtAda6.QtCore.Qt.WindowType;
with QtAda6.QtGui.QBrush;
with QtAda6.QtCore.QChildEvent;
with QtAda6.QtCore.QEvent;
with QtAda6.QtCore.QObject;
with QtAda6.QtCore.QSize;
with QtAda6.QtGui.QPaintEvent;
with QtAda6.QtGui.QResizeEvent;
with QtAda6.QtCore.Qt.BrushStyle;
with QtAda6.QtCore.Qt.GlobalColor;
with QtAda6.QtGui.QColor;
with QtAda6.QtGui.QGradient;
with QtAda6.QtGui.QImage;
with QtAda6.QtGui.QPixmap;
with QtAda6.QtWidgets.QMdiArea.AreaOption;
with QtAda6.QtWidgets.QTabWidget.TabPosition;
with QtAda6.QtWidgets.QTabWidget.TabShape;
with QtAda6.QtWidgets.QMdiArea.ViewMode;
with QtAda6.QtGui.QShowEvent;
with QtAda6.QtCore.QTimerEvent;
package body QtAda6.QtWidgets.QMdiArea is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function subWindowActivated (self : access Inst) return CLASSVAR_Signal is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "subWindowActivated"));
   end subWindowActivated;
   function Create (parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null) return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QMdiArea");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if parent_P /= null then parent_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   procedure activateNextSubWindow (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "activateNextSubWindow");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end activateNextSubWindow;
   procedure activatePreviousSubWindow (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "activatePreviousSubWindow");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end activatePreviousSubWindow;
   function activationOrder (self : access Inst) return access QtAda6.QtWidgets.QMdiArea.WindowOrder.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QMdiArea.WindowOrder.Class := new QtAda6.QtWidgets.QMdiArea.WindowOrder.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "activationOrder");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end activationOrder;
   function activeSubWindow (self : access Inst) return access QtAda6.QtWidgets.QMdiSubWindow.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QMdiSubWindow.Class := new QtAda6.QtWidgets.QMdiSubWindow.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "activeSubWindow");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end activeSubWindow;
   function addSubWindow
     (self    : access Inst; widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class;
      flags_P : access QtAda6.QtCore.Qt.WindowType.Inst'Class := null)
      return access QtAda6.QtWidgets.QMdiSubWindow.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QMdiSubWindow.Class := new QtAda6.QtWidgets.QMdiSubWindow.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addSubWindow");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if widget_P /= null then widget_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if flags_P /= null then flags_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end addSubWindow;
   function background (self : access Inst) return access QtAda6.QtGui.QBrush.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QBrush.Class := new QtAda6.QtGui.QBrush.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "background");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end background;
   procedure cascadeSubWindows (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "cascadeSubWindows");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end cascadeSubWindows;
   procedure childEvent (self : access Inst; childEvent_P : access QtAda6.QtCore.QChildEvent.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "childEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if childEvent_P /= null then childEvent_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end childEvent;
   procedure closeActiveSubWindow (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "closeActiveSubWindow");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end closeActiveSubWindow;
   procedure closeAllSubWindows (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "closeAllSubWindows");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end closeAllSubWindows;
   function currentSubWindow (self : access Inst) return access QtAda6.QtWidgets.QMdiSubWindow.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QMdiSubWindow.Class := new QtAda6.QtWidgets.QMdiSubWindow.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "currentSubWindow");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end currentSubWindow;
   function documentMode (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "documentMode");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end documentMode;
   function event (self : access Inst; event_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "event");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end event;
   function eventFilter
     (self    : access Inst; object_P : access QtAda6.QtCore.QObject.Inst'Class;
      event_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "eventFilter");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if object_P /= null then object_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end eventFilter;
   function minimumSizeHint (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QSize.Class := new QtAda6.QtCore.QSize.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "minimumSizeHint");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end minimumSizeHint;
   procedure paintEvent (self : access Inst; paintEvent_P : access QtAda6.QtGui.QPaintEvent.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "paintEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if paintEvent_P /= null then paintEvent_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end paintEvent;
   procedure removeSubWindow (self : access Inst; widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "removeSubWindow");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if widget_P /= null then widget_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end removeSubWindow;
   procedure resizeEvent (self : access Inst; resizeEvent_P : access QtAda6.QtGui.QResizeEvent.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "resizeEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if resizeEvent_P /= null then resizeEvent_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end resizeEvent;
   procedure scrollContentsBy (self : access Inst; dx_P : int; dy_P : int) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "scrollContentsBy");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (dx_P));
      Tuple_SetItem (Args, 1, Long_FromLong (dy_P));
      Result := Object_CallObject (Method, Args, True);
   end scrollContentsBy;
   procedure setActivationOrder (self : access Inst; order_P : access QtAda6.QtWidgets.QMdiArea.WindowOrder.Inst'Class)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setActivationOrder");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if order_P /= null then order_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setActivationOrder;
   procedure setActiveSubWindow (self : access Inst; window_P : access QtAda6.QtWidgets.QMdiSubWindow.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setActiveSubWindow");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if window_P /= null then window_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setActiveSubWindow;
   procedure setBackground
     (self         : access Inst;
      background_P : UNION_QtAda6_QtGui_QBrushQtAda6_QtCore_Qt_BrushStyleQtAda6_QtCore_Qt_GlobalColorQtAda6_QtGui_QColorQtAda6_QtGui_QGradientQtAda6_QtGui_QImageQtAda6_QtGui_QPixmap)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setBackground");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if background_P /= null then background_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setBackground;
   procedure setDocumentMode (self : access Inst; enabled_P : bool) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setDocumentMode");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (enabled_P));
      Result := Object_CallObject (Method, Args, True);
   end setDocumentMode;
   procedure setOption
     (self : access Inst; option_P : access QtAda6.QtWidgets.QMdiArea.AreaOption.Inst'Class; on_P : bool := False)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setOption");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if option_P /= null then option_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, To_Python (on_P));
      Result := Object_CallObject (Method, Args, True);
   end setOption;
   procedure setTabPosition (self : access Inst; position_P : access QtAda6.QtWidgets.QTabWidget.TabPosition.Inst'Class)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setTabPosition");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if position_P /= null then position_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setTabPosition;
   procedure setTabShape (self : access Inst; shape_P : access QtAda6.QtWidgets.QTabWidget.TabShape.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setTabShape");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if shape_P /= null then shape_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setTabShape;
   procedure setTabsClosable (self : access Inst; closable_P : bool) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setTabsClosable");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (closable_P));
      Result := Object_CallObject (Method, Args, True);
   end setTabsClosable;
   procedure setTabsMovable (self : access Inst; movable_P : bool) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setTabsMovable");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (movable_P));
      Result := Object_CallObject (Method, Args, True);
   end setTabsMovable;
   procedure setViewMode (self : access Inst; mode_P : access QtAda6.QtWidgets.QMdiArea.ViewMode.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setViewMode");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if mode_P /= null then mode_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setViewMode;
   procedure setupViewport (self : access Inst; viewport_P : access QtAda6.QtWidgets.QWidget.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setupViewport");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if viewport_P /= null then viewport_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setupViewport;
   procedure showEvent (self : access Inst; showEvent_P : access QtAda6.QtGui.QShowEvent.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "showEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if showEvent_P /= null then showEvent_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end showEvent;
   function sizeHint (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QSize.Class := new QtAda6.QtCore.QSize.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "sizeHint");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end sizeHint;
   function subWindowList
     (self : access Inst; order_P : access QtAda6.QtWidgets.QMdiArea.WindowOrder.Inst'Class := null)
      return LIST_QtAda6_QtWidgets_QMdiSubWindow
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "subWindowList");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if order_P /= null then order_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return (2 .. 1 => <>);
   end subWindowList;
   function tabPosition (self : access Inst) return access QtAda6.QtWidgets.QTabWidget.TabPosition.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QTabWidget.TabPosition.Class := new QtAda6.QtWidgets.QTabWidget.TabPosition.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "tabPosition");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end tabPosition;
   function tabShape (self : access Inst) return access QtAda6.QtWidgets.QTabWidget.TabShape.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QTabWidget.TabShape.Class := new QtAda6.QtWidgets.QTabWidget.TabShape.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "tabShape");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end tabShape;
   function tabsClosable (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "tabsClosable");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end tabsClosable;
   function tabsMovable (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "tabsMovable");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end tabsMovable;
   function testOption
     (self : access Inst; opton_P : access QtAda6.QtWidgets.QMdiArea.AreaOption.Inst'Class) return bool
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "testOption");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if opton_P /= null then opton_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end testOption;
   procedure tileSubWindows (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "tileSubWindows");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end tileSubWindows;
   procedure timerEvent (self : access Inst; timerEvent_P : access QtAda6.QtCore.QTimerEvent.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "timerEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if timerEvent_P /= null then timerEvent_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end timerEvent;
   function viewMode_F (self : access Inst) return access QtAda6.QtWidgets.QMdiArea.ViewMode.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QMdiArea.ViewMode.Class := new QtAda6.QtWidgets.QMdiArea.ViewMode.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "viewMode");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end viewMode_F;
   function viewportEvent (self : access Inst; event_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "viewportEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end viewportEvent;
end QtAda6.QtWidgets.QMdiArea;
