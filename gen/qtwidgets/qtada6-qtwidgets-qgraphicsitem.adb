-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qgraphicsitem.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Py; use Py;
with Ada.Unchecked_Deallocation;
with QtAda6.QtCore.Qt.MouseButton;
with QtAda6.QtCore.QRectF;
with QtAda6.QtGui.QTransform;
with QtAda6.QtGui.QRegion;
with QtAda6.QtWidgets.QGraphicsItem.CacheMode;
with QtAda6.QtGui.QPainterPath;
with QtAda6.QtCore.Qt.ItemSelectionMode;
with QtAda6.QtCore.QPointF;
with QtAda6.QtCore.QPoint;
with QtAda6.QtGui.QPainterPath.Element;
with QtAda6.QtWidgets.QGraphicsSceneContextMenuEvent;
with QtAda6.QtGui.QCursor;
with QtAda6.QtWidgets.QGraphicsSceneDragDropEvent;
with QtAda6.QtCore.QRect;
with QtAda6.QtWidgets.QGraphicsItem.GraphicsItemFlag;
with QtAda6.QtGui.QFocusEvent;
with QtAda6.QtWidgets.QGraphicsEffect;
with QtAda6.QtWidgets.QGraphicsItemGroup;
with QtAda6.QtWidgets.QGraphicsSceneHoverEvent;
with QtAda6.QtGui.QInputMethodEvent;
with QtAda6.QtCore.Qt.InputMethodHint;
with QtAda6.QtCore.Qt.InputMethodQuery;
with QtAda6.QtWidgets.QGraphicsItem.GraphicsItemChange;
with QtAda6.QtGui.QKeyEvent;
with QtAda6.QtGui.QPolygonF;
with QtAda6.QtGui.QPolygon;
with QtAda6.QtWidgets.QGraphicsSceneMouseEvent;
with QtAda6.QtGui.QPainter;
with QtAda6.QtWidgets.QStyleOptionGraphicsItem;
with QtAda6.QtWidgets.QWidget;
with QtAda6.QtWidgets.QGraphicsItem.PanelModality;
with QtAda6.QtWidgets.QGraphicsObject;
with QtAda6.QtWidgets.QGraphicsWidget;
with QtAda6.QtWidgets.QGraphicsScene;
with QtAda6.QtCore.QEvent;
with QtAda6.QtCore.QSize;
with QtAda6.QtCore.Qt.CursorShape;
with QtAda6.QtGui.QPixmap;
with QtAda6.QtCore.Qt.FocusReason;
with QtAda6.QtWidgets.QGraphicsTransform;
with QtAda6.QtWidgets.QGraphicsSceneWheelEvent;
package body QtAda6.QtWidgets.QGraphicsItem is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create (parent_P : Optional_QtAda6_QtWidgets_QGraphicsItem) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QGraphicsItem");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function acceptDrops (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "acceptDrops");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end acceptDrops;
   function acceptHoverEvents (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "acceptHoverEvents");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end acceptHoverEvents;
   function acceptTouchEvents (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "acceptTouchEvents");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end acceptTouchEvents;
   function acceptedMouseButtons (self : access Inst) return access QtAda6.QtCore.Qt.MouseButton.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.Qt.MouseButton.Class := new QtAda6.QtCore.Qt.MouseButton.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "acceptedMouseButtons");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end acceptedMouseButtons;
   procedure addToIndex (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addToIndex");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end addToIndex;
   procedure advance (self : access Inst; phase_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "advance");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (phase_P));
      Result := Object_CallObject (Method, Args, True);
   end advance;
   function boundingRect (self : access Inst) return access QtAda6.QtCore.QRectF.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QRectF.Class := new QtAda6.QtCore.QRectF.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "boundingRect");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end boundingRect;
   function boundingRegion
     (self : access Inst; itemToDeviceTransform_P : access QtAda6.QtGui.QTransform.Inst'Class)
      return access QtAda6.QtGui.QRegion.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QRegion.Class := new QtAda6.QtGui.QRegion.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "boundingRegion");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, itemToDeviceTransform_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end boundingRegion;
   function boundingRegionGranularity (self : access Inst) return float is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "boundingRegionGranularity");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end boundingRegionGranularity;
   function cacheMode_F (self : access Inst) return access QtAda6.QtWidgets.QGraphicsItem.CacheMode.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtWidgets.QGraphicsItem.CacheMode.Class :=
        new QtAda6.QtWidgets.QGraphicsItem.CacheMode.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "cacheMode");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end cacheMode_F;
   function childItems (self : access Inst) return List_QtAda6_QtWidgets_QGraphicsItem is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "childItems");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end childItems;
   function childrenBoundingRect (self : access Inst) return access QtAda6.QtCore.QRectF.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QRectF.Class := new QtAda6.QtCore.QRectF.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "childrenBoundingRect");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end childrenBoundingRect;
   procedure clearFocus (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "clearFocus");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end clearFocus;
   function clipPath (self : access Inst) return access QtAda6.QtGui.QPainterPath.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QPainterPath.Class := new QtAda6.QtGui.QPainterPath.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "clipPath");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end clipPath;
   function collidesWithItem
     (self   : access Inst; other_P : access QtAda6.QtWidgets.QGraphicsItem.Inst'Class;
      mode_P : access QtAda6.QtCore.Qt.ItemSelectionMode.Inst'Class) return bool
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "collidesWithItem");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, other_P.Python_Proxy);
      Tuple_SetItem (Args, 1, mode_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end collidesWithItem;
   function collidesWithPath
     (self   : access Inst; path_P : access QtAda6.QtGui.QPainterPath.Inst'Class;
      mode_P : access QtAda6.QtCore.Qt.ItemSelectionMode.Inst'Class) return bool
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "collidesWithPath");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, path_P.Python_Proxy);
      Tuple_SetItem (Args, 1, mode_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end collidesWithPath;
   function collidingItems
     (self : access Inst; mode_P : access QtAda6.QtCore.Qt.ItemSelectionMode.Inst'Class)
      return List_QtAda6_QtWidgets_QGraphicsItem
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "collidingItems");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, mode_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end collidingItems;
   function commonAncestorItem
     (self : access Inst; other_P : access QtAda6.QtWidgets.QGraphicsItem.Inst'Class)
      return access QtAda6.QtWidgets.QGraphicsItem.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtWidgets.QGraphicsItem.Class := new QtAda6.QtWidgets.QGraphicsItem.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "commonAncestorItem");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, other_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end commonAncestorItem;
   function contains
     (self : access Inst; point_P : Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element)
      return bool
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "contains");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end contains;
   procedure contextMenuEvent
     (self : access Inst; event_P : access QtAda6.QtWidgets.QGraphicsSceneContextMenuEvent.Inst'Class)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "contextMenuEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, event_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end contextMenuEvent;
   function cursor (self : access Inst) return access QtAda6.QtGui.QCursor.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QCursor.Class := new QtAda6.QtGui.QCursor.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "cursor");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end cursor;
   function data (self : access Inst; key_P : int) return Any is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "data");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (key_P));
      Result := Object_CallObject (Method, Args, True);
      return Any_conv_P2A_is_not_supported;
   end data;
   function deviceTransform
     (self : access Inst; viewportTransform_P : access QtAda6.QtGui.QTransform.Inst'Class)
      return access QtAda6.QtGui.QTransform.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QTransform.Class := new QtAda6.QtGui.QTransform.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "deviceTransform");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, viewportTransform_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end deviceTransform;
   procedure dragEnterEvent
     (self : access Inst; event_P : access QtAda6.QtWidgets.QGraphicsSceneDragDropEvent.Inst'Class)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "dragEnterEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, event_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end dragEnterEvent;
   procedure dragLeaveEvent
     (self : access Inst; event_P : access QtAda6.QtWidgets.QGraphicsSceneDragDropEvent.Inst'Class)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "dragLeaveEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, event_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end dragLeaveEvent;
   procedure dragMoveEvent
     (self : access Inst; event_P : access QtAda6.QtWidgets.QGraphicsSceneDragDropEvent.Inst'Class)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "dragMoveEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, event_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end dragMoveEvent;
   procedure dropEvent (self : access Inst; event_P : access QtAda6.QtWidgets.QGraphicsSceneDragDropEvent.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "dropEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, event_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end dropEvent;
   function effectiveOpacity (self : access Inst) return float is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "effectiveOpacity");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end effectiveOpacity;
   procedure ensureVisible
     (self : access Inst; rect_P : Union_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect; xmargin_P : int; ymargin_P : int)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "ensureVisible");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, No_Value);
      Tuple_SetItem (Args, 1, Long_FromLong (xmargin_P));
      Tuple_SetItem (Args, 2, Long_FromLong (ymargin_P));
      Result := Object_CallObject (Method, Args, True);
   end ensureVisible;
   procedure ensureVisible
     (self : access Inst; x_P : float; y_P : float; w_P : float; h_P : float; xmargin_P : int; ymargin_P : int)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "ensureVisible");
      Args   := Tuple_New (6);
      Tuple_SetItem (Args, 0, Float_FromDouble (x_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (y_P));
      Tuple_SetItem (Args, 2, Float_FromDouble (w_P));
      Tuple_SetItem (Args, 3, Float_FromDouble (h_P));
      Tuple_SetItem (Args, 4, Long_FromLong (xmargin_P));
      Tuple_SetItem (Args, 5, Long_FromLong (ymargin_P));
      Result := Object_CallObject (Method, Args, True);
   end ensureVisible;
   function extension_F (self : access Inst; variant_P : Any) return Any is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "extension");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Any_conv_A2P_is_not_supported);
      Result := Object_CallObject (Method, Args, True);
      return Any_conv_P2A_is_not_supported;
   end extension_F;
   function filtersChildEvents (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "filtersChildEvents");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end filtersChildEvents;
   function flags (self : access Inst) return access QtAda6.QtWidgets.QGraphicsItem.GraphicsItemFlag.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtWidgets.QGraphicsItem.GraphicsItemFlag.Class :=
        new QtAda6.QtWidgets.QGraphicsItem.GraphicsItemFlag.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "flags");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end flags;
   procedure focusInEvent (self : access Inst; event_P : access QtAda6.QtGui.QFocusEvent.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "focusInEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, event_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end focusInEvent;
   function focusItem (self : access Inst) return access QtAda6.QtWidgets.QGraphicsItem.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtWidgets.QGraphicsItem.Class := new QtAda6.QtWidgets.QGraphicsItem.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "focusItem");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end focusItem;
   procedure focusOutEvent (self : access Inst; event_P : access QtAda6.QtGui.QFocusEvent.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "focusOutEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, event_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end focusOutEvent;
   function focusProxy (self : access Inst) return access QtAda6.QtWidgets.QGraphicsItem.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtWidgets.QGraphicsItem.Class := new QtAda6.QtWidgets.QGraphicsItem.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "focusProxy");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end focusProxy;
   function focusScopeItem (self : access Inst) return access QtAda6.QtWidgets.QGraphicsItem.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtWidgets.QGraphicsItem.Class := new QtAda6.QtWidgets.QGraphicsItem.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "focusScopeItem");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end focusScopeItem;
   procedure grabKeyboard (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "grabKeyboard");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end grabKeyboard;
   procedure grabMouse (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "grabMouse");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end grabMouse;
   function graphicsEffect (self : access Inst) return access QtAda6.QtWidgets.QGraphicsEffect.Inst'Class is
      Method, Args, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QGraphicsEffect.Class := new QtAda6.QtWidgets.QGraphicsEffect.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "graphicsEffect");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end graphicsEffect;
   function group (self : access Inst) return access QtAda6.QtWidgets.QGraphicsItemGroup.Inst'Class is
      Method, Args, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QGraphicsItemGroup.Class := new QtAda6.QtWidgets.QGraphicsItemGroup.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "group");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end group;
   function handlesChildEvents (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "handlesChildEvents");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end handlesChildEvents;
   function hasCursor (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hasCursor");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end hasCursor;
   function hasFocus (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hasFocus");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end hasFocus;
   procedure hide (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hide");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end hide;
   procedure hoverEnterEvent (self : access Inst; event_P : access QtAda6.QtWidgets.QGraphicsSceneHoverEvent.Inst'Class)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hoverEnterEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, event_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end hoverEnterEvent;
   procedure hoverLeaveEvent (self : access Inst; event_P : access QtAda6.QtWidgets.QGraphicsSceneHoverEvent.Inst'Class)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hoverLeaveEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, event_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end hoverLeaveEvent;
   procedure hoverMoveEvent (self : access Inst; event_P : access QtAda6.QtWidgets.QGraphicsSceneHoverEvent.Inst'Class)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hoverMoveEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, event_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end hoverMoveEvent;
   procedure inputMethodEvent (self : access Inst; event_P : access QtAda6.QtGui.QInputMethodEvent.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "inputMethodEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, event_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end inputMethodEvent;
   function inputMethodHints (self : access Inst) return access QtAda6.QtCore.Qt.InputMethodHint.Inst'Class is
      Method, Args, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.InputMethodHint.Class := new QtAda6.QtCore.Qt.InputMethodHint.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "inputMethodHints");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end inputMethodHints;
   function inputMethodQuery
     (self : access Inst; query_P : access QtAda6.QtCore.Qt.InputMethodQuery.Inst'Class) return Any
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "inputMethodQuery");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, query_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return Any_conv_P2A_is_not_supported;
   end inputMethodQuery;
   procedure installSceneEventFilter
     (self : access Inst; filterItem_P : access QtAda6.QtWidgets.QGraphicsItem.Inst'Class)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "installSceneEventFilter");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, filterItem_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end installSceneEventFilter;
   function isActive (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isActive");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isActive;
   function isAncestorOf (self : access Inst; child_P : access QtAda6.QtWidgets.QGraphicsItem.Inst'Class) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isAncestorOf");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, child_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isAncestorOf;
   function isBlockedByModalPanel (self : access Inst) return Tuple is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isBlockedByModalPanel");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Tuple_conv_P2A_is_not_supported;
   end isBlockedByModalPanel;
   function isClipped (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isClipped");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isClipped;
   function isEnabled (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isEnabled");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isEnabled;
   function isObscured (self : access Inst; rect_P : Union_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isObscured");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isObscured;
   function isObscured (self : access Inst; x_P : float; y_P : float; w_P : float; h_P : float) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isObscured");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Float_FromDouble (x_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (y_P));
      Tuple_SetItem (Args, 2, Float_FromDouble (w_P));
      Tuple_SetItem (Args, 3, Float_FromDouble (h_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isObscured;
   function isObscuredBy (self : access Inst; item_P : access QtAda6.QtWidgets.QGraphicsItem.Inst'Class) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isObscuredBy");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, item_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isObscuredBy;
   function isPanel (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isPanel");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isPanel;
   function isSelected (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isSelected");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isSelected;
   function isUnderMouse (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isUnderMouse");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isUnderMouse;
   function isVisible (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isVisible");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isVisible;
   function isVisibleTo (self : access Inst; parent_P : access QtAda6.QtWidgets.QGraphicsItem.Inst'Class) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isVisibleTo");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, parent_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isVisibleTo;
   function isWidget (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isWidget");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isWidget;
   function isWindow (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isWindow");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isWindow;
   function itemChange_F
     (self : access Inst; change_P : access QtAda6.QtWidgets.QGraphicsItem.GraphicsItemChange.Inst'Class; value_P : Any)
      return Any
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "itemChange");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, change_P.Python_Proxy);
      Tuple_SetItem (Args, 1, Any_conv_A2P_is_not_supported);
      Result := Object_CallObject (Method, Args, True);
      return Any_conv_P2A_is_not_supported;
   end itemChange_F;
   function itemTransform (self : access Inst; other_P : access QtAda6.QtWidgets.QGraphicsItem.Inst'Class) return Tuple
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "itemTransform");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, other_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return Tuple_conv_P2A_is_not_supported;
   end itemTransform;
   procedure keyPressEvent (self : access Inst; event_P : access QtAda6.QtGui.QKeyEvent.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "keyPressEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, event_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end keyPressEvent;
   procedure keyReleaseEvent (self : access Inst; event_P : access QtAda6.QtGui.QKeyEvent.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "keyReleaseEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, event_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end keyReleaseEvent;
   function mapFromItem
     (self   : access Inst; item_P : access QtAda6.QtWidgets.QGraphicsItem.Inst'Class;
      path_P : access QtAda6.QtGui.QPainterPath.Inst'Class) return access QtAda6.QtGui.QPainterPath.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QPainterPath.Class := new QtAda6.QtGui.QPainterPath.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mapFromItem");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, item_P.Python_Proxy);
      Tuple_SetItem (Args, 1, path_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mapFromItem;
   function mapFromItem
     (self    : access Inst; item_P : access QtAda6.QtWidgets.QGraphicsItem.Inst'Class;
      point_P : Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element)
      return access QtAda6.QtCore.QPointF.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QPointF.Class := new QtAda6.QtCore.QPointF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mapFromItem");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, item_P.Python_Proxy);
      Tuple_SetItem (Args, 1, No_Value);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mapFromItem;
   function mapFromItem
     (self      : access Inst; item_P : access QtAda6.QtWidgets.QGraphicsItem.Inst'Class;
      polygon_P : Union_QtAda6_QtGui_QPolygonF_Sequence_QtAda6_QtCore_QPointF_QtAda6_QtGui_QPolygon_QtAda6_QtCore_QRectF)
      return access QtAda6.QtGui.QPolygonF.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QPolygonF.Class := new QtAda6.QtGui.QPolygonF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mapFromItem");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, item_P.Python_Proxy);
      Tuple_SetItem (Args, 1, No_Value);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mapFromItem;
   function mapFromItem
     (self   : access Inst; item_P : access QtAda6.QtWidgets.QGraphicsItem.Inst'Class;
      rect_P : Union_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect) return access QtAda6.QtGui.QPolygonF.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QPolygonF.Class := new QtAda6.QtGui.QPolygonF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mapFromItem");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, item_P.Python_Proxy);
      Tuple_SetItem (Args, 1, No_Value);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mapFromItem;
   function mapFromItem
     (self : access Inst; item_P : access QtAda6.QtWidgets.QGraphicsItem.Inst'Class; x_P : float; y_P : float)
      return access QtAda6.QtCore.QPointF.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QPointF.Class := new QtAda6.QtCore.QPointF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mapFromItem");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, item_P.Python_Proxy);
      Tuple_SetItem (Args, 1, Float_FromDouble (x_P));
      Tuple_SetItem (Args, 2, Float_FromDouble (y_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mapFromItem;
   function mapFromItem
     (self : access Inst; item_P : access QtAda6.QtWidgets.QGraphicsItem.Inst'Class; x_P : float; y_P : float;
      w_P  : float; h_P : float) return access QtAda6.QtGui.QPolygonF.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QPolygonF.Class := new QtAda6.QtGui.QPolygonF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mapFromItem");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, item_P.Python_Proxy);
      Tuple_SetItem (Args, 1, Float_FromDouble (x_P));
      Tuple_SetItem (Args, 2, Float_FromDouble (y_P));
      Tuple_SetItem (Args, 3, Float_FromDouble (w_P));
      Tuple_SetItem (Args, 4, Float_FromDouble (h_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mapFromItem;
   function mapFromParent
     (self : access Inst; path_P : access QtAda6.QtGui.QPainterPath.Inst'Class)
      return access QtAda6.QtGui.QPainterPath.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QPainterPath.Class := new QtAda6.QtGui.QPainterPath.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mapFromParent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, path_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mapFromParent;
   function mapFromParent
     (self : access Inst; point_P : Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element)
      return access QtAda6.QtCore.QPointF.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QPointF.Class := new QtAda6.QtCore.QPointF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mapFromParent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mapFromParent;
   function mapFromParent
     (self      : access Inst;
      polygon_P : Union_QtAda6_QtGui_QPolygonF_Sequence_QtAda6_QtCore_QPointF_QtAda6_QtGui_QPolygon_QtAda6_QtCore_QRectF)
      return access QtAda6.QtGui.QPolygonF.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QPolygonF.Class := new QtAda6.QtGui.QPolygonF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mapFromParent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mapFromParent;
   function mapFromParent
     (self : access Inst; rect_P : Union_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect)
      return access QtAda6.QtGui.QPolygonF.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QPolygonF.Class := new QtAda6.QtGui.QPolygonF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mapFromParent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mapFromParent;
   function mapFromParent (self : access Inst; x_P : float; y_P : float) return access QtAda6.QtCore.QPointF.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QPointF.Class := new QtAda6.QtCore.QPointF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mapFromParent");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Float_FromDouble (x_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (y_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mapFromParent;
   function mapFromParent
     (self : access Inst; x_P : float; y_P : float; w_P : float; h_P : float)
      return access QtAda6.QtGui.QPolygonF.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QPolygonF.Class := new QtAda6.QtGui.QPolygonF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mapFromParent");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Float_FromDouble (x_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (y_P));
      Tuple_SetItem (Args, 2, Float_FromDouble (w_P));
      Tuple_SetItem (Args, 3, Float_FromDouble (h_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mapFromParent;
   function mapFromScene
     (self : access Inst; path_P : access QtAda6.QtGui.QPainterPath.Inst'Class)
      return access QtAda6.QtGui.QPainterPath.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QPainterPath.Class := new QtAda6.QtGui.QPainterPath.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mapFromScene");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, path_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mapFromScene;
   function mapFromScene
     (self : access Inst; point_P : Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element)
      return access QtAda6.QtCore.QPointF.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QPointF.Class := new QtAda6.QtCore.QPointF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mapFromScene");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mapFromScene;
   function mapFromScene
     (self      : access Inst;
      polygon_P : Union_QtAda6_QtGui_QPolygonF_Sequence_QtAda6_QtCore_QPointF_QtAda6_QtGui_QPolygon_QtAda6_QtCore_QRectF)
      return access QtAda6.QtGui.QPolygonF.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QPolygonF.Class := new QtAda6.QtGui.QPolygonF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mapFromScene");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mapFromScene;
   function mapFromScene
     (self : access Inst; rect_P : Union_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect)
      return access QtAda6.QtGui.QPolygonF.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QPolygonF.Class := new QtAda6.QtGui.QPolygonF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mapFromScene");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mapFromScene;
   function mapFromScene (self : access Inst; x_P : float; y_P : float) return access QtAda6.QtCore.QPointF.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QPointF.Class := new QtAda6.QtCore.QPointF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mapFromScene");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Float_FromDouble (x_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (y_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mapFromScene;
   function mapFromScene
     (self : access Inst; x_P : float; y_P : float; w_P : float; h_P : float)
      return access QtAda6.QtGui.QPolygonF.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QPolygonF.Class := new QtAda6.QtGui.QPolygonF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mapFromScene");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Float_FromDouble (x_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (y_P));
      Tuple_SetItem (Args, 2, Float_FromDouble (w_P));
      Tuple_SetItem (Args, 3, Float_FromDouble (h_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mapFromScene;
   function mapRectFromItem
     (self   : access Inst; item_P : access QtAda6.QtWidgets.QGraphicsItem.Inst'Class;
      rect_P : Union_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect) return access QtAda6.QtCore.QRectF.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QRectF.Class := new QtAda6.QtCore.QRectF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mapRectFromItem");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, item_P.Python_Proxy);
      Tuple_SetItem (Args, 1, No_Value);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mapRectFromItem;
   function mapRectFromItem
     (self : access Inst; item_P : access QtAda6.QtWidgets.QGraphicsItem.Inst'Class; x_P : float; y_P : float;
      w_P  : float; h_P : float) return access QtAda6.QtCore.QRectF.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QRectF.Class := new QtAda6.QtCore.QRectF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mapRectFromItem");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, item_P.Python_Proxy);
      Tuple_SetItem (Args, 1, Float_FromDouble (x_P));
      Tuple_SetItem (Args, 2, Float_FromDouble (y_P));
      Tuple_SetItem (Args, 3, Float_FromDouble (w_P));
      Tuple_SetItem (Args, 4, Float_FromDouble (h_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mapRectFromItem;
   function mapRectFromParent
     (self : access Inst; rect_P : Union_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect)
      return access QtAda6.QtCore.QRectF.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QRectF.Class := new QtAda6.QtCore.QRectF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mapRectFromParent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mapRectFromParent;
   function mapRectFromParent
     (self : access Inst; x_P : float; y_P : float; w_P : float; h_P : float)
      return access QtAda6.QtCore.QRectF.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QRectF.Class := new QtAda6.QtCore.QRectF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mapRectFromParent");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Float_FromDouble (x_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (y_P));
      Tuple_SetItem (Args, 2, Float_FromDouble (w_P));
      Tuple_SetItem (Args, 3, Float_FromDouble (h_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mapRectFromParent;
   function mapRectFromScene
     (self : access Inst; rect_P : Union_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect)
      return access QtAda6.QtCore.QRectF.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QRectF.Class := new QtAda6.QtCore.QRectF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mapRectFromScene");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mapRectFromScene;
   function mapRectFromScene
     (self : access Inst; x_P : float; y_P : float; w_P : float; h_P : float)
      return access QtAda6.QtCore.QRectF.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QRectF.Class := new QtAda6.QtCore.QRectF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mapRectFromScene");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Float_FromDouble (x_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (y_P));
      Tuple_SetItem (Args, 2, Float_FromDouble (w_P));
      Tuple_SetItem (Args, 3, Float_FromDouble (h_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mapRectFromScene;
   function mapRectToItem
     (self   : access Inst; item_P : access QtAda6.QtWidgets.QGraphicsItem.Inst'Class;
      rect_P : Union_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect) return access QtAda6.QtCore.QRectF.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QRectF.Class := new QtAda6.QtCore.QRectF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mapRectToItem");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, item_P.Python_Proxy);
      Tuple_SetItem (Args, 1, No_Value);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mapRectToItem;
   function mapRectToItem
     (self : access Inst; item_P : access QtAda6.QtWidgets.QGraphicsItem.Inst'Class; x_P : float; y_P : float;
      w_P  : float; h_P : float) return access QtAda6.QtCore.QRectF.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QRectF.Class := new QtAda6.QtCore.QRectF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mapRectToItem");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, item_P.Python_Proxy);
      Tuple_SetItem (Args, 1, Float_FromDouble (x_P));
      Tuple_SetItem (Args, 2, Float_FromDouble (y_P));
      Tuple_SetItem (Args, 3, Float_FromDouble (w_P));
      Tuple_SetItem (Args, 4, Float_FromDouble (h_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mapRectToItem;
   function mapRectToParent
     (self : access Inst; rect_P : Union_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect)
      return access QtAda6.QtCore.QRectF.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QRectF.Class := new QtAda6.QtCore.QRectF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mapRectToParent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mapRectToParent;
   function mapRectToParent
     (self : access Inst; x_P : float; y_P : float; w_P : float; h_P : float)
      return access QtAda6.QtCore.QRectF.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QRectF.Class := new QtAda6.QtCore.QRectF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mapRectToParent");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Float_FromDouble (x_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (y_P));
      Tuple_SetItem (Args, 2, Float_FromDouble (w_P));
      Tuple_SetItem (Args, 3, Float_FromDouble (h_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mapRectToParent;
   function mapRectToScene
     (self : access Inst; rect_P : Union_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect)
      return access QtAda6.QtCore.QRectF.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QRectF.Class := new QtAda6.QtCore.QRectF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mapRectToScene");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mapRectToScene;
   function mapRectToScene
     (self : access Inst; x_P : float; y_P : float; w_P : float; h_P : float)
      return access QtAda6.QtCore.QRectF.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QRectF.Class := new QtAda6.QtCore.QRectF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mapRectToScene");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Float_FromDouble (x_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (y_P));
      Tuple_SetItem (Args, 2, Float_FromDouble (w_P));
      Tuple_SetItem (Args, 3, Float_FromDouble (h_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mapRectToScene;
   function mapToItem
     (self   : access Inst; item_P : access QtAda6.QtWidgets.QGraphicsItem.Inst'Class;
      path_P : access QtAda6.QtGui.QPainterPath.Inst'Class) return access QtAda6.QtGui.QPainterPath.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QPainterPath.Class := new QtAda6.QtGui.QPainterPath.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mapToItem");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, item_P.Python_Proxy);
      Tuple_SetItem (Args, 1, path_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mapToItem;
   function mapToItem
     (self    : access Inst; item_P : access QtAda6.QtWidgets.QGraphicsItem.Inst'Class;
      point_P : Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element)
      return access QtAda6.QtCore.QPointF.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QPointF.Class := new QtAda6.QtCore.QPointF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mapToItem");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, item_P.Python_Proxy);
      Tuple_SetItem (Args, 1, No_Value);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mapToItem;
   function mapToItem
     (self      : access Inst; item_P : access QtAda6.QtWidgets.QGraphicsItem.Inst'Class;
      polygon_P : Union_QtAda6_QtGui_QPolygonF_Sequence_QtAda6_QtCore_QPointF_QtAda6_QtGui_QPolygon_QtAda6_QtCore_QRectF)
      return access QtAda6.QtGui.QPolygonF.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QPolygonF.Class := new QtAda6.QtGui.QPolygonF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mapToItem");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, item_P.Python_Proxy);
      Tuple_SetItem (Args, 1, No_Value);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mapToItem;
   function mapToItem
     (self   : access Inst; item_P : access QtAda6.QtWidgets.QGraphicsItem.Inst'Class;
      rect_P : Union_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect) return access QtAda6.QtGui.QPolygonF.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QPolygonF.Class := new QtAda6.QtGui.QPolygonF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mapToItem");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, item_P.Python_Proxy);
      Tuple_SetItem (Args, 1, No_Value);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mapToItem;
   function mapToItem
     (self : access Inst; item_P : access QtAda6.QtWidgets.QGraphicsItem.Inst'Class; x_P : float; y_P : float)
      return access QtAda6.QtCore.QPointF.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QPointF.Class := new QtAda6.QtCore.QPointF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mapToItem");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, item_P.Python_Proxy);
      Tuple_SetItem (Args, 1, Float_FromDouble (x_P));
      Tuple_SetItem (Args, 2, Float_FromDouble (y_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mapToItem;
   function mapToItem
     (self : access Inst; item_P : access QtAda6.QtWidgets.QGraphicsItem.Inst'Class; x_P : float; y_P : float;
      w_P  : float; h_P : float) return access QtAda6.QtGui.QPolygonF.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QPolygonF.Class := new QtAda6.QtGui.QPolygonF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mapToItem");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, item_P.Python_Proxy);
      Tuple_SetItem (Args, 1, Float_FromDouble (x_P));
      Tuple_SetItem (Args, 2, Float_FromDouble (y_P));
      Tuple_SetItem (Args, 3, Float_FromDouble (w_P));
      Tuple_SetItem (Args, 4, Float_FromDouble (h_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mapToItem;
   function mapToParent
     (self : access Inst; path_P : access QtAda6.QtGui.QPainterPath.Inst'Class)
      return access QtAda6.QtGui.QPainterPath.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QPainterPath.Class := new QtAda6.QtGui.QPainterPath.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mapToParent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, path_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mapToParent;
   function mapToParent
     (self : access Inst; point_P : Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element)
      return access QtAda6.QtCore.QPointF.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QPointF.Class := new QtAda6.QtCore.QPointF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mapToParent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mapToParent;
   function mapToParent
     (self      : access Inst;
      polygon_P : Union_QtAda6_QtGui_QPolygonF_Sequence_QtAda6_QtCore_QPointF_QtAda6_QtGui_QPolygon_QtAda6_QtCore_QRectF)
      return access QtAda6.QtGui.QPolygonF.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QPolygonF.Class := new QtAda6.QtGui.QPolygonF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mapToParent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mapToParent;
   function mapToParent
     (self : access Inst; rect_P : Union_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect)
      return access QtAda6.QtGui.QPolygonF.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QPolygonF.Class := new QtAda6.QtGui.QPolygonF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mapToParent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mapToParent;
   function mapToParent (self : access Inst; x_P : float; y_P : float) return access QtAda6.QtCore.QPointF.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QPointF.Class := new QtAda6.QtCore.QPointF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mapToParent");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Float_FromDouble (x_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (y_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mapToParent;
   function mapToParent
     (self : access Inst; x_P : float; y_P : float; w_P : float; h_P : float)
      return access QtAda6.QtGui.QPolygonF.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QPolygonF.Class := new QtAda6.QtGui.QPolygonF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mapToParent");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Float_FromDouble (x_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (y_P));
      Tuple_SetItem (Args, 2, Float_FromDouble (w_P));
      Tuple_SetItem (Args, 3, Float_FromDouble (h_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mapToParent;
   function mapToScene
     (self : access Inst; path_P : access QtAda6.QtGui.QPainterPath.Inst'Class)
      return access QtAda6.QtGui.QPainterPath.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QPainterPath.Class := new QtAda6.QtGui.QPainterPath.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mapToScene");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, path_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mapToScene;
   function mapToScene
     (self : access Inst; point_P : Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element)
      return access QtAda6.QtCore.QPointF.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QPointF.Class := new QtAda6.QtCore.QPointF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mapToScene");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mapToScene;
   function mapToScene
     (self      : access Inst;
      polygon_P : Union_QtAda6_QtGui_QPolygonF_Sequence_QtAda6_QtCore_QPointF_QtAda6_QtGui_QPolygon_QtAda6_QtCore_QRectF)
      return access QtAda6.QtGui.QPolygonF.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QPolygonF.Class := new QtAda6.QtGui.QPolygonF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mapToScene");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mapToScene;
   function mapToScene
     (self : access Inst; rect_P : Union_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect)
      return access QtAda6.QtGui.QPolygonF.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QPolygonF.Class := new QtAda6.QtGui.QPolygonF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mapToScene");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mapToScene;
   function mapToScene (self : access Inst; x_P : float; y_P : float) return access QtAda6.QtCore.QPointF.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QPointF.Class := new QtAda6.QtCore.QPointF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mapToScene");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Float_FromDouble (x_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (y_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mapToScene;
   function mapToScene
     (self : access Inst; x_P : float; y_P : float; w_P : float; h_P : float)
      return access QtAda6.QtGui.QPolygonF.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QPolygonF.Class := new QtAda6.QtGui.QPolygonF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mapToScene");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Float_FromDouble (x_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (y_P));
      Tuple_SetItem (Args, 2, Float_FromDouble (w_P));
      Tuple_SetItem (Args, 3, Float_FromDouble (h_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mapToScene;
   procedure mouseDoubleClickEvent
     (self : access Inst; event_P : access QtAda6.QtWidgets.QGraphicsSceneMouseEvent.Inst'Class)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mouseDoubleClickEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, event_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end mouseDoubleClickEvent;
   procedure mouseMoveEvent (self : access Inst; event_P : access QtAda6.QtWidgets.QGraphicsSceneMouseEvent.Inst'Class)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mouseMoveEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, event_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end mouseMoveEvent;
   procedure mousePressEvent (self : access Inst; event_P : access QtAda6.QtWidgets.QGraphicsSceneMouseEvent.Inst'Class)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mousePressEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, event_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end mousePressEvent;
   procedure mouseReleaseEvent
     (self : access Inst; event_P : access QtAda6.QtWidgets.QGraphicsSceneMouseEvent.Inst'Class)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mouseReleaseEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, event_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end mouseReleaseEvent;
   procedure moveBy (self : access Inst; dx_P : float; dy_P : float) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "moveBy");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Float_FromDouble (dx_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (dy_P));
      Result := Object_CallObject (Method, Args, True);
   end moveBy;
   function opacity (self : access Inst) return float is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "opacity");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end opacity;
   function opaqueArea (self : access Inst) return access QtAda6.QtGui.QPainterPath.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QPainterPath.Class := new QtAda6.QtGui.QPainterPath.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "opaqueArea");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end opaqueArea;
   procedure paint
     (self     : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      option_P : access QtAda6.QtWidgets.QStyleOptionGraphicsItem.Inst'Class;
      widget_P : Optional_QtAda6_QtWidgets_QWidget)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "paint");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, painter_P.Python_Proxy);
      Tuple_SetItem (Args, 1, option_P.Python_Proxy);
      Tuple_SetItem (Args, 2, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end paint;
   function panel_F (self : access Inst) return access QtAda6.QtWidgets.QGraphicsItem.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtWidgets.QGraphicsItem.Class := new QtAda6.QtWidgets.QGraphicsItem.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "panel");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end panel_F;
   function panelModality_F (self : access Inst) return access QtAda6.QtWidgets.QGraphicsItem.PanelModality.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtWidgets.QGraphicsItem.PanelModality.Class :=
        new QtAda6.QtWidgets.QGraphicsItem.PanelModality.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "panelModality");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end panelModality_F;
   function parentItem (self : access Inst) return access QtAda6.QtWidgets.QGraphicsItem.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtWidgets.QGraphicsItem.Class := new QtAda6.QtWidgets.QGraphicsItem.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "parentItem");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end parentItem;
   function parentObject (self : access Inst) return access QtAda6.QtWidgets.QGraphicsObject.Inst'Class is
      Method, Args, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QGraphicsObject.Class := new QtAda6.QtWidgets.QGraphicsObject.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "parentObject");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end parentObject;
   function parentWidget (self : access Inst) return access QtAda6.QtWidgets.QGraphicsWidget.Inst'Class is
      Method, Args, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QGraphicsWidget.Class := new QtAda6.QtWidgets.QGraphicsWidget.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "parentWidget");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end parentWidget;
   function pos (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QPointF.Class := new QtAda6.QtCore.QPointF.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "pos");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end pos;
   procedure prepareGeometryChange (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "prepareGeometryChange");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end prepareGeometryChange;
   procedure removeFromIndex (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "removeFromIndex");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end removeFromIndex;
   procedure removeSceneEventFilter
     (self : access Inst; filterItem_P : access QtAda6.QtWidgets.QGraphicsItem.Inst'Class)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "removeSceneEventFilter");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, filterItem_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end removeSceneEventFilter;
   procedure resetTransform (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "resetTransform");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end resetTransform;
   function rotation (self : access Inst) return float is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "rotation");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end rotation;
   function scale (self : access Inst) return float is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "scale");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end scale;
   function scene (self : access Inst) return access QtAda6.QtWidgets.QGraphicsScene.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtWidgets.QGraphicsScene.Class := new QtAda6.QtWidgets.QGraphicsScene.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "scene");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end scene;
   function sceneBoundingRect (self : access Inst) return access QtAda6.QtCore.QRectF.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QRectF.Class := new QtAda6.QtCore.QRectF.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "sceneBoundingRect");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end sceneBoundingRect;
   function sceneEvent (self : access Inst; event_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "sceneEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, event_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end sceneEvent;
   function sceneEventFilter
     (self    : access Inst; watched_P : access QtAda6.QtWidgets.QGraphicsItem.Inst'Class;
      event_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "sceneEventFilter");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, watched_P.Python_Proxy);
      Tuple_SetItem (Args, 1, event_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end sceneEventFilter;
   function scenePos (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QPointF.Class := new QtAda6.QtCore.QPointF.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "scenePos");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end scenePos;
   function sceneTransform (self : access Inst) return access QtAda6.QtGui.QTransform.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QTransform.Class := new QtAda6.QtGui.QTransform.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "sceneTransform");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end sceneTransform;
   procedure scroll
     (self : access Inst; dx_P : float; dy_P : float; rect_P : Union_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "scroll");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Float_FromDouble (dx_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (dy_P));
      Tuple_SetItem (Args, 2, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end scroll;
   procedure setAcceptDrops (self : access Inst; on_P : bool) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setAcceptDrops");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (on_P));
      Result := Object_CallObject (Method, Args, True);
   end setAcceptDrops;
   procedure setAcceptHoverEvents (self : access Inst; enabled_P : bool) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setAcceptHoverEvents");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (enabled_P));
      Result := Object_CallObject (Method, Args, True);
   end setAcceptHoverEvents;
   procedure setAcceptTouchEvents (self : access Inst; enabled_P : bool) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setAcceptTouchEvents");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (enabled_P));
      Result := Object_CallObject (Method, Args, True);
   end setAcceptTouchEvents;
   procedure setAcceptedMouseButtons (self : access Inst; buttons_P : access QtAda6.QtCore.Qt.MouseButton.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setAcceptedMouseButtons");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, buttons_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setAcceptedMouseButtons;
   procedure setActive (self : access Inst; active_P : bool) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setActive");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (active_P));
      Result := Object_CallObject (Method, Args, True);
   end setActive;
   procedure setBoundingRegionGranularity (self : access Inst; granularity_P : float) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setBoundingRegionGranularity");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (granularity_P));
      Result := Object_CallObject (Method, Args, True);
   end setBoundingRegionGranularity;
   procedure setCacheMode
     (self        : access Inst; mode_P : access QtAda6.QtWidgets.QGraphicsItem.CacheMode.Inst'Class;
      cacheSize_P : access QtAda6.QtCore.QSize.Inst'Class)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setCacheMode");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, mode_P.Python_Proxy);
      Tuple_SetItem (Args, 1, cacheSize_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setCacheMode;
   procedure setCursor
     (self : access Inst; cursor_P : Union_QtAda6_QtGui_QCursor_QtAda6_QtCore_Qt_CursorShape_QtAda6_QtGui_QPixmap)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setCursor");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end setCursor;
   procedure setData (self : access Inst; key_P : int; value_P : Any) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setData");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (key_P));
      Tuple_SetItem (Args, 1, Any_conv_A2P_is_not_supported);
      Result := Object_CallObject (Method, Args, True);
   end setData;
   procedure setEnabled (self : access Inst; enabled_P : bool) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setEnabled");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (enabled_P));
      Result := Object_CallObject (Method, Args, True);
   end setEnabled;
   procedure setFiltersChildEvents (self : access Inst; enabled_P : bool) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFiltersChildEvents");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (enabled_P));
      Result := Object_CallObject (Method, Args, True);
   end setFiltersChildEvents;
   procedure setFlag
     (self : access Inst; flag_P : access QtAda6.QtWidgets.QGraphicsItem.GraphicsItemFlag.Inst'Class; enabled_P : bool)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFlag");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, flag_P.Python_Proxy);
      Tuple_SetItem (Args, 1, To_Python (enabled_P));
      Result := Object_CallObject (Method, Args, True);
   end setFlag;
   procedure setFlags (self : access Inst; flags_P : access QtAda6.QtWidgets.QGraphicsItem.GraphicsItemFlag.Inst'Class)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFlags");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, flags_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setFlags;
   procedure setFocus (self : access Inst; focusReason_P : access QtAda6.QtCore.Qt.FocusReason.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFocus");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, focusReason_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setFocus;
   procedure setFocusProxy (self : access Inst; item_P : access QtAda6.QtWidgets.QGraphicsItem.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFocusProxy");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, item_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setFocusProxy;
   procedure setGraphicsEffect (self : access Inst; effect_P : access QtAda6.QtWidgets.QGraphicsEffect.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setGraphicsEffect");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, effect_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setGraphicsEffect;
   procedure setGroup (self : access Inst; group_P : access QtAda6.QtWidgets.QGraphicsItemGroup.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setGroup");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, group_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setGroup;
   procedure setHandlesChildEvents (self : access Inst; enabled_P : bool) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setHandlesChildEvents");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (enabled_P));
      Result := Object_CallObject (Method, Args, True);
   end setHandlesChildEvents;
   procedure setInputMethodHints (self : access Inst; hints_P : access QtAda6.QtCore.Qt.InputMethodHint.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setInputMethodHints");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, hints_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setInputMethodHints;
   procedure setOpacity (self : access Inst; opacity_P : float) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setOpacity");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (opacity_P));
      Result := Object_CallObject (Method, Args, True);
   end setOpacity;
   procedure setPanelModality
     (self : access Inst; panelModality_P : access QtAda6.QtWidgets.QGraphicsItem.PanelModality.Inst'Class)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPanelModality");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, panelModality_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setPanelModality;
   procedure setParentItem (self : access Inst; parent_P : access QtAda6.QtWidgets.QGraphicsItem.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setParentItem");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, parent_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setParentItem;
   procedure setPos
     (self : access Inst; pos_P : Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPos");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end setPos;
   procedure setPos (self : access Inst; x_P : float; y_P : float) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPos");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Float_FromDouble (x_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (y_P));
      Result := Object_CallObject (Method, Args, True);
   end setPos;
   procedure setRotation (self : access Inst; angle_P : float) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setRotation");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (angle_P));
      Result := Object_CallObject (Method, Args, True);
   end setRotation;
   procedure setScale (self : access Inst; scale_P : float) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setScale");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (scale_P));
      Result := Object_CallObject (Method, Args, True);
   end setScale;
   procedure setSelected (self : access Inst; selected_P : bool) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setSelected");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (selected_P));
      Result := Object_CallObject (Method, Args, True);
   end setSelected;
   procedure setToolTip (self : access Inst; toolTip_P : str) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setToolTip");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (toolTip_P));
      Result := Object_CallObject (Method, Args, True);
   end setToolTip;
   procedure setTransform (self : access Inst; matrix_P : access QtAda6.QtGui.QTransform.Inst'Class; combine_P : bool)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setTransform");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, matrix_P.Python_Proxy);
      Tuple_SetItem (Args, 1, To_Python (combine_P));
      Result := Object_CallObject (Method, Args, True);
   end setTransform;
   procedure setTransformOriginPoint (self : access Inst; ax_P : float; ay_P : float) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setTransformOriginPoint");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Float_FromDouble (ax_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (ay_P));
      Result := Object_CallObject (Method, Args, True);
   end setTransformOriginPoint;
   procedure setTransformOriginPoint
     (self : access Inst; origin_P : Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setTransformOriginPoint");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end setTransformOriginPoint;
   procedure setTransformations (self : access Inst; transformations_P : Sequence_QtAda6_QtWidgets_QGraphicsTransform)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setTransformations");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end setTransformations;
   procedure setVisible (self : access Inst; visible_P : bool) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setVisible");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (visible_P));
      Result := Object_CallObject (Method, Args, True);
   end setVisible;
   procedure setX (self : access Inst; x_P : float) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setX");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (x_P));
      Result := Object_CallObject (Method, Args, True);
   end setX;
   procedure setY (self : access Inst; y_P : float) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setY");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (y_P));
      Result := Object_CallObject (Method, Args, True);
   end setY;
   procedure setZValue (self : access Inst; z_P : float) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setZValue");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (z_P));
      Result := Object_CallObject (Method, Args, True);
   end setZValue;
   function shape (self : access Inst) return access QtAda6.QtGui.QPainterPath.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QPainterPath.Class := new QtAda6.QtGui.QPainterPath.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "shape");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end shape;
   procedure show (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "show");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end show;
   procedure stackBefore (self : access Inst; sibling_P : access QtAda6.QtWidgets.QGraphicsItem.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "stackBefore");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, sibling_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end stackBefore;
   function toGraphicsObject (self : access Inst) return access QtAda6.QtWidgets.QGraphicsObject.Inst'Class is
      Method, Args, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QGraphicsObject.Class := new QtAda6.QtWidgets.QGraphicsObject.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "toGraphicsObject");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end toGraphicsObject;
   function toolTip (self : access Inst) return str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toolTip");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end toolTip;
   function topLevelItem (self : access Inst) return access QtAda6.QtWidgets.QGraphicsItem.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtWidgets.QGraphicsItem.Class := new QtAda6.QtWidgets.QGraphicsItem.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "topLevelItem");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end topLevelItem;
   function topLevelWidget (self : access Inst) return access QtAda6.QtWidgets.QGraphicsWidget.Inst'Class is
      Method, Args, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QGraphicsWidget.Class := new QtAda6.QtWidgets.QGraphicsWidget.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "topLevelWidget");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end topLevelWidget;
   function transform (self : access Inst) return access QtAda6.QtGui.QTransform.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QTransform.Class := new QtAda6.QtGui.QTransform.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "transform");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end transform;
   function transformOriginPoint (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QPointF.Class := new QtAda6.QtCore.QPointF.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "transformOriginPoint");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end transformOriginPoint;
   function transformations (self : access Inst) return List_QtAda6_QtWidgets_QGraphicsTransform is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "transformations");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end transformations;
   function type_K (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "type");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end type_K;
   procedure ungrabKeyboard (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "ungrabKeyboard");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end ungrabKeyboard;
   procedure ungrabMouse (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "ungrabMouse");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end ungrabMouse;
   procedure unsetCursor (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "unsetCursor");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end unsetCursor;
   procedure update (self : access Inst; rect_P : Union_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "update");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end update;
   procedure update (self : access Inst; x_P : float; y_P : float; width_P : float; height_P : float) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "update");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Float_FromDouble (x_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (y_P));
      Tuple_SetItem (Args, 2, Float_FromDouble (width_P));
      Tuple_SetItem (Args, 3, Float_FromDouble (height_P));
      Result := Object_CallObject (Method, Args, True);
   end update;
   procedure updateMicroFocus (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "updateMicroFocus");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end updateMicroFocus;
   procedure wheelEvent (self : access Inst; event_P : access QtAda6.QtWidgets.QGraphicsSceneWheelEvent.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "wheelEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, event_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end wheelEvent;
   function window (self : access Inst) return access QtAda6.QtWidgets.QGraphicsWidget.Inst'Class is
      Method, Args, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QGraphicsWidget.Class := new QtAda6.QtWidgets.QGraphicsWidget.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "window");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end window;
   function x_F (self : access Inst) return float is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "x");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end x_F;
   function y_F (self : access Inst) return float is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "y");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end y_F;
   function zValue (self : access Inst) return float is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "zValue");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end zValue;
end QtAda6.QtWidgets.QGraphicsItem;
