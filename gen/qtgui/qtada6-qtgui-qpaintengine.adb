-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qpaintengine.adb
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
with QtAda6.QtGui.QPaintEngine.PaintEngineFeature;
with QtAda6.QtGui.QPaintDevice;
with QtAda6.QtGui.QPaintEngine.DirtyFlag;
with QtAda6.QtCore.QPoint;
with QtAda6.QtCore.QSize;
with QtAda6.QtGui.QPixmap;
with QtAda6.QtCore.Qt.ImageConversionFlag;
with QtAda6.QtCore.QRect;
with QtAda6.QtCore.QLine;
with QtAda6.QtGui.QPainterPath;
with QtAda6.QtGui.QPaintEngine.PolygonDrawMode;
with QtAda6.QtGui.QTextItem;
with QtAda6.QtGui.QPainter;
with QtAda6.QtGui.QRegion;
with QtAda6.QtGui.QPaintEngine.Type_K;
with QtAda6.QtGui.QPaintEngineState;
package body QtAda6.QtGui.QPaintEngine is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create (features_P : access QtAda6.QtGui.QPaintEngine.PaintEngineFeature.Inst'Class := null) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPaintEngine");
      Args  := Tuple_New (0);
      Dict  := Dict_New;
      if features_P /= null then
         Dict_SetItemString (Dict, "features", features_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function begin_K (self : access Inst; pdev_P : access QtAda6.QtGui.QPaintDevice.Inst'Class) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "begin");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if pdev_P /= null then pdev_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end begin_K;
   procedure clearDirty (self : access Inst; df_P : access QtAda6.QtGui.QPaintEngine.DirtyFlag.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "clearDirty");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if df_P /= null then df_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end clearDirty;
   function coordinateOffset (self : access Inst) return access QtAda6.QtCore.QPoint.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QPoint.Class := new QtAda6.QtCore.QPoint.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "coordinateOffset");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end coordinateOffset;
   function createPixmap
     (self : access Inst; size_P : access QtAda6.QtCore.QSize.Inst'Class) return access QtAda6.QtGui.QPixmap.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QPixmap.Class := new QtAda6.QtGui.QPixmap.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "createPixmap");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if size_P /= null then size_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end createPixmap;
   function createPixmapFromImage
     (self    : access Inst; image_P : UNION_QtAda6_QtGui_QImage_str;
      flags_P : access QtAda6.QtCore.Qt.ImageConversionFlag.Inst'Class := null)
      return access QtAda6.QtGui.QPixmap.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QPixmap.Class := new QtAda6.QtGui.QPixmap.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "createPixmapFromImage");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if image_P /= null then image_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if flags_P /= null then
         Dict_SetItemString (Dict, "flags", flags_P.Python_Proxy);
      end if;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end createPixmapFromImage;
   procedure drawEllipse (self : access Inst; r_P : access QtAda6.QtCore.QRect.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawEllipse");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if r_P /= null then r_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawEllipse;
   procedure drawEllipse (self : access Inst; r_P : UNION_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawEllipse");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if r_P /= null then r_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawEllipse;
   procedure drawImage
     (self    : access Inst; r_P : UNION_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect; pm_P : UNION_QtAda6_QtGui_QImage_str;
      sr_P    : UNION_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect;
      flags_P : access QtAda6.QtCore.Qt.ImageConversionFlag.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawImage");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if r_P /= null then r_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if pm_P /= null then pm_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if sr_P /= null then sr_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if flags_P /= null then
         Dict_SetItemString (Dict, "flags", flags_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end drawImage;
   procedure drawLines (self : access Inst; lines_P : access QtAda6.QtCore.QLine.Inst'Class; lineCount_P : int) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawLines");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if lines_P /= null then lines_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (lineCount_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawLines;
   procedure drawLines (self : access Inst; lines_P : UNION_QtAda6_QtCore_QLineF_QtAda6_QtCore_QLine; lineCount_P : int)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawLines");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if lines_P /= null then lines_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (lineCount_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawLines;
   procedure drawPath (self : access Inst; path_P : access QtAda6.QtGui.QPainterPath.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawPath");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if path_P /= null then path_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawPath;
   procedure drawPixmap
     (self : access Inst; r_P : UNION_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect;
      pm_P : UNION_QtAda6_QtGui_QPixmap_QtAda6_QtGui_QImage_str; sr_P : UNION_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawPixmap");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if r_P /= null then r_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if pm_P /= null then pm_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if sr_P /= null then sr_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawPixmap;
   procedure drawPoints (self : access Inst; points_P : access QtAda6.QtCore.QPoint.Inst'Class; pointCount_P : int) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawPoints");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if points_P /= null then points_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (pointCount_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawPoints;
   procedure drawPoints
     (self : access Inst; points_P : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element;
      pointCount_P : int)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawPoints");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if points_P /= null then points_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (pointCount_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawPoints;
   procedure drawPolygon
     (self   : access Inst; points_P : access QtAda6.QtCore.QPoint.Inst'Class; pointCount_P : int;
      mode_P : access QtAda6.QtGui.QPaintEngine.PolygonDrawMode.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawPolygon");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if points_P /= null then points_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (pointCount_P));
      Tuple_SetItem (Args, 2, (if mode_P /= null then mode_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawPolygon;
   procedure drawPolygon
     (self : access Inst; points_P : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element;
      pointCount_P : int; mode_P : access QtAda6.QtGui.QPaintEngine.PolygonDrawMode.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawPolygon");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if points_P /= null then points_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (pointCount_P));
      Tuple_SetItem (Args, 2, (if mode_P /= null then mode_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawPolygon;
   procedure drawRects (self : access Inst; rects_P : access QtAda6.QtCore.QRect.Inst'Class; rectCount_P : int) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawRects");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if rects_P /= null then rects_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (rectCount_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawRects;
   procedure drawRects (self : access Inst; rects_P : UNION_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect; rectCount_P : int)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawRects");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if rects_P /= null then rects_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (rectCount_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawRects;
   procedure drawTextItem
     (self : access Inst; p_P : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element;
      textItem_P : access QtAda6.QtGui.QTextItem.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawTextItem");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if p_P /= null then p_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if textItem_P /= null then textItem_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawTextItem;
   procedure drawTiledPixmap
     (self     : access Inst; r_P : UNION_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect;
      pixmap_P : UNION_QtAda6_QtGui_QPixmap_QtAda6_QtGui_QImage_str;
      s_P      : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawTiledPixmap");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if r_P /= null then r_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if pixmap_P /= null then pixmap_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if s_P /= null then s_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawTiledPixmap;
   function end_K (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "end");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end end_K;
   function hasFeature
     (self : access Inst; feature_P : access QtAda6.QtGui.QPaintEngine.PaintEngineFeature.Inst'Class) return bool
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hasFeature");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if feature_P /= null then feature_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end hasFeature;
   function isActive (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isActive");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isActive;
   function isExtended (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isExtended");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isExtended;
   function paintDevice (self : access Inst) return access QtAda6.QtGui.QPaintDevice.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QPaintDevice.Class := new QtAda6.QtGui.QPaintDevice.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "paintDevice");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end paintDevice;
   function painter (self : access Inst) return access QtAda6.QtGui.QPainter.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QPainter.Class := new QtAda6.QtGui.QPainter.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "painter");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end painter;
   procedure setActive (self : access Inst; newState_P : bool) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setActive");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (newState_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setActive;
   procedure setDirty (self : access Inst; df_P : access QtAda6.QtGui.QPaintEngine.DirtyFlag.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setDirty");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if df_P /= null then df_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setDirty;
   procedure setSystemClip
     (self       : access Inst;
      baseClip_P : UNION_QtAda6_QtGui_QRegion_QtAda6_QtGui_QBitmap_QtAda6_QtGui_QPolygon_QtAda6_QtCore_QRect)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setSystemClip");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if baseClip_P /= null then baseClip_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setSystemClip;
   procedure setSystemRect (self : access Inst; rect_P : access QtAda6.QtCore.QRect.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setSystemRect");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if rect_P /= null then rect_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setSystemRect;
   procedure syncState (self : access Inst) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "syncState");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end syncState;
   function systemClip (self : access Inst) return access QtAda6.QtGui.QRegion.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QRegion.Class := new QtAda6.QtGui.QRegion.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "systemClip");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end systemClip;
   function systemRect (self : access Inst) return access QtAda6.QtCore.QRect.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QRect.Class := new QtAda6.QtCore.QRect.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "systemRect");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end systemRect;
   function testDirty (self : access Inst; df_P : access QtAda6.QtGui.QPaintEngine.DirtyFlag.Inst'Class) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "testDirty");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if df_P /= null then df_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end testDirty;
   function type_K_F (self : access Inst) return access QtAda6.QtGui.QPaintEngine.Type_K.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QPaintEngine.Type_K.Class := new QtAda6.QtGui.QPaintEngine.Type_K.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "type");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end type_K_F;
   procedure updateState (self : access Inst; state_P : access QtAda6.QtGui.QPaintEngineState.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "updateState");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if state_P /= null then state_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end updateState;
end QtAda6.QtGui.QPaintEngine;
