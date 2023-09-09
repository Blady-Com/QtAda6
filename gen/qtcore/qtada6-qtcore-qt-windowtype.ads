-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qt-windowtype.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.IntFlag;
package QtAda6.QtCore.Qt.WindowType is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.IntFlag.Inst with null record;
   procedure Finalize (Self : in out Class);
   Widget                              : Qt.WindowType.Class;-- 0x0
   Window                              : Qt.WindowType.Class;-- 0x1
   Dialog                              : Qt.WindowType.Class;-- 0x3
   Sheet                               : Qt.WindowType.Class;-- 0x5
   Drawer                              : Qt.WindowType.Class;-- 0x7
   Popup                               : Qt.WindowType.Class;-- 0x9
   Tool                                : Qt.WindowType.Class;-- 0xb
   ToolTip                             : Qt.WindowType.Class;-- 0xd
   SplashScreen                        : Qt.WindowType.Class;-- 0xf
   Desktop                             : Qt.WindowType.Class;-- 0x11
   SubWindow                           : Qt.WindowType.Class;-- 0x12
   ForeignWindow                       : Qt.WindowType.Class;-- 0x21
   CoverWindow                         : Qt.WindowType.Class;-- 0x41
   WindowType_Mask                     : Qt.WindowType.Class;-- 0xff
   MSWindowsFixedSizeDialogHint        : Qt.WindowType.Class;-- 0x100
   MSWindowsOwnDC                      : Qt.WindowType.Class;-- 0x200
   BypassWindowManagerHint             : Qt.WindowType.Class;-- 0x400
   X11BypassWindowManagerHint          : Qt.WindowType.Class;-- 0x400
   FramelessWindowHint                 : Qt.WindowType.Class;-- 0x800
   WindowTitleHint                     : Qt.WindowType.Class;-- 0x1000
   WindowSystemMenuHint                : Qt.WindowType.Class;-- 0x2000
   WindowMinimizeButtonHint            : Qt.WindowType.Class;-- 0x4000
   WindowMaximizeButtonHint            : Qt.WindowType.Class;-- 0x8000
   WindowMinMaxButtonsHint             : Qt.WindowType.Class;-- 0xc000
   WindowContextHelpButtonHint         : Qt.WindowType.Class;-- 0x10000
   WindowShadeButtonHint               : Qt.WindowType.Class;-- 0x20000
   WindowStaysOnTopHint                : Qt.WindowType.Class;-- 0x40000
   WindowTransparentForInput           : Qt.WindowType.Class;-- 0x80000
   WindowOverridesSystemGestures       : Qt.WindowType.Class;-- 0x100000
   WindowDoesNotAcceptFocus            : Qt.WindowType.Class;-- 0x200000
   MaximizeUsingFullscreenGeometryHint : Qt.WindowType.Class;-- 0x400000
   CustomizeWindowHint                 : Qt.WindowType.Class;-- 0x2000000
   WindowStaysOnBottomHint             : Qt.WindowType.Class;-- 0x4000000
   WindowCloseButtonHint               : Qt.WindowType.Class;-- 0x8000000
   MacWindowToolBarButtonHint          : Qt.WindowType.Class;-- 0x10000000
   BypassGraphicsProxyWidget           : Qt.WindowType.Class;-- 0x20000000
   NoDropShadowWindowHint              : Qt.WindowType.Class;-- 0x40000000
   WindowFullscreenButtonHint          : Qt.WindowType.Class;-- 0x80000000
end QtAda6.QtCore.Qt.WindowType;
