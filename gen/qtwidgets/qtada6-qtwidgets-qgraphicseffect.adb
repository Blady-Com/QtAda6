-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qgraphicseffect.adb
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
with QtAda6.QtCore.QObject;
with QtAda6.QtCore.QRectF;
with QtAda6.QtGui.QPainter;
with QtAda6.QtCore.Qt.CoordinateSystem;
with QtAda6.QtWidgets.QGraphicsEffect.ChangeFlag;
with QtAda6.QtCore.QPoint;
with QtAda6.QtWidgets.QGraphicsEffect.PixmapPadMode;
with QtAda6.QtGui.QPixmap;
package body QtAda6.QtWidgets.QGraphicsEffect is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function enabledChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "enabledChanged"));
   end enabledChanged;
   function Create (parent_P : access QtAda6.QtCore.QObject.Inst'Class := null) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QGraphicsEffect");
      Args  := Tuple_New (0);
      Dict  := Dict_New;
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
   function boundingRectFor
     (self : access Inst; sourceRect_P : UNION_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect)
      return access QtAda6.QtCore.QRectF.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QRectF.Class := new QtAda6.QtCore.QRectF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "boundingRectFor");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if sourceRect_P /= null then sourceRect_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end boundingRectFor;
   procedure draw (self : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "draw");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if painter_P /= null then painter_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end draw;
   procedure drawSource (self : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawSource");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if painter_P /= null then painter_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawSource;
   function isEnabled (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isEnabled");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isEnabled;
   procedure setEnabled (self : access Inst; enable_P : bool) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setEnabled");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (enable_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setEnabled;
   function sourceBoundingRect
     (self : access Inst; system_P : access QtAda6.QtCore.Qt.CoordinateSystem.Inst'Class := null)
      return access QtAda6.QtCore.QRectF.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QRectF.Class := new QtAda6.QtCore.QRectF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "sourceBoundingRect");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      if system_P /= null then
         Dict_SetItemString (Dict, "system", system_P.Python_Proxy);
      end if;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end sourceBoundingRect;
   procedure sourceChanged (self : access Inst; flags_P : access QtAda6.QtWidgets.QGraphicsEffect.ChangeFlag.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "sourceChanged");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if flags_P /= null then flags_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end sourceChanged;
   function sourceIsPixmap (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "sourceIsPixmap");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end sourceIsPixmap;
   function sourcePixmap
     (self     : access Inst; system_P : access QtAda6.QtCore.Qt.CoordinateSystem.Inst'Class := null;
      offset_P : access QtAda6.QtCore.QPoint.Inst'Class                           := null;
      mode_P   : access QtAda6.QtWidgets.QGraphicsEffect.PixmapPadMode.Inst'Class := null)
      return access QtAda6.QtGui.QPixmap.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QPixmap.Class := new QtAda6.QtGui.QPixmap.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "sourcePixmap");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      if system_P /= null then
         Dict_SetItemString (Dict, "system", system_P.Python_Proxy);
      end if;
      if offset_P /= null then
         Dict_SetItemString (Dict, "offset", offset_P.Python_Proxy);
      end if;
      if mode_P /= null then
         Dict_SetItemString (Dict, "mode", mode_P.Python_Proxy);
      end if;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end sourcePixmap;
   procedure update (self : access Inst) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "update");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end update;
   procedure updateBoundingRect (self : access Inst) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "updateBoundingRect");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end updateBoundingRect;
end QtAda6.QtWidgets.QGraphicsEffect;
