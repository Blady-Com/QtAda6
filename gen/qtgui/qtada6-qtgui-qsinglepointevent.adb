-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qsinglepointevent.adb
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
with QtAda6.QtGui.QSinglePointEvent;
with QtAda6.QtCore.QEvent.Type_K;
with QtAda6.QtGui.QPointingDevice;
with QtAda6.QtCore.Qt.MouseButton;
with QtAda6.QtCore.Qt.KeyboardModifier;
with QtAda6.QtCore.Qt.MouseEventSource;
with QtAda6.QtGui.QEventPoint;
with QtAda6.QtCore.QObject;
with QtAda6.QtCore.QPointF;
package body QtAda6.QtGui.QSinglePointEvent is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create (arg_1_P : access QtAda6.QtGui.QSinglePointEvent.Inst'Class) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QSinglePointEvent");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (type_K_P : access QtAda6.QtCore.QEvent.Type_K.Inst'Class; dev_P : access QtAda6.QtGui.QPointingDevice.Inst'Class;
      localPos_P  : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element;
      scenePos_P  : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element;
      globalPos_P : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element;
      button_P    : access QtAda6.QtCore.Qt.MouseButton.Inst'Class;
      buttons_P   : access QtAda6.QtCore.Qt.MouseButton.Inst'Class;
      modifiers_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class;
      source_P    : access QtAda6.QtCore.Qt.MouseEventSource.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QSinglePointEvent");
      Args  := Tuple_New (8);
      Tuple_SetItem (Args, 0, (if type_K_P /= null then type_K_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if dev_P /= null then dev_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if localPos_P /= null then localPos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if scenePos_P /= null then scenePos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, (if globalPos_P /= null then globalPos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 5, (if button_P /= null then button_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 6, (if buttons_P /= null then buttons_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 7, (if modifiers_P /= null then modifiers_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if source_P /= null then
         Dict_SetItemString (Dict, "source", source_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (type_K_P : access QtAda6.QtCore.QEvent.Type_K.Inst'Class; dev_P : access QtAda6.QtGui.QPointingDevice.Inst'Class;
      point_P : access QtAda6.QtGui.QEventPoint.Inst'Class; button_P : access QtAda6.QtCore.Qt.MouseButton.Inst'Class;
      buttons_P   : access QtAda6.QtCore.Qt.MouseButton.Inst'Class;
      modifiers_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class;
      source_P    : access QtAda6.QtCore.Qt.MouseEventSource.Inst'Class) return Class
   is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QSinglePointEvent");
      Args  := Tuple_New (7);
      Tuple_SetItem (Args, 0, (if type_K_P /= null then type_K_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if dev_P /= null then dev_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if point_P /= null then point_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if button_P /= null then button_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, (if buttons_P /= null then buttons_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 5, (if modifiers_P /= null then modifiers_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 6, (if source_P /= null then source_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function button (self : access Inst) return access QtAda6.QtCore.Qt.MouseButton.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.MouseButton.Class := new QtAda6.QtCore.Qt.MouseButton.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "button");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end button;
   function buttons (self : access Inst) return access QtAda6.QtCore.Qt.MouseButton.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.MouseButton.Class := new QtAda6.QtCore.Qt.MouseButton.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "buttons");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end buttons;
   function clone (self : access Inst) return access QtAda6.QtGui.QSinglePointEvent.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QSinglePointEvent.Class := new QtAda6.QtGui.QSinglePointEvent.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "clone");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end clone;
   function exclusivePointGrabber (self : access Inst) return access QtAda6.QtCore.QObject.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QObject.Class := new QtAda6.QtCore.QObject.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "exclusivePointGrabber");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end exclusivePointGrabber;
   function globalPosition (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QPointF.Class := new QtAda6.QtCore.QPointF.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "globalPosition");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end globalPosition;
   function isBeginEvent (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isBeginEvent");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isBeginEvent;
   function isEndEvent (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isEndEvent");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isEndEvent;
   function isUpdateEvent (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isUpdateEvent");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isUpdateEvent;
   function position (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QPointF.Class := new QtAda6.QtCore.QPointF.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "position");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end position;
   function scenePosition (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QPointF.Class := new QtAda6.QtCore.QPointF.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "scenePosition");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end scenePosition;
   procedure setExclusivePointGrabber (self : access Inst; exclusiveGrabber_P : access QtAda6.QtCore.QObject.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setExclusivePointGrabber");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if exclusiveGrabber_P /= null then exclusiveGrabber_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setExclusivePointGrabber;
end QtAda6.QtGui.QSinglePointEvent;
