-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qinputdevice.adb
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
with QtAda6.QtCore.QObject;
with QtAda6.QtGui.QInputDevice.DeviceType;
with QtAda6.QtCore.QRect;
with QtAda6.QtGui.QInputDevice.Capability;
package body QtAda6.QtGui.QInputDevice is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function availableVirtualGeometryChanged (self : access Inst) return CLASSVAR_Signal is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'
          (Python_Proxy => Object_GetAttrString (self.Python_Proxy, "availableVirtualGeometryChanged"));
   end availableVirtualGeometryChanged;
   function Create
     (name_P     : str; systemId_P : int; type_K_P : access QtAda6.QtGui.QInputDevice.DeviceType.Inst'Class;
      seatName_P : str := ""; parent_P : access QtAda6.QtCore.QObject.Inst'Class := null) return Class
   is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QInputDevice");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, Unicode_FromString (name_P));
      Tuple_SetItem (Args, 1, Long_FromLong (systemId_P));
      Tuple_SetItem (Args, 2, (if type_K_P /= null then type_K_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, Unicode_FromString (seatName_P));
      Tuple_SetItem (Args, 4, (if parent_P /= null then parent_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (parent_P : access QtAda6.QtCore.QObject.Inst'Class := null) return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QInputDevice");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if parent_P /= null then parent_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function availableVirtualGeometry (self : access Inst) return access QtAda6.QtCore.QRect.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QRect.Class := new QtAda6.QtCore.QRect.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "availableVirtualGeometry");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end availableVirtualGeometry;
   function capabilities (self : access Inst) return access QtAda6.QtGui.QInputDevice.Capability.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtGui.QInputDevice.Capability.Class := new QtAda6.QtGui.QInputDevice.Capability.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "capabilities");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end capabilities;
   function devices return LIST_QtAda6_QtGui_QInputDevice is
      Class, Method, Args, List, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QInputDevice");
      Method := Object_GetAttrString (Class, "devices");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return (2 .. 1 => <>);
   end devices;
   function hasCapability
     (self : access Inst; cap_P : access QtAda6.QtGui.QInputDevice.Capability.Inst'Class) return bool
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hasCapability");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if cap_P /= null then cap_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end hasCapability;
   function name (self : access Inst) return str is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "name");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end name;
   function primaryKeyboard (seatName_P : str := "") return access QtAda6.QtGui.QInputDevice.Inst'Class is
      Class, Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtGui.QInputDevice.Class := new QtAda6.QtGui.QInputDevice.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QInputDevice");
      Method := Object_GetAttrString (Class, "primaryKeyboard");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (seatName_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end primaryKeyboard;
   function seatName (self : access Inst) return str is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "seatName");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end seatName;
   function seatNames return LIST_str is
      Class, Method, Args, List, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QInputDevice");
      Method := Object_GetAttrString (Class, "seatNames");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return (2 .. 1 => <>);
   end seatNames;
   function systemId (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "systemId");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end systemId;
   function type_K (self : access Inst) return access QtAda6.QtGui.QInputDevice.DeviceType.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtGui.QInputDevice.DeviceType.Class := new QtAda6.QtGui.QInputDevice.DeviceType.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "type");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end type_K;
end QtAda6.QtGui.QInputDevice;
