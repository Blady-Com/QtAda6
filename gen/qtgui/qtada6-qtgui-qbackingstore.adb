-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qbackingstore.adb
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
with QtAda6.QtGui.QWindow;
with QtAda6.QtGui.QRegion;
with QtAda6.QtGui.QBitmap;
with QtAda6.QtGui.QPolygon;
with QtAda6.QtCore.QRect;
with QtAda6.QtCore.QPoint;
with QtAda6.QtGui.QPaintDevice;
with QtAda6.QtCore.QSize;
package body QtAda6.QtGui.QBackingStore is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create (window_P : access QtAda6.QtGui.QWindow.Inst'Class) return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QBackingStore");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if window_P /= null then window_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   procedure beginPaint
     (self    : access Inst;
      arg_1_P : UNION_QtAda6_QtGui_QRegionQtAda6_QtGui_QBitmapQtAda6_QtGui_QPolygonQtAda6_QtCore_QRect)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "beginPaint");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end beginPaint;
   procedure endPaint (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "endPaint");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end endPaint;
   procedure flush
     (self     : access Inst;
      region_P : UNION_QtAda6_QtGui_QRegionQtAda6_QtGui_QBitmapQtAda6_QtGui_QPolygonQtAda6_QtCore_QRect;
      window_P : access QtAda6.QtGui.QWindow.Inst'Class := null;
      offset_P : access QtAda6.QtCore.QPoint.Inst'Class := null)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "flush");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if region_P /= null then region_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if window_P /= null then window_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if offset_P /= null then offset_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end flush;
   function hasStaticContents (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hasStaticContents");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end hasStaticContents;
   function paintDevice (self : access Inst) return access QtAda6.QtGui.QPaintDevice.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QPaintDevice.Class := new QtAda6.QtGui.QPaintDevice.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "paintDevice");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end paintDevice;
   procedure resize (self : access Inst; size_P : access QtAda6.QtCore.QSize.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "resize");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if size_P /= null then size_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end resize;
   function scroll
     (self   : access Inst;
      area_P : UNION_QtAda6_QtGui_QRegionQtAda6_QtGui_QBitmapQtAda6_QtGui_QPolygonQtAda6_QtCore_QRect; dx_P : int;
      dy_P   : int) return bool
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "scroll");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if area_P /= null then area_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (dx_P));
      Tuple_SetItem (Args, 2, Long_FromLong (dy_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end scroll;
   procedure setStaticContents
     (self     : access Inst;
      region_P : UNION_QtAda6_QtGui_QRegionQtAda6_QtGui_QBitmapQtAda6_QtGui_QPolygonQtAda6_QtCore_QRect)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setStaticContents");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if region_P /= null then region_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setStaticContents;
   function size (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QSize.Class := new QtAda6.QtCore.QSize.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "size");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end size;
   function staticContents (self : access Inst) return access QtAda6.QtGui.QRegion.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QRegion.Class := new QtAda6.QtGui.QRegion.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "staticContents");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end staticContents;
   function window (self : access Inst) return access QtAda6.QtGui.QWindow.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QWindow.Class := new QtAda6.QtGui.QWindow.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "window");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end window;
end QtAda6.QtGui.QBackingStore;
