-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qmainwindow.adb
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
with QtAda6.QtWidgets.QWidget;
with QtAda6.QtCore.Qt.WindowType;
with QtAda6.QtCore.Qt.DockWidgetArea;
with QtAda6.QtWidgets.QDockWidget;
with QtAda6.QtCore.Qt.Orientation;
with QtAda6.QtCore.Qt.ToolBarArea;
with QtAda6.QtWidgets.QToolBar;
with QtAda6.QtGui.QContextMenuEvent;
with QtAda6.QtCore.Qt.Corner;
with QtAda6.QtWidgets.QMenu;
with QtAda6.QtWidgets.QMainWindow.DockOption;
with QtAda6.QtCore.QEvent;
with QtAda6.QtCore.QSize;
with QtAda6.QtCore.QPoint;
with QtAda6.QtWidgets.QMenuBar;
with QtAda6.QtCore.QByteArray;
with QtAda6.QtWidgets.QStatusBar;
with QtAda6.QtWidgets.QTabWidget.TabPosition;
with QtAda6.QtWidgets.QTabWidget.TabShape;
with QtAda6.QtCore.Qt.ToolButtonStyle;
package body QtAda6.QtWidgets.QMainWindow is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function iconSizeChanged (self : access Inst) return CLASSVAR_Signal is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "iconSizeChanged"));
   end iconSizeChanged;
   function tabifiedDockWidgetActivated (self : access Inst) return CLASSVAR_Signal is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'
          (Python_Proxy => Object_GetAttrString (self.Python_Proxy, "tabifiedDockWidgetActivated"));
   end tabifiedDockWidgetActivated;
   function toolButtonStyleChanged (self : access Inst) return CLASSVAR_Signal is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'
          (Python_Proxy => Object_GetAttrString (self.Python_Proxy, "toolButtonStyleChanged"));
   end toolButtonStyleChanged;
   function Create
     (parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class    := null;
      flags_P  : access QtAda6.QtCore.Qt.WindowType.Inst'Class := null) return Class
   is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QMainWindow");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if parent_P /= null then parent_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if flags_P /= null then flags_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   procedure addDockWidget
     (self         : access Inst; area_P : access QtAda6.QtCore.Qt.DockWidgetArea.Inst'Class;
      dockwidget_P : access QtAda6.QtWidgets.QDockWidget.Inst'Class)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addDockWidget");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if area_P /= null then area_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if dockwidget_P /= null then dockwidget_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end addDockWidget;
   procedure addDockWidget
     (self          : access Inst; area_P : access QtAda6.QtCore.Qt.DockWidgetArea.Inst'Class;
      dockwidget_P  : access QtAda6.QtWidgets.QDockWidget.Inst'Class;
      orientation_P : access QtAda6.QtCore.Qt.Orientation.Inst'Class)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addDockWidget");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if area_P /= null then area_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if dockwidget_P /= null then dockwidget_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if orientation_P /= null then orientation_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end addDockWidget;
   procedure addToolBar
     (self      : access Inst; area_P : access QtAda6.QtCore.Qt.ToolBarArea.Inst'Class;
      toolbar_P : access QtAda6.QtWidgets.QToolBar.Inst'Class)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addToolBar");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if area_P /= null then area_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if toolbar_P /= null then toolbar_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end addToolBar;
   function addToolBar (self : access Inst; title_P : str) return access QtAda6.QtWidgets.QToolBar.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtWidgets.QToolBar.Class := new QtAda6.QtWidgets.QToolBar.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addToolBar");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (title_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end addToolBar;
   procedure addToolBar (self : access Inst; toolbar_P : access QtAda6.QtWidgets.QToolBar.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addToolBar");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if toolbar_P /= null then toolbar_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end addToolBar;
   procedure addToolBarBreak (self : access Inst; area_P : access QtAda6.QtCore.Qt.ToolBarArea.Inst'Class := null) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addToolBarBreak");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if area_P /= null then area_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end addToolBarBreak;
   function centralWidget (self : access Inst) return access QtAda6.QtWidgets.QWidget.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtWidgets.QWidget.Class := new QtAda6.QtWidgets.QWidget.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "centralWidget");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end centralWidget;
   procedure contextMenuEvent (self : access Inst; event_P : access QtAda6.QtGui.QContextMenuEvent.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "contextMenuEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end contextMenuEvent;
   function corner
     (self : access Inst; corner_P : access QtAda6.QtCore.Qt.Corner.Inst'Class)
      return access QtAda6.QtCore.Qt.DockWidgetArea.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.DockWidgetArea.Class := new QtAda6.QtCore.Qt.DockWidgetArea.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "corner");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if corner_P /= null then corner_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end corner;
   function createPopupMenu (self : access Inst) return access QtAda6.QtWidgets.QMenu.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtWidgets.QMenu.Class := new QtAda6.QtWidgets.QMenu.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "createPopupMenu");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end createPopupMenu;
   function dockOptions (self : access Inst) return access QtAda6.QtWidgets.QMainWindow.DockOption.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QMainWindow.DockOption.Class := new QtAda6.QtWidgets.QMainWindow.DockOption.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "dockOptions");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end dockOptions;
   function dockWidgetArea
     (self : access Inst; dockwidget_P : access QtAda6.QtWidgets.QDockWidget.Inst'Class)
      return access QtAda6.QtCore.Qt.DockWidgetArea.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.DockWidgetArea.Class := new QtAda6.QtCore.Qt.DockWidgetArea.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "dockWidgetArea");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if dockwidget_P /= null then dockwidget_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end dockWidgetArea;
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
   function iconSize (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QSize.Class := new QtAda6.QtCore.QSize.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "iconSize");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end iconSize;
   procedure insertToolBar
     (self      : access Inst; before_P : access QtAda6.QtWidgets.QToolBar.Inst'Class;
      toolbar_P : access QtAda6.QtWidgets.QToolBar.Inst'Class)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "insertToolBar");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if before_P /= null then before_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if toolbar_P /= null then toolbar_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end insertToolBar;
   procedure insertToolBarBreak (self : access Inst; before_P : access QtAda6.QtWidgets.QToolBar.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "insertToolBarBreak");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if before_P /= null then before_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end insertToolBarBreak;
   function isAnimated (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isAnimated");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isAnimated;
   function isDockNestingEnabled (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isDockNestingEnabled");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isDockNestingEnabled;
   function isSeparator (self : access Inst; pos_P : access QtAda6.QtCore.QPoint.Inst'Class) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isSeparator");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if pos_P /= null then pos_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isSeparator;
   function menuBar (self : access Inst) return access QtAda6.QtWidgets.QMenuBar.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtWidgets.QMenuBar.Class := new QtAda6.QtWidgets.QMenuBar.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "menuBar");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end menuBar;
   function menuWidget (self : access Inst) return access QtAda6.QtWidgets.QWidget.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtWidgets.QWidget.Class := new QtAda6.QtWidgets.QWidget.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "menuWidget");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end menuWidget;
   procedure removeDockWidget (self : access Inst; dockwidget_P : access QtAda6.QtWidgets.QDockWidget.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "removeDockWidget");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if dockwidget_P /= null then dockwidget_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end removeDockWidget;
   procedure removeToolBar (self : access Inst; toolbar_P : access QtAda6.QtWidgets.QToolBar.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "removeToolBar");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if toolbar_P /= null then toolbar_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end removeToolBar;
   procedure removeToolBarBreak (self : access Inst; before_P : access QtAda6.QtWidgets.QToolBar.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "removeToolBarBreak");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if before_P /= null then before_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end removeToolBarBreak;
   procedure resizeDocks
     (self          : access Inst; docks_P : SEQUENCE_QtAda6_QtWidgets_QDockWidget; sizes_P : SEQUENCE_int;
      orientation_P : access QtAda6.QtCore.Qt.Orientation.Inst'Class)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "resizeDocks");
      List   := List_New (docks_P'Length);
      for ind in docks_P'Range loop
         List_SetItem
           (List, ssize_t (ind - docks_P'First),
            (if docks_P (ind) /= null then docks_P (ind).Python_Proxy else No_Value));
      end loop;
      List := List_New (sizes_P'Length);
      for ind in sizes_P'Range loop
         List_SetItem (List, ssize_t (ind - sizes_P'First), Long_FromLong (sizes_P (ind)));
      end loop;
      Args := Tuple_New (3);
      Tuple_SetItem (Args, 0, List);
      Tuple_SetItem (Args, 1, List);
      Tuple_SetItem (Args, 2, (if orientation_P /= null then orientation_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end resizeDocks;
   function restoreDockWidget
     (self : access Inst; dockwidget_P : access QtAda6.QtWidgets.QDockWidget.Inst'Class) return bool
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "restoreDockWidget");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if dockwidget_P /= null then dockwidget_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end restoreDockWidget;
   function restoreState
     (self : access Inst; state_P : UNION_QtAda6_QtCore_QByteArraybytes; version_P : int := 0) return bool
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "restoreState");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if state_P /= null then state_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (version_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end restoreState;
   function saveState (self : access Inst; version_P : int := 0) return access QtAda6.QtCore.QByteArray.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "saveState");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (version_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end saveState;
   procedure setAnimated (self : access Inst; enabled_P : bool) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setAnimated");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (enabled_P));
      Result := Object_CallObject (Method, Args, True);
   end setAnimated;
   procedure setCentralWidget (self : access Inst; widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setCentralWidget");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if widget_P /= null then widget_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setCentralWidget;
   procedure setCorner
     (self   : access Inst; corner_P : access QtAda6.QtCore.Qt.Corner.Inst'Class;
      area_P : access QtAda6.QtCore.Qt.DockWidgetArea.Inst'Class)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setCorner");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if corner_P /= null then corner_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if area_P /= null then area_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setCorner;
   procedure setDockNestingEnabled (self : access Inst; enabled_P : bool) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setDockNestingEnabled");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (enabled_P));
      Result := Object_CallObject (Method, Args, True);
   end setDockNestingEnabled;
   procedure setDockOptions (self : access Inst; options_P : access QtAda6.QtWidgets.QMainWindow.DockOption.Inst'Class)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setDockOptions");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if options_P /= null then options_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setDockOptions;
   procedure setDocumentMode (self : access Inst; enabled_P : bool) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setDocumentMode");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (enabled_P));
      Result := Object_CallObject (Method, Args, True);
   end setDocumentMode;
   procedure setIconSize (self : access Inst; iconSize_P : access QtAda6.QtCore.QSize.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setIconSize");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if iconSize_P /= null then iconSize_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setIconSize;
   procedure setMenuBar (self : access Inst; menubar_P : access QtAda6.QtWidgets.QMenuBar.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setMenuBar");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if menubar_P /= null then menubar_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setMenuBar;
   procedure setMenuWidget (self : access Inst; menubar_P : access QtAda6.QtWidgets.QWidget.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setMenuWidget");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if menubar_P /= null then menubar_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setMenuWidget;
   procedure setStatusBar (self : access Inst; statusbar_P : access QtAda6.QtWidgets.QStatusBar.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setStatusBar");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if statusbar_P /= null then statusbar_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setStatusBar;
   procedure setTabPosition
     (self          : access Inst; areas_P : access QtAda6.QtCore.Qt.DockWidgetArea.Inst'Class;
      tabPosition_P : access QtAda6.QtWidgets.QTabWidget.TabPosition.Inst'Class)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setTabPosition");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if areas_P /= null then areas_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if tabPosition_P /= null then tabPosition_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setTabPosition;
   procedure setTabShape (self : access Inst; tabShape_P : access QtAda6.QtWidgets.QTabWidget.TabShape.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setTabShape");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if tabShape_P /= null then tabShape_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setTabShape;
   procedure setToolButtonStyle
     (self : access Inst; toolButtonStyle_P : access QtAda6.QtCore.Qt.ToolButtonStyle.Inst'Class)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setToolButtonStyle");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if toolButtonStyle_P /= null then toolButtonStyle_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setToolButtonStyle;
   procedure setUnifiedTitleAndToolBarOnMac (self : access Inst; set_P : bool) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setUnifiedTitleAndToolBarOnMac");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (set_P));
      Result := Object_CallObject (Method, Args, True);
   end setUnifiedTitleAndToolBarOnMac;
   procedure splitDockWidget
     (self          : access Inst; after_P : access QtAda6.QtWidgets.QDockWidget.Inst'Class;
      dockwidget_P  : access QtAda6.QtWidgets.QDockWidget.Inst'Class;
      orientation_P : access QtAda6.QtCore.Qt.Orientation.Inst'Class)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "splitDockWidget");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if after_P /= null then after_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if dockwidget_P /= null then dockwidget_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if orientation_P /= null then orientation_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end splitDockWidget;
   function statusBar (self : access Inst) return access QtAda6.QtWidgets.QStatusBar.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtWidgets.QStatusBar.Class := new QtAda6.QtWidgets.QStatusBar.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "statusBar");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end statusBar;
   function tabPosition
     (self : access Inst; area_P : access QtAda6.QtCore.Qt.DockWidgetArea.Inst'Class)
      return access QtAda6.QtWidgets.QTabWidget.TabPosition.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QTabWidget.TabPosition.Class := new QtAda6.QtWidgets.QTabWidget.TabPosition.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "tabPosition");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if area_P /= null then area_P.Python_Proxy else No_Value));
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
   function tabifiedDockWidgets
     (self : access Inst; dockwidget_P : access QtAda6.QtWidgets.QDockWidget.Inst'Class)
      return LIST_QtAda6_QtWidgets_QDockWidget
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "tabifiedDockWidgets");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if dockwidget_P /= null then dockwidget_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return (2 .. 1 => <>);
   end tabifiedDockWidgets;
   procedure tabifyDockWidget
     (self     : access Inst; first_P : access QtAda6.QtWidgets.QDockWidget.Inst'Class;
      second_P : access QtAda6.QtWidgets.QDockWidget.Inst'Class)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "tabifyDockWidget");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if first_P /= null then first_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if second_P /= null then second_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end tabifyDockWidget;
   function takeCentralWidget (self : access Inst) return access QtAda6.QtWidgets.QWidget.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtWidgets.QWidget.Class := new QtAda6.QtWidgets.QWidget.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "takeCentralWidget");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end takeCentralWidget;
   function toolBarArea
     (self : access Inst; toolbar_P : access QtAda6.QtWidgets.QToolBar.Inst'Class)
      return access QtAda6.QtCore.Qt.ToolBarArea.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.Qt.ToolBarArea.Class := new QtAda6.QtCore.Qt.ToolBarArea.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toolBarArea");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if toolbar_P /= null then toolbar_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end toolBarArea;
   function toolBarBreak (self : access Inst; toolbar_P : access QtAda6.QtWidgets.QToolBar.Inst'Class) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toolBarBreak");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if toolbar_P /= null then toolbar_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end toolBarBreak;
   function toolButtonStyle (self : access Inst) return access QtAda6.QtCore.Qt.ToolButtonStyle.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.ToolButtonStyle.Class := new QtAda6.QtCore.Qt.ToolButtonStyle.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "toolButtonStyle");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end toolButtonStyle;
   function unifiedTitleAndToolBarOnMac (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "unifiedTitleAndToolBarOnMac");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end unifiedTitleAndToolBarOnMac;
end QtAda6.QtWidgets.QMainWindow;
