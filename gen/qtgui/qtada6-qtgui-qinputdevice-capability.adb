-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qinputdevice-capability.adb
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
package body QtAda6.QtGui.QInputDevice.Capability is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function None_U return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QInputDevice");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "None_"));
   end None_U;
   function Position return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QInputDevice");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Position"));
   end Position;
   function Area return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QInputDevice");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Area"));
   end Area;
   function Pressure return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QInputDevice");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Pressure"));
   end Pressure;
   function Velocity return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QInputDevice");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Velocity"));
   end Velocity;
   function NormalizedPosition return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QInputDevice");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "NormalizedPosition"));
   end NormalizedPosition;
   function MouseEmulation return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QInputDevice");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "MouseEmulation"));
   end MouseEmulation;
   function PixelScroll return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QInputDevice");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PixelScroll"));
   end PixelScroll;
   function Scroll return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QInputDevice");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Scroll"));
   end Scroll;
   function Hover return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QInputDevice");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Hover"));
   end Hover;
   function Rotation return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QInputDevice");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Rotation"));
   end Rotation;
   function XTilt return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QInputDevice");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "XTilt"));
   end XTilt;
   function YTilt return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QInputDevice");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "YTilt"));
   end YTilt;
   function TangentialPressure return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QInputDevice");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "TangentialPressure"));
   end TangentialPressure;
   function ZPosition return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QInputDevice");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ZPosition"));
   end ZPosition;
   function All_K return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QInputDevice");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "All"));
   end All_K;
end QtAda6.QtGui.QInputDevice.Capability;
