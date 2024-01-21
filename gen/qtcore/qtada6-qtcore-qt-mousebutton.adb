-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qt-mousebutton.adb
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
package body QtAda6.QtCore.Qt.MouseButton is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function NoButton return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "MouseButton");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "NoButton"));
   end NoButton;
   function LeftButton return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "MouseButton");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "LeftButton"));
   end LeftButton;
   function RightButton return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "MouseButton");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "RightButton"));
   end RightButton;
   function MiddleButton return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "MouseButton");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "MiddleButton"));
   end MiddleButton;
   function BackButton return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "MouseButton");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "BackButton"));
   end BackButton;
   function ExtraButton1 return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "MouseButton");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ExtraButton1"));
   end ExtraButton1;
   function XButton1 return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "MouseButton");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "XButton1"));
   end XButton1;
   function ExtraButton2 return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "MouseButton");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ExtraButton2"));
   end ExtraButton2;
   function ForwardButton return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "MouseButton");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ForwardButton"));
   end ForwardButton;
   function XButton2 return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "MouseButton");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "XButton2"));
   end XButton2;
   function ExtraButton3 return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "MouseButton");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ExtraButton3"));
   end ExtraButton3;
   function TaskButton return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "MouseButton");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "TaskButton"));
   end TaskButton;
   function ExtraButton4 return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "MouseButton");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ExtraButton4"));
   end ExtraButton4;
   function ExtraButton5 return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "MouseButton");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ExtraButton5"));
   end ExtraButton5;
   function ExtraButton6 return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "MouseButton");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ExtraButton6"));
   end ExtraButton6;
   function ExtraButton7 return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "MouseButton");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ExtraButton7"));
   end ExtraButton7;
   function ExtraButton8 return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "MouseButton");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ExtraButton8"));
   end ExtraButton8;
   function ExtraButton9 return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "MouseButton");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ExtraButton9"));
   end ExtraButton9;
   function ExtraButton10 return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "MouseButton");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ExtraButton10"));
   end ExtraButton10;
   function ExtraButton11 return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "MouseButton");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ExtraButton11"));
   end ExtraButton11;
   function ExtraButton12 return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "MouseButton");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ExtraButton12"));
   end ExtraButton12;
   function ExtraButton13 return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "MouseButton");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ExtraButton13"));
   end ExtraButton13;
   function ExtraButton14 return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "MouseButton");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ExtraButton14"));
   end ExtraButton14;
   function ExtraButton15 return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "MouseButton");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ExtraButton15"));
   end ExtraButton15;
   function ExtraButton16 return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "MouseButton");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ExtraButton16"));
   end ExtraButton16;
   function ExtraButton17 return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "MouseButton");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ExtraButton17"));
   end ExtraButton17;
   function ExtraButton18 return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "MouseButton");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ExtraButton18"));
   end ExtraButton18;
   function ExtraButton19 return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "MouseButton");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ExtraButton19"));
   end ExtraButton19;
   function ExtraButton20 return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "MouseButton");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ExtraButton20"));
   end ExtraButton20;
   function ExtraButton21 return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "MouseButton");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ExtraButton21"));
   end ExtraButton21;
   function ExtraButton22 return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "MouseButton");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ExtraButton22"));
   end ExtraButton22;
   function ExtraButton23 return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "MouseButton");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ExtraButton23"));
   end ExtraButton23;
   function ExtraButton24 return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "MouseButton");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ExtraButton24"));
   end ExtraButton24;
   function MaxMouseButton return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "MouseButton");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "MaxMouseButton"));
   end MaxMouseButton;
   function AllButtons return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "MouseButton");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "AllButtons"));
   end AllButtons;
   function MouseButtonMask return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "MouseButton");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "MouseButtonMask"));
   end MouseButtonMask;
end QtAda6.QtCore.Qt.MouseButton;
