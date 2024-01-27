-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qgraphicswidget.adb
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
with QtAda6.QtWidgets.QGraphicsObject;
with QtAda6.QtWidgets.QGraphicsLayoutItem;
with QtAda6.QtWidgets.QGraphicsItem;
with QtAda6.QtCore.Qt.WindowType;
with QtAda6.QtGui.QAction;
with QtAda6.QtCore.QRectF;
with QtAda6.QtCore.QEvent;
with QtAda6.QtGui.QCloseEvent;
with QtAda6.QtGui.QFocusEvent;
with QtAda6.QtCore.Qt.FocusPolicy;
with QtAda6.QtGui.QFont;
with QtAda6.QtGui.QKeySequence;
with QtAda6.QtCore.QKeyCombination;
with QtAda6.QtGui.QKeySequence.StandardKey;
with QtAda6.QtCore.Qt.ShortcutContext;
with QtAda6.QtGui.QHideEvent;
with QtAda6.QtWidgets.QGraphicsSceneHoverEvent;
with QtAda6.QtWidgets.QStyleOption;
with QtAda6.QtWidgets.QGraphicsItem.GraphicsItemChange;
with QtAda6.QtWidgets.QGraphicsLayout;
with QtAda6.QtCore.Qt.LayoutDirection;
with QtAda6.QtWidgets.QGraphicsSceneMoveEvent;
with QtAda6.QtGui.QPainter;
with QtAda6.QtWidgets.QStyleOptionGraphicsItem;
with QtAda6.QtWidgets.QWidget;
with QtAda6.QtGui.QPalette;
with QtAda6.QtCore.QSizeF;
with QtAda6.QtCore.QSize;
with QtAda6.QtWidgets.QGraphicsSceneResizeEvent;
with QtAda6.QtCore.Qt.WidgetAttribute;
with QtAda6.QtCore.QMarginsF;
with QtAda6.QtCore.QMargins;
with QtAda6.QtCore.QRect;
with QtAda6.QtCore.Qt.GlobalColor;
with QtAda6.QtGui.QColor;
with QtAda6.QtWidgets.QStyle;
with QtAda6.QtGui.QPainterPath;
with QtAda6.QtGui.QShowEvent;
with QtAda6.QtCore.Qt.SizeHint;
with QtAda6.QtCore.QPointF;
with QtAda6.QtCore.QPoint;
with QtAda6.QtGui.QPainterPath.Element;
with QtAda6.QtCore.Qt.WindowFrameSection;
package body QtAda6.QtWidgets.QGraphicsWidget is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function geometryChanged (self : access Inst) return CLASSVAR_Signal is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "geometryChanged"));
   end geometryChanged;
   function layoutChanged (self : access Inst) return CLASSVAR_Signal is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "layoutChanged"));
   end layoutChanged;
   function Create
     (parent_P : access QtAda6.QtWidgets.QGraphicsItem.Inst'Class := null;
      wFlags_P : access QtAda6.QtCore.Qt.WindowType.Inst'Class    := null) return Class
   is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QGraphicsWidget");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if parent_P /= null then parent_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if wFlags_P /= null then wFlags_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function actions (self : access Inst) return LIST_QtAda6_QtGui_QAction is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "actions");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return (2 .. 1 => <>);
   end actions;
   procedure addAction (self : access Inst; action_P : access QtAda6.QtGui.QAction.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addAction");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if action_P /= null then action_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end addAction;
   procedure addActions (self : access Inst; actions_P : SEQUENCE_QtAda6_QtGui_QAction) is
      Method, Args, List, Result : Handle;
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
      Result := Object_CallObject (Method, Args, True);
   end addActions;
   procedure adjustSize (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "adjustSize");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end adjustSize;
   function autoFillBackground (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "autoFillBackground");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end autoFillBackground;
   function boundingRect (self : access Inst) return access QtAda6.QtCore.QRectF.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QRectF.Class := new QtAda6.QtCore.QRectF.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "boundingRect");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end boundingRect;
   procedure changeEvent (self : access Inst; event_P : access QtAda6.QtCore.QEvent.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "changeEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end changeEvent;
   function close (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "close");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end close;
   procedure closeEvent (self : access Inst; event_P : access QtAda6.QtGui.QCloseEvent.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "closeEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end closeEvent;
   function event (self : access Inst; event_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "event");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end event;
   procedure focusInEvent (self : access Inst; event_P : access QtAda6.QtGui.QFocusEvent.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "focusInEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end focusInEvent;
   function focusNextPrevChild (self : access Inst; next_P : bool) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "focusNextPrevChild");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (next_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end focusNextPrevChild;
   procedure focusOutEvent (self : access Inst; event_P : access QtAda6.QtGui.QFocusEvent.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "focusOutEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end focusOutEvent;
   function focusPolicy (self : access Inst) return access QtAda6.QtCore.Qt.FocusPolicy.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.Qt.FocusPolicy.Class := new QtAda6.QtCore.Qt.FocusPolicy.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "focusPolicy");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end focusPolicy;
   function focusWidget (self : access Inst) return access QtAda6.QtWidgets.QGraphicsWidget.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QGraphicsWidget.Class := new QtAda6.QtWidgets.QGraphicsWidget.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "focusWidget");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end focusWidget;
   function font (self : access Inst) return access QtAda6.QtGui.QFont.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QFont.Class := new QtAda6.QtGui.QFont.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "font");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end font;
   function getContentsMargins (self : access Inst) return access Object'Class is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "getContentsMargins");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end getContentsMargins;
   function getWindowFrameMargins (self : access Inst) return access Object'Class is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "getWindowFrameMargins");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end getWindowFrameMargins;
   procedure grabKeyboardEvent (self : access Inst; event_P : access QtAda6.QtCore.QEvent.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "grabKeyboardEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end grabKeyboardEvent;
   procedure grabMouseEvent (self : access Inst; event_P : access QtAda6.QtCore.QEvent.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "grabMouseEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end grabMouseEvent;
   function grabShortcut
     (self       : access Inst;
      sequence_P : UNION_QtAda6_QtGui_QKeySequenceQtAda6_QtCore_QKeyCombinationQtAda6_QtGui_QKeySequence_StandardKeystrint;
      context_P  : access QtAda6.QtCore.Qt.ShortcutContext.Inst'Class := null) return int
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "grabShortcut");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if sequence_P /= null then sequence_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if context_P /= null then context_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end grabShortcut;
   procedure hideEvent (self : access Inst; event_P : access QtAda6.QtGui.QHideEvent.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hideEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end hideEvent;
   procedure hoverLeaveEvent (self : access Inst; event_P : access QtAda6.QtWidgets.QGraphicsSceneHoverEvent.Inst'Class)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hoverLeaveEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end hoverLeaveEvent;
   procedure hoverMoveEvent (self : access Inst; event_P : access QtAda6.QtWidgets.QGraphicsSceneHoverEvent.Inst'Class)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hoverMoveEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end hoverMoveEvent;
   procedure initStyleOption (self : access Inst; option_P : access QtAda6.QtWidgets.QStyleOption.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "initStyleOption");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if option_P /= null then option_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end initStyleOption;
   procedure insertAction
     (self     : access Inst; before_P : access QtAda6.QtGui.QAction.Inst'Class;
      action_P : access QtAda6.QtGui.QAction.Inst'Class)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "insertAction");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if before_P /= null then before_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if action_P /= null then action_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end insertAction;
   procedure insertActions
     (self : access Inst; before_P : access QtAda6.QtGui.QAction.Inst'Class; actions_P : SEQUENCE_QtAda6_QtGui_QAction)
   is
      Method, Args, List, Result : Handle;
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
      Result := Object_CallObject (Method, Args, True);
   end insertActions;
   function isActiveWindow (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isActiveWindow");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isActiveWindow;
   function itemChange
     (self : access Inst; change_P : access QtAda6.QtWidgets.QGraphicsItem.GraphicsItemChange.Inst'Class; value_P : Any)
      return Any
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "itemChange");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if change_P /= null then change_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if value_P /= null then value_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return null;
   end itemChange;
   function layout (self : access Inst) return access QtAda6.QtWidgets.QGraphicsLayout.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QGraphicsLayout.Class := new QtAda6.QtWidgets.QGraphicsLayout.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "layout");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end layout;
   function layoutDirection (self : access Inst) return access QtAda6.QtCore.Qt.LayoutDirection.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.LayoutDirection.Class := new QtAda6.QtCore.Qt.LayoutDirection.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "layoutDirection");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end layoutDirection;
   procedure moveEvent (self : access Inst; event_P : access QtAda6.QtWidgets.QGraphicsSceneMoveEvent.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "moveEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end moveEvent;
   procedure paint
     (self     : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      option_P : access QtAda6.QtWidgets.QStyleOptionGraphicsItem.Inst'Class;
      widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "paint");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if painter_P /= null then painter_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if option_P /= null then option_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if widget_P /= null then widget_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end paint;
   procedure paintWindowFrame
     (self     : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      option_P : access QtAda6.QtWidgets.QStyleOptionGraphicsItem.Inst'Class;
      widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "paintWindowFrame");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if painter_P /= null then painter_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if option_P /= null then option_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if widget_P /= null then widget_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end paintWindowFrame;
   function palette (self : access Inst) return access QtAda6.QtGui.QPalette.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QPalette.Class := new QtAda6.QtGui.QPalette.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "palette");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end palette;
   procedure polishEvent (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "polishEvent");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end polishEvent;
   function propertyChange (self : access Inst; propertyName_P : str; value_P : Any) return Any is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "propertyChange");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (propertyName_P));
      Tuple_SetItem (Args, 1, (if value_P /= null then value_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return null;
   end propertyChange;
   function rect (self : access Inst) return access QtAda6.QtCore.QRectF.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QRectF.Class := new QtAda6.QtCore.QRectF.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "rect");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end rect;
   procedure releaseShortcut (self : access Inst; id_P : int) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "releaseShortcut");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (id_P));
      Result := Object_CallObject (Method, Args, True);
   end releaseShortcut;
   procedure removeAction (self : access Inst; action_P : access QtAda6.QtGui.QAction.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "removeAction");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if action_P /= null then action_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end removeAction;
   procedure resize (self : access Inst; size_P : UNION_QtAda6_QtCore_QSizeFQtAda6_QtCore_QSize) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "resize");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if size_P /= null then size_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end resize;
   procedure resize (self : access Inst; w_P : float; h_P : float) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "resize");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Float_FromDouble (w_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (h_P));
      Result := Object_CallObject (Method, Args, True);
   end resize;
   procedure resizeEvent (self : access Inst; event_P : access QtAda6.QtWidgets.QGraphicsSceneResizeEvent.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "resizeEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end resizeEvent;
   function sceneEvent (self : access Inst; event_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "sceneEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end sceneEvent;
   procedure setAttribute
     (self : access Inst; attribute_P : access QtAda6.QtCore.Qt.WidgetAttribute.Inst'Class; on_P : bool := False)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setAttribute");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if attribute_P /= null then attribute_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, To_Python (on_P));
      Result := Object_CallObject (Method, Args, True);
   end setAttribute;
   procedure setAutoFillBackground (self : access Inst; enabled_P : bool) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setAutoFillBackground");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (enabled_P));
      Result := Object_CallObject (Method, Args, True);
   end setAutoFillBackground;
   procedure setContentsMargins (self : access Inst; left_P : float; top_P : float; right_P : float; bottom_P : float)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setContentsMargins");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Float_FromDouble (left_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (top_P));
      Tuple_SetItem (Args, 2, Float_FromDouble (right_P));
      Tuple_SetItem (Args, 3, Float_FromDouble (bottom_P));
      Result := Object_CallObject (Method, Args, True);
   end setContentsMargins;
   procedure setContentsMargins (self : access Inst; margins_P : UNION_QtAda6_QtCore_QMarginsFQtAda6_QtCore_QMargins) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setContentsMargins");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if margins_P /= null then margins_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setContentsMargins;
   procedure setFocusPolicy (self : access Inst; policy_P : access QtAda6.QtCore.Qt.FocusPolicy.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFocusPolicy");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if policy_P /= null then policy_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setFocusPolicy;
   procedure setFont (self : access Inst; font_P : UNION_QtAda6_QtGui_QFontstrSEQUENCE_str) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFont");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if font_P /= null then font_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setFont;
   procedure setGeometry (self : access Inst; rect_P : UNION_QtAda6_QtCore_QRectFQtAda6_QtCore_QRect) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setGeometry");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if rect_P /= null then rect_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setGeometry;
   procedure setGeometry (self : access Inst; x_P : float; y_P : float; w_P : float; h_P : float) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setGeometry");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Float_FromDouble (x_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (y_P));
      Tuple_SetItem (Args, 2, Float_FromDouble (w_P));
      Tuple_SetItem (Args, 3, Float_FromDouble (h_P));
      Result := Object_CallObject (Method, Args, True);
   end setGeometry;
   procedure setLayout (self : access Inst; layout_P : access QtAda6.QtWidgets.QGraphicsLayout.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setLayout");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if layout_P /= null then layout_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setLayout;
   procedure setLayoutDirection (self : access Inst; direction_P : access QtAda6.QtCore.Qt.LayoutDirection.Inst'Class)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setLayoutDirection");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if direction_P /= null then direction_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setLayoutDirection;
   procedure setPalette
     (self : access Inst; palette_P : UNION_QtAda6_QtGui_QPaletteQtAda6_QtCore_Qt_GlobalColorQtAda6_QtGui_QColor)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPalette");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if palette_P /= null then palette_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setPalette;
   procedure setShortcutAutoRepeat (self : access Inst; id_P : int; enabled_P : bool := False) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setShortcutAutoRepeat");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (id_P));
      Tuple_SetItem (Args, 1, To_Python (enabled_P));
      Result := Object_CallObject (Method, Args, True);
   end setShortcutAutoRepeat;
   procedure setShortcutEnabled (self : access Inst; id_P : int; enabled_P : bool := False) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setShortcutEnabled");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (id_P));
      Tuple_SetItem (Args, 1, To_Python (enabled_P));
      Result := Object_CallObject (Method, Args, True);
   end setShortcutEnabled;
   procedure setStyle (self : access Inst; style_P : access QtAda6.QtWidgets.QStyle.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setStyle");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if style_P /= null then style_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setStyle;
   procedure setTabOrder
     (first_P  : access QtAda6.QtWidgets.QGraphicsWidget.Inst'Class;
      second_P : access QtAda6.QtWidgets.QGraphicsWidget.Inst'Class)
   is
      Class, Method, Args, List, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QGraphicsWidget");
      Method := Object_GetAttrString (Class, "setTabOrder");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if first_P /= null then first_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if second_P /= null then second_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setTabOrder;
   procedure setWindowFlags (self : access Inst; wFlags_P : access QtAda6.QtCore.Qt.WindowType.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setWindowFlags");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if wFlags_P /= null then wFlags_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setWindowFlags;
   procedure setWindowFrameMargins
     (self : access Inst; left_P : float; top_P : float; right_P : float; bottom_P : float)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setWindowFrameMargins");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Float_FromDouble (left_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (top_P));
      Tuple_SetItem (Args, 2, Float_FromDouble (right_P));
      Tuple_SetItem (Args, 3, Float_FromDouble (bottom_P));
      Result := Object_CallObject (Method, Args, True);
   end setWindowFrameMargins;
   procedure setWindowFrameMargins (self : access Inst; margins_P : UNION_QtAda6_QtCore_QMarginsFQtAda6_QtCore_QMargins)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setWindowFrameMargins");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if margins_P /= null then margins_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setWindowFrameMargins;
   procedure setWindowTitle (self : access Inst; title_P : str) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setWindowTitle");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (title_P));
      Result := Object_CallObject (Method, Args, True);
   end setWindowTitle;
   function shape (self : access Inst) return access QtAda6.QtGui.QPainterPath.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QPainterPath.Class := new QtAda6.QtGui.QPainterPath.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "shape");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end shape;
   procedure showEvent (self : access Inst; event_P : access QtAda6.QtGui.QShowEvent.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "showEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end showEvent;
   function size (self : access Inst) return access QtAda6.QtCore.QSizeF.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QSizeF.Class := new QtAda6.QtCore.QSizeF.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "size");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end size;
   function sizeHint
     (self         : access Inst; which_P : access QtAda6.QtCore.Qt.SizeHint.Inst'Class;
      constraint_P : UNION_QtAda6_QtCore_QSizeFQtAda6_QtCore_QSize := null)
      return access QtAda6.QtCore.QSizeF.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QSizeF.Class := new QtAda6.QtCore.QSizeF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "sizeHint");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if which_P /= null then which_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if constraint_P /= null then constraint_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end sizeHint;
   function style (self : access Inst) return access QtAda6.QtWidgets.QStyle.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtWidgets.QStyle.Class := new QtAda6.QtWidgets.QStyle.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "style");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end style;
   function testAttribute
     (self : access Inst; attribute_P : access QtAda6.QtCore.Qt.WidgetAttribute.Inst'Class) return bool
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "testAttribute");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if attribute_P /= null then attribute_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end testAttribute;
   function type_K (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "type");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end type_K;
   procedure ungrabKeyboardEvent (self : access Inst; event_P : access QtAda6.QtCore.QEvent.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "ungrabKeyboardEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end ungrabKeyboardEvent;
   procedure ungrabMouseEvent (self : access Inst; event_P : access QtAda6.QtCore.QEvent.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "ungrabMouseEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end ungrabMouseEvent;
   procedure unsetLayoutDirection (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "unsetLayoutDirection");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end unsetLayoutDirection;
   procedure unsetWindowFrameMargins (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "unsetWindowFrameMargins");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end unsetWindowFrameMargins;
   procedure updateGeometry (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "updateGeometry");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end updateGeometry;
   function windowFlags (self : access Inst) return access QtAda6.QtCore.Qt.WindowType.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.Qt.WindowType.Class := new QtAda6.QtCore.Qt.WindowType.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "windowFlags");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end windowFlags;
   function windowFrameEvent (self : access Inst; e_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "windowFrameEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if e_P /= null then e_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end windowFrameEvent;
   function windowFrameGeometry (self : access Inst) return access QtAda6.QtCore.QRectF.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QRectF.Class := new QtAda6.QtCore.QRectF.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "windowFrameGeometry");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end windowFrameGeometry;
   function windowFrameRect (self : access Inst) return access QtAda6.QtCore.QRectF.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QRectF.Class := new QtAda6.QtCore.QRectF.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "windowFrameRect");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end windowFrameRect;
   function windowFrameSectionAt
     (self : access Inst; pos_P : UNION_QtAda6_QtCore_QPointFQtAda6_QtCore_QPointQtAda6_QtGui_QPainterPath_Element)
      return access QtAda6.QtCore.Qt.WindowFrameSection.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.WindowFrameSection.Class := new QtAda6.QtCore.Qt.WindowFrameSection.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "windowFrameSectionAt");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if pos_P /= null then pos_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end windowFrameSectionAt;
   function windowTitle (self : access Inst) return str is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "windowTitle");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end windowTitle;
   function windowType (self : access Inst) return access QtAda6.QtCore.Qt.WindowType.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.Qt.WindowType.Class := new QtAda6.QtCore.Qt.WindowType.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "windowType");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end windowType;
end QtAda6.QtWidgets.QGraphicsWidget;
