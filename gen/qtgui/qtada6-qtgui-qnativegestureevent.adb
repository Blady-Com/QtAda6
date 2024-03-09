-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qnativegestureevent.adb
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
with QtAda6.QtGui.QNativeGestureEvent;
with QtAda6.QtCore.Qt.NativeGestureType;
with QtAda6.QtGui.QPointingDevice;
with QtAda6.QtCore.QPointF;
with QtAda6.QtCore.QPoint;
package body QtAda6.QtGui.QNativeGestureEvent is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create (arg_1_P : access QtAda6.QtGui.QNativeGestureEvent.Inst'Class) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QNativeGestureEvent");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (type_K_P     : access QtAda6.QtCore.Qt.NativeGestureType.Inst'Class;
      dev_P        : access QtAda6.QtGui.QPointingDevice.Inst'Class; fingerCount_P : int;
      localPos_P   : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element;
      scenePos_P   : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element;
      globalPos_P : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element; value_P : float;
      delta_K_P    : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element;
      sequenceId_P : int := 0) return Class
   is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QNativeGestureEvent");
      Args  := Tuple_New (8);
      Tuple_SetItem (Args, 0, (if type_K_P /= null then type_K_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if dev_P /= null then dev_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, Long_FromLong (fingerCount_P));
      Tuple_SetItem (Args, 3, (if localPos_P /= null then localPos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, (if scenePos_P /= null then scenePos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 5, (if globalPos_P /= null then globalPos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 6, Float_FromDouble (value_P));
      Tuple_SetItem (Args, 7, (if delta_K_P /= null then delta_K_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if sequenceId_P /= 0 then
         Dict_SetItemString (Dict, "sequenceId", Long_FromLong (sequenceId_P));
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (type_K_P     : access QtAda6.QtCore.Qt.NativeGestureType.Inst'Class;
      dev_P        : access QtAda6.QtGui.QPointingDevice.Inst'Class;
      localPos_P   : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element;
      scenePos_P   : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element;
      globalPos_P : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element; value_P : float;
      sequenceId_P : int; intArgument_P : int) return Class
   is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QNativeGestureEvent");
      Args  := Tuple_New (8);
      Tuple_SetItem (Args, 0, (if type_K_P /= null then type_K_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if dev_P /= null then dev_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if localPos_P /= null then localPos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if scenePos_P /= null then scenePos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, (if globalPos_P /= null then globalPos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 5, Float_FromDouble (value_P));
      Tuple_SetItem (Args, 6, Long_FromLong (sequenceId_P));
      Tuple_SetItem (Args, 7, Long_FromLong (intArgument_P));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function clone (self : access Inst) return access QtAda6.QtGui.QNativeGestureEvent.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QNativeGestureEvent.Class := new QtAda6.QtGui.QNativeGestureEvent.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "clone");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end clone;
   function delta_K (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QPointF.Class := new QtAda6.QtCore.QPointF.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "delta");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end delta_K;
   function fingerCount (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "fingerCount");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end fingerCount;
   function gestureType (self : access Inst) return access QtAda6.QtCore.Qt.NativeGestureType.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.NativeGestureType.Class := new QtAda6.QtCore.Qt.NativeGestureType.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "gestureType");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end gestureType;
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
   function localPos (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QPointF.Class := new QtAda6.QtCore.QPointF.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "localPos");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end localPos;
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
   function screenPos (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QPointF.Class := new QtAda6.QtCore.QPointF.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "screenPos");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end screenPos;
   function value (self : access Inst) return float is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "value");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Float_AsDouble (Result);
   end value;
   function windowPos (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QPointF.Class := new QtAda6.QtCore.QPointF.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "windowPos");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end windowPos;
end QtAda6.QtGui.QNativeGestureEvent;
