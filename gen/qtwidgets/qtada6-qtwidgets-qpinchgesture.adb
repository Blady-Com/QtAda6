-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qpinchgesture.adb
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
with QtAda6.QtCore.QPointF;
with QtAda6.QtWidgets.QPinchGesture.ChangeFlag;
package body QtAda6.QtWidgets.QPinchGesture is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create (parent_P : access QtAda6.QtCore.QObject.Inst'Class := null) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QPinchGesture");
      Args  := Tuple_New (0);
      Dict  := Dict_New;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function centerPoint (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QPointF.Class := new QtAda6.QtCore.QPointF.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "centerPoint");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end centerPoint;
   function changeFlags (self : access Inst) return access QtAda6.QtWidgets.QPinchGesture.ChangeFlag.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtWidgets.QPinchGesture.ChangeFlag.Class :=
        new QtAda6.QtWidgets.QPinchGesture.ChangeFlag.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "changeFlags");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end changeFlags;
   function lastCenterPoint (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QPointF.Class := new QtAda6.QtCore.QPointF.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "lastCenterPoint");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end lastCenterPoint;
   function lastRotationAngle (self : access Inst) return float is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "lastRotationAngle");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Float_AsDouble (Result);
   end lastRotationAngle;
   function lastScaleFactor (self : access Inst) return float is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "lastScaleFactor");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Float_AsDouble (Result);
   end lastScaleFactor;
   function rotationAngle (self : access Inst) return float is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "rotationAngle");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Float_AsDouble (Result);
   end rotationAngle;
   function scaleFactor (self : access Inst) return float is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "scaleFactor");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Float_AsDouble (Result);
   end scaleFactor;
   procedure setCenterPoint
     (self : access Inst; value_P : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setCenterPoint");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if value_P /= null then value_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setCenterPoint;
   procedure setChangeFlags (self : access Inst; value_P : access QtAda6.QtWidgets.QPinchGesture.ChangeFlag.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setChangeFlags");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if value_P /= null then value_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setChangeFlags;
   procedure setLastCenterPoint
     (self : access Inst; value_P : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setLastCenterPoint");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if value_P /= null then value_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setLastCenterPoint;
   procedure setLastRotationAngle (self : access Inst; value_P : float) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setLastRotationAngle");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (value_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setLastRotationAngle;
   procedure setLastScaleFactor (self : access Inst; value_P : float) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setLastScaleFactor");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (value_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setLastScaleFactor;
   procedure setRotationAngle (self : access Inst; value_P : float) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setRotationAngle");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (value_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setRotationAngle;
   procedure setScaleFactor (self : access Inst; value_P : float) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setScaleFactor");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (value_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setScaleFactor;
   procedure setStartCenterPoint
     (self : access Inst; value_P : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setStartCenterPoint");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if value_P /= null then value_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setStartCenterPoint;
   procedure setTotalChangeFlags
     (self : access Inst; value_P : access QtAda6.QtWidgets.QPinchGesture.ChangeFlag.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setTotalChangeFlags");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if value_P /= null then value_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setTotalChangeFlags;
   procedure setTotalRotationAngle (self : access Inst; value_P : float) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setTotalRotationAngle");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (value_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setTotalRotationAngle;
   procedure setTotalScaleFactor (self : access Inst; value_P : float) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setTotalScaleFactor");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (value_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setTotalScaleFactor;
   function startCenterPoint (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QPointF.Class := new QtAda6.QtCore.QPointF.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "startCenterPoint");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end startCenterPoint;
   function totalChangeFlags (self : access Inst) return access QtAda6.QtWidgets.QPinchGesture.ChangeFlag.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtWidgets.QPinchGesture.ChangeFlag.Class :=
        new QtAda6.QtWidgets.QPinchGesture.ChangeFlag.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "totalChangeFlags");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end totalChangeFlags;
   function totalRotationAngle (self : access Inst) return float is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "totalRotationAngle");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Float_AsDouble (Result);
   end totalRotationAngle;
   function totalScaleFactor (self : access Inst) return float is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "totalScaleFactor");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Float_AsDouble (Result);
   end totalScaleFactor;
end QtAda6.QtWidgets.QPinchGesture;
