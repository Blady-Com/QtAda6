-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qpinchgesture.adb
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
with QtAda6.QtWidgets.QGesture;
with QtAda6.QtCore.QObject;
with QtAda6.QtCore.QPointF;
with QtAda6.QtWidgets.QPinchGesture.ChangeFlag;
with QtAda6.QtCore.QPoint;
with QtAda6.QtGui.QPainterPath.Element;
package body QtAda6.QtWidgets.QPinchGesture is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create (parent_P : Optional_QtAda6_QtCore_QObject) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QPinchGesture");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function centerPoint (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QPointF.Class := new QtAda6.QtCore.QPointF.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "centerPoint");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end centerPoint;
   function changeFlags (self : access Inst) return access QtAda6.QtWidgets.QPinchGesture.ChangeFlag.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtWidgets.QPinchGesture.ChangeFlag.Class :=
        new QtAda6.QtWidgets.QPinchGesture.ChangeFlag.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "changeFlags");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end changeFlags;
   function lastCenterPoint (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QPointF.Class := new QtAda6.QtCore.QPointF.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "lastCenterPoint");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end lastCenterPoint;
   function lastRotationAngle (self : access Inst) return float is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "lastRotationAngle");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end lastRotationAngle;
   function lastScaleFactor (self : access Inst) return float is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "lastScaleFactor");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end lastScaleFactor;
   function rotationAngle (self : access Inst) return float is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "rotationAngle");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end rotationAngle;
   function scaleFactor (self : access Inst) return float is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "scaleFactor");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end scaleFactor;
   procedure setCenterPoint
     (self : access Inst; value_P : Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setCenterPoint");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end setCenterPoint;
   procedure setChangeFlags (self : access Inst; value_P : access QtAda6.QtWidgets.QPinchGesture.ChangeFlag.Inst'Class)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setChangeFlags");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, value_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setChangeFlags;
   procedure setLastCenterPoint
     (self : access Inst; value_P : Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setLastCenterPoint");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end setLastCenterPoint;
   procedure setLastRotationAngle (self : access Inst; value_P : float) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setLastRotationAngle");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (value_P));
      Result := Object_CallObject (Method, Args, True);
   end setLastRotationAngle;
   procedure setLastScaleFactor (self : access Inst; value_P : float) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setLastScaleFactor");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (value_P));
      Result := Object_CallObject (Method, Args, True);
   end setLastScaleFactor;
   procedure setRotationAngle (self : access Inst; value_P : float) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setRotationAngle");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (value_P));
      Result := Object_CallObject (Method, Args, True);
   end setRotationAngle;
   procedure setScaleFactor (self : access Inst; value_P : float) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setScaleFactor");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (value_P));
      Result := Object_CallObject (Method, Args, True);
   end setScaleFactor;
   procedure setStartCenterPoint
     (self : access Inst; value_P : Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setStartCenterPoint");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end setStartCenterPoint;
   procedure setTotalChangeFlags
     (self : access Inst; value_P : access QtAda6.QtWidgets.QPinchGesture.ChangeFlag.Inst'Class)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setTotalChangeFlags");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, value_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setTotalChangeFlags;
   procedure setTotalRotationAngle (self : access Inst; value_P : float) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setTotalRotationAngle");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (value_P));
      Result := Object_CallObject (Method, Args, True);
   end setTotalRotationAngle;
   procedure setTotalScaleFactor (self : access Inst; value_P : float) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setTotalScaleFactor");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (value_P));
      Result := Object_CallObject (Method, Args, True);
   end setTotalScaleFactor;
   function startCenterPoint (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QPointF.Class := new QtAda6.QtCore.QPointF.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "startCenterPoint");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end startCenterPoint;
   function totalChangeFlags (self : access Inst) return access QtAda6.QtWidgets.QPinchGesture.ChangeFlag.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtWidgets.QPinchGesture.ChangeFlag.Class :=
        new QtAda6.QtWidgets.QPinchGesture.ChangeFlag.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "totalChangeFlags");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end totalChangeFlags;
   function totalRotationAngle (self : access Inst) return float is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "totalRotationAngle");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end totalRotationAngle;
   function totalScaleFactor (self : access Inst) return float is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "totalScaleFactor");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end totalScaleFactor;
end QtAda6.QtWidgets.QPinchGesture;
