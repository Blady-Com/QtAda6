-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qgraphicspolygonitem.adb
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
with QtAda6.QtWidgets.QGraphicsItem;
with QtAda6.QtCore.QRectF;
with QtAda6.QtCore.Qt.FillRule;
with QtAda6.QtGui.QPainterPath;
with QtAda6.QtGui.QPainter;
with QtAda6.QtWidgets.QStyleOptionGraphicsItem;
with QtAda6.QtWidgets.QWidget;
with QtAda6.QtGui.QPolygonF;
package body QtAda6.QtWidgets.QGraphicsPolygonItem is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create (parent_P : access QtAda6.QtWidgets.QGraphicsItem.Inst'Class := null) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QGraphicsPolygonItem");
      Args  := Tuple_New (0);
      Dict  := Dict_New;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (polygon_P : UNION_QtAda6_QtGui_QPolygonF_SEQUENCE_QtAda6_QtCore_QRectF;
      parent_P  : access QtAda6.QtWidgets.QGraphicsItem.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QGraphicsPolygonItem");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if polygon_P /= null then polygon_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function boundingRect (self : access Inst) return access QtAda6.QtCore.QRectF.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QRectF.Class := new QtAda6.QtCore.QRectF.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "boundingRect");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end boundingRect;
   function contains
     (self : access Inst; point_P : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element)
      return bool
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "contains");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if point_P /= null then point_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end contains;
   function extension (self : access Inst; variant_P : Any) return Any is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "extension");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if variant_P /= null then variant_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return null;
   end extension;
   function fillRule (self : access Inst) return access QtAda6.QtCore.Qt.FillRule.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.FillRule.Class := new QtAda6.QtCore.Qt.FillRule.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "fillRule");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fillRule;
   function isObscuredBy (self : access Inst; item_P : access QtAda6.QtWidgets.QGraphicsItem.Inst'Class) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isObscuredBy");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if item_P /= null then item_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isObscuredBy;
   function opaqueArea (self : access Inst) return access QtAda6.QtGui.QPainterPath.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QPainterPath.Class := new QtAda6.QtGui.QPainterPath.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "opaqueArea");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end opaqueArea;
   procedure paint
     (self     : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      option_P : access QtAda6.QtWidgets.QStyleOptionGraphicsItem.Inst'Class;
      widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "paint");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if painter_P /= null then painter_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if option_P /= null then option_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if widget_P /= null then
         Dict_SetItemString (Dict, "widget", widget_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end paint;
   function polygon (self : access Inst) return access QtAda6.QtGui.QPolygonF.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QPolygonF.Class := new QtAda6.QtGui.QPolygonF.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "polygon");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end polygon;
   procedure setFillRule (self : access Inst; rule_P : access QtAda6.QtCore.Qt.FillRule.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFillRule");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if rule_P /= null then rule_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setFillRule;
   procedure setPolygon (self : access Inst; polygon_P : UNION_QtAda6_QtGui_QPolygonF_SEQUENCE_QtAda6_QtCore_QRectF) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPolygon");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if polygon_P /= null then polygon_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPolygon;
   function shape (self : access Inst) return access QtAda6.QtGui.QPainterPath.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QPainterPath.Class := new QtAda6.QtGui.QPainterPath.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "shape");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end shape;
   function type_K (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "type");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end type_K;
end QtAda6.QtWidgets.QGraphicsPolygonItem;
