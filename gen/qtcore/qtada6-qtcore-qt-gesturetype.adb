-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qt-gesturetype.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Py; use Py;
with Ada.Unchecked_Deallocation;
package body QtAda6.QtCore.Qt.GestureType is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function TapGesture return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "GestureType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "TapGesture"));
   end TapGesture;
   function TapAndHoldGesture return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "GestureType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "TapAndHoldGesture"));
   end TapAndHoldGesture;
   function PanGesture return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "GestureType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PanGesture"));
   end PanGesture;
   function PinchGesture return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "GestureType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PinchGesture"));
   end PinchGesture;
   function SwipeGesture return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "GestureType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SwipeGesture"));
   end SwipeGesture;
   function CustomGesture return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "GestureType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "CustomGesture"));
   end CustomGesture;
   function LastGestureType return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "GestureType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "LastGestureType"));
   end LastGestureType;
end QtAda6.QtCore.Qt.GestureType;
