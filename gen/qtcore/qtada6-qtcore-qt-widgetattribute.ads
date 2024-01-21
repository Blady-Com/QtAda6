-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qt-widgetattribute.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtCore.Qt.WidgetAttribute is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.Enum with null record;
   procedure Finalize (Self : in out Class);
   function WA_Disabled return Class;-- 0x0
   function WA_UnderMouse return Class;-- 0x1
   function WA_MouseTracking return Class;-- 0x2
   function WA_OpaquePaintEvent return Class;-- 0x4
   function WA_StaticContents return Class;-- 0x5
   function WA_LaidOut return Class;-- 0x7
   function WA_PaintOnScreen return Class;-- 0x8
   function WA_NoSystemBackground return Class;-- 0x9
   function WA_UpdatesDisabled return Class;-- 0xa
   function WA_Mapped return Class;-- 0xb
   function WA_InputMethodEnabled return Class;-- 0xe
   function WA_WState_Visible return Class;-- 0xf
   function WA_WState_Hidden return Class;-- 0x10
   function WA_ForceDisabled return Class;-- 0x20
   function WA_KeyCompression return Class;-- 0x21
   function WA_PendingMoveEvent return Class;-- 0x22
   function WA_PendingResizeEvent return Class;-- 0x23
   function WA_SetPalette return Class;-- 0x24
   function WA_SetFont return Class;-- 0x25
   function WA_SetCursor return Class;-- 0x26
   function WA_NoChildEventsFromChildren return Class;-- 0x27
   function WA_WindowModified return Class;-- 0x29
   function WA_Resized return Class;-- 0x2a
   function WA_Moved return Class;-- 0x2b
   function WA_PendingUpdate return Class;-- 0x2c
   function WA_InvalidSize return Class;-- 0x2d
   function WA_CustomWhatsThis return Class;-- 0x2f
   function WA_LayoutOnEntireRect return Class;-- 0x30
   function WA_OutsideWSRange return Class;-- 0x31
   function WA_GrabbedShortcut return Class;-- 0x32
   function WA_TransparentForMouseEvents return Class;-- 0x33
   function WA_PaintUnclipped return Class;-- 0x34
   function WA_SetWindowIcon return Class;-- 0x35
   function WA_NoMouseReplay return Class;-- 0x36
   function WA_DeleteOnClose return Class;-- 0x37
   function WA_RightToLeft return Class;-- 0x38
   function WA_SetLayoutDirection return Class;-- 0x39
   function WA_NoChildEventsForParent return Class;-- 0x3a
   function WA_ForceUpdatesDisabled return Class;-- 0x3b
   function WA_WState_Created return Class;-- 0x3c
   function WA_WState_CompressKeys return Class;-- 0x3d
   function WA_WState_InPaintEvent return Class;-- 0x3e
   function WA_WState_Reparented return Class;-- 0x3f
   function WA_WState_ConfigPending return Class;-- 0x40
   function WA_WState_Polished return Class;-- 0x42
   function WA_WState_OwnSizePolicy return Class;-- 0x44
   function WA_WState_ExplicitShowHide return Class;-- 0x45
   function WA_ShowModal return Class;-- 0x46
   function WA_MouseNoMask return Class;-- 0x47
   function WA_NoMousePropagation return Class;-- 0x49
   function WA_Hover return Class;-- 0x4a
   function WA_InputMethodTransparent return Class;-- 0x4b
   function WA_QuitOnClose return Class;-- 0x4c
   function WA_KeyboardFocusChange return Class;-- 0x4d
   function WA_AcceptDrops return Class;-- 0x4e
   function WA_DropSiteRegistered return Class;-- 0x4f
   function WA_WindowPropagation return Class;-- 0x50
   function WA_NoX11EventCompression return Class;-- 0x51
   function WA_TintedBackground return Class;-- 0x52
   function WA_X11OpenGLOverlay return Class;-- 0x53
   function WA_AlwaysShowToolTips return Class;-- 0x54
   function WA_MacOpaqueSizeGrip return Class;-- 0x55
   function WA_SetStyle return Class;-- 0x56
   function WA_SetLocale return Class;-- 0x57
   function WA_MacShowFocusRect return Class;-- 0x58
   function WA_MacNormalSize return Class;-- 0x59
   function WA_MacSmallSize return Class;-- 0x5a
   function WA_MacMiniSize return Class;-- 0x5b
   function WA_LayoutUsesWidgetRect return Class;-- 0x5c
   function WA_StyledBackground return Class;-- 0x5d
   function WA_CanHostQMdiSubWindowTitleBar return Class;-- 0x5f
   function WA_MacAlwaysShowToolWindow return Class;-- 0x60
   function WA_StyleSheet return Class;-- 0x61
   function WA_ShowWithoutActivating return Class;-- 0x62
   function WA_X11BypassTransientForHint return Class;-- 0x63
   function WA_NativeWindow return Class;-- 0x64
   function WA_DontCreateNativeAncestors return Class;-- 0x65
   function WA_DontShowOnScreen return Class;-- 0x67
   function WA_X11NetWmWindowTypeDesktop return Class;-- 0x68
   function WA_X11NetWmWindowTypeDock return Class;-- 0x69
   function WA_X11NetWmWindowTypeToolBar return Class;-- 0x6a
   function WA_X11NetWmWindowTypeMenu return Class;-- 0x6b
   function WA_X11NetWmWindowTypeUtility return Class;-- 0x6c
   function WA_X11NetWmWindowTypeSplash return Class;-- 0x6d
   function WA_X11NetWmWindowTypeDialog return Class;-- 0x6e
   function WA_X11NetWmWindowTypeDropDownMenu return Class;-- 0x6f
   function WA_X11NetWmWindowTypePopupMenu return Class;-- 0x70
   function WA_X11NetWmWindowTypeToolTip return Class;-- 0x71
   function WA_X11NetWmWindowTypeNotification return Class;-- 0x72
   function WA_X11NetWmWindowTypeCombo return Class;-- 0x73
   function WA_X11NetWmWindowTypeDND return Class;-- 0x74
   function WA_SetWindowModality return Class;-- 0x76
   function WA_WState_WindowOpacitySet return Class;-- 0x77
   function WA_TranslucentBackground return Class;-- 0x78
   function WA_AcceptTouchEvents return Class;-- 0x79
   function WA_WState_AcceptedTouchBeginEvent return Class;-- 0x7a
   function WA_TouchPadAcceptSingleTouchEvents return Class;-- 0x7b
   function WA_X11DoNotAcceptFocus return Class;-- 0x7e
   function WA_AlwaysStackOnTop return Class;-- 0x80
   function WA_TabletTracking return Class;-- 0x81
   function WA_ContentsMarginsRespectsSafeArea return Class;-- 0x82
   function WA_StyleSheetTarget return Class;-- 0x83
   function WA_AttributeCount return Class;-- 0x84
end QtAda6.QtCore.Qt.WidgetAttribute;
