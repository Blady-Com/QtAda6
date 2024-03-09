-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qtabletevent.adb
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
with QtAda6.QtGui.QTabletEvent;
with QtAda6.QtCore.QEvent.Type_K;
with QtAda6.QtGui.QPointingDevice;
with QtAda6.QtCore.Qt.KeyboardModifier;
with QtAda6.QtCore.Qt.MouseButton;
with QtAda6.QtCore.QPoint;
with QtAda6.QtCore.QPointF;
package body QtAda6.QtGui.QTabletEvent is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create (arg_1_P : access QtAda6.QtGui.QTabletEvent.Inst'Class) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTabletEvent");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (t_P : access QtAda6.QtCore.QEvent.Type_K.Inst'Class; device_P : access QtAda6.QtGui.QPointingDevice.Inst'Class;
      pos_P       : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element;
      globalPos_P : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element;
      pressure_P  : float; xTilt_P : float; yTilt_P : float; tangentialPressure_P : float; rotation_P : float;
      z_P         : float; keyState_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class;
      button_P    : access QtAda6.QtCore.Qt.MouseButton.Inst'Class;
      buttons_P   : access QtAda6.QtCore.Qt.MouseButton.Inst'Class) return Class
   is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTabletEvent");
      Args  := Tuple_New (13);
      Tuple_SetItem (Args, 0, (if t_P /= null then t_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if device_P /= null then device_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if pos_P /= null then pos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if globalPos_P /= null then globalPos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, Float_FromDouble (pressure_P));
      Tuple_SetItem (Args, 5, Float_FromDouble (xTilt_P));
      Tuple_SetItem (Args, 6, Float_FromDouble (yTilt_P));
      Tuple_SetItem (Args, 7, Float_FromDouble (tangentialPressure_P));
      Tuple_SetItem (Args, 8, Float_FromDouble (rotation_P));
      Tuple_SetItem (Args, 9, Float_FromDouble (z_P));
      Tuple_SetItem (Args, 10, (if keyState_P /= null then keyState_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 11, (if button_P /= null then button_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 12, (if buttons_P /= null then buttons_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function U_repr_U (self : access Inst) return access Object'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__repr__");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return null;
   end U_repr_U;
   function clone (self : access Inst) return access QtAda6.QtGui.QTabletEvent.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QTabletEvent.Class := new QtAda6.QtGui.QTabletEvent.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "clone");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end clone;
   function globalPos (self : access Inst) return access QtAda6.QtCore.QPoint.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QPoint.Class := new QtAda6.QtCore.QPoint.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "globalPos");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end globalPos;
   function globalPosF (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QPointF.Class := new QtAda6.QtCore.QPointF.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "globalPosF");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end globalPosF;
   function globalX (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "globalX");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end globalX;
   function globalY (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "globalY");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end globalY;
   function hiResGlobalX (self : access Inst) return float is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hiResGlobalX");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Float_AsDouble (Result);
   end hiResGlobalX;
   function hiResGlobalY (self : access Inst) return float is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hiResGlobalY");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Float_AsDouble (Result);
   end hiResGlobalY;
   function pos (self : access Inst) return access QtAda6.QtCore.QPoint.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QPoint.Class := new QtAda6.QtCore.QPoint.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "pos");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end pos;
   function posF (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QPointF.Class := new QtAda6.QtCore.QPointF.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "posF");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end posF;
   function pressure (self : access Inst) return float is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "pressure");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Float_AsDouble (Result);
   end pressure;
   function rotation (self : access Inst) return float is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "rotation");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Float_AsDouble (Result);
   end rotation;
   function tangentialPressure (self : access Inst) return float is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "tangentialPressure");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Float_AsDouble (Result);
   end tangentialPressure;
   function uniqueId (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "uniqueId");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end uniqueId;
   function x (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "x");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end x;
   function xTilt (self : access Inst) return float is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "xTilt");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Float_AsDouble (Result);
   end xTilt;
   function y (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "y");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end y;
   function yTilt (self : access Inst) return float is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "yTilt");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Float_AsDouble (Result);
   end yTilt;
   function z (self : access Inst) return float is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "z");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Float_AsDouble (Result);
   end z;
end QtAda6.QtGui.QTabletEvent;
