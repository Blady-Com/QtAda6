-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qpointerevent.adb
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
with QtAda6.QtGui.QInputEvent;
with QtAda6.QtCore.QEvent.Type_K;
with QtAda6.QtGui.QPointingDevice;
with QtAda6.QtCore.Qt.KeyboardModifier;
with QtAda6.QtGui.QEventPoint;
with QtAda6.QtCore.QObject;
with QtAda6.QtGui.QPointingDevice.PointerType;
package body QtAda6.QtGui.QPointerEvent is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create (arg_1_P : access QtAda6.QtGui.QPointerEvent.Inst'Class) return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPointerEvent");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create
     (type_K_P : access QtAda6.QtCore.QEvent.Type_K.Inst'Class; dev_P : access QtAda6.QtGui.QPointingDevice.Inst'Class;
      modifiers_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class := null;
      points_P    : SEQUENCE_QtAda6_QtGui_QEventPoint                   := (2 .. 1 => <>)) return Class
   is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPointerEvent");
      List  := List_New (points_P'Length);
      for ind in points_P'Range loop
         List_SetItem
           (List, ssize_t (ind - points_P'First),
            (if points_P (ind) /= null then points_P (ind).Python_Proxy else No_Value));
      end loop;
      Args := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if type_K_P /= null then type_K_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if dev_P /= null then dev_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if modifiers_P /= null then modifiers_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, List);
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
   function addPassiveGrabber
     (self      : access Inst; point_P : access QtAda6.QtGui.QEventPoint.Inst'Class;
      grabber_P : access QtAda6.QtCore.QObject.Inst'Class) return bool
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addPassiveGrabber");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if point_P /= null then point_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if grabber_P /= null then grabber_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end addPassiveGrabber;
   function allPointsAccepted (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "allPointsAccepted");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end allPointsAccepted;
   function allPointsGrabbed (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "allPointsGrabbed");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end allPointsGrabbed;
   procedure clearPassiveGrabbers (self : access Inst; point_P : access QtAda6.QtGui.QEventPoint.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "clearPassiveGrabbers");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if point_P /= null then point_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end clearPassiveGrabbers;
   function clone (self : access Inst) return access QtAda6.QtGui.QPointerEvent.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QPointerEvent.Class := new QtAda6.QtGui.QPointerEvent.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "clone");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end clone;
   function exclusiveGrabber
     (self : access Inst; point_P : access QtAda6.QtGui.QEventPoint.Inst'Class)
      return access QtAda6.QtCore.QObject.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QObject.Class := new QtAda6.QtCore.QObject.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "exclusiveGrabber");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if point_P /= null then point_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end exclusiveGrabber;
   function isBeginEvent (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isBeginEvent");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isBeginEvent;
   function isEndEvent (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isEndEvent");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isEndEvent;
   function isUpdateEvent (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isUpdateEvent");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isUpdateEvent;
   function point (self : access Inst; i_P : int) return access QtAda6.QtGui.QEventPoint.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QEventPoint.Class := new QtAda6.QtGui.QEventPoint.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "point");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (i_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end point;
   function pointById (self : access Inst; id_P : int) return access QtAda6.QtGui.QEventPoint.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QEventPoint.Class := new QtAda6.QtGui.QEventPoint.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "pointById");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (id_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end pointById;
   function pointCount (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "pointCount");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end pointCount;
   function pointerType (self : access Inst) return access QtAda6.QtGui.QPointingDevice.PointerType.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QPointingDevice.PointerType.Class :=
        new QtAda6.QtGui.QPointingDevice.PointerType.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "pointerType");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end pointerType;
   function pointingDevice (self : access Inst) return access QtAda6.QtGui.QPointingDevice.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QPointingDevice.Class := new QtAda6.QtGui.QPointingDevice.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "pointingDevice");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end pointingDevice;
   function points (self : access Inst) return LIST_QtAda6_QtGui_QEventPoint is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "points");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return (2 .. 1 => <>);
   end points;
   function removePassiveGrabber
     (self      : access Inst; point_P : access QtAda6.QtGui.QEventPoint.Inst'Class;
      grabber_P : access QtAda6.QtCore.QObject.Inst'Class) return bool
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "removePassiveGrabber");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if point_P /= null then point_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if grabber_P /= null then grabber_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end removePassiveGrabber;
   procedure setAccepted (self : access Inst; accepted_P : bool) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setAccepted");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (accepted_P));
      Result := Object_CallObject (Method, Args, True);
   end setAccepted;
   procedure setExclusiveGrabber
     (self               : access Inst; point_P : access QtAda6.QtGui.QEventPoint.Inst'Class;
      exclusiveGrabber_P : access QtAda6.QtCore.QObject.Inst'Class)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setExclusiveGrabber");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if point_P /= null then point_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if exclusiveGrabber_P /= null then exclusiveGrabber_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setExclusiveGrabber;
   procedure setTimestamp (self : access Inst; timestamp_P : int) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setTimestamp");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (timestamp_P));
      Result := Object_CallObject (Method, Args, True);
   end setTimestamp;
end QtAda6.QtGui.QPointerEvent;
