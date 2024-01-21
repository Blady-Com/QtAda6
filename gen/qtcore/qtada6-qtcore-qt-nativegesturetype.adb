-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qt-nativegesturetype.adb
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
package body QtAda6.QtCore.Qt.NativeGestureType is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function BeginNativeGesture return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "NativeGestureType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "BeginNativeGesture"));
   end BeginNativeGesture;
   function EndNativeGesture return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "NativeGestureType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "EndNativeGesture"));
   end EndNativeGesture;
   function PanNativeGesture return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "NativeGestureType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PanNativeGesture"));
   end PanNativeGesture;
   function ZoomNativeGesture return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "NativeGestureType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ZoomNativeGesture"));
   end ZoomNativeGesture;
   function SmartZoomNativeGesture return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "NativeGestureType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SmartZoomNativeGesture"));
   end SmartZoomNativeGesture;
   function RotateNativeGesture return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "NativeGestureType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "RotateNativeGesture"));
   end RotateNativeGesture;
   function SwipeNativeGesture return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "NativeGestureType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SwipeNativeGesture"));
   end SwipeNativeGesture;
end QtAda6.QtCore.Qt.NativeGestureType;
