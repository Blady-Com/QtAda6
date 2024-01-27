-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qgraphicsscene.adb
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
with QtAda6.QtCore.QObject;
with QtAda6.QtCore.QRectF;
with QtAda6.QtCore.QRect;
with QtAda6.QtWidgets.QGraphicsItem;
with QtAda6.QtWidgets.QGraphicsWidget;
with QtAda6.QtGui.QPen;
with QtAda6.QtCore.Qt.PenStyle;
with QtAda6.QtGui.QColor;
with QtAda6.QtGui.QBrush;
with QtAda6.QtCore.Qt.BrushStyle;
with QtAda6.QtCore.Qt.GlobalColor;
with QtAda6.QtGui.QGradient;
with QtAda6.QtGui.QImage;
with QtAda6.QtGui.QPixmap;
with QtAda6.QtWidgets.QGraphicsEllipseItem;
with QtAda6.QtCore.QLineF;
with QtAda6.QtCore.QLine;
with QtAda6.QtWidgets.QGraphicsLineItem;
with QtAda6.QtGui.QPainterPath;
with QtAda6.QtWidgets.QGraphicsPathItem;
with QtAda6.QtWidgets.QGraphicsPixmapItem;
with QtAda6.QtGui.QPolygonF;
with QtAda6.QtCore.QPointF;
with QtAda6.QtGui.QPolygon;
with QtAda6.QtWidgets.QGraphicsPolygonItem;
with QtAda6.QtWidgets.QGraphicsRectItem;
with QtAda6.QtGui.QFont;
with QtAda6.QtWidgets.QGraphicsSimpleTextItem;
with QtAda6.QtWidgets.QGraphicsTextItem;
with QtAda6.QtWidgets.QWidget;
with QtAda6.QtCore.Qt.WindowType;
with QtAda6.QtWidgets.QGraphicsProxyWidget;
with QtAda6.QtCore.Qt.ItemSelectionMode;
with QtAda6.QtWidgets.QGraphicsSceneContextMenuEvent;
with QtAda6.QtWidgets.QGraphicsItemGroup;
with QtAda6.QtWidgets.QGraphicsSceneDragDropEvent;
with QtAda6.QtGui.QPainter;
with QtAda6.QtCore.QEvent;
with QtAda6.QtGui.QFocusEvent;
with QtAda6.QtWidgets.QGraphicsSceneHelpEvent;
with QtAda6.QtGui.QInputMethodEvent;
with QtAda6.QtCore.Qt.InputMethodQuery;
with QtAda6.QtWidgets.QGraphicsScene.SceneLayer;
with QtAda6.QtCore.QPoint;
with QtAda6.QtGui.QPainterPath.Element;
with QtAda6.QtGui.QTransform;
with QtAda6.QtWidgets.QGraphicsScene.ItemIndexMethod;
with QtAda6.QtCore.Qt.SortOrder;
with QtAda6.QtGui.QKeyEvent;
with QtAda6.QtWidgets.QGraphicsSceneMouseEvent;
with QtAda6.QtGui.QPalette;
with QtAda6.QtCore.Qt.AspectRatioMode;
with QtAda6.QtCore.Qt.FocusReason;
with QtAda6.QtCore.Qt.ItemSelectionOperation;
with QtAda6.QtWidgets.QStyle;
with QtAda6.QtWidgets.QGraphicsView;
with QtAda6.QtWidgets.QGraphicsSceneWheelEvent;
package body QtAda6.QtWidgets.QGraphicsScene is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function changed (self : access Inst) return CLASSVAR_Signal is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "changed"));
   end changed;
   function focusItemChanged (self : access Inst) return CLASSVAR_Signal is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "focusItemChanged"));
   end focusItemChanged;
   function sceneRectChanged (self : access Inst) return CLASSVAR_Signal is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "sceneRectChanged"));
   end sceneRectChanged;
   function selectionChanged (self : access Inst) return CLASSVAR_Signal is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "selectionChanged"));
   end selectionChanged;
   function Create (parent_P : access QtAda6.QtCore.QObject.Inst'Class := null) return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QGraphicsScene");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if parent_P /= null then parent_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create
     (sceneRect_P : UNION_QtAda6_QtCore_QRectFQtAda6_QtCore_QRect;
      parent_P    : access QtAda6.QtCore.QObject.Inst'Class := null) return Class
   is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QGraphicsScene");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if sceneRect_P /= null then sceneRect_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if parent_P /= null then parent_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create
     (x_P      : float; y_P : float; width_P : float; height_P : float;
      parent_P : access QtAda6.QtCore.QObject.Inst'Class := null) return Class
   is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QGraphicsScene");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, Float_FromDouble (x_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (y_P));
      Tuple_SetItem (Args, 2, Float_FromDouble (width_P));
      Tuple_SetItem (Args, 3, Float_FromDouble (height_P));
      Tuple_SetItem (Args, 4, (if parent_P /= null then parent_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function activePanel (self : access Inst) return access QtAda6.QtWidgets.QGraphicsItem.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QGraphicsItem.Class := new QtAda6.QtWidgets.QGraphicsItem.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "activePanel");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end activePanel;
   function activeWindow (self : access Inst) return access QtAda6.QtWidgets.QGraphicsWidget.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QGraphicsWidget.Class := new QtAda6.QtWidgets.QGraphicsWidget.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "activeWindow");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end activeWindow;
   function addEllipse
     (self    : access Inst; rect_P : UNION_QtAda6_QtCore_QRectFQtAda6_QtCore_QRect;
      pen_P   : UNION_QtAda6_QtGui_QPenQtAda6_QtCore_Qt_PenStyleQtAda6_QtGui_QColor := null;
      brush_P : UNION_QtAda6_QtGui_QBrushQtAda6_QtCore_Qt_BrushStyleQtAda6_QtCore_Qt_GlobalColorQtAda6_QtGui_QColorQtAda6_QtGui_QGradientQtAda6_QtGui_QImageQtAda6_QtGui_QPixmap :=
        null)
      return access QtAda6.QtWidgets.QGraphicsEllipseItem.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QGraphicsEllipseItem.Class := new QtAda6.QtWidgets.QGraphicsEllipseItem.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addEllipse");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if rect_P /= null then rect_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if pen_P /= null then pen_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if brush_P /= null then brush_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end addEllipse;
   function addEllipse
     (self    : access Inst; x_P : float; y_P : float; w_P : float; h_P : float;
      pen_P   : UNION_QtAda6_QtGui_QPenQtAda6_QtCore_Qt_PenStyleQtAda6_QtGui_QColor := null;
      brush_P : UNION_QtAda6_QtGui_QBrushQtAda6_QtCore_Qt_BrushStyleQtAda6_QtCore_Qt_GlobalColorQtAda6_QtGui_QColorQtAda6_QtGui_QGradientQtAda6_QtGui_QImageQtAda6_QtGui_QPixmap :=
        null)
      return access QtAda6.QtWidgets.QGraphicsEllipseItem.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QGraphicsEllipseItem.Class := new QtAda6.QtWidgets.QGraphicsEllipseItem.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addEllipse");
      Args   := Tuple_New (6);
      Tuple_SetItem (Args, 0, Float_FromDouble (x_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (y_P));
      Tuple_SetItem (Args, 2, Float_FromDouble (w_P));
      Tuple_SetItem (Args, 3, Float_FromDouble (h_P));
      Tuple_SetItem (Args, 4, (if pen_P /= null then pen_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 5, (if brush_P /= null then brush_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end addEllipse;
   procedure addItem (self : access Inst; item_P : access QtAda6.QtWidgets.QGraphicsItem.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addItem");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if item_P /= null then item_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end addItem;
   function addLine
     (self  : access Inst; line_P : UNION_QtAda6_QtCore_QLineFQtAda6_QtCore_QLine;
      pen_P : UNION_QtAda6_QtGui_QPenQtAda6_QtCore_Qt_PenStyleQtAda6_QtGui_QColor := null)
      return access QtAda6.QtWidgets.QGraphicsLineItem.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QGraphicsLineItem.Class := new QtAda6.QtWidgets.QGraphicsLineItem.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addLine");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if line_P /= null then line_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if pen_P /= null then pen_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end addLine;
   function addLine
     (self  : access Inst; x1_P : float; y1_P : float; x2_P : float; y2_P : float;
      pen_P : UNION_QtAda6_QtGui_QPenQtAda6_QtCore_Qt_PenStyleQtAda6_QtGui_QColor := null)
      return access QtAda6.QtWidgets.QGraphicsLineItem.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QGraphicsLineItem.Class := new QtAda6.QtWidgets.QGraphicsLineItem.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addLine");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, Float_FromDouble (x1_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (y1_P));
      Tuple_SetItem (Args, 2, Float_FromDouble (x2_P));
      Tuple_SetItem (Args, 3, Float_FromDouble (y2_P));
      Tuple_SetItem (Args, 4, (if pen_P /= null then pen_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end addLine;
   function addPath
     (self    : access Inst; path_P : access QtAda6.QtGui.QPainterPath.Inst'Class;
      pen_P   : UNION_QtAda6_QtGui_QPenQtAda6_QtCore_Qt_PenStyleQtAda6_QtGui_QColor := null;
      brush_P : UNION_QtAda6_QtGui_QBrushQtAda6_QtCore_Qt_BrushStyleQtAda6_QtCore_Qt_GlobalColorQtAda6_QtGui_QColorQtAda6_QtGui_QGradientQtAda6_QtGui_QImageQtAda6_QtGui_QPixmap :=
        null)
      return access QtAda6.QtWidgets.QGraphicsPathItem.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QGraphicsPathItem.Class := new QtAda6.QtWidgets.QGraphicsPathItem.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addPath");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if path_P /= null then path_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if pen_P /= null then pen_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if brush_P /= null then brush_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end addPath;
   function addPixmap
     (self : access Inst; pixmap_P : UNION_QtAda6_QtGui_QPixmapQtAda6_QtGui_QImagestr)
      return access QtAda6.QtWidgets.QGraphicsPixmapItem.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QGraphicsPixmapItem.Class := new QtAda6.QtWidgets.QGraphicsPixmapItem.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addPixmap");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if pixmap_P /= null then pixmap_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end addPixmap;
   function addPolygon
     (self    : access Inst; polygon_P : UNION_QtAda6_QtGui_QPolygonFSEQUENCE_QtAda6_QtCore_QRectF;
      pen_P   : UNION_QtAda6_QtGui_QPenQtAda6_QtCore_Qt_PenStyleQtAda6_QtGui_QColor := null;
      brush_P : UNION_QtAda6_QtGui_QBrushQtAda6_QtCore_Qt_BrushStyleQtAda6_QtCore_Qt_GlobalColorQtAda6_QtGui_QColorQtAda6_QtGui_QGradientQtAda6_QtGui_QImageQtAda6_QtGui_QPixmap :=
        null)
      return access QtAda6.QtWidgets.QGraphicsPolygonItem.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QGraphicsPolygonItem.Class := new QtAda6.QtWidgets.QGraphicsPolygonItem.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addPolygon");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if polygon_P /= null then polygon_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if pen_P /= null then pen_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if brush_P /= null then brush_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end addPolygon;
   function addRect
     (self    : access Inst; rect_P : UNION_QtAda6_QtCore_QRectFQtAda6_QtCore_QRect;
      pen_P   : UNION_QtAda6_QtGui_QPenQtAda6_QtCore_Qt_PenStyleQtAda6_QtGui_QColor := null;
      brush_P : UNION_QtAda6_QtGui_QBrushQtAda6_QtCore_Qt_BrushStyleQtAda6_QtCore_Qt_GlobalColorQtAda6_QtGui_QColorQtAda6_QtGui_QGradientQtAda6_QtGui_QImageQtAda6_QtGui_QPixmap :=
        null)
      return access QtAda6.QtWidgets.QGraphicsRectItem.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QGraphicsRectItem.Class := new QtAda6.QtWidgets.QGraphicsRectItem.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addRect");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if rect_P /= null then rect_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if pen_P /= null then pen_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if brush_P /= null then brush_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end addRect;
   function addRect
     (self    : access Inst; x_P : float; y_P : float; w_P : float; h_P : float;
      pen_P   : UNION_QtAda6_QtGui_QPenQtAda6_QtCore_Qt_PenStyleQtAda6_QtGui_QColor := null;
      brush_P : UNION_QtAda6_QtGui_QBrushQtAda6_QtCore_Qt_BrushStyleQtAda6_QtCore_Qt_GlobalColorQtAda6_QtGui_QColorQtAda6_QtGui_QGradientQtAda6_QtGui_QImageQtAda6_QtGui_QPixmap :=
        null)
      return access QtAda6.QtWidgets.QGraphicsRectItem.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QGraphicsRectItem.Class := new QtAda6.QtWidgets.QGraphicsRectItem.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addRect");
      Args   := Tuple_New (6);
      Tuple_SetItem (Args, 0, Float_FromDouble (x_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (y_P));
      Tuple_SetItem (Args, 2, Float_FromDouble (w_P));
      Tuple_SetItem (Args, 3, Float_FromDouble (h_P));
      Tuple_SetItem (Args, 4, (if pen_P /= null then pen_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 5, (if brush_P /= null then brush_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end addRect;
   function addSimpleText
     (self : access Inst; text_P : str; font_P : UNION_QtAda6_QtGui_QFontstrSEQUENCE_str := null)
      return access QtAda6.QtWidgets.QGraphicsSimpleTextItem.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtWidgets.QGraphicsSimpleTextItem.Class :=
        new QtAda6.QtWidgets.QGraphicsSimpleTextItem.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addSimpleText");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (text_P));
      Tuple_SetItem (Args, 1, (if font_P /= null then font_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end addSimpleText;
   function addText
     (self : access Inst; text_P : str; font_P : UNION_QtAda6_QtGui_QFontstrSEQUENCE_str := null)
      return access QtAda6.QtWidgets.QGraphicsTextItem.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QGraphicsTextItem.Class := new QtAda6.QtWidgets.QGraphicsTextItem.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addText");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (text_P));
      Tuple_SetItem (Args, 1, (if font_P /= null then font_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end addText;
   function addWidget
     (self     : access Inst; widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class;
      wFlags_P : access QtAda6.QtCore.Qt.WindowType.Inst'Class := null)
      return access QtAda6.QtWidgets.QGraphicsProxyWidget.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QGraphicsProxyWidget.Class := new QtAda6.QtWidgets.QGraphicsProxyWidget.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addWidget");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if widget_P /= null then widget_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if wFlags_P /= null then wFlags_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end addWidget;
   procedure advance (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "advance");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end advance;
   function backgroundBrush (self : access Inst) return access QtAda6.QtGui.QBrush.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QBrush.Class := new QtAda6.QtGui.QBrush.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "backgroundBrush");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end backgroundBrush;
   function bspTreeDepth (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "bspTreeDepth");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end bspTreeDepth;
   procedure clear (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "clear");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end clear;
   procedure clearFocus (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "clearFocus");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end clearFocus;
   procedure clearSelection (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "clearSelection");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end clearSelection;
   function collidingItems
     (self   : access Inst; item_P : access QtAda6.QtWidgets.QGraphicsItem.Inst'Class;
      mode_P : access QtAda6.QtCore.Qt.ItemSelectionMode.Inst'Class := null) return LIST_QtAda6_QtWidgets_QGraphicsItem
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "collidingItems");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if item_P /= null then item_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if mode_P /= null then mode_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return (2 .. 1 => <>);
   end collidingItems;
   procedure contextMenuEvent
     (self : access Inst; event_P : access QtAda6.QtWidgets.QGraphicsSceneContextMenuEvent.Inst'Class)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "contextMenuEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end contextMenuEvent;
   function createItemGroup
     (self : access Inst; items_P : SEQUENCE_QtAda6_QtWidgets_QGraphicsItem)
      return access QtAda6.QtWidgets.QGraphicsItemGroup.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QGraphicsItemGroup.Class := new QtAda6.QtWidgets.QGraphicsItemGroup.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "createItemGroup");
      List   := List_New (items_P'Length);
      for ind in items_P'Range loop
         List_SetItem
           (List, ssize_t (ind - items_P'First),
            (if items_P (ind) /= null then items_P (ind).Python_Proxy else No_Value));
      end loop;
      Args := Tuple_New (1);
      Tuple_SetItem (Args, 0, List);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end createItemGroup;
   procedure destroyItemGroup (self : access Inst; group_P : access QtAda6.QtWidgets.QGraphicsItemGroup.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "destroyItemGroup");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if group_P /= null then group_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end destroyItemGroup;
   procedure dragEnterEvent
     (self : access Inst; event_P : access QtAda6.QtWidgets.QGraphicsSceneDragDropEvent.Inst'Class)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "dragEnterEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end dragEnterEvent;
   procedure dragLeaveEvent
     (self : access Inst; event_P : access QtAda6.QtWidgets.QGraphicsSceneDragDropEvent.Inst'Class)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "dragLeaveEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end dragLeaveEvent;
   procedure dragMoveEvent
     (self : access Inst; event_P : access QtAda6.QtWidgets.QGraphicsSceneDragDropEvent.Inst'Class)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "dragMoveEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end dragMoveEvent;
   procedure drawBackground
     (self   : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      rect_P : UNION_QtAda6_QtCore_QRectFQtAda6_QtCore_QRect)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawBackground");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if painter_P /= null then painter_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if rect_P /= null then rect_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end drawBackground;
   procedure drawForeground
     (self   : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      rect_P : UNION_QtAda6_QtCore_QRectFQtAda6_QtCore_QRect)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawForeground");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if painter_P /= null then painter_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if rect_P /= null then rect_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end drawForeground;
   procedure dropEvent (self : access Inst; event_P : access QtAda6.QtWidgets.QGraphicsSceneDragDropEvent.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "dropEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end dropEvent;
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
     (self    : access Inst; watched_P : access QtAda6.QtCore.QObject.Inst'Class;
      event_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "eventFilter");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if watched_P /= null then watched_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end eventFilter;
   procedure focusInEvent (self : access Inst; event_P : access QtAda6.QtGui.QFocusEvent.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "focusInEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end focusInEvent;
   function focusItem (self : access Inst) return access QtAda6.QtWidgets.QGraphicsItem.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QGraphicsItem.Class := new QtAda6.QtWidgets.QGraphicsItem.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "focusItem");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end focusItem;
   function focusNextPrevChild (self : access Inst; next_P : bool) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "focusNextPrevChild");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (next_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end focusNextPrevChild;
   function focusOnTouch (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "focusOnTouch");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end focusOnTouch;
   procedure focusOutEvent (self : access Inst; event_P : access QtAda6.QtGui.QFocusEvent.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "focusOutEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end focusOutEvent;
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
   function foregroundBrush (self : access Inst) return access QtAda6.QtGui.QBrush.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QBrush.Class := new QtAda6.QtGui.QBrush.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "foregroundBrush");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end foregroundBrush;
   function hasFocus (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hasFocus");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end hasFocus;
   function height (self : access Inst) return float is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "height");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end height;
   procedure helpEvent (self : access Inst; event_P : access QtAda6.QtWidgets.QGraphicsSceneHelpEvent.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "helpEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end helpEvent;
   procedure inputMethodEvent (self : access Inst; event_P : access QtAda6.QtGui.QInputMethodEvent.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "inputMethodEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end inputMethodEvent;
   function inputMethodQuery
     (self : access Inst; query_P : access QtAda6.QtCore.Qt.InputMethodQuery.Inst'Class) return Any
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "inputMethodQuery");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if query_P /= null then query_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return null;
   end inputMethodQuery;
   procedure invalidate
     (self     : access Inst; rect_P : UNION_QtAda6_QtCore_QRectFQtAda6_QtCore_QRect := null;
      layers_P : access QtAda6.QtWidgets.QGraphicsScene.SceneLayer.Inst'Class := null)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "invalidate");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if rect_P /= null then rect_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if layers_P /= null then layers_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end invalidate;
   procedure invalidate
     (self     : access Inst; x_P : float; y_P : float; w_P : float; h_P : float;
      layers_P : access QtAda6.QtWidgets.QGraphicsScene.SceneLayer.Inst'Class := null)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "invalidate");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, Float_FromDouble (x_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (y_P));
      Tuple_SetItem (Args, 2, Float_FromDouble (w_P));
      Tuple_SetItem (Args, 3, Float_FromDouble (h_P));
      Tuple_SetItem (Args, 4, (if layers_P /= null then layers_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end invalidate;
   function isActive (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isActive");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isActive;
   function itemAt
     (self : access Inst; pos_P : UNION_QtAda6_QtCore_QPointFQtAda6_QtCore_QPointQtAda6_QtGui_QPainterPath_Element;
      deviceTransform_P : access QtAda6.QtGui.QTransform.Inst'Class)
      return access QtAda6.QtWidgets.QGraphicsItem.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QGraphicsItem.Class := new QtAda6.QtWidgets.QGraphicsItem.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "itemAt");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if pos_P /= null then pos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if deviceTransform_P /= null then deviceTransform_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end itemAt;
   function itemAt
     (self : access Inst; x_P : float; y_P : float; deviceTransform_P : access QtAda6.QtGui.QTransform.Inst'Class)
      return access QtAda6.QtWidgets.QGraphicsItem.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QGraphicsItem.Class := new QtAda6.QtWidgets.QGraphicsItem.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "itemAt");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Float_FromDouble (x_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (y_P));
      Tuple_SetItem (Args, 2, (if deviceTransform_P /= null then deviceTransform_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end itemAt;
   function itemIndexMethod_F
     (self : access Inst) return access QtAda6.QtWidgets.QGraphicsScene.ItemIndexMethod.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtWidgets.QGraphicsScene.ItemIndexMethod.Class :=
        new QtAda6.QtWidgets.QGraphicsScene.ItemIndexMethod.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "itemIndexMethod");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end itemIndexMethod_F;
   function items
     (self : access Inst; order_P : access QtAda6.QtCore.Qt.SortOrder.Inst'Class := null)
      return LIST_QtAda6_QtWidgets_QGraphicsItem
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "items");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if order_P /= null then order_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return (2 .. 1 => <>);
   end items;
   function items
     (self              : access Inst; path_P : access QtAda6.QtGui.QPainterPath.Inst'Class;
      mode_P            : access QtAda6.QtCore.Qt.ItemSelectionMode.Inst'Class := null;
      order_P           : access QtAda6.QtCore.Qt.SortOrder.Inst'Class         := null;
      deviceTransform_P : access QtAda6.QtGui.QTransform.Inst'Class := null) return LIST_QtAda6_QtWidgets_QGraphicsItem
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "items");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if path_P /= null then path_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if mode_P /= null then mode_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if order_P /= null then order_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if deviceTransform_P /= null then deviceTransform_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return (2 .. 1 => <>);
   end items;
   function items
     (self              : access Inst; polygon_P : UNION_QtAda6_QtGui_QPolygonFSEQUENCE_QtAda6_QtCore_QRectF;
      mode_P            : access QtAda6.QtCore.Qt.ItemSelectionMode.Inst'Class := null;
      order_P           : access QtAda6.QtCore.Qt.SortOrder.Inst'Class         := null;
      deviceTransform_P : access QtAda6.QtGui.QTransform.Inst'Class := null) return LIST_QtAda6_QtWidgets_QGraphicsItem
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "items");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if polygon_P /= null then polygon_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if mode_P /= null then mode_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if order_P /= null then order_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if deviceTransform_P /= null then deviceTransform_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return (2 .. 1 => <>);
   end items;
   function items
     (self : access Inst; pos_P : UNION_QtAda6_QtCore_QPointFQtAda6_QtCore_QPointQtAda6_QtGui_QPainterPath_Element;
      mode_P            : access QtAda6.QtCore.Qt.ItemSelectionMode.Inst'Class := null;
      order_P           : access QtAda6.QtCore.Qt.SortOrder.Inst'Class         := null;
      deviceTransform_P : access QtAda6.QtGui.QTransform.Inst'Class := null) return LIST_QtAda6_QtWidgets_QGraphicsItem
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "items");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if pos_P /= null then pos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if mode_P /= null then mode_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if order_P /= null then order_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if deviceTransform_P /= null then deviceTransform_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return (2 .. 1 => <>);
   end items;
   function items
     (self              : access Inst; rect_P : UNION_QtAda6_QtCore_QRectFQtAda6_QtCore_QRect;
      mode_P            : access QtAda6.QtCore.Qt.ItemSelectionMode.Inst'Class := null;
      order_P           : access QtAda6.QtCore.Qt.SortOrder.Inst'Class         := null;
      deviceTransform_P : access QtAda6.QtGui.QTransform.Inst'Class := null) return LIST_QtAda6_QtWidgets_QGraphicsItem
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "items");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if rect_P /= null then rect_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if mode_P /= null then mode_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if order_P /= null then order_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if deviceTransform_P /= null then deviceTransform_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return (2 .. 1 => <>);
   end items;
   function items
     (self              : access Inst; x_P : float; y_P : float; w_P : float; h_P : float;
      mode_P            : access QtAda6.QtCore.Qt.ItemSelectionMode.Inst'Class;
      order_P           : access QtAda6.QtCore.Qt.SortOrder.Inst'Class;
      deviceTransform_P : access QtAda6.QtGui.QTransform.Inst'Class := null) return LIST_QtAda6_QtWidgets_QGraphicsItem
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "items");
      Args   := Tuple_New (7);
      Tuple_SetItem (Args, 0, Float_FromDouble (x_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (y_P));
      Tuple_SetItem (Args, 2, Float_FromDouble (w_P));
      Tuple_SetItem (Args, 3, Float_FromDouble (h_P));
      Tuple_SetItem (Args, 4, (if mode_P /= null then mode_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 5, (if order_P /= null then order_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 6, (if deviceTransform_P /= null then deviceTransform_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return (2 .. 1 => <>);
   end items;
   function itemsBoundingRect (self : access Inst) return access QtAda6.QtCore.QRectF.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QRectF.Class := new QtAda6.QtCore.QRectF.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "itemsBoundingRect");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end itemsBoundingRect;
   procedure keyPressEvent (self : access Inst; event_P : access QtAda6.QtGui.QKeyEvent.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "keyPressEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end keyPressEvent;
   procedure keyReleaseEvent (self : access Inst; event_P : access QtAda6.QtGui.QKeyEvent.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "keyReleaseEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end keyReleaseEvent;
   function minimumRenderSize (self : access Inst) return float is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "minimumRenderSize");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end minimumRenderSize;
   procedure mouseDoubleClickEvent
     (self : access Inst; event_P : access QtAda6.QtWidgets.QGraphicsSceneMouseEvent.Inst'Class)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mouseDoubleClickEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end mouseDoubleClickEvent;
   function mouseGrabberItem (self : access Inst) return access QtAda6.QtWidgets.QGraphicsItem.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QGraphicsItem.Class := new QtAda6.QtWidgets.QGraphicsItem.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "mouseGrabberItem");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mouseGrabberItem;
   procedure mouseMoveEvent (self : access Inst; event_P : access QtAda6.QtWidgets.QGraphicsSceneMouseEvent.Inst'Class)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mouseMoveEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end mouseMoveEvent;
   procedure mousePressEvent (self : access Inst; event_P : access QtAda6.QtWidgets.QGraphicsSceneMouseEvent.Inst'Class)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mousePressEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end mousePressEvent;
   procedure mouseReleaseEvent
     (self : access Inst; event_P : access QtAda6.QtWidgets.QGraphicsSceneMouseEvent.Inst'Class)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mouseReleaseEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end mouseReleaseEvent;
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
   procedure removeItem (self : access Inst; item_P : access QtAda6.QtWidgets.QGraphicsItem.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "removeItem");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if item_P /= null then item_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end removeItem;
   procedure render
     (self              : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      target_P          : UNION_QtAda6_QtCore_QRectFQtAda6_QtCore_QRect      := null;
      source_P          : UNION_QtAda6_QtCore_QRectFQtAda6_QtCore_QRect      := null;
      aspectRatioMode_P : access QtAda6.QtCore.Qt.AspectRatioMode.Inst'Class := null)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "render");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if painter_P /= null then painter_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if target_P /= null then target_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if source_P /= null then source_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if aspectRatioMode_P /= null then aspectRatioMode_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end render;
   function sceneRect (self : access Inst) return access QtAda6.QtCore.QRectF.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QRectF.Class := new QtAda6.QtCore.QRectF.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "sceneRect");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end sceneRect;
   function selectedItems (self : access Inst) return LIST_QtAda6_QtWidgets_QGraphicsItem is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "selectedItems");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return (2 .. 1 => <>);
   end selectedItems;
   function selectionArea (self : access Inst) return access QtAda6.QtGui.QPainterPath.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QPainterPath.Class := new QtAda6.QtGui.QPainterPath.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "selectionArea");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end selectionArea;
   function sendEvent
     (self    : access Inst; item_P : access QtAda6.QtWidgets.QGraphicsItem.Inst'Class;
      event_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "sendEvent");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if item_P /= null then item_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end sendEvent;
   procedure setActivePanel (self : access Inst; item_P : access QtAda6.QtWidgets.QGraphicsItem.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setActivePanel");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if item_P /= null then item_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setActivePanel;
   procedure setActiveWindow (self : access Inst; widget_P : access QtAda6.QtWidgets.QGraphicsWidget.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setActiveWindow");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if widget_P /= null then widget_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setActiveWindow;
   procedure setBackgroundBrush
     (self    : access Inst;
      brush_P : UNION_QtAda6_QtGui_QBrushQtAda6_QtCore_Qt_BrushStyleQtAda6_QtCore_Qt_GlobalColorQtAda6_QtGui_QColorQtAda6_QtGui_QGradientQtAda6_QtGui_QImageQtAda6_QtGui_QPixmap)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setBackgroundBrush");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if brush_P /= null then brush_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setBackgroundBrush;
   procedure setBspTreeDepth (self : access Inst; depth_P : int) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setBspTreeDepth");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (depth_P));
      Result := Object_CallObject (Method, Args, True);
   end setBspTreeDepth;
   procedure setFocus (self : access Inst; focusReason_P : access QtAda6.QtCore.Qt.FocusReason.Inst'Class := null) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFocus");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if focusReason_P /= null then focusReason_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setFocus;
   procedure setFocusItem
     (self          : access Inst; item_P : access QtAda6.QtWidgets.QGraphicsItem.Inst'Class;
      focusReason_P : access QtAda6.QtCore.Qt.FocusReason.Inst'Class := null)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFocusItem");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if item_P /= null then item_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if focusReason_P /= null then focusReason_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setFocusItem;
   procedure setFocusOnTouch (self : access Inst; enabled_P : bool) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFocusOnTouch");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (enabled_P));
      Result := Object_CallObject (Method, Args, True);
   end setFocusOnTouch;
   procedure setFont (self : access Inst; font_P : UNION_QtAda6_QtGui_QFontstrSEQUENCE_str) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFont");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if font_P /= null then font_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setFont;
   procedure setForegroundBrush
     (self    : access Inst;
      brush_P : UNION_QtAda6_QtGui_QBrushQtAda6_QtCore_Qt_BrushStyleQtAda6_QtCore_Qt_GlobalColorQtAda6_QtGui_QColorQtAda6_QtGui_QGradientQtAda6_QtGui_QImageQtAda6_QtGui_QPixmap)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setForegroundBrush");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if brush_P /= null then brush_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setForegroundBrush;
   procedure setItemIndexMethod
     (self : access Inst; method_P : access QtAda6.QtWidgets.QGraphicsScene.ItemIndexMethod.Inst'Class)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setItemIndexMethod");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if method_P /= null then method_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setItemIndexMethod;
   procedure setMinimumRenderSize (self : access Inst; minSize_P : float) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setMinimumRenderSize");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (minSize_P));
      Result := Object_CallObject (Method, Args, True);
   end setMinimumRenderSize;
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
   procedure setSceneRect (self : access Inst; rect_P : UNION_QtAda6_QtCore_QRectFQtAda6_QtCore_QRect) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setSceneRect");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if rect_P /= null then rect_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setSceneRect;
   procedure setSceneRect (self : access Inst; x_P : float; y_P : float; w_P : float; h_P : float) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setSceneRect");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Float_FromDouble (x_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (y_P));
      Tuple_SetItem (Args, 2, Float_FromDouble (w_P));
      Tuple_SetItem (Args, 3, Float_FromDouble (h_P));
      Result := Object_CallObject (Method, Args, True);
   end setSceneRect;
   procedure setSelectionArea
     (self              : access Inst; path_P : access QtAda6.QtGui.QPainterPath.Inst'Class;
      deviceTransform_P : access QtAda6.QtGui.QTransform.Inst'Class)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setSelectionArea");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if path_P /= null then path_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if deviceTransform_P /= null then deviceTransform_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setSelectionArea;
   procedure setSelectionArea
     (self                 : access Inst; path_P : access QtAda6.QtGui.QPainterPath.Inst'Class;
      selectionOperation_P : access QtAda6.QtCore.Qt.ItemSelectionOperation.Inst'Class := null;
      mode_P               : access QtAda6.QtCore.Qt.ItemSelectionMode.Inst'Class      := null;
      deviceTransform_P    : access QtAda6.QtGui.QTransform.Inst'Class                 := null)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setSelectionArea");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if path_P /= null then path_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if selectionOperation_P /= null then selectionOperation_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if mode_P /= null then mode_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if deviceTransform_P /= null then deviceTransform_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setSelectionArea;
   procedure setStickyFocus (self : access Inst; enabled_P : bool) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setStickyFocus");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (enabled_P));
      Result := Object_CallObject (Method, Args, True);
   end setStickyFocus;
   procedure setStyle (self : access Inst; style_P : access QtAda6.QtWidgets.QStyle.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setStyle");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if style_P /= null then style_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setStyle;
   function stickyFocus (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "stickyFocus");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end stickyFocus;
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
   procedure update (self : access Inst; rect_P : UNION_QtAda6_QtCore_QRectFQtAda6_QtCore_QRect := null) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "update");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if rect_P /= null then rect_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end update;
   procedure update (self : access Inst; x_P : float; y_P : float; w_P : float; h_P : float) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "update");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Float_FromDouble (x_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (y_P));
      Tuple_SetItem (Args, 2, Float_FromDouble (w_P));
      Tuple_SetItem (Args, 3, Float_FromDouble (h_P));
      Result := Object_CallObject (Method, Args, True);
   end update;
   function views (self : access Inst) return LIST_QtAda6_QtWidgets_QGraphicsView is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "views");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return (2 .. 1 => <>);
   end views;
   procedure wheelEvent (self : access Inst; event_P : access QtAda6.QtWidgets.QGraphicsSceneWheelEvent.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "wheelEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end wheelEvent;
   function width (self : access Inst) return float is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "width");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end width;
end QtAda6.QtWidgets.QGraphicsScene;
