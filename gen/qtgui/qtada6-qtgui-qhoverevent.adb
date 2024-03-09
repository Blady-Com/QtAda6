-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qhoverevent.adb
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
with QtAda6.QtGui.QHoverEvent;
with QtAda6.QtCore.QEvent.Type_K;
with QtAda6.QtCore.Qt.KeyboardModifier;
with QtAda6.QtGui.QPointingDevice;
with QtAda6.QtCore.QPoint;
with QtAda6.QtCore.QPointF;
package body QtAda6.QtGui.QHoverEvent is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create (arg_1_P : access QtAda6.QtGui.QHoverEvent.Inst'Class) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QHoverEvent");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (type_K_P    : access QtAda6.QtCore.QEvent.Type_K.Inst'Class;
      pos_P       : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element;
      oldPos_P    : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element;
      modifiers_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class := null;
      device_P    : access QtAda6.QtGui.QPointingDevice.Inst'Class      := null) return Class
   is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QHoverEvent");
      Args  := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if type_K_P /= null then type_K_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if pos_P /= null then pos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if oldPos_P /= null then oldPos_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if modifiers_P /= null then
         Dict_SetItemString (Dict, "modifiers", modifiers_P.Python_Proxy);
      end if;
      if device_P /= null then
         Dict_SetItemString (Dict, "device", device_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (type_K_P    : access QtAda6.QtCore.QEvent.Type_K.Inst'Class;
      scenePos_P  : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element;
      globalPos_P : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element;
      oldPos_P    : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element;
      modifiers_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class := null;
      device_P    : access QtAda6.QtGui.QPointingDevice.Inst'Class      := null) return Class
   is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QHoverEvent");
      Args  := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if type_K_P /= null then type_K_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if scenePos_P /= null then scenePos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if globalPos_P /= null then globalPos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if oldPos_P /= null then oldPos_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if modifiers_P /= null then
         Dict_SetItemString (Dict, "modifiers", modifiers_P.Python_Proxy);
      end if;
      if device_P /= null then
         Dict_SetItemString (Dict, "device", device_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function clone (self : access Inst) return access QtAda6.QtGui.QHoverEvent.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QHoverEvent.Class := new QtAda6.QtGui.QHoverEvent.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "clone");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end clone;
   function isUpdateEvent (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isUpdateEvent");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isUpdateEvent;
   function oldPos (self : access Inst) return access QtAda6.QtCore.QPoint.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QPoint.Class := new QtAda6.QtCore.QPoint.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "oldPos");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end oldPos;
   function oldPosF (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QPointF.Class := new QtAda6.QtCore.QPointF.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "oldPosF");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end oldPosF;
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
end QtAda6.QtGui.QHoverEvent;
