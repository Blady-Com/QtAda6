-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qtouchevent.adb
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
with QtAda6.QtGui.QPointerEvent;
with QtAda6.QtCore.QEvent.Type_K;
with QtAda6.QtGui.QPointingDevice;
with QtAda6.QtCore.Qt.KeyboardModifier;
with QtAda6.QtGui.QEventPoint;
with QtAda6.QtCore.QObject;
package body QtAda6.QtGui.QTouchEvent is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create (arg_1_P : access QtAda6.QtGui.QTouchEvent.Inst'Class) return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTouchEvent");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create
     (eventType_P   : access QtAda6.QtCore.QEvent.Type_K.Inst'Class;
      device_P      : access QtAda6.QtGui.QPointingDevice.Inst'Class      := null;
      modifiers_P   : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class := null;
      touchPoints_P : SEQUENCE_QtAda6_QtGui_QEventPoint                   := (2 .. 1 => <>)) return Class
   is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTouchEvent");
      List  := List_New (touchPoints_P'Length);
      for ind in touchPoints_P'Range loop
         List_SetItem
           (List, ssize_t (ind - touchPoints_P'First),
            (if touchPoints_P (ind) /= null then touchPoints_P (ind).Python_Proxy else No_Value));
      end loop;
      Args := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if eventType_P /= null then eventType_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if device_P /= null then device_P.Python_Proxy else No_Value));
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
   function clone (self : access Inst) return access QtAda6.QtGui.QTouchEvent.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QTouchEvent.Class := new QtAda6.QtGui.QTouchEvent.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "clone");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end clone;
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
   function target (self : access Inst) return access QtAda6.QtCore.QObject.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QObject.Class := new QtAda6.QtCore.QObject.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "target");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end target;
   function touchPoints (self : access Inst) return LIST_QtAda6_QtGui_QEventPoint is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "touchPoints");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return (2 .. 1 => <>);
   end touchPoints;
end QtAda6.QtGui.QTouchEvent;
