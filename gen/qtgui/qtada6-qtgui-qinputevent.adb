-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qinputevent.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Py; use Py;
with Ada.Unchecked_Deallocation;
with QtAda6.QtCore.QEvent;
with QtAda6.QtCore.QEvent.Type_K;
with QtAda6.QtGui.QInputDevice;
with QtAda6.QtCore.Qt.KeyboardModifier;
with QtAda6.QtGui.QInputDevice.DeviceType;
package body QtAda6.QtGui.QInputEvent is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create (arg_1_P : access QtAda6.QtGui.QInputEvent.Inst'Class) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QInputEvent");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, arg_1_P.Python_Proxy);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create
     (type_K_P : access QtAda6.QtCore.QEvent.Type_K.Inst'Class; m_dev_P : access QtAda6.QtGui.QInputDevice.Inst'Class;
      modifiers_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class) return Class
   is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QInputEvent");
      Args  := Tuple_New (3);
      Tuple_SetItem (Args, 0, type_K_P.Python_Proxy);
      Tuple_SetItem (Args, 1, m_dev_P.Python_Proxy);
      Tuple_SetItem (Args, 2, modifiers_P.Python_Proxy);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function clone (self : access Inst) return access QtAda6.QtGui.QInputEvent.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QInputEvent.Class := new QtAda6.QtGui.QInputEvent.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "clone");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end clone;
   function device (self : access Inst) return access QtAda6.QtGui.QInputDevice.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QInputDevice.Class := new QtAda6.QtGui.QInputDevice.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "device");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end device;
   function deviceType (self : access Inst) return access QtAda6.QtGui.QInputDevice.DeviceType.Inst'Class is
      Method, Args, Result : Handle;
      Ret : constant QtAda6.QtGui.QInputDevice.DeviceType.Class := new QtAda6.QtGui.QInputDevice.DeviceType.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "deviceType");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end deviceType;
   function modifiers (self : access Inst) return access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class is
      Method, Args, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.KeyboardModifier.Class := new QtAda6.QtCore.Qt.KeyboardModifier.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "modifiers");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end modifiers;
   procedure setModifiers (self : access Inst; modifiers_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setModifiers");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, modifiers_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setModifiers;
   procedure setTimestamp (self : access Inst; timestamp_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setTimestamp");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (timestamp_P));
      Result := Object_CallObject (Method, Args, True);
   end setTimestamp;
   function timestamp (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "timestamp");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end timestamp;
end QtAda6.QtGui.QInputEvent;
