-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qpointingdevice-pointertype.adb
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
package body QtAda6.QtGui.QPointingDevice.PointerType is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Unknown return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPointingDevice");
      Enum_Class   := Object_GetAttrString (Parent_Class, "PointerType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Unknown"));
   end Unknown;
   function Generic_K return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPointingDevice");
      Enum_Class   := Object_GetAttrString (Parent_Class, "PointerType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Generic"));
   end Generic_K;
   function Finger return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPointingDevice");
      Enum_Class   := Object_GetAttrString (Parent_Class, "PointerType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Finger"));
   end Finger;
   function Pen return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPointingDevice");
      Enum_Class   := Object_GetAttrString (Parent_Class, "PointerType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Pen"));
   end Pen;
   function Eraser return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPointingDevice");
      Enum_Class   := Object_GetAttrString (Parent_Class, "PointerType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Eraser"));
   end Eraser;
   function Cursor return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPointingDevice");
      Enum_Class   := Object_GetAttrString (Parent_Class, "PointerType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Cursor"));
   end Cursor;
   function AllPointerTypes return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPointingDevice");
      Enum_Class   := Object_GetAttrString (Parent_Class, "PointerType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "AllPointerTypes"));
   end AllPointerTypes;
end QtAda6.QtGui.QPointingDevice.PointerType;
