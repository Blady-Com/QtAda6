-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qt-windowtype.adb
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
package body QtAda6.QtCore.Qt.WindowType is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Widget return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "WindowType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Widget"));
   end Widget;
   function Window return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "WindowType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Window"));
   end Window;
   function Dialog return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "WindowType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Dialog"));
   end Dialog;
   function Sheet return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "WindowType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Sheet"));
   end Sheet;
   function Drawer return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "WindowType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Drawer"));
   end Drawer;
   function Popup return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "WindowType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Popup"));
   end Popup;
   function Tool return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "WindowType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Tool"));
   end Tool;
   function ToolTip return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "WindowType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ToolTip"));
   end ToolTip;
   function SplashScreen return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "WindowType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SplashScreen"));
   end SplashScreen;
   function Desktop return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "WindowType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Desktop"));
   end Desktop;
   function SubWindow return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "WindowType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SubWindow"));
   end SubWindow;
   function ForeignWindow return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "WindowType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ForeignWindow"));
   end ForeignWindow;
   function CoverWindow return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "WindowType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "CoverWindow"));
   end CoverWindow;
   function WindowType_Mask return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "WindowType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "WindowType_Mask"));
   end WindowType_Mask;
   function MSWindowsFixedSizeDialogHint return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "WindowType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "MSWindowsFixedSizeDialogHint"));
   end MSWindowsFixedSizeDialogHint;
   function MSWindowsOwnDC return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "WindowType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "MSWindowsOwnDC"));
   end MSWindowsOwnDC;
   function BypassWindowManagerHint return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "WindowType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "BypassWindowManagerHint"));
   end BypassWindowManagerHint;
   function X11BypassWindowManagerHint return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "WindowType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "X11BypassWindowManagerHint"));
   end X11BypassWindowManagerHint;
   function FramelessWindowHint return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "WindowType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "FramelessWindowHint"));
   end FramelessWindowHint;
   function WindowTitleHint return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "WindowType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "WindowTitleHint"));
   end WindowTitleHint;
   function WindowSystemMenuHint return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "WindowType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "WindowSystemMenuHint"));
   end WindowSystemMenuHint;
   function WindowMinimizeButtonHint return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "WindowType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "WindowMinimizeButtonHint"));
   end WindowMinimizeButtonHint;
   function WindowMaximizeButtonHint return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "WindowType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "WindowMaximizeButtonHint"));
   end WindowMaximizeButtonHint;
   function WindowMinMaxButtonsHint return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "WindowType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "WindowMinMaxButtonsHint"));
   end WindowMinMaxButtonsHint;
   function WindowContextHelpButtonHint return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "WindowType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "WindowContextHelpButtonHint"));
   end WindowContextHelpButtonHint;
   function WindowShadeButtonHint return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "WindowType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "WindowShadeButtonHint"));
   end WindowShadeButtonHint;
   function WindowStaysOnTopHint return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "WindowType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "WindowStaysOnTopHint"));
   end WindowStaysOnTopHint;
   function WindowTransparentForInput return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "WindowType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "WindowTransparentForInput"));
   end WindowTransparentForInput;
   function WindowOverridesSystemGestures return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "WindowType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "WindowOverridesSystemGestures"));
   end WindowOverridesSystemGestures;
   function WindowDoesNotAcceptFocus return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "WindowType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "WindowDoesNotAcceptFocus"));
   end WindowDoesNotAcceptFocus;
   function MaximizeUsingFullscreenGeometryHint return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "WindowType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "MaximizeUsingFullscreenGeometryHint"));
   end MaximizeUsingFullscreenGeometryHint;
   function CustomizeWindowHint return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "WindowType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "CustomizeWindowHint"));
   end CustomizeWindowHint;
   function WindowStaysOnBottomHint return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "WindowType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "WindowStaysOnBottomHint"));
   end WindowStaysOnBottomHint;
   function WindowCloseButtonHint return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "WindowType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "WindowCloseButtonHint"));
   end WindowCloseButtonHint;
   function MacWindowToolBarButtonHint return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "WindowType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "MacWindowToolBarButtonHint"));
   end MacWindowToolBarButtonHint;
   function BypassGraphicsProxyWidget return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "WindowType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "BypassGraphicsProxyWidget"));
   end BypassGraphicsProxyWidget;
   function NoDropShadowWindowHint return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "WindowType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "NoDropShadowWindowHint"));
   end NoDropShadowWindowHint;
   function WindowFullscreenButtonHint return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "WindowType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "WindowFullscreenButtonHint"));
   end WindowFullscreenButtonHint;
end QtAda6.QtCore.Qt.WindowType;
