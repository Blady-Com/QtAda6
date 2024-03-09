-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qgraphicsview.adb
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
with QtAda6.QtWidgets.QGraphicsScene;
with QtAda6.QtCore.Qt.AlignmentFlag;
with QtAda6.QtGui.QBrush;
with QtAda6.QtWidgets.QGraphicsView.CacheModeFlag;
with QtAda6.QtWidgets.QGraphicsItem;
with QtAda6.QtGui.QContextMenuEvent;
with QtAda6.QtGui.QDragEnterEvent;
with QtAda6.QtGui.QDragLeaveEvent;
with QtAda6.QtWidgets.QGraphicsView.DragMode;
with QtAda6.QtGui.QDragMoveEvent;
with QtAda6.QtGui.QPainter;
with QtAda6.QtGui.QDropEvent;
with QtAda6.QtCore.QEvent;
with QtAda6.QtCore.Qt.AspectRatioMode;
with QtAda6.QtGui.QFocusEvent;
with QtAda6.QtGui.QInputMethodEvent;
with QtAda6.QtCore.Qt.InputMethodQuery;
with QtAda6.QtWidgets.QGraphicsScene.SceneLayer;
with QtAda6.QtCore.QPoint;
with QtAda6.QtGui.QPainterPath;
with QtAda6.QtCore.Qt.ItemSelectionMode;
with QtAda6.QtCore.QRect;
with QtAda6.QtGui.QKeyEvent;
with QtAda6.QtGui.QPolygon;
with QtAda6.QtCore.QPointF;
with QtAda6.QtGui.QPolygonF;
with QtAda6.QtGui.QMouseEvent;
with QtAda6.QtWidgets.QGraphicsView.OptimizationFlag;
with QtAda6.QtGui.QPaintEvent;
with QtAda6.QtGui.QPainter.RenderHint;
with QtAda6.QtWidgets.QGraphicsView.ViewportAnchor;
with QtAda6.QtGui.QResizeEvent;
with QtAda6.QtCore.QRectF;
with QtAda6.QtGui.QTransform;
with QtAda6.QtWidgets.QGraphicsView.ViewportUpdateMode;
with QtAda6.QtGui.QShowEvent;
with QtAda6.QtCore.QSize;
with QtAda6.QtGui.QWheelEvent;
package body QtAda6.QtWidgets.QGraphicsView is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function rubberBandChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "rubberBandChanged"));
   end rubberBandChanged;
   function Create (parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QGraphicsView");
      Args  := Tuple_New (0);
      Dict  := Dict_New;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (scene_P  : access QtAda6.QtWidgets.QGraphicsScene.Inst'Class;
      parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QGraphicsView");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if scene_P /= null then scene_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function alignment (self : access Inst) return access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.AlignmentFlag.Class := new QtAda6.QtCore.Qt.AlignmentFlag.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "alignment");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end alignment;
   function backgroundBrush (self : access Inst) return access QtAda6.QtGui.QBrush.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QBrush.Class := new QtAda6.QtGui.QBrush.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "backgroundBrush");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end backgroundBrush;
   function cacheMode (self : access Inst) return access QtAda6.QtWidgets.QGraphicsView.CacheModeFlag.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtWidgets.QGraphicsView.CacheModeFlag.Class :=
        new QtAda6.QtWidgets.QGraphicsView.CacheModeFlag.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "cacheMode");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end cacheMode;
   procedure centerOn (self : access Inst; item_P : access QtAda6.QtWidgets.QGraphicsItem.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "centerOn");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if item_P /= null then item_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end centerOn;
   procedure centerOn
     (self : access Inst; pos_P : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "centerOn");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if pos_P /= null then pos_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end centerOn;
   procedure centerOn (self : access Inst; x_P : float; y_P : float) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "centerOn");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Float_FromDouble (x_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (y_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end centerOn;
   procedure contextMenuEvent (self : access Inst; event_P : access QtAda6.QtGui.QContextMenuEvent.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "contextMenuEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end contextMenuEvent;
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
   function dragMode_F (self : access Inst) return access QtAda6.QtWidgets.QGraphicsView.DragMode.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QGraphicsView.DragMode.Class := new QtAda6.QtWidgets.QGraphicsView.DragMode.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "dragMode");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end dragMode_F;
   procedure dragMoveEvent (self : access Inst; event_P : access QtAda6.QtGui.QDragMoveEvent.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "dragMoveEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end dragMoveEvent;
   procedure drawBackground
     (self   : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      rect_P : UNION_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawBackground");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if painter_P /= null then painter_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if rect_P /= null then rect_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawBackground;
   procedure drawForeground
     (self   : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      rect_P : UNION_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawForeground");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if painter_P /= null then painter_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if rect_P /= null then rect_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawForeground;
   procedure drawItems
     (self : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class; items_P : Iterable; options_P : Iterable)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawItems");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if painter_P /= null then painter_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if items_P /= null then items_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if options_P /= null then options_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawItems;
   procedure dropEvent (self : access Inst; event_P : access QtAda6.QtGui.QDropEvent.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "dropEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end dropEvent;
   procedure ensureVisible
     (self      : access Inst; item_P : access QtAda6.QtWidgets.QGraphicsItem.Inst'Class; xmargin_P : int := 0;
      ymargin_P : int := 0)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "ensureVisible");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if item_P /= null then item_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if xmargin_P /= 0 then
         Dict_SetItemString (Dict, "xmargin", Long_FromLong (xmargin_P));
      end if;
      if ymargin_P /= 0 then
         Dict_SetItemString (Dict, "ymargin", Long_FromLong (ymargin_P));
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end ensureVisible;
   procedure ensureVisible
     (self      : access Inst; rect_P : UNION_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect; xmargin_P : int := 0;
      ymargin_P : int := 0)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "ensureVisible");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if rect_P /= null then rect_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if xmargin_P /= 0 then
         Dict_SetItemString (Dict, "xmargin", Long_FromLong (xmargin_P));
      end if;
      if ymargin_P /= 0 then
         Dict_SetItemString (Dict, "ymargin", Long_FromLong (ymargin_P));
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end ensureVisible;
   procedure ensureVisible
     (self      : access Inst; x_P : float; y_P : float; w_P : float; h_P : float; xmargin_P : int := 0;
      ymargin_P : int := 0)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "ensureVisible");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Float_FromDouble (x_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (y_P));
      Tuple_SetItem (Args, 2, Float_FromDouble (w_P));
      Tuple_SetItem (Args, 3, Float_FromDouble (h_P));
      Dict := Dict_New;
      if xmargin_P /= 0 then
         Dict_SetItemString (Dict, "xmargin", Long_FromLong (xmargin_P));
      end if;
      if ymargin_P /= 0 then
         Dict_SetItemString (Dict, "ymargin", Long_FromLong (ymargin_P));
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end ensureVisible;
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
   procedure fitInView
     (self              : access Inst; item_P : access QtAda6.QtWidgets.QGraphicsItem.Inst'Class;
      aspectRadioMode_P : access QtAda6.QtCore.Qt.AspectRatioMode.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "fitInView");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if item_P /= null then item_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if aspectRadioMode_P /= null then
         Dict_SetItemString (Dict, "aspectRadioMode", aspectRadioMode_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end fitInView;
   procedure fitInView
     (self              : access Inst; rect_P : UNION_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect;
      aspectRadioMode_P : access QtAda6.QtCore.Qt.AspectRatioMode.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "fitInView");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if rect_P /= null then rect_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if aspectRadioMode_P /= null then
         Dict_SetItemString (Dict, "aspectRadioMode", aspectRadioMode_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end fitInView;
   procedure fitInView
     (self              : access Inst; x_P : float; y_P : float; w_P : float; h_P : float;
      aspectRadioMode_P : access QtAda6.QtCore.Qt.AspectRatioMode.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "fitInView");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Float_FromDouble (x_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (y_P));
      Tuple_SetItem (Args, 2, Float_FromDouble (w_P));
      Tuple_SetItem (Args, 3, Float_FromDouble (h_P));
      Dict := Dict_New;
      if aspectRadioMode_P /= null then
         Dict_SetItemString (Dict, "aspectRadioMode", aspectRadioMode_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end fitInView;
   procedure focusInEvent (self : access Inst; event_P : access QtAda6.QtGui.QFocusEvent.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "focusInEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end focusInEvent;
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
   function foregroundBrush (self : access Inst) return access QtAda6.QtGui.QBrush.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QBrush.Class := new QtAda6.QtGui.QBrush.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "foregroundBrush");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end foregroundBrush;
   procedure inputMethodEvent (self : access Inst; event_P : access QtAda6.QtGui.QInputMethodEvent.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "inputMethodEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end inputMethodEvent;
   function inputMethodQuery
     (self : access Inst; query_P : access QtAda6.QtCore.Qt.InputMethodQuery.Inst'Class) return Any
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "inputMethodQuery");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if query_P /= null then query_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return null;
   end inputMethodQuery;
   procedure invalidateScene
     (self     : access Inst; rect_P : UNION_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect := null;
      layers_P : access QtAda6.QtWidgets.QGraphicsScene.SceneLayer.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "invalidateScene");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      if rect_P /= null then
         Dict_SetItemString (Dict, "rect", rect_P.Python_Proxy);
      end if;
      if layers_P /= null then
         Dict_SetItemString (Dict, "layers", layers_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end invalidateScene;
   function isInteractive (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isInteractive");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isInteractive;
   function isTransformed (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isTransformed");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isTransformed;
   function itemAt
     (self : access Inst; pos_P : access QtAda6.QtCore.QPoint.Inst'Class)
      return access QtAda6.QtWidgets.QGraphicsItem.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QGraphicsItem.Class := new QtAda6.QtWidgets.QGraphicsItem.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "itemAt");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if pos_P /= null then pos_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end itemAt;
   function itemAt (self : access Inst; x_P : int; y_P : int) return access QtAda6.QtWidgets.QGraphicsItem.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QGraphicsItem.Class := new QtAda6.QtWidgets.QGraphicsItem.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "itemAt");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (x_P));
      Tuple_SetItem (Args, 1, Long_FromLong (y_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end itemAt;
   function items (self : access Inst) return LIST_QtAda6_QtWidgets_QGraphicsItem is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "items");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return (2 .. 1 => <>);
   end items;
   function items
     (self   : access Inst; path_P : access QtAda6.QtGui.QPainterPath.Inst'Class;
      mode_P : access QtAda6.QtCore.Qt.ItemSelectionMode.Inst'Class := null) return LIST_QtAda6_QtWidgets_QGraphicsItem
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "items");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if path_P /= null then path_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if mode_P /= null then
         Dict_SetItemString (Dict, "mode", mode_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return (2 .. 1 => <>);
   end items;
   function items
     (self   : access Inst; polygon_P : UNION_QtAda6_QtGui_QPolygon_SEQUENCE_QtAda6_QtCore_QRect;
      mode_P : access QtAda6.QtCore.Qt.ItemSelectionMode.Inst'Class := null) return LIST_QtAda6_QtWidgets_QGraphicsItem
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "items");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if polygon_P /= null then polygon_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if mode_P /= null then
         Dict_SetItemString (Dict, "mode", mode_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return (2 .. 1 => <>);
   end items;
   function items
     (self : access Inst; pos_P : access QtAda6.QtCore.QPoint.Inst'Class) return LIST_QtAda6_QtWidgets_QGraphicsItem
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "items");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if pos_P /= null then pos_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return (2 .. 1 => <>);
   end items;
   function items
     (self   : access Inst; rect_P : access QtAda6.QtCore.QRect.Inst'Class;
      mode_P : access QtAda6.QtCore.Qt.ItemSelectionMode.Inst'Class := null) return LIST_QtAda6_QtWidgets_QGraphicsItem
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "items");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if rect_P /= null then rect_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if mode_P /= null then
         Dict_SetItemString (Dict, "mode", mode_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return (2 .. 1 => <>);
   end items;
   function items (self : access Inst; x_P : int; y_P : int) return LIST_QtAda6_QtWidgets_QGraphicsItem is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "items");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (x_P));
      Tuple_SetItem (Args, 1, Long_FromLong (y_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return (2 .. 1 => <>);
   end items;
   function items
     (self   : access Inst; x_P : int; y_P : int; w_P : int; h_P : int;
      mode_P : access QtAda6.QtCore.Qt.ItemSelectionMode.Inst'Class := null) return LIST_QtAda6_QtWidgets_QGraphicsItem
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "items");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Long_FromLong (x_P));
      Tuple_SetItem (Args, 1, Long_FromLong (y_P));
      Tuple_SetItem (Args, 2, Long_FromLong (w_P));
      Tuple_SetItem (Args, 3, Long_FromLong (h_P));
      Dict := Dict_New;
      if mode_P /= null then
         Dict_SetItemString (Dict, "mode", mode_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return (2 .. 1 => <>);
   end items;
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
   function mapFromScene
     (self : access Inst; path_P : access QtAda6.QtGui.QPainterPath.Inst'Class)
      return access QtAda6.QtGui.QPainterPath.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QPainterPath.Class := new QtAda6.QtGui.QPainterPath.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mapFromScene");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if path_P /= null then path_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mapFromScene;
   function mapFromScene
     (self : access Inst; point_P : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element)
      return access QtAda6.QtCore.QPoint.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QPoint.Class := new QtAda6.QtCore.QPoint.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mapFromScene");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if point_P /= null then point_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mapFromScene;
   function mapFromScene
     (self : access Inst; polygon_P : UNION_QtAda6_QtGui_QPolygonF_SEQUENCE_QtAda6_QtCore_QRectF)
      return access QtAda6.QtGui.QPolygon.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QPolygon.Class := new QtAda6.QtGui.QPolygon.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mapFromScene");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if polygon_P /= null then polygon_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mapFromScene;
   function mapFromScene
     (self : access Inst; rect_P : UNION_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect)
      return access QtAda6.QtGui.QPolygon.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QPolygon.Class := new QtAda6.QtGui.QPolygon.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mapFromScene");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if rect_P /= null then rect_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mapFromScene;
   function mapFromScene (self : access Inst; x_P : float; y_P : float) return access QtAda6.QtCore.QPoint.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QPoint.Class := new QtAda6.QtCore.QPoint.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mapFromScene");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Float_FromDouble (x_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (y_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mapFromScene;
   function mapFromScene
     (self : access Inst; x_P : float; y_P : float; w_P : float; h_P : float)
      return access QtAda6.QtGui.QPolygon.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QPolygon.Class := new QtAda6.QtGui.QPolygon.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mapFromScene");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Float_FromDouble (x_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (y_P));
      Tuple_SetItem (Args, 2, Float_FromDouble (w_P));
      Tuple_SetItem (Args, 3, Float_FromDouble (h_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mapFromScene;
   function mapToScene
     (self : access Inst; path_P : access QtAda6.QtGui.QPainterPath.Inst'Class)
      return access QtAda6.QtGui.QPainterPath.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QPainterPath.Class := new QtAda6.QtGui.QPainterPath.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mapToScene");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if path_P /= null then path_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mapToScene;
   function mapToScene
     (self : access Inst; point_P : access QtAda6.QtCore.QPoint.Inst'Class)
      return access QtAda6.QtCore.QPointF.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QPointF.Class := new QtAda6.QtCore.QPointF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mapToScene");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if point_P /= null then point_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mapToScene;
   function mapToScene
     (self : access Inst; polygon_P : UNION_QtAda6_QtGui_QPolygon_SEQUENCE_QtAda6_QtCore_QRect)
      return access QtAda6.QtGui.QPolygonF.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QPolygonF.Class := new QtAda6.QtGui.QPolygonF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mapToScene");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if polygon_P /= null then polygon_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mapToScene;
   function mapToScene
     (self : access Inst; rect_P : access QtAda6.QtCore.QRect.Inst'Class)
      return access QtAda6.QtGui.QPolygonF.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QPolygonF.Class := new QtAda6.QtGui.QPolygonF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mapToScene");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if rect_P /= null then rect_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mapToScene;
   function mapToScene (self : access Inst; x_P : int; y_P : int) return access QtAda6.QtCore.QPointF.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QPointF.Class := new QtAda6.QtCore.QPointF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mapToScene");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (x_P));
      Tuple_SetItem (Args, 1, Long_FromLong (y_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mapToScene;
   function mapToScene
     (self : access Inst; x_P : int; y_P : int; w_P : int; h_P : int) return access QtAda6.QtGui.QPolygonF.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QPolygonF.Class := new QtAda6.QtGui.QPolygonF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mapToScene");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Long_FromLong (x_P));
      Tuple_SetItem (Args, 1, Long_FromLong (y_P));
      Tuple_SetItem (Args, 2, Long_FromLong (w_P));
      Tuple_SetItem (Args, 3, Long_FromLong (h_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mapToScene;
   procedure mouseDoubleClickEvent (self : access Inst; event_P : access QtAda6.QtGui.QMouseEvent.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mouseDoubleClickEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end mouseDoubleClickEvent;
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
   function optimizationFlags
     (self : access Inst) return access QtAda6.QtWidgets.QGraphicsView.OptimizationFlag.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtWidgets.QGraphicsView.OptimizationFlag.Class :=
        new QtAda6.QtWidgets.QGraphicsView.OptimizationFlag.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "optimizationFlags");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end optimizationFlags;
   procedure paintEvent (self : access Inst; event_P : access QtAda6.QtGui.QPaintEvent.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "paintEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end paintEvent;
   procedure render
     (self              : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      target_P          : UNION_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect     := null;
      source_P          : access QtAda6.QtCore.QRect.Inst'Class              := null;
      aspectRatioMode_P : access QtAda6.QtCore.Qt.AspectRatioMode.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "render");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if painter_P /= null then painter_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if target_P /= null then
         Dict_SetItemString (Dict, "target", target_P.Python_Proxy);
      end if;
      if source_P /= null then
         Dict_SetItemString (Dict, "source", source_P.Python_Proxy);
      end if;
      if aspectRatioMode_P /= null then
         Dict_SetItemString (Dict, "aspectRatioMode", aspectRatioMode_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end render;
   function renderHints (self : access Inst) return access QtAda6.QtGui.QPainter.RenderHint.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QPainter.RenderHint.Class := new QtAda6.QtGui.QPainter.RenderHint.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "renderHints");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end renderHints;
   procedure resetCachedContent (self : access Inst) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "resetCachedContent");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end resetCachedContent;
   procedure resetTransform (self : access Inst) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "resetTransform");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end resetTransform;
   function resizeAnchor (self : access Inst) return access QtAda6.QtWidgets.QGraphicsView.ViewportAnchor.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtWidgets.QGraphicsView.ViewportAnchor.Class :=
        new QtAda6.QtWidgets.QGraphicsView.ViewportAnchor.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "resizeAnchor");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end resizeAnchor;
   procedure resizeEvent (self : access Inst; event_P : access QtAda6.QtGui.QResizeEvent.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "resizeEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end resizeEvent;
   procedure rotate (self : access Inst; angle_P : float) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "rotate");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (angle_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end rotate;
   function rubberBandRect (self : access Inst) return access QtAda6.QtCore.QRect.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QRect.Class := new QtAda6.QtCore.QRect.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "rubberBandRect");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end rubberBandRect;
   function rubberBandSelectionMode (self : access Inst) return access QtAda6.QtCore.Qt.ItemSelectionMode.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.ItemSelectionMode.Class := new QtAda6.QtCore.Qt.ItemSelectionMode.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "rubberBandSelectionMode");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end rubberBandSelectionMode;
   procedure scale (self : access Inst; sx_P : float; sy_P : float) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "scale");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Float_FromDouble (sx_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (sy_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end scale;
   function scene (self : access Inst) return access QtAda6.QtWidgets.QGraphicsScene.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QGraphicsScene.Class := new QtAda6.QtWidgets.QGraphicsScene.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "scene");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end scene;
   function sceneRect (self : access Inst) return access QtAda6.QtCore.QRectF.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QRectF.Class := new QtAda6.QtCore.QRectF.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "sceneRect");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end sceneRect;
   procedure scrollContentsBy (self : access Inst; dx_P : int; dy_P : int) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "scrollContentsBy");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (dx_P));
      Tuple_SetItem (Args, 1, Long_FromLong (dy_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end scrollContentsBy;
   procedure setAlignment (self : access Inst; alignment_P : access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setAlignment");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if alignment_P /= null then alignment_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setAlignment;
   procedure setBackgroundBrush
     (self    : access Inst;
      brush_P : UNION_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setBackgroundBrush");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if brush_P /= null then brush_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setBackgroundBrush;
   procedure setCacheMode (self : access Inst; mode_P : access QtAda6.QtWidgets.QGraphicsView.CacheModeFlag.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setCacheMode");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if mode_P /= null then mode_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setCacheMode;
   procedure setDragMode (self : access Inst; mode_P : access QtAda6.QtWidgets.QGraphicsView.DragMode.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setDragMode");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if mode_P /= null then mode_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setDragMode;
   procedure setForegroundBrush
     (self    : access Inst;
      brush_P : UNION_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setForegroundBrush");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if brush_P /= null then brush_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setForegroundBrush;
   procedure setInteractive (self : access Inst; allowed_P : bool) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setInteractive");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (allowed_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setInteractive;
   procedure setOptimizationFlag
     (self      : access Inst; flag_P : access QtAda6.QtWidgets.QGraphicsView.OptimizationFlag.Inst'Class;
      enabled_P : bool := False)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setOptimizationFlag");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if flag_P /= null then flag_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if enabled_P /= False then
         Dict_SetItemString (Dict, "enabled", To_Python (enabled_P));
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end setOptimizationFlag;
   procedure setOptimizationFlags
     (self : access Inst; flags_P : access QtAda6.QtWidgets.QGraphicsView.OptimizationFlag.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setOptimizationFlags");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if flags_P /= null then flags_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setOptimizationFlags;
   procedure setRenderHint
     (self : access Inst; hint_P : access QtAda6.QtGui.QPainter.RenderHint.Inst'Class; enabled_P : bool := False)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setRenderHint");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if hint_P /= null then hint_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if enabled_P /= False then
         Dict_SetItemString (Dict, "enabled", To_Python (enabled_P));
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end setRenderHint;
   procedure setRenderHints (self : access Inst; hints_P : access QtAda6.QtGui.QPainter.RenderHint.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setRenderHints");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if hints_P /= null then hints_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setRenderHints;
   procedure setResizeAnchor
     (self : access Inst; anchor_P : access QtAda6.QtWidgets.QGraphicsView.ViewportAnchor.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setResizeAnchor");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if anchor_P /= null then anchor_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setResizeAnchor;
   procedure setRubberBandSelectionMode
     (self : access Inst; mode_P : access QtAda6.QtCore.Qt.ItemSelectionMode.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setRubberBandSelectionMode");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if mode_P /= null then mode_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setRubberBandSelectionMode;
   procedure setScene (self : access Inst; scene_P : access QtAda6.QtWidgets.QGraphicsScene.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setScene");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if scene_P /= null then scene_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setScene;
   procedure setSceneRect (self : access Inst; rect_P : UNION_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setSceneRect");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if rect_P /= null then rect_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setSceneRect;
   procedure setSceneRect (self : access Inst; x_P : float; y_P : float; w_P : float; h_P : float) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setSceneRect");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Float_FromDouble (x_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (y_P));
      Tuple_SetItem (Args, 2, Float_FromDouble (w_P));
      Tuple_SetItem (Args, 3, Float_FromDouble (h_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setSceneRect;
   procedure setTransform
     (self : access Inst; matrix_P : access QtAda6.QtGui.QTransform.Inst'Class; combine_P : bool := False)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setTransform");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if matrix_P /= null then matrix_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if combine_P /= False then
         Dict_SetItemString (Dict, "combine", To_Python (combine_P));
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end setTransform;
   procedure setTransformationAnchor
     (self : access Inst; anchor_P : access QtAda6.QtWidgets.QGraphicsView.ViewportAnchor.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setTransformationAnchor");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if anchor_P /= null then anchor_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setTransformationAnchor;
   procedure setViewportUpdateMode
     (self : access Inst; mode_P : access QtAda6.QtWidgets.QGraphicsView.ViewportUpdateMode.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setViewportUpdateMode");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if mode_P /= null then mode_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setViewportUpdateMode;
   procedure setupViewport (self : access Inst; widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setupViewport");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if widget_P /= null then widget_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setupViewport;
   procedure shear (self : access Inst; sh_P : float; sv_P : float) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "shear");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Float_FromDouble (sh_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (sv_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end shear;
   procedure showEvent (self : access Inst; event_P : access QtAda6.QtGui.QShowEvent.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "showEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end showEvent;
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
   function transform (self : access Inst) return access QtAda6.QtGui.QTransform.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QTransform.Class := new QtAda6.QtGui.QTransform.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "transform");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end transform;
   function transformationAnchor
     (self : access Inst) return access QtAda6.QtWidgets.QGraphicsView.ViewportAnchor.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtWidgets.QGraphicsView.ViewportAnchor.Class :=
        new QtAda6.QtWidgets.QGraphicsView.ViewportAnchor.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "transformationAnchor");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end transformationAnchor;
   procedure translate (self : access Inst; dx_P : float; dy_P : float) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "translate");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Float_FromDouble (dx_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (dy_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end translate;
   procedure updateScene (self : access Inst; rects_P : SEQUENCE_QtAda6_QtCore_QRectF) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "updateScene");
      List   := List_New (rects_P'Length);
      for ind in rects_P'Range loop
         List_SetItem
           (List, ssize_t (ind - rects_P'First),
            (if rects_P (ind) /= null then rects_P (ind).Python_Proxy else No_Value));
      end loop;
      Args := Tuple_New (1);
      Tuple_SetItem (Args, 0, List);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end updateScene;
   procedure updateSceneRect (self : access Inst; rect_P : UNION_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "updateSceneRect");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if rect_P /= null then rect_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end updateSceneRect;
   function viewportEvent (self : access Inst; event_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "viewportEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end viewportEvent;
   function viewportTransform (self : access Inst) return access QtAda6.QtGui.QTransform.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QTransform.Class := new QtAda6.QtGui.QTransform.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "viewportTransform");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end viewportTransform;
   function viewportUpdateMode_F
     (self : access Inst) return access QtAda6.QtWidgets.QGraphicsView.ViewportUpdateMode.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtWidgets.QGraphicsView.ViewportUpdateMode.Class :=
        new QtAda6.QtWidgets.QGraphicsView.ViewportUpdateMode.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "viewportUpdateMode");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end viewportUpdateMode_F;
   procedure wheelEvent (self : access Inst; event_P : access QtAda6.QtGui.QWheelEvent.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "wheelEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end wheelEvent;
end QtAda6.QtWidgets.QGraphicsView;
