-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qpointingdevice.adb
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
with QtAda6.QtGui.QInputDevice.DeviceType;
with QtAda6.QtGui.QPointingDevice.PointerType;
with QtAda6.QtGui.QInputDevice.Capability;
with QtAda6.QtGui.QPointingDeviceUniqueId;
with QtAda6.QtCore.QObject;
package body QtAda6.QtGui.QPointingDevice is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function grabChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "grabChanged"));
   end grabChanged;
   function Create
     (name_P     : str; systemId_P : int; devType_P : access QtAda6.QtGui.QInputDevice.DeviceType.Inst'Class;
      pType_P    : access QtAda6.QtGui.QPointingDevice.PointerType.Inst'Class;
      caps_P     : access QtAda6.QtGui.QInputDevice.Capability.Inst'Class; maxPoints_P : int; buttonCount_P : int;
      seatName_P : str := ""; uniqueId_P : access QtAda6.QtGui.QPointingDeviceUniqueId.Inst'Class := null;
      parent_P   : access QtAda6.QtCore.QObject.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPointingDevice");
      Args  := Tuple_New (7);
      Tuple_SetItem (Args, 0, Unicode_FromString (name_P));
      Tuple_SetItem (Args, 1, Long_FromLong (systemId_P));
      Tuple_SetItem (Args, 2, (if devType_P /= null then devType_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if pType_P /= null then pType_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, (if caps_P /= null then caps_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 5, Long_FromLong (maxPoints_P));
      Tuple_SetItem (Args, 6, Long_FromLong (buttonCount_P));
      Dict := Dict_New;
      if seatName_P /= "" then
         Dict_SetItemString (Dict, "seatName", Unicode_FromString (seatName_P));
      end if;
      if uniqueId_P /= null then
         Dict_SetItemString (Dict, "uniqueId", uniqueId_P.Python_Proxy);
      end if;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (parent_P : access QtAda6.QtCore.QObject.Inst'Class := null) return Class is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPointingDevice");
      Args  := Tuple_New (0);
      Dict  := Dict_New;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function buttonCount (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "buttonCount");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end buttonCount;
   function maximumPoints (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "maximumPoints");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end maximumPoints;
   function pointerType_F (self : access Inst) return access QtAda6.QtGui.QPointingDevice.PointerType.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret                                          : constant QtAda6.QtGui.QPointingDevice.PointerType.Class :=
        new QtAda6.QtGui.QPointingDevice.PointerType.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "pointerType");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end pointerType_F;
   function primaryPointingDevice (seatName_P : str := "") return access QtAda6.QtGui.QPointingDevice.Inst'Class is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QPointingDevice.Class := new QtAda6.QtGui.QPointingDevice.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPointingDevice");
      Method := Object_GetAttrString (Class, "primaryPointingDevice");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      if seatName_P /= "" then
         Dict_SetItemString (Dict, "seatName", Unicode_FromString (seatName_P));
      end if;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end primaryPointingDevice;
   procedure setCapabilities (self : access Inst; caps_P : access QtAda6.QtGui.QInputDevice.Capability.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setCapabilities");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if caps_P /= null then caps_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setCapabilities;
   procedure setMaximumTouchPoints (self : access Inst; c_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setMaximumTouchPoints");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (c_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setMaximumTouchPoints;
   procedure setType (self : access Inst; devType_P : access QtAda6.QtGui.QInputDevice.DeviceType.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setType");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if devType_P /= null then devType_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setType;
   function uniqueId (self : access Inst) return access QtAda6.QtGui.QPointingDeviceUniqueId.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QPointingDeviceUniqueId.Class := new QtAda6.QtGui.QPointingDeviceUniqueId.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "uniqueId");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end uniqueId;
end QtAda6.QtGui.QPointingDevice;
