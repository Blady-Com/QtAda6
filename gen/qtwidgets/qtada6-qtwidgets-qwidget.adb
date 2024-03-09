-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qwidget.adb
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
with QtAda6.QtCore.Signal;
with QtAda6.QtWidgets.QWidget;
with QtAda6.QtCore.Qt.WindowType;
with QtAda6.QtGui.QActionEvent;
with QtAda6.QtGui.QAction;
with QtAda6.QtCore.QObject;
with QtAda6.QtCore.Qt.ConnectionType;
with QtAda6.QtGui.QPalette.ColorRole;
with QtAda6.QtGui.QBackingStore;
with QtAda6.QtCore.QSize;
with QtAda6.QtCore.QEvent;
with QtAda6.QtCore.QPoint;
with QtAda6.QtCore.QRect;
with QtAda6.QtGui.QRegion;
with QtAda6.QtGui.QCloseEvent;
with QtAda6.QtCore.QMargins;
with QtAda6.QtGui.QContextMenuEvent;
with QtAda6.QtCore.Qt.ContextMenuPolicy;
with QtAda6.QtGui.QWindow;
with QtAda6.QtGui.QCursor;
with QtAda6.QtGui.QDragEnterEvent;
with QtAda6.QtGui.QDragLeaveEvent;
with QtAda6.QtGui.QDragMoveEvent;
with QtAda6.QtGui.QDropEvent;
with QtAda6.QtGui.QEnterEvent;
with QtAda6.QtGui.QFocusEvent;
with QtAda6.QtCore.Qt.FocusPolicy;
with QtAda6.QtGui.QFont;
with QtAda6.QtGui.QFontInfo;
with QtAda6.QtGui.QFontMetrics;
with QtAda6.QtGui.QPixmap;
with QtAda6.QtCore.Qt.GestureType;
with QtAda6.QtCore.Qt.GestureFlag;
with QtAda6.QtCore.Qt.ShortcutContext;
with QtAda6.QtWidgets.QGraphicsEffect;
with QtAda6.QtWidgets.QGraphicsProxyWidget;
with QtAda6.QtGui.QHideEvent;
with QtAda6.QtGui.QPainter;
with QtAda6.QtGui.QInputMethodEvent;
with QtAda6.QtCore.Qt.InputMethodHint;
with QtAda6.QtCore.Qt.InputMethodQuery;
with QtAda6.QtGui.QKeyEvent;
with QtAda6.QtWidgets.QLayout;
with QtAda6.QtCore.Qt.LayoutDirection;
with QtAda6.QtCore.QLocale;
with QtAda6.QtCore.QPointF;
with QtAda6.QtGui.QPaintDevice.PaintDeviceMetric;
with QtAda6.QtGui.QMouseEvent;
with QtAda6.QtGui.QMoveEvent;
with QtAda6.QtCore.Qt.WindowState;
with QtAda6.QtGui.QPaintEngine;
with QtAda6.QtGui.QPaintEvent;
with QtAda6.QtGui.QPalette;
with QtAda6.QtGui.QPaintDevice;
with QtAda6.QtWidgets.QWidget.RenderFlag;
with QtAda6.QtGui.QResizeEvent;
with QtAda6.QtCore.QByteArray;
with QtAda6.QtGui.QScreen;
with QtAda6.QtCore.Qt.WidgetAttribute;
with QtAda6.QtCore.Qt.FocusReason;
with QtAda6.QtWidgets.QSizePolicy;
with QtAda6.QtWidgets.QSizePolicy.Policy;
with QtAda6.QtWidgets.QStyle;
with QtAda6.QtCore.Qt.WindowModality;
with QtAda6.QtGui.QShowEvent;
with QtAda6.QtGui.QTabletEvent;
with QtAda6.QtGui.QWheelEvent;
with QtAda6.QtGui.QIcon;
package body QtAda6.QtWidgets.QWidget is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function customContextMenuRequested (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'
          (Python_Proxy => Object_GetAttrString (self.Python_Proxy, "customContextMenuRequested"));
   end customContextMenuRequested;
   function windowIconChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "windowIconChanged"));
   end windowIconChanged;
   function windowIconTextChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'
          (Python_Proxy => Object_GetAttrString (self.Python_Proxy, "windowIconTextChanged"));
   end windowIconTextChanged;
   function windowTitleChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "windowTitleChanged"));
   end windowTitleChanged;
   function Create
     (parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class    := null;
      f_P      : access QtAda6.QtCore.Qt.WindowType.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QWidget");
      Args  := Tuple_New (0);
      Dict  := Dict_New;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      if f_P /= null then
         Dict_SetItemString (Dict, "f", f_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function acceptDrops (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "acceptDrops");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end acceptDrops;
   function accessibleDescription (self : access Inst) return str is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "accessibleDescription");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end accessibleDescription;
   function accessibleName (self : access Inst) return str is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "accessibleName");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end accessibleName;
   procedure actionEvent (self : access Inst; event_P : access QtAda6.QtGui.QActionEvent.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "actionEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end actionEvent;
   function actions (self : access Inst) return LIST_QtAda6_QtGui_QAction is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "actions");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return (2 .. 1 => <>);
   end actions;
   procedure activateWindow (self : access Inst) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "activateWindow");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end activateWindow;
   procedure addAction (self : access Inst; action_P : access QtAda6.QtGui.QAction.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addAction");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if action_P /= null then action_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end addAction;
   function addAction
     (self : access Inst; icon_P : UNION_QtAda6_QtGui_QIcon_QtAda6_QtGui_QPixmap; text_P : str)
      return access QtAda6.QtGui.QAction.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QAction.Class := new QtAda6.QtGui.QAction.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addAction");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if icon_P /= null then icon_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Unicode_FromString (text_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end addAction;
   function addAction
     (self       : access Inst; icon_P : UNION_QtAda6_QtGui_QIcon_QtAda6_QtGui_QPixmap; text_P : str;
      callable_P : access Object'Class) return access QtAda6.QtGui.QAction.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QAction.Class := new QtAda6.QtGui.QAction.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addAction");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if icon_P /= null then icon_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Unicode_FromString (text_P));
      Tuple_SetItem (Args, 2, (if callable_P /= null then callable_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end addAction;
   function addAction
     (self       : access Inst; icon_P : UNION_QtAda6_QtGui_QIcon_QtAda6_QtGui_QPixmap; text_P : str;
      receiver_P : access QtAda6.QtCore.QObject.Inst'Class; member_P : bytes;
      type_K_P   : access QtAda6.QtCore.Qt.ConnectionType.Inst'Class := null)
      return access QtAda6.QtGui.QAction.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QAction.Class := new QtAda6.QtGui.QAction.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addAction");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if icon_P /= null then icon_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Unicode_FromString (text_P));
      Tuple_SetItem (Args, 2, (if receiver_P /= null then receiver_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, Bytes_FromString (String (member_P)));
      Dict := Dict_New;
      if type_K_P /= null then
         Dict_SetItemString (Dict, "type", type_K_P.Python_Proxy);
      end if;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end addAction;
   function addAction
     (self       : access Inst; icon_P : UNION_QtAda6_QtGui_QIcon_QtAda6_QtGui_QPixmap; text_P : str;
      shortcut_P : UNION_QtAda6_QtGui_QKeySequence_QtAda6_QtCore_QKeyCombination_QtAda6_QtGui_QKeySequence_StandardKey_str_int)
      return access QtAda6.QtGui.QAction.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QAction.Class := new QtAda6.QtGui.QAction.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addAction");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if icon_P /= null then icon_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Unicode_FromString (text_P));
      Tuple_SetItem (Args, 2, (if shortcut_P /= null then shortcut_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end addAction;
   function addAction
     (self       : access Inst; icon_P : UNION_QtAda6_QtGui_QIcon_QtAda6_QtGui_QPixmap; text_P : str;
      shortcut_P : UNION_QtAda6_QtGui_QKeySequence_QtAda6_QtCore_QKeyCombination_QtAda6_QtGui_QKeySequence_StandardKey_str_int;
      callable_P : access Object'Class) return access QtAda6.QtGui.QAction.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QAction.Class := new QtAda6.QtGui.QAction.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addAction");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if icon_P /= null then icon_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Unicode_FromString (text_P));
      Tuple_SetItem (Args, 2, (if shortcut_P /= null then shortcut_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if callable_P /= null then callable_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end addAction;
   function addAction
     (self       : access Inst; icon_P : UNION_QtAda6_QtGui_QIcon_QtAda6_QtGui_QPixmap; text_P : str;
      shortcut_P : UNION_QtAda6_QtGui_QKeySequence_QtAda6_QtCore_QKeyCombination_QtAda6_QtGui_QKeySequence_StandardKey_str_int;
      receiver_P : access QtAda6.QtCore.QObject.Inst'Class; member_P : bytes;
      type_K_P   : access QtAda6.QtCore.Qt.ConnectionType.Inst'Class := null)
      return access QtAda6.QtGui.QAction.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QAction.Class := new QtAda6.QtGui.QAction.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addAction");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if icon_P /= null then icon_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Unicode_FromString (text_P));
      Tuple_SetItem (Args, 2, (if shortcut_P /= null then shortcut_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if receiver_P /= null then receiver_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, Bytes_FromString (String (member_P)));
      Dict := Dict_New;
      if type_K_P /= null then
         Dict_SetItemString (Dict, "type", type_K_P.Python_Proxy);
      end if;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end addAction;
   function addAction (self : access Inst; text_P : str) return access QtAda6.QtGui.QAction.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QAction.Class := new QtAda6.QtGui.QAction.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addAction");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (text_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end addAction;
   function addAction
     (self : access Inst; text_P : str; callable_P : access Object'Class) return access QtAda6.QtGui.QAction.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QAction.Class := new QtAda6.QtGui.QAction.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addAction");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (text_P));
      Tuple_SetItem (Args, 1, (if callable_P /= null then callable_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end addAction;
   function addAction
     (self     : access Inst; text_P : str; receiver_P : access QtAda6.QtCore.QObject.Inst'Class; member_P : bytes;
      type_K_P : access QtAda6.QtCore.Qt.ConnectionType.Inst'Class := null)
      return access QtAda6.QtGui.QAction.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QAction.Class := new QtAda6.QtGui.QAction.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addAction");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Unicode_FromString (text_P));
      Tuple_SetItem (Args, 1, (if receiver_P /= null then receiver_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, Bytes_FromString (String (member_P)));
      Dict := Dict_New;
      if type_K_P /= null then
         Dict_SetItemString (Dict, "type", type_K_P.Python_Proxy);
      end if;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end addAction;
   function addAction
     (self       : access Inst; text_P : str;
      shortcut_P : UNION_QtAda6_QtGui_QKeySequence_QtAda6_QtCore_QKeyCombination_QtAda6_QtGui_QKeySequence_StandardKey_str_int)
      return access QtAda6.QtGui.QAction.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QAction.Class := new QtAda6.QtGui.QAction.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addAction");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (text_P));
      Tuple_SetItem (Args, 1, (if shortcut_P /= null then shortcut_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end addAction;
   function addAction
     (self       : access Inst; text_P : str;
      shortcut_P : UNION_QtAda6_QtGui_QKeySequence_QtAda6_QtCore_QKeyCombination_QtAda6_QtGui_QKeySequence_StandardKey_str_int;
      callable_P : access Object'Class) return access QtAda6.QtGui.QAction.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QAction.Class := new QtAda6.QtGui.QAction.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addAction");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Unicode_FromString (text_P));
      Tuple_SetItem (Args, 1, (if shortcut_P /= null then shortcut_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if callable_P /= null then callable_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end addAction;
   function addAction
     (self       : access Inst; text_P : str;
      shortcut_P : UNION_QtAda6_QtGui_QKeySequence_QtAda6_QtCore_QKeyCombination_QtAda6_QtGui_QKeySequence_StandardKey_str_int;
      receiver_P : access QtAda6.QtCore.QObject.Inst'Class; member_P : bytes;
      type_K_P   : access QtAda6.QtCore.Qt.ConnectionType.Inst'Class := null)
      return access QtAda6.QtGui.QAction.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QAction.Class := new QtAda6.QtGui.QAction.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addAction");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Unicode_FromString (text_P));
      Tuple_SetItem (Args, 1, (if shortcut_P /= null then shortcut_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if receiver_P /= null then receiver_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, Bytes_FromString (String (member_P)));
      Dict := Dict_New;
      if type_K_P /= null then
         Dict_SetItemString (Dict, "type", type_K_P.Python_Proxy);
      end if;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end addAction;
   procedure addActions (self : access Inst; actions_P : SEQUENCE_QtAda6_QtGui_QAction) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addActions");
      List   := List_New (actions_P'Length);
      for ind in actions_P'Range loop
         List_SetItem
           (List, ssize_t (ind - actions_P'First),
            (if actions_P (ind) /= null then actions_P (ind).Python_Proxy else No_Value));
      end loop;
      Args := Tuple_New (1);
      Tuple_SetItem (Args, 0, List);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end addActions;
   procedure adjustSize (self : access Inst) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "adjustSize");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end adjustSize;
   function autoFillBackground (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "autoFillBackground");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end autoFillBackground;
   function backgroundRole (self : access Inst) return access QtAda6.QtGui.QPalette.ColorRole.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QPalette.ColorRole.Class := new QtAda6.QtGui.QPalette.ColorRole.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "backgroundRole");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end backgroundRole;
   function backingStore (self : access Inst) return access QtAda6.QtGui.QBackingStore.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QBackingStore.Class := new QtAda6.QtGui.QBackingStore.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "backingStore");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end backingStore;
   function baseSize (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QSize.Class := new QtAda6.QtCore.QSize.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "baseSize");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end baseSize;
   procedure changeEvent (self : access Inst; event_P : access QtAda6.QtCore.QEvent.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "changeEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end changeEvent;
   function childAt
     (self : access Inst; p_P : access QtAda6.QtCore.QPoint.Inst'Class)
      return access QtAda6.QtWidgets.QWidget.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QWidget.Class := new QtAda6.QtWidgets.QWidget.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "childAt");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if p_P /= null then p_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end childAt;
   function childAt (self : access Inst; x_P : int; y_P : int) return access QtAda6.QtWidgets.QWidget.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QWidget.Class := new QtAda6.QtWidgets.QWidget.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "childAt");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (x_P));
      Tuple_SetItem (Args, 1, Long_FromLong (y_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end childAt;
   function childrenRect (self : access Inst) return access QtAda6.QtCore.QRect.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QRect.Class := new QtAda6.QtCore.QRect.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "childrenRect");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end childrenRect;
   function childrenRegion (self : access Inst) return access QtAda6.QtGui.QRegion.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QRegion.Class := new QtAda6.QtGui.QRegion.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "childrenRegion");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end childrenRegion;
   procedure clearFocus (self : access Inst) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "clearFocus");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end clearFocus;
   procedure clearMask (self : access Inst) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "clearMask");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end clearMask;
   function close (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "close");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end close;
   procedure closeEvent (self : access Inst; event_P : access QtAda6.QtGui.QCloseEvent.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "closeEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end closeEvent;
   function contentsMargins (self : access Inst) return access QtAda6.QtCore.QMargins.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QMargins.Class := new QtAda6.QtCore.QMargins.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "contentsMargins");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end contentsMargins;
   function contentsRect (self : access Inst) return access QtAda6.QtCore.QRect.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QRect.Class := new QtAda6.QtCore.QRect.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "contentsRect");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end contentsRect;
   procedure contextMenuEvent (self : access Inst; event_P : access QtAda6.QtGui.QContextMenuEvent.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "contextMenuEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end contextMenuEvent;
   function contextMenuPolicy (self : access Inst) return access QtAda6.QtCore.Qt.ContextMenuPolicy.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.ContextMenuPolicy.Class := new QtAda6.QtCore.Qt.ContextMenuPolicy.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "contextMenuPolicy");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end contextMenuPolicy;
   procedure create
     (self : access Inst; arg_1_P : int := 0; initializeWindow_P : bool := False; destroyOldWindow_P : bool := False)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "create");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      if arg_1_P /= 0 then
         Dict_SetItemString (Dict, "arg__1", Long_FromLong (arg_1_P));
      end if;
      if initializeWindow_P /= False then
         Dict_SetItemString (Dict, "initializeWindow", To_Python (initializeWindow_P));
      end if;
      if destroyOldWindow_P /= False then
         Dict_SetItemString (Dict, "destroyOldWindow", To_Python (destroyOldWindow_P));
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end create;
   procedure createWinId (self : access Inst) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "createWinId");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end createWinId;
   function createWindowContainer
     (window_P : access QtAda6.QtGui.QWindow.Inst'Class; parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null;
      flags_P : access QtAda6.QtCore.Qt.WindowType.Inst'Class := null) return access QtAda6.QtWidgets.QWidget.Inst'Class
   is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QWidget.Class := new QtAda6.QtWidgets.QWidget.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QWidget");
      Method := Object_GetAttrString (Class, "createWindowContainer");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if window_P /= null then window_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      if flags_P /= null then
         Dict_SetItemString (Dict, "flags", flags_P.Python_Proxy);
      end if;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end createWindowContainer;
   function cursor (self : access Inst) return access QtAda6.QtGui.QCursor.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QCursor.Class := new QtAda6.QtGui.QCursor.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "cursor");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end cursor;
   procedure destroy (self : access Inst; destroyWindow_P : bool := False; destroySubWindows_P : bool := False) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "destroy");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      if destroyWindow_P /= False then
         Dict_SetItemString (Dict, "destroyWindow", To_Python (destroyWindow_P));
      end if;
      if destroySubWindows_P /= False then
         Dict_SetItemString (Dict, "destroySubWindows", To_Python (destroySubWindows_P));
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end destroy;
   function devType (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "devType");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end devType;
   procedure dragEnterEvent (self : access Inst; event_P : access QtAda6.QtGui.QDragEnterEvent.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "dragEnterEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end dragEnterEvent;
   procedure dragLeaveEvent (self : access Inst; event_P : access QtAda6.QtGui.QDragLeaveEvent.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "dragLeaveEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end dragLeaveEvent;
   procedure dragMoveEvent (self : access Inst; event_P : access QtAda6.QtGui.QDragMoveEvent.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "dragMoveEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end dragMoveEvent;
   procedure dropEvent (self : access Inst; event_P : access QtAda6.QtGui.QDropEvent.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "dropEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end dropEvent;
   function effectiveWinId (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "effectiveWinId");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end effectiveWinId;
   procedure ensurePolished (self : access Inst) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "ensurePolished");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end ensurePolished;
   procedure enterEvent (self : access Inst; event_P : access QtAda6.QtGui.QEnterEvent.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "enterEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end enterEvent;
   function event (self : access Inst; event_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "event");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end event;
   function find (arg_1_P : int) return access QtAda6.QtWidgets.QWidget.Inst'Class is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QWidget.Class := new QtAda6.QtWidgets.QWidget.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QWidget");
      Method := Object_GetAttrString (Class, "find");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (arg_1_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end find;
   procedure focusInEvent (self : access Inst; event_P : access QtAda6.QtGui.QFocusEvent.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "focusInEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end focusInEvent;
   function focusNextChild (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "focusNextChild");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end focusNextChild;
   function focusNextPrevChild (self : access Inst; next_P : bool) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "focusNextPrevChild");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (next_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end focusNextPrevChild;
   procedure focusOutEvent (self : access Inst; event_P : access QtAda6.QtGui.QFocusEvent.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "focusOutEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end focusOutEvent;
   function focusPolicy (self : access Inst) return access QtAda6.QtCore.Qt.FocusPolicy.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.FocusPolicy.Class := new QtAda6.QtCore.Qt.FocusPolicy.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "focusPolicy");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end focusPolicy;
   function focusPreviousChild (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "focusPreviousChild");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end focusPreviousChild;
   function focusProxy (self : access Inst) return access QtAda6.QtWidgets.QWidget.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QWidget.Class := new QtAda6.QtWidgets.QWidget.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "focusProxy");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end focusProxy;
   function focusWidget (self : access Inst) return access QtAda6.QtWidgets.QWidget.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QWidget.Class := new QtAda6.QtWidgets.QWidget.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "focusWidget");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end focusWidget;
   function font (self : access Inst) return access QtAda6.QtGui.QFont.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QFont.Class := new QtAda6.QtGui.QFont.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "font");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end font;
   function fontInfo (self : access Inst) return access QtAda6.QtGui.QFontInfo.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QFontInfo.Class := new QtAda6.QtGui.QFontInfo.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "fontInfo");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fontInfo;
   function fontMetrics (self : access Inst) return access QtAda6.QtGui.QFontMetrics.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QFontMetrics.Class := new QtAda6.QtGui.QFontMetrics.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "fontMetrics");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fontMetrics;
   function foregroundRole (self : access Inst) return access QtAda6.QtGui.QPalette.ColorRole.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QPalette.ColorRole.Class := new QtAda6.QtGui.QPalette.ColorRole.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "foregroundRole");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end foregroundRole;
   function frameGeometry (self : access Inst) return access QtAda6.QtCore.QRect.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QRect.Class := new QtAda6.QtCore.QRect.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "frameGeometry");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end frameGeometry;
   function frameSize (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QSize.Class := new QtAda6.QtCore.QSize.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "frameSize");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end frameSize;
   function geometry (self : access Inst) return access QtAda6.QtCore.QRect.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QRect.Class := new QtAda6.QtCore.QRect.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "geometry");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end geometry;
   function grab
     (self : access Inst; rectangle_P : access QtAda6.QtCore.QRect.Inst'Class := null)
      return access QtAda6.QtGui.QPixmap.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QPixmap.Class := new QtAda6.QtGui.QPixmap.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "grab");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      if rectangle_P /= null then
         Dict_SetItemString (Dict, "rectangle", rectangle_P.Python_Proxy);
      end if;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end grab;
   procedure grabGesture
     (self    : access Inst; type_K_P : access QtAda6.QtCore.Qt.GestureType.Inst'Class;
      flags_P : access QtAda6.QtCore.Qt.GestureFlag.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "grabGesture");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if type_K_P /= null then type_K_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if flags_P /= null then
         Dict_SetItemString (Dict, "flags", flags_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end grabGesture;
   procedure grabKeyboard (self : access Inst) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "grabKeyboard");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end grabKeyboard;
   procedure grabMouse (self : access Inst) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "grabMouse");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end grabMouse;
   procedure grabMouse
     (self : access Inst; arg_1_P : UNION_QtAda6_QtGui_QCursor_QtAda6_QtCore_Qt_CursorShape_QtAda6_QtGui_QPixmap)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "grabMouse");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end grabMouse;
   function grabShortcut
     (self      : access Inst;
      key_P : UNION_QtAda6_QtGui_QKeySequence_QtAda6_QtCore_QKeyCombination_QtAda6_QtGui_QKeySequence_StandardKey_str_int;
      context_P : access QtAda6.QtCore.Qt.ShortcutContext.Inst'Class := null) return int
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "grabShortcut");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if key_P /= null then key_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if context_P /= null then
         Dict_SetItemString (Dict, "context", context_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end grabShortcut;
   function graphicsEffect (self : access Inst) return access QtAda6.QtWidgets.QGraphicsEffect.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QGraphicsEffect.Class := new QtAda6.QtWidgets.QGraphicsEffect.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "graphicsEffect");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end graphicsEffect;
   function graphicsProxyWidget (self : access Inst) return access QtAda6.QtWidgets.QGraphicsProxyWidget.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QGraphicsProxyWidget.Class := new QtAda6.QtWidgets.QGraphicsProxyWidget.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "graphicsProxyWidget");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end graphicsProxyWidget;
   function hasFocus (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hasFocus");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end hasFocus;
   function hasHeightForWidth (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hasHeightForWidth");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end hasHeightForWidth;
   function hasMouseTracking (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hasMouseTracking");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end hasMouseTracking;
   function hasTabletTracking (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hasTabletTracking");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end hasTabletTracking;
   function height (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "height");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end height;
   function heightForWidth (self : access Inst; arg_1_P : int) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "heightForWidth");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (arg_1_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end heightForWidth;
   procedure hide (self : access Inst) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hide");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end hide;
   procedure hideEvent (self : access Inst; event_P : access QtAda6.QtGui.QHideEvent.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hideEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end hideEvent;
   procedure initPainter (self : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "initPainter");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if painter_P /= null then painter_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end initPainter;
   procedure inputMethodEvent (self : access Inst; event_P : access QtAda6.QtGui.QInputMethodEvent.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "inputMethodEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end inputMethodEvent;
   function inputMethodHints (self : access Inst) return access QtAda6.QtCore.Qt.InputMethodHint.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.InputMethodHint.Class := new QtAda6.QtCore.Qt.InputMethodHint.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "inputMethodHints");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end inputMethodHints;
   function inputMethodQuery
     (self : access Inst; arg_1_P : access QtAda6.QtCore.Qt.InputMethodQuery.Inst'Class) return Any
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "inputMethodQuery");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return null;
   end inputMethodQuery;
   procedure insertAction
     (self     : access Inst; before_P : access QtAda6.QtGui.QAction.Inst'Class;
      action_P : access QtAda6.QtGui.QAction.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "insertAction");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if before_P /= null then before_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if action_P /= null then action_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end insertAction;
   procedure insertActions
     (self : access Inst; before_P : access QtAda6.QtGui.QAction.Inst'Class; actions_P : SEQUENCE_QtAda6_QtGui_QAction)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "insertActions");
      List   := List_New (actions_P'Length);
      for ind in actions_P'Range loop
         List_SetItem
           (List, ssize_t (ind - actions_P'First),
            (if actions_P (ind) /= null then actions_P (ind).Python_Proxy else No_Value));
      end loop;
      Args := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if before_P /= null then before_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, List);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end insertActions;
   function internalWinId (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "internalWinId");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end internalWinId;
   function isActiveWindow (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isActiveWindow");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isActiveWindow;
   function isAncestorOf (self : access Inst; child_P : access QtAda6.QtWidgets.QWidget.Inst'Class) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isAncestorOf");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if child_P /= null then child_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isAncestorOf;
   function isEnabled (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isEnabled");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isEnabled;
   function isEnabledTo (self : access Inst; arg_1_P : access QtAda6.QtWidgets.QWidget.Inst'Class) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isEnabledTo");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isEnabledTo;
   function isFullScreen (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isFullScreen");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isFullScreen;
   function isHidden (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isHidden");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isHidden;
   function isLeftToRight (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isLeftToRight");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isLeftToRight;
   function isMaximized (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isMaximized");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isMaximized;
   function isMinimized (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isMinimized");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isMinimized;
   function isModal (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isModal");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isModal;
   function isRightToLeft (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isRightToLeft");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isRightToLeft;
   function isTopLevel (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isTopLevel");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isTopLevel;
   function isVisible (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isVisible");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isVisible;
   function isVisibleTo (self : access Inst; arg_1_P : access QtAda6.QtWidgets.QWidget.Inst'Class) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isVisibleTo");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isVisibleTo;
   function isWindow (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isWindow");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isWindow;
   function isWindowModified (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isWindowModified");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isWindowModified;
   procedure keyPressEvent (self : access Inst; event_P : access QtAda6.QtGui.QKeyEvent.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "keyPressEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end keyPressEvent;
   procedure keyReleaseEvent (self : access Inst; event_P : access QtAda6.QtGui.QKeyEvent.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "keyReleaseEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end keyReleaseEvent;
   function keyboardGrabber return access QtAda6.QtWidgets.QWidget.Inst'Class is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QWidget.Class := new QtAda6.QtWidgets.QWidget.Inst;
   begin
      Class            := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QWidget");
      Method           := Object_GetAttrString (Class, "keyboardGrabber");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end keyboardGrabber;
   function layout (self : access Inst) return access QtAda6.QtWidgets.QLayout.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QLayout.Class := new QtAda6.QtWidgets.QLayout.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "layout");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end layout;
   function layoutDirection (self : access Inst) return access QtAda6.QtCore.Qt.LayoutDirection.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.LayoutDirection.Class := new QtAda6.QtCore.Qt.LayoutDirection.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "layoutDirection");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end layoutDirection;
   procedure leaveEvent (self : access Inst; event_P : access QtAda6.QtCore.QEvent.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "leaveEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end leaveEvent;
   function locale (self : access Inst) return access QtAda6.QtCore.QLocale.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QLocale.Class := new QtAda6.QtCore.QLocale.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "locale");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end locale;
   procedure lower (self : access Inst) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "lower");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end lower;
   function mapFrom
     (self    : access Inst; arg_1_P : access QtAda6.QtWidgets.QWidget.Inst'Class;
      arg_2_P : access QtAda6.QtCore.QPoint.Inst'Class) return access QtAda6.QtCore.QPoint.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QPoint.Class := new QtAda6.QtCore.QPoint.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mapFrom");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if arg_2_P /= null then arg_2_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mapFrom;
   function mapFrom
     (self    : access Inst; arg_1_P : access QtAda6.QtWidgets.QWidget.Inst'Class;
      arg_2_P : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element)
      return access QtAda6.QtCore.QPointF.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QPointF.Class := new QtAda6.QtCore.QPointF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mapFrom");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if arg_2_P /= null then arg_2_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mapFrom;
   function mapFromGlobal
     (self : access Inst; arg_1_P : access QtAda6.QtCore.QPoint.Inst'Class)
      return access QtAda6.QtCore.QPoint.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QPoint.Class := new QtAda6.QtCore.QPoint.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mapFromGlobal");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mapFromGlobal;
   function mapFromGlobal
     (self : access Inst; arg_1_P : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element)
      return access QtAda6.QtCore.QPointF.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QPointF.Class := new QtAda6.QtCore.QPointF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mapFromGlobal");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mapFromGlobal;
   function mapFromParent
     (self : access Inst; arg_1_P : access QtAda6.QtCore.QPoint.Inst'Class)
      return access QtAda6.QtCore.QPoint.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QPoint.Class := new QtAda6.QtCore.QPoint.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mapFromParent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mapFromParent;
   function mapFromParent
     (self : access Inst; arg_1_P : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element)
      return access QtAda6.QtCore.QPointF.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QPointF.Class := new QtAda6.QtCore.QPointF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mapFromParent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mapFromParent;
   function mapTo
     (self    : access Inst; arg_1_P : access QtAda6.QtWidgets.QWidget.Inst'Class;
      arg_2_P : access QtAda6.QtCore.QPoint.Inst'Class) return access QtAda6.QtCore.QPoint.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QPoint.Class := new QtAda6.QtCore.QPoint.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mapTo");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if arg_2_P /= null then arg_2_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mapTo;
   function mapTo
     (self    : access Inst; arg_1_P : access QtAda6.QtWidgets.QWidget.Inst'Class;
      arg_2_P : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element)
      return access QtAda6.QtCore.QPointF.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QPointF.Class := new QtAda6.QtCore.QPointF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mapTo");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if arg_2_P /= null then arg_2_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mapTo;
   function mapToGlobal
     (self : access Inst; arg_1_P : access QtAda6.QtCore.QPoint.Inst'Class)
      return access QtAda6.QtCore.QPoint.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QPoint.Class := new QtAda6.QtCore.QPoint.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mapToGlobal");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mapToGlobal;
   function mapToGlobal
     (self : access Inst; arg_1_P : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element)
      return access QtAda6.QtCore.QPointF.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QPointF.Class := new QtAda6.QtCore.QPointF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mapToGlobal");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mapToGlobal;
   function mapToParent
     (self : access Inst; arg_1_P : access QtAda6.QtCore.QPoint.Inst'Class)
      return access QtAda6.QtCore.QPoint.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QPoint.Class := new QtAda6.QtCore.QPoint.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mapToParent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mapToParent;
   function mapToParent
     (self : access Inst; arg_1_P : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element)
      return access QtAda6.QtCore.QPointF.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QPointF.Class := new QtAda6.QtCore.QPointF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mapToParent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mapToParent;
   function mask (self : access Inst) return access QtAda6.QtGui.QRegion.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QRegion.Class := new QtAda6.QtGui.QRegion.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "mask");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mask;
   function maximumHeight (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "maximumHeight");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end maximumHeight;
   function maximumSize (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QSize.Class := new QtAda6.QtCore.QSize.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "maximumSize");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end maximumSize;
   function maximumWidth (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "maximumWidth");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end maximumWidth;
   function metric
     (self : access Inst; arg_1_P : access QtAda6.QtGui.QPaintDevice.PaintDeviceMetric.Inst'Class) return int
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "metric");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end metric;
   function minimumHeight (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "minimumHeight");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end minimumHeight;
   function minimumSize (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QSize.Class := new QtAda6.QtCore.QSize.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "minimumSize");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end minimumSize;
   function minimumSizeHint (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QSize.Class := new QtAda6.QtCore.QSize.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "minimumSizeHint");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end minimumSizeHint;
   function minimumWidth (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "minimumWidth");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end minimumWidth;
   procedure mouseDoubleClickEvent (self : access Inst; event_P : access QtAda6.QtGui.QMouseEvent.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mouseDoubleClickEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end mouseDoubleClickEvent;
   function mouseGrabber return access QtAda6.QtWidgets.QWidget.Inst'Class is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QWidget.Class := new QtAda6.QtWidgets.QWidget.Inst;
   begin
      Class            := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QWidget");
      Method           := Object_GetAttrString (Class, "mouseGrabber");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mouseGrabber;
   procedure mouseMoveEvent (self : access Inst; event_P : access QtAda6.QtGui.QMouseEvent.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mouseMoveEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end mouseMoveEvent;
   procedure mousePressEvent (self : access Inst; event_P : access QtAda6.QtGui.QMouseEvent.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mousePressEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end mousePressEvent;
   procedure mouseReleaseEvent (self : access Inst; event_P : access QtAda6.QtGui.QMouseEvent.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mouseReleaseEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end mouseReleaseEvent;
   procedure move (self : access Inst; arg_1_P : access QtAda6.QtCore.QPoint.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "move");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end move;
   procedure move (self : access Inst; x_P : int; y_P : int) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "move");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (x_P));
      Tuple_SetItem (Args, 1, Long_FromLong (y_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end move;
   procedure moveEvent (self : access Inst; event_P : access QtAda6.QtGui.QMoveEvent.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "moveEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end moveEvent;
   function nativeEvent
     (self : access Inst; eventType_P : UNION_QtAda6_QtCore_QByteArray_bytes; message_P : int)
      return access Object'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "nativeEvent");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if eventType_P /= null then eventType_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (message_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return null;
   end nativeEvent;
   function nativeParentWidget (self : access Inst) return access QtAda6.QtWidgets.QWidget.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QWidget.Class := new QtAda6.QtWidgets.QWidget.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "nativeParentWidget");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end nativeParentWidget;
   function nextInFocusChain (self : access Inst) return access QtAda6.QtWidgets.QWidget.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QWidget.Class := new QtAda6.QtWidgets.QWidget.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "nextInFocusChain");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end nextInFocusChain;
   function normalGeometry (self : access Inst) return access QtAda6.QtCore.QRect.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QRect.Class := new QtAda6.QtCore.QRect.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "normalGeometry");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end normalGeometry;
   procedure overrideWindowFlags (self : access Inst; type_K_P : access QtAda6.QtCore.Qt.WindowType.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "overrideWindowFlags");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if type_K_P /= null then type_K_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end overrideWindowFlags;
   procedure overrideWindowState (self : access Inst; state_P : access QtAda6.QtCore.Qt.WindowState.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "overrideWindowState");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if state_P /= null then state_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end overrideWindowState;
   function paintEngine (self : access Inst) return access QtAda6.QtGui.QPaintEngine.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QPaintEngine.Class := new QtAda6.QtGui.QPaintEngine.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "paintEngine");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end paintEngine;
   procedure paintEvent (self : access Inst; event_P : access QtAda6.QtGui.QPaintEvent.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "paintEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end paintEvent;
   function palette (self : access Inst) return access QtAda6.QtGui.QPalette.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QPalette.Class := new QtAda6.QtGui.QPalette.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "palette");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end palette;
   function parentWidget (self : access Inst) return access QtAda6.QtWidgets.QWidget.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QWidget.Class := new QtAda6.QtWidgets.QWidget.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "parentWidget");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end parentWidget;
   function pos (self : access Inst) return access QtAda6.QtCore.QPoint.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QPoint.Class := new QtAda6.QtCore.QPoint.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "pos");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end pos;
   function previousInFocusChain (self : access Inst) return access QtAda6.QtWidgets.QWidget.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QWidget.Class := new QtAda6.QtWidgets.QWidget.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "previousInFocusChain");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end previousInFocusChain;
   procedure raise_U (self : access Inst) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "raise_");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end raise_U;
   function rect (self : access Inst) return access QtAda6.QtCore.QRect.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QRect.Class := new QtAda6.QtCore.QRect.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "rect");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end rect;
   function redirected
     (self : access Inst; offset_P : access QtAda6.QtCore.QPoint.Inst'Class)
      return access QtAda6.QtGui.QPaintDevice.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QPaintDevice.Class := new QtAda6.QtGui.QPaintDevice.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "redirected");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if offset_P /= null then offset_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end redirected;
   procedure releaseKeyboard (self : access Inst) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "releaseKeyboard");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end releaseKeyboard;
   procedure releaseMouse (self : access Inst) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "releaseMouse");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end releaseMouse;
   procedure releaseShortcut (self : access Inst; id_P : int) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "releaseShortcut");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (id_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end releaseShortcut;
   procedure removeAction (self : access Inst; action_P : access QtAda6.QtGui.QAction.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "removeAction");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if action_P /= null then action_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end removeAction;
   procedure render
     (self           : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      targetOffset_P : access QtAda6.QtCore.QPoint.Inst'Class;
      sourceRegion_P : UNION_QtAda6_QtGui_QRegion_QtAda6_QtGui_QBitmap_QtAda6_QtGui_QPolygon_QtAda6_QtCore_QRect :=
        null;
      renderFlags_P : access QtAda6.QtWidgets.QWidget.RenderFlag.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "render");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if painter_P /= null then painter_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if targetOffset_P /= null then targetOffset_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if sourceRegion_P /= null then
         Dict_SetItemString (Dict, "sourceRegion", sourceRegion_P.Python_Proxy);
      end if;
      if renderFlags_P /= null then
         Dict_SetItemString (Dict, "renderFlags", renderFlags_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end render;
   procedure render
     (self           : access Inst; target_P : access QtAda6.QtGui.QPaintDevice.Inst'Class;
      targetOffset_P : access QtAda6.QtCore.QPoint.Inst'Class := null;
      sourceRegion_P : UNION_QtAda6_QtGui_QRegion_QtAda6_QtGui_QBitmap_QtAda6_QtGui_QPolygon_QtAda6_QtCore_QRect :=
        null;
      renderFlags_P : access QtAda6.QtWidgets.QWidget.RenderFlag.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "render");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if target_P /= null then target_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if targetOffset_P /= null then
         Dict_SetItemString (Dict, "targetOffset", targetOffset_P.Python_Proxy);
      end if;
      if sourceRegion_P /= null then
         Dict_SetItemString (Dict, "sourceRegion", sourceRegion_P.Python_Proxy);
      end if;
      if renderFlags_P /= null then
         Dict_SetItemString (Dict, "renderFlags", renderFlags_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end render;
   procedure repaint (self : access Inst) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "repaint");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end repaint;
   procedure repaint (self : access Inst; arg_1_P : access QtAda6.QtCore.QRect.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "repaint");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end repaint;
   procedure repaint
     (self    : access Inst;
      arg_1_P : UNION_QtAda6_QtGui_QRegion_QtAda6_QtGui_QBitmap_QtAda6_QtGui_QPolygon_QtAda6_QtCore_QRect)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "repaint");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end repaint;
   procedure repaint (self : access Inst; x_P : int; y_P : int; w_P : int; h_P : int) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "repaint");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Long_FromLong (x_P));
      Tuple_SetItem (Args, 1, Long_FromLong (y_P));
      Tuple_SetItem (Args, 2, Long_FromLong (w_P));
      Tuple_SetItem (Args, 3, Long_FromLong (h_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end repaint;
   procedure resize (self : access Inst; arg_1_P : access QtAda6.QtCore.QSize.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "resize");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end resize;
   procedure resize (self : access Inst; w_P : int; h_P : int) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "resize");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (w_P));
      Tuple_SetItem (Args, 1, Long_FromLong (h_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end resize;
   procedure resizeEvent (self : access Inst; event_P : access QtAda6.QtGui.QResizeEvent.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "resizeEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end resizeEvent;
   function restoreGeometry (self : access Inst; geometry_P : UNION_QtAda6_QtCore_QByteArray_bytes) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "restoreGeometry");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if geometry_P /= null then geometry_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end restoreGeometry;
   function saveGeometry (self : access Inst) return access QtAda6.QtCore.QByteArray.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "saveGeometry");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end saveGeometry;
   function screen (self : access Inst) return access QtAda6.QtGui.QScreen.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QScreen.Class := new QtAda6.QtGui.QScreen.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "screen");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end screen;
   procedure scroll (self : access Inst; dx_P : int; dy_P : int) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "scroll");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (dx_P));
      Tuple_SetItem (Args, 1, Long_FromLong (dy_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end scroll;
   procedure scroll (self : access Inst; dx_P : int; dy_P : int; arg_3_P : access QtAda6.QtCore.QRect.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "scroll");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (dx_P));
      Tuple_SetItem (Args, 1, Long_FromLong (dy_P));
      Tuple_SetItem (Args, 2, (if arg_3_P /= null then arg_3_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end scroll;
   procedure setAcceptDrops (self : access Inst; on_P : bool) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setAcceptDrops");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (on_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setAcceptDrops;
   procedure setAccessibleDescription (self : access Inst; description_P : str) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setAccessibleDescription");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (description_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setAccessibleDescription;
   procedure setAccessibleName (self : access Inst; name_P : str) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setAccessibleName");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (name_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setAccessibleName;
   procedure setAttribute
     (self : access Inst; arg_1_P : access QtAda6.QtCore.Qt.WidgetAttribute.Inst'Class; on_P : bool := False)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setAttribute");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if on_P /= False then
         Dict_SetItemString (Dict, "on", To_Python (on_P));
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end setAttribute;
   procedure setAutoFillBackground (self : access Inst; enabled_P : bool) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setAutoFillBackground");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (enabled_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setAutoFillBackground;
   procedure setBackgroundRole (self : access Inst; arg_1_P : access QtAda6.QtGui.QPalette.ColorRole.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setBackgroundRole");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setBackgroundRole;
   procedure setBaseSize (self : access Inst; arg_1_P : access QtAda6.QtCore.QSize.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setBaseSize");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setBaseSize;
   procedure setBaseSize (self : access Inst; basew_P : int; baseh_P : int) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setBaseSize");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (basew_P));
      Tuple_SetItem (Args, 1, Long_FromLong (baseh_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setBaseSize;
   procedure setContentsMargins (self : access Inst; left_P : int; top_P : int; right_P : int; bottom_P : int) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setContentsMargins");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Long_FromLong (left_P));
      Tuple_SetItem (Args, 1, Long_FromLong (top_P));
      Tuple_SetItem (Args, 2, Long_FromLong (right_P));
      Tuple_SetItem (Args, 3, Long_FromLong (bottom_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setContentsMargins;
   procedure setContentsMargins (self : access Inst; margins_P : access QtAda6.QtCore.QMargins.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setContentsMargins");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if margins_P /= null then margins_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setContentsMargins;
   procedure setContextMenuPolicy (self : access Inst; policy_P : access QtAda6.QtCore.Qt.ContextMenuPolicy.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setContextMenuPolicy");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if policy_P /= null then policy_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setContextMenuPolicy;
   procedure setCursor
     (self : access Inst; arg_1_P : UNION_QtAda6_QtGui_QCursor_QtAda6_QtCore_Qt_CursorShape_QtAda6_QtGui_QPixmap)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setCursor");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setCursor;
   procedure setDisabled (self : access Inst; arg_1_P : bool) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setDisabled");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (arg_1_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setDisabled;
   procedure setEnabled (self : access Inst; arg_1_P : bool) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setEnabled");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (arg_1_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setEnabled;
   procedure setFixedHeight (self : access Inst; h_P : int) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFixedHeight");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (h_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setFixedHeight;
   procedure setFixedSize (self : access Inst; arg_1_P : access QtAda6.QtCore.QSize.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFixedSize");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setFixedSize;
   procedure setFixedSize (self : access Inst; w_P : int; h_P : int) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFixedSize");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (w_P));
      Tuple_SetItem (Args, 1, Long_FromLong (h_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setFixedSize;
   procedure setFixedWidth (self : access Inst; w_P : int) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFixedWidth");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (w_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setFixedWidth;
   procedure setFocus (self : access Inst) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFocus");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setFocus;
   procedure setFocus (self : access Inst; reason_P : access QtAda6.QtCore.Qt.FocusReason.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFocus");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if reason_P /= null then reason_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setFocus;
   procedure setFocusPolicy (self : access Inst; policy_P : access QtAda6.QtCore.Qt.FocusPolicy.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFocusPolicy");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if policy_P /= null then policy_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setFocusPolicy;
   procedure setFocusProxy (self : access Inst; arg_1_P : access QtAda6.QtWidgets.QWidget.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFocusProxy");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setFocusProxy;
   procedure setFont (self : access Inst; arg_1_P : UNION_QtAda6_QtGui_QFont_str_SEQUENCE_str) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFont");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setFont;
   procedure setForegroundRole (self : access Inst; arg_1_P : access QtAda6.QtGui.QPalette.ColorRole.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setForegroundRole");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setForegroundRole;
   procedure setGeometry (self : access Inst; arg_1_P : access QtAda6.QtCore.QRect.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setGeometry");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setGeometry;
   procedure setGeometry (self : access Inst; x_P : int; y_P : int; w_P : int; h_P : int) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setGeometry");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Long_FromLong (x_P));
      Tuple_SetItem (Args, 1, Long_FromLong (y_P));
      Tuple_SetItem (Args, 2, Long_FromLong (w_P));
      Tuple_SetItem (Args, 3, Long_FromLong (h_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setGeometry;
   procedure setGraphicsEffect (self : access Inst; effect_P : access QtAda6.QtWidgets.QGraphicsEffect.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setGraphicsEffect");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if effect_P /= null then effect_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setGraphicsEffect;
   procedure setHidden (self : access Inst; hidden_P : bool) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setHidden");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (hidden_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setHidden;
   procedure setInputMethodHints (self : access Inst; hints_P : access QtAda6.QtCore.Qt.InputMethodHint.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setInputMethodHints");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if hints_P /= null then hints_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setInputMethodHints;
   procedure setLayout (self : access Inst; arg_1_P : access QtAda6.QtWidgets.QLayout.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setLayout");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setLayout;
   procedure setLayoutDirection (self : access Inst; direction_P : access QtAda6.QtCore.Qt.LayoutDirection.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setLayoutDirection");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if direction_P /= null then direction_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setLayoutDirection;
   procedure setLocale (self : access Inst; locale_P : UNION_QtAda6_QtCore_QLocale_QtAda6_QtCore_QLocale_Language) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setLocale");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if locale_P /= null then locale_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setLocale;
   procedure setMask (self : access Inst; arg_1_P : UNION_QtAda6_QtGui_QBitmap_str) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setMask");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setMask;
   procedure setMask
     (self    : access Inst;
      arg_1_P : UNION_QtAda6_QtGui_QRegion_QtAda6_QtGui_QBitmap_QtAda6_QtGui_QPolygon_QtAda6_QtCore_QRect)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setMask");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setMask;
   procedure setMaximumHeight (self : access Inst; maxh_P : int) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setMaximumHeight");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (maxh_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setMaximumHeight;
   procedure setMaximumSize (self : access Inst; arg_1_P : access QtAda6.QtCore.QSize.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setMaximumSize");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setMaximumSize;
   procedure setMaximumSize (self : access Inst; maxw_P : int; maxh_P : int) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setMaximumSize");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (maxw_P));
      Tuple_SetItem (Args, 1, Long_FromLong (maxh_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setMaximumSize;
   procedure setMaximumWidth (self : access Inst; maxw_P : int) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setMaximumWidth");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (maxw_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setMaximumWidth;
   procedure setMinimumHeight (self : access Inst; minh_P : int) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setMinimumHeight");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (minh_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setMinimumHeight;
   procedure setMinimumSize (self : access Inst; arg_1_P : access QtAda6.QtCore.QSize.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setMinimumSize");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setMinimumSize;
   procedure setMinimumSize (self : access Inst; minw_P : int; minh_P : int) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setMinimumSize");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (minw_P));
      Tuple_SetItem (Args, 1, Long_FromLong (minh_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setMinimumSize;
   procedure setMinimumWidth (self : access Inst; minw_P : int) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setMinimumWidth");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (minw_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setMinimumWidth;
   procedure setMouseTracking (self : access Inst; enable_P : bool) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setMouseTracking");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (enable_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setMouseTracking;
   procedure setPalette
     (self : access Inst; arg_1_P : UNION_QtAda6_QtGui_QPalette_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPalette");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPalette;
   procedure setParent (self : access Inst; parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setParent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if parent_P /= null then parent_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setParent;
   procedure setParent
     (self : access Inst; parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class;
      f_P  : access QtAda6.QtCore.Qt.WindowType.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setParent");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if parent_P /= null then parent_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if f_P /= null then f_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setParent;
   procedure setScreen (self : access Inst; arg_1_P : access QtAda6.QtGui.QScreen.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setScreen");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setScreen;
   procedure setShortcutAutoRepeat (self : access Inst; id_P : int; enable_P : bool := False) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setShortcutAutoRepeat");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (id_P));
      Dict := Dict_New;
      if enable_P /= False then
         Dict_SetItemString (Dict, "enable", To_Python (enable_P));
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end setShortcutAutoRepeat;
   procedure setShortcutEnabled (self : access Inst; id_P : int; enable_P : bool := False) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setShortcutEnabled");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (id_P));
      Dict := Dict_New;
      if enable_P /= False then
         Dict_SetItemString (Dict, "enable", To_Python (enable_P));
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end setShortcutEnabled;
   procedure setSizeIncrement (self : access Inst; arg_1_P : access QtAda6.QtCore.QSize.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setSizeIncrement");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setSizeIncrement;
   procedure setSizeIncrement (self : access Inst; w_P : int; h_P : int) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setSizeIncrement");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (w_P));
      Tuple_SetItem (Args, 1, Long_FromLong (h_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setSizeIncrement;
   procedure setSizePolicy (self : access Inst; arg_1_P : access QtAda6.QtWidgets.QSizePolicy.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setSizePolicy");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setSizePolicy;
   procedure setSizePolicy
     (self       : access Inst; horizontal_P : access QtAda6.QtWidgets.QSizePolicy.Policy.Inst'Class;
      vertical_P : access QtAda6.QtWidgets.QSizePolicy.Policy.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setSizePolicy");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if horizontal_P /= null then horizontal_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if vertical_P /= null then vertical_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setSizePolicy;
   procedure setStatusTip (self : access Inst; arg_1_P : str) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setStatusTip");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (arg_1_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setStatusTip;
   procedure setStyle (self : access Inst; arg_1_P : access QtAda6.QtWidgets.QStyle.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setStyle");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setStyle;
   procedure setStyleSheet (self : access Inst; styleSheet_P : str) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setStyleSheet");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (styleSheet_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setStyleSheet;
   procedure setTabOrder
     (arg_1_P : access QtAda6.QtWidgets.QWidget.Inst'Class; arg_2_P : access QtAda6.QtWidgets.QWidget.Inst'Class)
   is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QWidget");
      Method := Object_GetAttrString (Class, "setTabOrder");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if arg_2_P /= null then arg_2_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setTabOrder;
   procedure setTabletTracking (self : access Inst; enable_P : bool) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setTabletTracking");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (enable_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setTabletTracking;
   procedure setToolTip (self : access Inst; arg_1_P : str) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setToolTip");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (arg_1_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setToolTip;
   procedure setToolTipDuration (self : access Inst; msec_P : int) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setToolTipDuration");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (msec_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setToolTipDuration;
   procedure setUpdatesEnabled (self : access Inst; enable_P : bool) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setUpdatesEnabled");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (enable_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setUpdatesEnabled;
   procedure setVisible (self : access Inst; visible_P : bool) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setVisible");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (visible_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setVisible;
   procedure setWhatsThis (self : access Inst; arg_1_P : str) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setWhatsThis");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (arg_1_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setWhatsThis;
   procedure setWindowFilePath (self : access Inst; filePath_P : str) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setWindowFilePath");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (filePath_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setWindowFilePath;
   procedure setWindowFlag
     (self : access Inst; arg_1_P : access QtAda6.QtCore.Qt.WindowType.Inst'Class; on_P : bool := False)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setWindowFlag");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if on_P /= False then
         Dict_SetItemString (Dict, "on", To_Python (on_P));
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end setWindowFlag;
   procedure setWindowFlags (self : access Inst; type_K_P : access QtAda6.QtCore.Qt.WindowType.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setWindowFlags");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if type_K_P /= null then type_K_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setWindowFlags;
   procedure setWindowIcon (self : access Inst; icon_P : UNION_QtAda6_QtGui_QIcon_QtAda6_QtGui_QPixmap) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setWindowIcon");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if icon_P /= null then icon_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setWindowIcon;
   procedure setWindowIconText (self : access Inst; arg_1_P : str) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setWindowIconText");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (arg_1_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setWindowIconText;
   procedure setWindowModality
     (self : access Inst; windowModality_P : access QtAda6.QtCore.Qt.WindowModality.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setWindowModality");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if windowModality_P /= null then windowModality_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setWindowModality;
   procedure setWindowModified (self : access Inst; arg_1_P : bool) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setWindowModified");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (arg_1_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setWindowModified;
   procedure setWindowOpacity (self : access Inst; level_P : float) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setWindowOpacity");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (level_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setWindowOpacity;
   procedure setWindowRole (self : access Inst; arg_1_P : str) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setWindowRole");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (arg_1_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setWindowRole;
   procedure setWindowState (self : access Inst; state_P : access QtAda6.QtCore.Qt.WindowState.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setWindowState");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if state_P /= null then state_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setWindowState;
   procedure setWindowTitle (self : access Inst; arg_1_P : str) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setWindowTitle");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (arg_1_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setWindowTitle;
   function sharedPainter (self : access Inst) return access QtAda6.QtGui.QPainter.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QPainter.Class := new QtAda6.QtGui.QPainter.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "sharedPainter");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end sharedPainter;
   procedure show (self : access Inst) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "show");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end show;
   procedure showEvent (self : access Inst; event_P : access QtAda6.QtGui.QShowEvent.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "showEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end showEvent;
   procedure showFullScreen (self : access Inst) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "showFullScreen");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end showFullScreen;
   procedure showMaximized (self : access Inst) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "showMaximized");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end showMaximized;
   procedure showMinimized (self : access Inst) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "showMinimized");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end showMinimized;
   procedure showNormal (self : access Inst) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "showNormal");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end showNormal;
   function size (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QSize.Class := new QtAda6.QtCore.QSize.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "size");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end size;
   function sizeHint (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QSize.Class := new QtAda6.QtCore.QSize.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "sizeHint");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end sizeHint;
   function sizeIncrement (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QSize.Class := new QtAda6.QtCore.QSize.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "sizeIncrement");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end sizeIncrement;
   function sizePolicy (self : access Inst) return access QtAda6.QtWidgets.QSizePolicy.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QSizePolicy.Class := new QtAda6.QtWidgets.QSizePolicy.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "sizePolicy");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end sizePolicy;
   procedure stackUnder (self : access Inst; arg_1_P : access QtAda6.QtWidgets.QWidget.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "stackUnder");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end stackUnder;
   function statusTip (self : access Inst) return str is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "statusTip");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end statusTip;
   function style (self : access Inst) return access QtAda6.QtWidgets.QStyle.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QStyle.Class := new QtAda6.QtWidgets.QStyle.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "style");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end style;
   function styleSheet (self : access Inst) return str is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "styleSheet");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end styleSheet;
   procedure tabletEvent (self : access Inst; event_P : access QtAda6.QtGui.QTabletEvent.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "tabletEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end tabletEvent;
   function testAttribute (self : access Inst; arg_1_P : access QtAda6.QtCore.Qt.WidgetAttribute.Inst'Class) return bool
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "testAttribute");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end testAttribute;
   function toolTip (self : access Inst) return str is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toolTip");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end toolTip;
   function toolTipDuration (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toolTipDuration");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end toolTipDuration;
   function topLevelWidget (self : access Inst) return access QtAda6.QtWidgets.QWidget.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QWidget.Class := new QtAda6.QtWidgets.QWidget.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "topLevelWidget");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end topLevelWidget;
   function underMouse (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "underMouse");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end underMouse;
   procedure ungrabGesture (self : access Inst; type_K_P : access QtAda6.QtCore.Qt.GestureType.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "ungrabGesture");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if type_K_P /= null then type_K_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end ungrabGesture;
   procedure unsetCursor (self : access Inst) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "unsetCursor");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end unsetCursor;
   procedure unsetLayoutDirection (self : access Inst) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "unsetLayoutDirection");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end unsetLayoutDirection;
   procedure unsetLocale (self : access Inst) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "unsetLocale");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end unsetLocale;
   procedure update (self : access Inst) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "update");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end update;
   procedure update (self : access Inst; arg_1_P : access QtAda6.QtCore.QRect.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "update");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end update;
   procedure update
     (self    : access Inst;
      arg_1_P : UNION_QtAda6_QtGui_QRegion_QtAda6_QtGui_QBitmap_QtAda6_QtGui_QPolygon_QtAda6_QtCore_QRect)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "update");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end update;
   procedure update (self : access Inst; x_P : int; y_P : int; w_P : int; h_P : int) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "update");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Long_FromLong (x_P));
      Tuple_SetItem (Args, 1, Long_FromLong (y_P));
      Tuple_SetItem (Args, 2, Long_FromLong (w_P));
      Tuple_SetItem (Args, 3, Long_FromLong (h_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end update;
   procedure updateGeometry (self : access Inst) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "updateGeometry");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end updateGeometry;
   procedure updateMicroFocus
     (self : access Inst; query_P : access QtAda6.QtCore.Qt.InputMethodQuery.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "updateMicroFocus");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      if query_P /= null then
         Dict_SetItemString (Dict, "query", query_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end updateMicroFocus;
   function updatesEnabled (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "updatesEnabled");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end updatesEnabled;
   function visibleRegion (self : access Inst) return access QtAda6.QtGui.QRegion.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QRegion.Class := new QtAda6.QtGui.QRegion.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "visibleRegion");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end visibleRegion;
   function whatsThis (self : access Inst) return str is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "whatsThis");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end whatsThis;
   procedure wheelEvent (self : access Inst; event_P : access QtAda6.QtGui.QWheelEvent.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "wheelEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end wheelEvent;
   function width (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "width");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end width;
   function winId (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "winId");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end winId;
   function window (self : access Inst) return access QtAda6.QtWidgets.QWidget.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QWidget.Class := new QtAda6.QtWidgets.QWidget.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "window");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end window;
   function windowFilePath (self : access Inst) return str is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "windowFilePath");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end windowFilePath;
   function windowFlags (self : access Inst) return access QtAda6.QtCore.Qt.WindowType.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.WindowType.Class := new QtAda6.QtCore.Qt.WindowType.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "windowFlags");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end windowFlags;
   function windowHandle (self : access Inst) return access QtAda6.QtGui.QWindow.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QWindow.Class := new QtAda6.QtGui.QWindow.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "windowHandle");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end windowHandle;
   function windowIcon (self : access Inst) return access QtAda6.QtGui.QIcon.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QIcon.Class := new QtAda6.QtGui.QIcon.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "windowIcon");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end windowIcon;
   function windowIconText (self : access Inst) return str is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "windowIconText");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end windowIconText;
   function windowModality (self : access Inst) return access QtAda6.QtCore.Qt.WindowModality.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.WindowModality.Class := new QtAda6.QtCore.Qt.WindowModality.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "windowModality");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end windowModality;
   function windowOpacity (self : access Inst) return float is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "windowOpacity");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Float_AsDouble (Result);
   end windowOpacity;
   function windowRole (self : access Inst) return str is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "windowRole");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end windowRole;
   function windowState (self : access Inst) return access QtAda6.QtCore.Qt.WindowState.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.WindowState.Class := new QtAda6.QtCore.Qt.WindowState.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "windowState");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end windowState;
   function windowTitle (self : access Inst) return str is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "windowTitle");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end windowTitle;
   function windowType (self : access Inst) return access QtAda6.QtCore.Qt.WindowType.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.WindowType.Class := new QtAda6.QtCore.Qt.WindowType.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "windowType");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end windowType;
   function x (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "x");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end x;
   function y (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "y");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end y;
end QtAda6.QtWidgets.QWidget;
