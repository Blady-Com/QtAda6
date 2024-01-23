-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qmouseevent.adb
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
with QtAda6.QtCore.QPointF;
with QtAda6.QtCore.QPoint;
with QtAda6.QtGui.QPainterPath.Element;
with QtAda6.QtCore.Qt.MouseButton;
with QtAda6.QtCore.Qt.KeyboardModifier;
with QtAda6.QtGui.QPointingDevice;
with QtAda6.QtCore.Qt.MouseEventSource;
with QtAda6.QtCore.Qt.MouseEventFlag;
package body QtAda6.QtGui.QMouseEvent is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create (arg_1_P : access QtAda6.QtGui.QMouseEvent.Inst'Class) return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QMouseEvent");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create
     (type_K_P    : access QtAda6.QtCore.QEvent.Type_K.Inst'Class;
      localPos_P  : UNION_QtAda6_QtCore_QPointFQtAda6_QtCore_QPointQtAda6_QtGui_QPainterPath_Element;
      button_P    : access QtAda6.QtCore.Qt.MouseButton.Inst'Class;
      buttons_P   : access QtAda6.QtCore.Qt.MouseButton.Inst'Class;
      modifiers_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class;
      device_P    : access QtAda6.QtGui.QPointingDevice.Inst'Class := null) return Class
   is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QMouseEvent");
      Args  := Tuple_New (6);
      Tuple_SetItem (Args, 0, (if type_K_P /= null then type_K_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if localPos_P /= null then localPos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if button_P /= null then button_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if buttons_P /= null then buttons_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, (if modifiers_P /= null then modifiers_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 5, (if device_P /= null then device_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create
     (type_K_P    : access QtAda6.QtCore.QEvent.Type_K.Inst'Class;
      localPos_P  : UNION_QtAda6_QtCore_QPointFQtAda6_QtCore_QPointQtAda6_QtGui_QPainterPath_Element;
      globalPos_P : UNION_QtAda6_QtCore_QPointFQtAda6_QtCore_QPointQtAda6_QtGui_QPainterPath_Element;
      button_P    : access QtAda6.QtCore.Qt.MouseButton.Inst'Class;
      buttons_P   : access QtAda6.QtCore.Qt.MouseButton.Inst'Class;
      modifiers_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class;
      device_P    : access QtAda6.QtGui.QPointingDevice.Inst'Class := null) return Class
   is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QMouseEvent");
      Args  := Tuple_New (7);
      Tuple_SetItem (Args, 0, (if type_K_P /= null then type_K_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if localPos_P /= null then localPos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if globalPos_P /= null then globalPos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if button_P /= null then button_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, (if buttons_P /= null then buttons_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 5, (if modifiers_P /= null then modifiers_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 6, (if device_P /= null then device_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create
     (type_K_P    : access QtAda6.QtCore.QEvent.Type_K.Inst'Class;
      localPos_P  : UNION_QtAda6_QtCore_QPointFQtAda6_QtCore_QPointQtAda6_QtGui_QPainterPath_Element;
      scenePos_P  : UNION_QtAda6_QtCore_QPointFQtAda6_QtCore_QPointQtAda6_QtGui_QPainterPath_Element;
      globalPos_P : UNION_QtAda6_QtCore_QPointFQtAda6_QtCore_QPointQtAda6_QtGui_QPainterPath_Element;
      button_P    : access QtAda6.QtCore.Qt.MouseButton.Inst'Class;
      buttons_P   : access QtAda6.QtCore.Qt.MouseButton.Inst'Class;
      modifiers_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class;
      device_P    : access QtAda6.QtGui.QPointingDevice.Inst'Class := null) return Class
   is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QMouseEvent");
      Args  := Tuple_New (8);
      Tuple_SetItem (Args, 0, (if type_K_P /= null then type_K_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if localPos_P /= null then localPos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if scenePos_P /= null then scenePos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if globalPos_P /= null then globalPos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, (if button_P /= null then button_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 5, (if buttons_P /= null then buttons_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 6, (if modifiers_P /= null then modifiers_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 7, (if device_P /= null then device_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create
     (type_K_P    : access QtAda6.QtCore.QEvent.Type_K.Inst'Class;
      localPos_P  : UNION_QtAda6_QtCore_QPointFQtAda6_QtCore_QPointQtAda6_QtGui_QPainterPath_Element;
      scenePos_P  : UNION_QtAda6_QtCore_QPointFQtAda6_QtCore_QPointQtAda6_QtGui_QPainterPath_Element;
      globalPos_P : UNION_QtAda6_QtCore_QPointFQtAda6_QtCore_QPointQtAda6_QtGui_QPainterPath_Element;
      button_P    : access QtAda6.QtCore.Qt.MouseButton.Inst'Class;
      buttons_P   : access QtAda6.QtCore.Qt.MouseButton.Inst'Class;
      modifiers_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class;
      source_P    : access QtAda6.QtCore.Qt.MouseEventSource.Inst'Class;
      device_P    : access QtAda6.QtGui.QPointingDevice.Inst'Class := null) return Class
   is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QMouseEvent");
      Args  := Tuple_New (9);
      Tuple_SetItem (Args, 0, (if type_K_P /= null then type_K_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if localPos_P /= null then localPos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if scenePos_P /= null then scenePos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if globalPos_P /= null then globalPos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, (if button_P /= null then button_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 5, (if buttons_P /= null then buttons_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 6, (if modifiers_P /= null then modifiers_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 7, (if source_P /= null then source_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 8, (if device_P /= null then device_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function U_repr_U (self : access Inst) return access Object'Class is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__repr__");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end U_repr_U;
   function clone (self : access Inst) return access QtAda6.QtGui.QMouseEvent.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QMouseEvent.Class := new QtAda6.QtGui.QMouseEvent.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "clone");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end clone;
   function flags (self : access Inst) return access QtAda6.QtCore.Qt.MouseEventFlag.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.MouseEventFlag.Class := new QtAda6.QtCore.Qt.MouseEventFlag.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "flags");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end flags;
   function globalPos (self : access Inst) return access QtAda6.QtCore.QPoint.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QPoint.Class := new QtAda6.QtCore.QPoint.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "globalPos");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end globalPos;
   function globalX (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "globalX");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end globalX;
   function globalY (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "globalY");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end globalY;
   function localPos (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QPointF.Class := new QtAda6.QtCore.QPointF.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "localPos");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end localPos;
   function pos (self : access Inst) return access QtAda6.QtCore.QPoint.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QPoint.Class := new QtAda6.QtCore.QPoint.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "pos");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end pos;
   function screenPos (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QPointF.Class := new QtAda6.QtCore.QPointF.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "screenPos");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end screenPos;
   function source (self : access Inst) return access QtAda6.QtCore.Qt.MouseEventSource.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.MouseEventSource.Class := new QtAda6.QtCore.Qt.MouseEventSource.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "source");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end source;
   function windowPos (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QPointF.Class := new QtAda6.QtCore.QPointF.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "windowPos");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end windowPos;
   function x (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "x");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end x;
   function y (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "y");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end y;
end QtAda6.QtGui.QMouseEvent;
