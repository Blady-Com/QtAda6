-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qt-windowtype.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtCore.Qt.WindowType is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.IntFlag with null record;
   procedure Finalize (Self : in out Class);
   function Widget return Class;-- 0x0
   function Window return Class;-- 0x1
   function Dialog return Class;-- 0x3
   function Sheet return Class;-- 0x5
   function Drawer return Class;-- 0x7
   function Popup return Class;-- 0x9
   function Tool return Class;-- 0xb
   function ToolTip return Class;-- 0xd
   function SplashScreen return Class;-- 0xf
   function Desktop return Class;-- 0x11
   function SubWindow return Class;-- 0x12
   function ForeignWindow return Class;-- 0x21
   function CoverWindow return Class;-- 0x41
   function WindowType_Mask return Class;-- 0xff
   function MSWindowsFixedSizeDialogHint return Class;-- 0x100
   function MSWindowsOwnDC return Class;-- 0x200
   function BypassWindowManagerHint return Class;-- 0x400
   function X11BypassWindowManagerHint return Class;-- 0x400
   function FramelessWindowHint return Class;-- 0x800
   function WindowTitleHint return Class;-- 0x1000
   function WindowSystemMenuHint return Class;-- 0x2000
   function WindowMinimizeButtonHint return Class;-- 0x4000
   function WindowMaximizeButtonHint return Class;-- 0x8000
   function WindowMinMaxButtonsHint return Class;-- 0xc000
   function WindowContextHelpButtonHint return Class;-- 0x10000
   function WindowShadeButtonHint return Class;-- 0x20000
   function WindowStaysOnTopHint return Class;-- 0x40000
   function WindowTransparentForInput return Class;-- 0x80000
   function WindowOverridesSystemGestures return Class;-- 0x100000
   function WindowDoesNotAcceptFocus return Class;-- 0x200000
   function MaximizeUsingFullscreenGeometryHint return Class;-- 0x400000
   function CustomizeWindowHint return Class;-- 0x2000000
   function WindowStaysOnBottomHint return Class;-- 0x4000000
   function WindowCloseButtonHint return Class;-- 0x8000000
   function MacWindowToolBarButtonHint return Class;-- 0x10000000
   function BypassGraphicsProxyWidget return Class;-- 0x20000000
   function NoDropShadowWindowHint return Class;-- 0x40000000
   function WindowFullscreenButtonHint return Class;-- 0x80000000
end QtAda6.QtCore.Qt.WindowType;
