-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qpainterpath.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Py; use Py;
with Ada.Unchecked_Deallocation;
with QtAda6.QtCore.QPointF;
with QtAda6.QtCore.QPoint;
with QtAda6.QtGui.QPainterPath.Element;
with QtAda6.QtCore.QDataStream;
with QtAda6.QtGui.QTransform;
with QtAda6.QtCore.QRectF;
with QtAda6.QtCore.QRect;
with QtAda6.QtGui.QPolygonF;
with QtAda6.QtGui.QRegion;
with QtAda6.QtGui.QBitmap;
with QtAda6.QtGui.QPolygon;
with QtAda6.QtCore.Qt.SizeMode;
with QtAda6.QtGui.QFont;
with QtAda6.QtCore.Qt.FillRule;
package body QtAda6.QtGui.QPainterPath is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create return Class is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPainterPath");
      Args  := Tuple_New (0);
      Dict  := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (other_P : access QtAda6.QtGui.QPainterPath.Inst'Class) return Class is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPainterPath");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if other_P /= null then other_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (startPoint_P : access QtAda6.QtCore.QPointF.Inst'Class) return Class is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPainterPath");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if startPoint_P /= null then startPoint_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (startPoint_P : access QtAda6.QtCore.QPoint.Inst'Class) return Class is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPainterPath");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if startPoint_P /= null then startPoint_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (startPoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class) return Class is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPainterPath");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if startPoint_P /= null then startPoint_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function U_add_U
     (self : access Inst; other_P : access QtAda6.QtGui.QPainterPath.Inst'Class)
      return access QtAda6.QtGui.QPainterPath.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QPainterPath.Class := new QtAda6.QtGui.QPainterPath.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__add__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if other_P /= null then other_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_add_U;
   function U_and_U
     (self : access Inst; other_P : access QtAda6.QtGui.QPainterPath.Inst'Class)
      return access QtAda6.QtGui.QPainterPath.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QPainterPath.Class := new QtAda6.QtGui.QPainterPath.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__and__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if other_P /= null then other_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_and_U;
   procedure U_copy_U is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPainterPath");
      Method := Object_GetAttrString (Class, "__copy__");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end U_copy_U;
   function U_iadd_U
     (self : access Inst; other_P : access QtAda6.QtGui.QPainterPath.Inst'Class)
      return access QtAda6.QtGui.QPainterPath.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QPainterPath.Class := new QtAda6.QtGui.QPainterPath.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__iadd__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if other_P /= null then other_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_iadd_U;
   function U_iand_U
     (self : access Inst; other_P : access QtAda6.QtGui.QPainterPath.Inst'Class)
      return access QtAda6.QtGui.QPainterPath.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QPainterPath.Class := new QtAda6.QtGui.QPainterPath.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__iand__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if other_P /= null then other_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_iand_U;
   function U_ior_U
     (self : access Inst; other_P : access QtAda6.QtGui.QPainterPath.Inst'Class)
      return access QtAda6.QtGui.QPainterPath.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QPainterPath.Class := new QtAda6.QtGui.QPainterPath.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__ior__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if other_P /= null then other_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_ior_U;
   function U_isub_U
     (self : access Inst; other_P : access QtAda6.QtGui.QPainterPath.Inst'Class)
      return access QtAda6.QtGui.QPainterPath.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QPainterPath.Class := new QtAda6.QtGui.QPainterPath.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__isub__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if other_P /= null then other_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_isub_U;
   function U_lshift_U
     (self : access Inst; arg_1_P : access QtAda6.QtCore.QDataStream.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QDataStream.Class := new QtAda6.QtCore.QDataStream.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__lshift__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_lshift_U;
   function U_mul_U
     (self : access Inst; m_P : access QtAda6.QtGui.QTransform.Inst'Class)
      return access QtAda6.QtGui.QPainterPath.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QPainterPath.Class := new QtAda6.QtGui.QPainterPath.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__mul__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if m_P /= null then m_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_mul_U;
   function U_or_U
     (self : access Inst; other_P : access QtAda6.QtGui.QPainterPath.Inst'Class)
      return access QtAda6.QtGui.QPainterPath.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QPainterPath.Class := new QtAda6.QtGui.QPainterPath.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__or__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if other_P /= null then other_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_or_U;
   function U_rshift_U
     (self : access Inst; arg_1_P : access QtAda6.QtCore.QDataStream.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QDataStream.Class := new QtAda6.QtCore.QDataStream.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__rshift__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_rshift_U;
   function U_sub_U
     (self : access Inst; other_P : access QtAda6.QtGui.QPainterPath.Inst'Class)
      return access QtAda6.QtGui.QPainterPath.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QPainterPath.Class := new QtAda6.QtGui.QPainterPath.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__sub__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if other_P /= null then other_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_sub_U;
   procedure addEllipse
     (self : access Inst; center_P : access QtAda6.QtCore.QPointF.Inst'Class; rx_P : float; ry_P : float)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addEllipse");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if center_P /= null then center_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Float_FromDouble (rx_P));
      Tuple_SetItem (Args, 2, Float_FromDouble (ry_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end addEllipse;
   procedure addEllipse
     (self : access Inst; center_P : access QtAda6.QtCore.QPoint.Inst'Class; rx_P : float; ry_P : float)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addEllipse");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if center_P /= null then center_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Float_FromDouble (rx_P));
      Tuple_SetItem (Args, 2, Float_FromDouble (ry_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end addEllipse;
   procedure addEllipse
     (self : access Inst; center_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class; rx_P : float; ry_P : float)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addEllipse");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if center_P /= null then center_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Float_FromDouble (rx_P));
      Tuple_SetItem (Args, 2, Float_FromDouble (ry_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end addEllipse;
   procedure addEllipse (self : access Inst; rect_P : access QtAda6.QtCore.QRectF.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addEllipse");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if rect_P /= null then rect_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end addEllipse;
   procedure addEllipse (self : access Inst; rect_P : access QtAda6.QtCore.QRect.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addEllipse");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if rect_P /= null then rect_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end addEllipse;
   procedure addEllipse (self : access Inst; x_P : float; y_P : float; w_P : float; h_P : float) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addEllipse");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Float_FromDouble (x_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (y_P));
      Tuple_SetItem (Args, 2, Float_FromDouble (w_P));
      Tuple_SetItem (Args, 3, Float_FromDouble (h_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end addEllipse;
   procedure addPath (self : access Inst; path_P : access QtAda6.QtGui.QPainterPath.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addPath");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if path_P /= null then path_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end addPath;
   procedure addPolygon (self : access Inst; polygon_P : access QtAda6.QtGui.QPolygonF.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addPolygon");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if polygon_P /= null then polygon_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end addPolygon;
   procedure addPolygon (self : access Inst; polygon_P : SEQUENCE_QtAda6_QtCore_QRectF) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addPolygon");
      Args   := Tuple_New (1);
      List   := List_New (polygon_P'Length);
      for ind in polygon_P'Range loop
         List_SetItem
           (List, ssize_t (ind - polygon_P'First),
            (if polygon_P (ind) /= null then polygon_P (ind).Python_Proxy else No_Value));
      end loop;
      Tuple_SetItem (Args, 0, List);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end addPolygon;
   procedure addRect (self : access Inst; rect_P : access QtAda6.QtCore.QRectF.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addRect");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if rect_P /= null then rect_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end addRect;
   procedure addRect (self : access Inst; rect_P : access QtAda6.QtCore.QRect.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addRect");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if rect_P /= null then rect_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end addRect;
   procedure addRect (self : access Inst; x_P : float; y_P : float; w_P : float; h_P : float) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addRect");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Float_FromDouble (x_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (y_P));
      Tuple_SetItem (Args, 2, Float_FromDouble (w_P));
      Tuple_SetItem (Args, 3, Float_FromDouble (h_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end addRect;
   procedure addRegion (self : access Inst; region_P : access QtAda6.QtGui.QRegion.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addRegion");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if region_P /= null then region_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end addRegion;
   procedure addRegion (self : access Inst; region_P : access QtAda6.QtGui.QBitmap.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addRegion");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if region_P /= null then region_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end addRegion;
   procedure addRegion (self : access Inst; region_P : access QtAda6.QtGui.QPolygon.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addRegion");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if region_P /= null then region_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end addRegion;
   procedure addRegion (self : access Inst; region_P : access QtAda6.QtCore.QRect.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addRegion");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if region_P /= null then region_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end addRegion;
   procedure addRoundedRect
     (self   : access Inst; rect_P : access QtAda6.QtCore.QRectF.Inst'Class; xRadius_P : float; yRadius_P : float;
      mode_P : access QtAda6.QtCore.Qt.SizeMode.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addRoundedRect");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if rect_P /= null then rect_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Float_FromDouble (xRadius_P));
      Tuple_SetItem (Args, 2, Float_FromDouble (yRadius_P));
      Dict := Dict_New;
      if mode_P /= null then
         Dict_SetItemString (Dict, "mode", mode_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end addRoundedRect;
   procedure addRoundedRect
     (self   : access Inst; rect_P : access QtAda6.QtCore.QRect.Inst'Class; xRadius_P : float; yRadius_P : float;
      mode_P : access QtAda6.QtCore.Qt.SizeMode.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addRoundedRect");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if rect_P /= null then rect_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Float_FromDouble (xRadius_P));
      Tuple_SetItem (Args, 2, Float_FromDouble (yRadius_P));
      Dict := Dict_New;
      if mode_P /= null then
         Dict_SetItemString (Dict, "mode", mode_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end addRoundedRect;
   procedure addRoundedRect
     (self   : access Inst; x_P : float; y_P : float; w_P : float; h_P : float; xRadius_P : float; yRadius_P : float;
      mode_P : access QtAda6.QtCore.Qt.SizeMode.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addRoundedRect");
      Args   := Tuple_New (6);
      Tuple_SetItem (Args, 0, Float_FromDouble (x_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (y_P));
      Tuple_SetItem (Args, 2, Float_FromDouble (w_P));
      Tuple_SetItem (Args, 3, Float_FromDouble (h_P));
      Tuple_SetItem (Args, 4, Float_FromDouble (xRadius_P));
      Tuple_SetItem (Args, 5, Float_FromDouble (yRadius_P));
      Dict := Dict_New;
      if mode_P /= null then
         Dict_SetItemString (Dict, "mode", mode_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end addRoundedRect;
   procedure addText
     (self : access Inst; point_P : access QtAda6.QtCore.QPointF.Inst'Class; f_P : access QtAda6.QtGui.QFont.Inst'Class;
      text_P : str)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addText");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if point_P /= null then point_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if f_P /= null then f_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, Unicode_FromString (text_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end addText;
   procedure addText (self : access Inst; point_P : access QtAda6.QtCore.QPointF.Inst'Class; f_P : str; text_P : str) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addText");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if point_P /= null then point_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Unicode_FromString (f_P));
      Tuple_SetItem (Args, 2, Unicode_FromString (text_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end addText;
   procedure addText
     (self : access Inst; point_P : access QtAda6.QtCore.QPointF.Inst'Class; f_P : SEQUENCE_str; text_P : str)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addText");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if point_P /= null then point_P.Python_Proxy else No_Value));
      List := List_New (f_P'Length);
      for ind in f_P'Range loop
         List_SetItem (List, ssize_t (ind - f_P'First), Unicode_FromString (f_P (ind)));
      end loop;
      Tuple_SetItem (Args, 1, List);
      Tuple_SetItem (Args, 2, Unicode_FromString (text_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end addText;
   procedure addText
     (self : access Inst; point_P : access QtAda6.QtCore.QPoint.Inst'Class; f_P : access QtAda6.QtGui.QFont.Inst'Class;
      text_P : str)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addText");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if point_P /= null then point_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if f_P /= null then f_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, Unicode_FromString (text_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end addText;
   procedure addText (self : access Inst; point_P : access QtAda6.QtCore.QPoint.Inst'Class; f_P : str; text_P : str) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addText");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if point_P /= null then point_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Unicode_FromString (f_P));
      Tuple_SetItem (Args, 2, Unicode_FromString (text_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end addText;
   procedure addText
     (self : access Inst; point_P : access QtAda6.QtCore.QPoint.Inst'Class; f_P : SEQUENCE_str; text_P : str)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addText");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if point_P /= null then point_P.Python_Proxy else No_Value));
      List := List_New (f_P'Length);
      for ind in f_P'Range loop
         List_SetItem (List, ssize_t (ind - f_P'First), Unicode_FromString (f_P (ind)));
      end loop;
      Tuple_SetItem (Args, 1, List);
      Tuple_SetItem (Args, 2, Unicode_FromString (text_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end addText;
   procedure addText
     (self : access Inst; point_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      f_P  : access QtAda6.QtGui.QFont.Inst'Class; text_P : str)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addText");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if point_P /= null then point_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if f_P /= null then f_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, Unicode_FromString (text_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end addText;
   procedure addText
     (self : access Inst; point_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class; f_P : str; text_P : str)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addText");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if point_P /= null then point_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Unicode_FromString (f_P));
      Tuple_SetItem (Args, 2, Unicode_FromString (text_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end addText;
   procedure addText
     (self   : access Inst; point_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class; f_P : SEQUENCE_str;
      text_P : str)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addText");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if point_P /= null then point_P.Python_Proxy else No_Value));
      List := List_New (f_P'Length);
      for ind in f_P'Range loop
         List_SetItem (List, ssize_t (ind - f_P'First), Unicode_FromString (f_P (ind)));
      end loop;
      Tuple_SetItem (Args, 1, List);
      Tuple_SetItem (Args, 2, Unicode_FromString (text_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end addText;
   procedure addText
     (self : access Inst; x_P : float; y_P : float; f_P : access QtAda6.QtGui.QFont.Inst'Class; text_P : str)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addText");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Float_FromDouble (x_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (y_P));
      Tuple_SetItem (Args, 2, (if f_P /= null then f_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, Unicode_FromString (text_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end addText;
   procedure addText (self : access Inst; x_P : float; y_P : float; f_P : str; text_P : str) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addText");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Float_FromDouble (x_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (y_P));
      Tuple_SetItem (Args, 2, Unicode_FromString (f_P));
      Tuple_SetItem (Args, 3, Unicode_FromString (text_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end addText;
   procedure addText (self : access Inst; x_P : float; y_P : float; f_P : SEQUENCE_str; text_P : str) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addText");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Float_FromDouble (x_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (y_P));
      List := List_New (f_P'Length);
      for ind in f_P'Range loop
         List_SetItem (List, ssize_t (ind - f_P'First), Unicode_FromString (f_P (ind)));
      end loop;
      Tuple_SetItem (Args, 2, List);
      Tuple_SetItem (Args, 3, Unicode_FromString (text_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end addText;
   function angleAtPercent (self : access Inst; t_P : float) return float is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "angleAtPercent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (t_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Float_AsDouble (Result);
   end angleAtPercent;
   procedure arcMoveTo (self : access Inst; rect_P : access QtAda6.QtCore.QRectF.Inst'Class; angle_P : float) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "arcMoveTo");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if rect_P /= null then rect_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Float_FromDouble (angle_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end arcMoveTo;
   procedure arcMoveTo (self : access Inst; rect_P : access QtAda6.QtCore.QRect.Inst'Class; angle_P : float) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "arcMoveTo");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if rect_P /= null then rect_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Float_FromDouble (angle_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end arcMoveTo;
   procedure arcMoveTo (self : access Inst; x_P : float; y_P : float; w_P : float; h_P : float; angle_P : float) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "arcMoveTo");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, Float_FromDouble (x_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (y_P));
      Tuple_SetItem (Args, 2, Float_FromDouble (w_P));
      Tuple_SetItem (Args, 3, Float_FromDouble (h_P));
      Tuple_SetItem (Args, 4, Float_FromDouble (angle_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end arcMoveTo;
   procedure arcTo
     (self : access Inst; rect_P : access QtAda6.QtCore.QRectF.Inst'Class; startAngle_P : float; arcLength_P : float)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "arcTo");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if rect_P /= null then rect_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Float_FromDouble (startAngle_P));
      Tuple_SetItem (Args, 2, Float_FromDouble (arcLength_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end arcTo;
   procedure arcTo
     (self : access Inst; rect_P : access QtAda6.QtCore.QRect.Inst'Class; startAngle_P : float; arcLength_P : float)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "arcTo");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if rect_P /= null then rect_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Float_FromDouble (startAngle_P));
      Tuple_SetItem (Args, 2, Float_FromDouble (arcLength_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end arcTo;
   procedure arcTo
     (self : access Inst; x_P : float; y_P : float; w_P : float; h_P : float; startAngle_P : float; arcLength_P : float)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "arcTo");
      Args   := Tuple_New (6);
      Tuple_SetItem (Args, 0, Float_FromDouble (x_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (y_P));
      Tuple_SetItem (Args, 2, Float_FromDouble (w_P));
      Tuple_SetItem (Args, 3, Float_FromDouble (h_P));
      Tuple_SetItem (Args, 4, Float_FromDouble (startAngle_P));
      Tuple_SetItem (Args, 5, Float_FromDouble (arcLength_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end arcTo;
   function boundingRect (self : access Inst) return access QtAda6.QtCore.QRectF.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QRectF.Class := new QtAda6.QtCore.QRectF.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "boundingRect");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end boundingRect;
   function capacity (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "capacity");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end capacity;
   procedure clear (self : access Inst) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "clear");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end clear;
   procedure closeSubpath (self : access Inst) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "closeSubpath");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end closeSubpath;
   procedure connectPath (self : access Inst; path_P : access QtAda6.QtGui.QPainterPath.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "connectPath");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if path_P /= null then path_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end connectPath;
   function contains (self : access Inst; p_P : access QtAda6.QtGui.QPainterPath.Inst'Class) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "contains");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if p_P /= null then p_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end contains;
   function contains (self : access Inst; pt_P : access QtAda6.QtCore.QPointF.Inst'Class) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "contains");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if pt_P /= null then pt_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end contains;
   function contains (self : access Inst; pt_P : access QtAda6.QtCore.QPoint.Inst'Class) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "contains");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if pt_P /= null then pt_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end contains;
   function contains (self : access Inst; pt_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "contains");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if pt_P /= null then pt_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end contains;
   function contains (self : access Inst; rect_P : access QtAda6.QtCore.QRectF.Inst'Class) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "contains");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if rect_P /= null then rect_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end contains;
   function contains (self : access Inst; rect_P : access QtAda6.QtCore.QRect.Inst'Class) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "contains");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if rect_P /= null then rect_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end contains;
   function controlPointRect (self : access Inst) return access QtAda6.QtCore.QRectF.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QRectF.Class := new QtAda6.QtCore.QRectF.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "controlPointRect");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end controlPointRect;
   procedure cubicTo
     (self      : access Inst; ctrlPt1_P : access QtAda6.QtCore.QPointF.Inst'Class;
      ctrlPt2_P : access QtAda6.QtCore.QPointF.Inst'Class; endPt_P : access QtAda6.QtCore.QPointF.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "cubicTo");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if ctrlPt1_P /= null then ctrlPt1_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if ctrlPt2_P /= null then ctrlPt2_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if endPt_P /= null then endPt_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end cubicTo;
   procedure cubicTo
     (self      : access Inst; ctrlPt1_P : access QtAda6.QtCore.QPointF.Inst'Class;
      ctrlPt2_P : access QtAda6.QtCore.QPointF.Inst'Class; endPt_P : access QtAda6.QtCore.QPoint.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "cubicTo");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if ctrlPt1_P /= null then ctrlPt1_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if ctrlPt2_P /= null then ctrlPt2_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if endPt_P /= null then endPt_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end cubicTo;
   procedure cubicTo
     (self      : access Inst; ctrlPt1_P : access QtAda6.QtCore.QPointF.Inst'Class;
      ctrlPt2_P : access QtAda6.QtCore.QPointF.Inst'Class;
      endPt_P   : access QtAda6.QtGui.QPainterPath.Element.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "cubicTo");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if ctrlPt1_P /= null then ctrlPt1_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if ctrlPt2_P /= null then ctrlPt2_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if endPt_P /= null then endPt_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end cubicTo;
   procedure cubicTo
     (self      : access Inst; ctrlPt1_P : access QtAda6.QtCore.QPointF.Inst'Class;
      ctrlPt2_P : access QtAda6.QtCore.QPoint.Inst'Class; endPt_P : access QtAda6.QtCore.QPointF.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "cubicTo");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if ctrlPt1_P /= null then ctrlPt1_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if ctrlPt2_P /= null then ctrlPt2_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if endPt_P /= null then endPt_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end cubicTo;
   procedure cubicTo
     (self      : access Inst; ctrlPt1_P : access QtAda6.QtCore.QPointF.Inst'Class;
      ctrlPt2_P : access QtAda6.QtCore.QPoint.Inst'Class; endPt_P : access QtAda6.QtCore.QPoint.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "cubicTo");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if ctrlPt1_P /= null then ctrlPt1_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if ctrlPt2_P /= null then ctrlPt2_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if endPt_P /= null then endPt_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end cubicTo;
   procedure cubicTo
     (self      : access Inst; ctrlPt1_P : access QtAda6.QtCore.QPointF.Inst'Class;
      ctrlPt2_P : access QtAda6.QtCore.QPoint.Inst'Class; endPt_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "cubicTo");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if ctrlPt1_P /= null then ctrlPt1_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if ctrlPt2_P /= null then ctrlPt2_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if endPt_P /= null then endPt_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end cubicTo;
   procedure cubicTo
     (self      : access Inst; ctrlPt1_P : access QtAda6.QtCore.QPointF.Inst'Class;
      ctrlPt2_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      endPt_P   : access QtAda6.QtCore.QPointF.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "cubicTo");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if ctrlPt1_P /= null then ctrlPt1_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if ctrlPt2_P /= null then ctrlPt2_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if endPt_P /= null then endPt_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end cubicTo;
   procedure cubicTo
     (self      : access Inst; ctrlPt1_P : access QtAda6.QtCore.QPointF.Inst'Class;
      ctrlPt2_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class; endPt_P : access QtAda6.QtCore.QPoint.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "cubicTo");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if ctrlPt1_P /= null then ctrlPt1_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if ctrlPt2_P /= null then ctrlPt2_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if endPt_P /= null then endPt_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end cubicTo;
   procedure cubicTo
     (self      : access Inst; ctrlPt1_P : access QtAda6.QtCore.QPointF.Inst'Class;
      ctrlPt2_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      endPt_P   : access QtAda6.QtGui.QPainterPath.Element.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "cubicTo");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if ctrlPt1_P /= null then ctrlPt1_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if ctrlPt2_P /= null then ctrlPt2_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if endPt_P /= null then endPt_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end cubicTo;
   procedure cubicTo
     (self      : access Inst; ctrlPt1_P : access QtAda6.QtCore.QPoint.Inst'Class;
      ctrlPt2_P : access QtAda6.QtCore.QPointF.Inst'Class; endPt_P : access QtAda6.QtCore.QPointF.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "cubicTo");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if ctrlPt1_P /= null then ctrlPt1_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if ctrlPt2_P /= null then ctrlPt2_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if endPt_P /= null then endPt_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end cubicTo;
   procedure cubicTo
     (self      : access Inst; ctrlPt1_P : access QtAda6.QtCore.QPoint.Inst'Class;
      ctrlPt2_P : access QtAda6.QtCore.QPointF.Inst'Class; endPt_P : access QtAda6.QtCore.QPoint.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "cubicTo");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if ctrlPt1_P /= null then ctrlPt1_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if ctrlPt2_P /= null then ctrlPt2_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if endPt_P /= null then endPt_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end cubicTo;
   procedure cubicTo
     (self      : access Inst; ctrlPt1_P : access QtAda6.QtCore.QPoint.Inst'Class;
      ctrlPt2_P : access QtAda6.QtCore.QPointF.Inst'Class;
      endPt_P   : access QtAda6.QtGui.QPainterPath.Element.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "cubicTo");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if ctrlPt1_P /= null then ctrlPt1_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if ctrlPt2_P /= null then ctrlPt2_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if endPt_P /= null then endPt_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end cubicTo;
   procedure cubicTo
     (self      : access Inst; ctrlPt1_P : access QtAda6.QtCore.QPoint.Inst'Class;
      ctrlPt2_P : access QtAda6.QtCore.QPoint.Inst'Class; endPt_P : access QtAda6.QtCore.QPointF.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "cubicTo");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if ctrlPt1_P /= null then ctrlPt1_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if ctrlPt2_P /= null then ctrlPt2_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if endPt_P /= null then endPt_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end cubicTo;
   procedure cubicTo
     (self      : access Inst; ctrlPt1_P : access QtAda6.QtCore.QPoint.Inst'Class;
      ctrlPt2_P : access QtAda6.QtCore.QPoint.Inst'Class; endPt_P : access QtAda6.QtCore.QPoint.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "cubicTo");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if ctrlPt1_P /= null then ctrlPt1_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if ctrlPt2_P /= null then ctrlPt2_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if endPt_P /= null then endPt_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end cubicTo;
   procedure cubicTo
     (self      : access Inst; ctrlPt1_P : access QtAda6.QtCore.QPoint.Inst'Class;
      ctrlPt2_P : access QtAda6.QtCore.QPoint.Inst'Class; endPt_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "cubicTo");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if ctrlPt1_P /= null then ctrlPt1_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if ctrlPt2_P /= null then ctrlPt2_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if endPt_P /= null then endPt_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end cubicTo;
   procedure cubicTo
     (self      : access Inst; ctrlPt1_P : access QtAda6.QtCore.QPoint.Inst'Class;
      ctrlPt2_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      endPt_P   : access QtAda6.QtCore.QPointF.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "cubicTo");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if ctrlPt1_P /= null then ctrlPt1_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if ctrlPt2_P /= null then ctrlPt2_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if endPt_P /= null then endPt_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end cubicTo;
   procedure cubicTo
     (self      : access Inst; ctrlPt1_P : access QtAda6.QtCore.QPoint.Inst'Class;
      ctrlPt2_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class; endPt_P : access QtAda6.QtCore.QPoint.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "cubicTo");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if ctrlPt1_P /= null then ctrlPt1_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if ctrlPt2_P /= null then ctrlPt2_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if endPt_P /= null then endPt_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end cubicTo;
   procedure cubicTo
     (self      : access Inst; ctrlPt1_P : access QtAda6.QtCore.QPoint.Inst'Class;
      ctrlPt2_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      endPt_P   : access QtAda6.QtGui.QPainterPath.Element.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "cubicTo");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if ctrlPt1_P /= null then ctrlPt1_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if ctrlPt2_P /= null then ctrlPt2_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if endPt_P /= null then endPt_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end cubicTo;
   procedure cubicTo
     (self      : access Inst; ctrlPt1_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      ctrlPt2_P : access QtAda6.QtCore.QPointF.Inst'Class; endPt_P : access QtAda6.QtCore.QPointF.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "cubicTo");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if ctrlPt1_P /= null then ctrlPt1_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if ctrlPt2_P /= null then ctrlPt2_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if endPt_P /= null then endPt_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end cubicTo;
   procedure cubicTo
     (self      : access Inst; ctrlPt1_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      ctrlPt2_P : access QtAda6.QtCore.QPointF.Inst'Class; endPt_P : access QtAda6.QtCore.QPoint.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "cubicTo");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if ctrlPt1_P /= null then ctrlPt1_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if ctrlPt2_P /= null then ctrlPt2_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if endPt_P /= null then endPt_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end cubicTo;
   procedure cubicTo
     (self      : access Inst; ctrlPt1_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      ctrlPt2_P : access QtAda6.QtCore.QPointF.Inst'Class;
      endPt_P   : access QtAda6.QtGui.QPainterPath.Element.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "cubicTo");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if ctrlPt1_P /= null then ctrlPt1_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if ctrlPt2_P /= null then ctrlPt2_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if endPt_P /= null then endPt_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end cubicTo;
   procedure cubicTo
     (self      : access Inst; ctrlPt1_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      ctrlPt2_P : access QtAda6.QtCore.QPoint.Inst'Class; endPt_P : access QtAda6.QtCore.QPointF.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "cubicTo");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if ctrlPt1_P /= null then ctrlPt1_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if ctrlPt2_P /= null then ctrlPt2_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if endPt_P /= null then endPt_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end cubicTo;
   procedure cubicTo
     (self      : access Inst; ctrlPt1_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      ctrlPt2_P : access QtAda6.QtCore.QPoint.Inst'Class; endPt_P : access QtAda6.QtCore.QPoint.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "cubicTo");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if ctrlPt1_P /= null then ctrlPt1_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if ctrlPt2_P /= null then ctrlPt2_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if endPt_P /= null then endPt_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end cubicTo;
   procedure cubicTo
     (self      : access Inst; ctrlPt1_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      ctrlPt2_P : access QtAda6.QtCore.QPoint.Inst'Class; endPt_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "cubicTo");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if ctrlPt1_P /= null then ctrlPt1_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if ctrlPt2_P /= null then ctrlPt2_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if endPt_P /= null then endPt_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end cubicTo;
   procedure cubicTo
     (self      : access Inst; ctrlPt1_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      ctrlPt2_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      endPt_P   : access QtAda6.QtCore.QPointF.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "cubicTo");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if ctrlPt1_P /= null then ctrlPt1_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if ctrlPt2_P /= null then ctrlPt2_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if endPt_P /= null then endPt_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end cubicTo;
   procedure cubicTo
     (self      : access Inst; ctrlPt1_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      ctrlPt2_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class; endPt_P : access QtAda6.QtCore.QPoint.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "cubicTo");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if ctrlPt1_P /= null then ctrlPt1_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if ctrlPt2_P /= null then ctrlPt2_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if endPt_P /= null then endPt_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end cubicTo;
   procedure cubicTo
     (self      : access Inst; ctrlPt1_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      ctrlPt2_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      endPt_P   : access QtAda6.QtGui.QPainterPath.Element.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "cubicTo");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if ctrlPt1_P /= null then ctrlPt1_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if ctrlPt2_P /= null then ctrlPt2_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if endPt_P /= null then endPt_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end cubicTo;
   procedure cubicTo
     (self     : access Inst; ctrlPt1x_P : float; ctrlPt1y_P : float; ctrlPt2x_P : float; ctrlPt2y_P : float;
      endPtx_P : float; endPty_P : float)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "cubicTo");
      Args   := Tuple_New (6);
      Tuple_SetItem (Args, 0, Float_FromDouble (ctrlPt1x_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (ctrlPt1y_P));
      Tuple_SetItem (Args, 2, Float_FromDouble (ctrlPt2x_P));
      Tuple_SetItem (Args, 3, Float_FromDouble (ctrlPt2y_P));
      Tuple_SetItem (Args, 4, Float_FromDouble (endPtx_P));
      Tuple_SetItem (Args, 5, Float_FromDouble (endPty_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end cubicTo;
   function currentPosition (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QPointF.Class := new QtAda6.QtCore.QPointF.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "currentPosition");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end currentPosition;
   function elementAt (self : access Inst; i_P : int) return access QtAda6.QtGui.QPainterPath.Element.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QPainterPath.Element.Class := new QtAda6.QtGui.QPainterPath.Element.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "elementAt");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (i_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end elementAt;
   function elementCount (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "elementCount");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end elementCount;
   function fillRule (self : access Inst) return access QtAda6.QtCore.Qt.FillRule.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.FillRule.Class := new QtAda6.QtCore.Qt.FillRule.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "fillRule");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fillRule;
   function intersected
     (self : access Inst; r_P : access QtAda6.QtGui.QPainterPath.Inst'Class)
      return access QtAda6.QtGui.QPainterPath.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QPainterPath.Class := new QtAda6.QtGui.QPainterPath.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "intersected");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if r_P /= null then r_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end intersected;
   function intersects (self : access Inst; p_P : access QtAda6.QtGui.QPainterPath.Inst'Class) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "intersects");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if p_P /= null then p_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end intersects;
   function intersects (self : access Inst; rect_P : access QtAda6.QtCore.QRectF.Inst'Class) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "intersects");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if rect_P /= null then rect_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end intersects;
   function intersects (self : access Inst; rect_P : access QtAda6.QtCore.QRect.Inst'Class) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "intersects");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if rect_P /= null then rect_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end intersects;
   function isEmpty (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isEmpty");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isEmpty;
   function length (self : access Inst) return float is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "length");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Float_AsDouble (Result);
   end length;
   procedure lineTo (self : access Inst; p_P : access QtAda6.QtCore.QPointF.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "lineTo");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if p_P /= null then p_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end lineTo;
   procedure lineTo (self : access Inst; p_P : access QtAda6.QtCore.QPoint.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "lineTo");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if p_P /= null then p_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end lineTo;
   procedure lineTo (self : access Inst; p_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "lineTo");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if p_P /= null then p_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end lineTo;
   procedure lineTo (self : access Inst; x_P : float; y_P : float) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "lineTo");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Float_FromDouble (x_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (y_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end lineTo;
   procedure moveTo (self : access Inst; p_P : access QtAda6.QtCore.QPointF.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "moveTo");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if p_P /= null then p_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end moveTo;
   procedure moveTo (self : access Inst; p_P : access QtAda6.QtCore.QPoint.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "moveTo");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if p_P /= null then p_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end moveTo;
   procedure moveTo (self : access Inst; p_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "moveTo");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if p_P /= null then p_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end moveTo;
   procedure moveTo (self : access Inst; x_P : float; y_P : float) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "moveTo");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Float_FromDouble (x_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (y_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end moveTo;
   function percentAtLength (self : access Inst; t_P : float) return float is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "percentAtLength");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (t_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Float_AsDouble (Result);
   end percentAtLength;
   function pointAtPercent (self : access Inst; t_P : float) return access QtAda6.QtCore.QPointF.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QPointF.Class := new QtAda6.QtCore.QPointF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "pointAtPercent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (t_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end pointAtPercent;
   procedure quadTo
     (self    : access Inst; ctrlPt_P : access QtAda6.QtCore.QPointF.Inst'Class;
      endPt_P : access QtAda6.QtCore.QPointF.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "quadTo");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if ctrlPt_P /= null then ctrlPt_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if endPt_P /= null then endPt_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end quadTo;
   procedure quadTo
     (self    : access Inst; ctrlPt_P : access QtAda6.QtCore.QPointF.Inst'Class;
      endPt_P : access QtAda6.QtCore.QPoint.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "quadTo");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if ctrlPt_P /= null then ctrlPt_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if endPt_P /= null then endPt_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end quadTo;
   procedure quadTo
     (self    : access Inst; ctrlPt_P : access QtAda6.QtCore.QPointF.Inst'Class;
      endPt_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "quadTo");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if ctrlPt_P /= null then ctrlPt_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if endPt_P /= null then endPt_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end quadTo;
   procedure quadTo
     (self    : access Inst; ctrlPt_P : access QtAda6.QtCore.QPoint.Inst'Class;
      endPt_P : access QtAda6.QtCore.QPointF.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "quadTo");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if ctrlPt_P /= null then ctrlPt_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if endPt_P /= null then endPt_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end quadTo;
   procedure quadTo
     (self    : access Inst; ctrlPt_P : access QtAda6.QtCore.QPoint.Inst'Class;
      endPt_P : access QtAda6.QtCore.QPoint.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "quadTo");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if ctrlPt_P /= null then ctrlPt_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if endPt_P /= null then endPt_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end quadTo;
   procedure quadTo
     (self    : access Inst; ctrlPt_P : access QtAda6.QtCore.QPoint.Inst'Class;
      endPt_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "quadTo");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if ctrlPt_P /= null then ctrlPt_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if endPt_P /= null then endPt_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end quadTo;
   procedure quadTo
     (self    : access Inst; ctrlPt_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      endPt_P : access QtAda6.QtCore.QPointF.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "quadTo");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if ctrlPt_P /= null then ctrlPt_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if endPt_P /= null then endPt_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end quadTo;
   procedure quadTo
     (self    : access Inst; ctrlPt_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      endPt_P : access QtAda6.QtCore.QPoint.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "quadTo");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if ctrlPt_P /= null then ctrlPt_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if endPt_P /= null then endPt_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end quadTo;
   procedure quadTo
     (self    : access Inst; ctrlPt_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      endPt_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "quadTo");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if ctrlPt_P /= null then ctrlPt_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if endPt_P /= null then endPt_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end quadTo;
   procedure quadTo (self : access Inst; ctrlPtx_P : float; ctrlPty_P : float; endPtx_P : float; endPty_P : float) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "quadTo");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Float_FromDouble (ctrlPtx_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (ctrlPty_P));
      Tuple_SetItem (Args, 2, Float_FromDouble (endPtx_P));
      Tuple_SetItem (Args, 3, Float_FromDouble (endPty_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end quadTo;
   procedure reserve (self : access Inst; size_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "reserve");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (size_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end reserve;
   procedure setElementPositionAt (self : access Inst; i_P : int; x_P : float; y_P : float) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setElementPositionAt");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (i_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (x_P));
      Tuple_SetItem (Args, 2, Float_FromDouble (y_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setElementPositionAt;
   procedure setFillRule (self : access Inst; fillRule_P : access QtAda6.QtCore.Qt.FillRule.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFillRule");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if fillRule_P /= null then fillRule_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setFillRule;
   function simplified (self : access Inst) return access QtAda6.QtGui.QPainterPath.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QPainterPath.Class := new QtAda6.QtGui.QPainterPath.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "simplified");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end simplified;
   function slopeAtPercent (self : access Inst; t_P : float) return float is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "slopeAtPercent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (t_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Float_AsDouble (Result);
   end slopeAtPercent;
   function subtracted
     (self : access Inst; r_P : access QtAda6.QtGui.QPainterPath.Inst'Class)
      return access QtAda6.QtGui.QPainterPath.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QPainterPath.Class := new QtAda6.QtGui.QPainterPath.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "subtracted");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if r_P /= null then r_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end subtracted;
   procedure swap (self : access Inst; other_P : access QtAda6.QtGui.QPainterPath.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "swap");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if other_P /= null then other_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end swap;
   function toFillPolygon
     (self : access Inst; matrix_P : access QtAda6.QtGui.QTransform.Inst'Class := null)
      return access QtAda6.QtGui.QPolygonF.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QPolygonF.Class := new QtAda6.QtGui.QPolygonF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toFillPolygon");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      if matrix_P /= null then
         Dict_SetItemString (Dict, "matrix", matrix_P.Python_Proxy);
      end if;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end toFillPolygon;
   function toFillPolygons
     (self : access Inst; matrix_P : access QtAda6.QtGui.QTransform.Inst'Class := null)
      return LIST_QtAda6_QtGui_QPolygonF
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toFillPolygons");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      if matrix_P /= null then
         Dict_SetItemString (Dict, "matrix", matrix_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return Ret : LIST_QtAda6_QtGui_QPolygonF (1 .. Natural (List_Size (Result))) do
         for Ind in Ret'Range loop
            Ret (Ind).Python_Proxy := List_GetItem (Result, ssize_t (Ind - Ret'First));
         end loop;
      end return;
   end toFillPolygons;
   function toReversed (self : access Inst) return access QtAda6.QtGui.QPainterPath.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QPainterPath.Class := new QtAda6.QtGui.QPainterPath.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "toReversed");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end toReversed;
   function toSubpathPolygons
     (self : access Inst; matrix_P : access QtAda6.QtGui.QTransform.Inst'Class := null)
      return LIST_QtAda6_QtGui_QPolygonF
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toSubpathPolygons");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      if matrix_P /= null then
         Dict_SetItemString (Dict, "matrix", matrix_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return Ret : LIST_QtAda6_QtGui_QPolygonF (1 .. Natural (List_Size (Result))) do
         for Ind in Ret'Range loop
            Ret (Ind).Python_Proxy := List_GetItem (Result, ssize_t (Ind - Ret'First));
         end loop;
      end return;
   end toSubpathPolygons;
   procedure translate (self : access Inst; dx_P : float; dy_P : float) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "translate");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Float_FromDouble (dx_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (dy_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end translate;
   procedure translate (self : access Inst; offset_P : access QtAda6.QtCore.QPointF.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "translate");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if offset_P /= null then offset_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end translate;
   procedure translate (self : access Inst; offset_P : access QtAda6.QtCore.QPoint.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "translate");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if offset_P /= null then offset_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end translate;
   procedure translate (self : access Inst; offset_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "translate");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if offset_P /= null then offset_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end translate;
   function translated
     (self : access Inst; dx_P : float; dy_P : float) return access QtAda6.QtGui.QPainterPath.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QPainterPath.Class := new QtAda6.QtGui.QPainterPath.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "translated");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Float_FromDouble (dx_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (dy_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end translated;
   function translated
     (self : access Inst; offset_P : access QtAda6.QtCore.QPointF.Inst'Class)
      return access QtAda6.QtGui.QPainterPath.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QPainterPath.Class := new QtAda6.QtGui.QPainterPath.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "translated");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if offset_P /= null then offset_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end translated;
   function translated
     (self : access Inst; offset_P : access QtAda6.QtCore.QPoint.Inst'Class)
      return access QtAda6.QtGui.QPainterPath.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QPainterPath.Class := new QtAda6.QtGui.QPainterPath.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "translated");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if offset_P /= null then offset_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end translated;
   function translated
     (self : access Inst; offset_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class)
      return access QtAda6.QtGui.QPainterPath.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QPainterPath.Class := new QtAda6.QtGui.QPainterPath.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "translated");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if offset_P /= null then offset_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end translated;
   function united
     (self : access Inst; r_P : access QtAda6.QtGui.QPainterPath.Inst'Class)
      return access QtAda6.QtGui.QPainterPath.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QPainterPath.Class := new QtAda6.QtGui.QPainterPath.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "united");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if r_P /= null then r_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end united;
end QtAda6.QtGui.QPainterPath;
