-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qinputdevice-devicetype.adb
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
package body QtAda6.QtGui.QInputDevice.DeviceType is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Unknown return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QInputDevice");
      Enum_Class   := Object_GetAttrString (Parent_Class, "DeviceType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Unknown"));
   end Unknown;
   function Mouse return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QInputDevice");
      Enum_Class   := Object_GetAttrString (Parent_Class, "DeviceType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Mouse"));
   end Mouse;
   function TouchScreen return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QInputDevice");
      Enum_Class   := Object_GetAttrString (Parent_Class, "DeviceType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "TouchScreen"));
   end TouchScreen;
   function TouchPad return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QInputDevice");
      Enum_Class   := Object_GetAttrString (Parent_Class, "DeviceType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "TouchPad"));
   end TouchPad;
   function Puck return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QInputDevice");
      Enum_Class   := Object_GetAttrString (Parent_Class, "DeviceType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Puck"));
   end Puck;
   function Stylus return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QInputDevice");
      Enum_Class   := Object_GetAttrString (Parent_Class, "DeviceType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Stylus"));
   end Stylus;
   function Airbrush return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QInputDevice");
      Enum_Class   := Object_GetAttrString (Parent_Class, "DeviceType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Airbrush"));
   end Airbrush;
   function Keyboard return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QInputDevice");
      Enum_Class   := Object_GetAttrString (Parent_Class, "DeviceType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Keyboard"));
   end Keyboard;
   function AllDevices return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QInputDevice");
      Enum_Class   := Object_GetAttrString (Parent_Class, "DeviceType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "AllDevices"));
   end AllDevices;
end QtAda6.QtGui.QInputDevice.DeviceType;
