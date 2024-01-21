-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qt-focusreason.adb
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
package body QtAda6.QtCore.Qt.FocusReason is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function MouseFocusReason return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "FocusReason");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "MouseFocusReason"));
   end MouseFocusReason;
   function TabFocusReason return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "FocusReason");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "TabFocusReason"));
   end TabFocusReason;
   function BacktabFocusReason return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "FocusReason");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "BacktabFocusReason"));
   end BacktabFocusReason;
   function ActiveWindowFocusReason return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "FocusReason");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ActiveWindowFocusReason"));
   end ActiveWindowFocusReason;
   function PopupFocusReason return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "FocusReason");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PopupFocusReason"));
   end PopupFocusReason;
   function ShortcutFocusReason return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "FocusReason");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ShortcutFocusReason"));
   end ShortcutFocusReason;
   function MenuBarFocusReason return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "FocusReason");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "MenuBarFocusReason"));
   end MenuBarFocusReason;
   function OtherFocusReason return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "FocusReason");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "OtherFocusReason"));
   end OtherFocusReason;
   function NoFocusReason return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "FocusReason");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "NoFocusReason"));
   end NoFocusReason;
end QtAda6.QtCore.Qt.FocusReason;
