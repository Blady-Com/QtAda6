-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qt-widgetattribute.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Enum;
package QtAda6.QtCore.Qt.WidgetAttribute is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Enum.Inst with null record;
   procedure Finalize (Self : in out Class);
   WA_Disabled                        : Qt.WidgetAttribute.Class;-- 0x0
   WA_UnderMouse                      : Qt.WidgetAttribute.Class;-- 0x1
   WA_MouseTracking                   : Qt.WidgetAttribute.Class;-- 0x2
   WA_OpaquePaintEvent                : Qt.WidgetAttribute.Class;-- 0x4
   WA_StaticContents                  : Qt.WidgetAttribute.Class;-- 0x5
   WA_LaidOut                         : Qt.WidgetAttribute.Class;-- 0x7
   WA_PaintOnScreen                   : Qt.WidgetAttribute.Class;-- 0x8
   WA_NoSystemBackground              : Qt.WidgetAttribute.Class;-- 0x9
   WA_UpdatesDisabled                 : Qt.WidgetAttribute.Class;-- 0xa
   WA_Mapped                          : Qt.WidgetAttribute.Class;-- 0xb
   WA_InputMethodEnabled              : Qt.WidgetAttribute.Class;-- 0xe
   WA_WState_Visible                  : Qt.WidgetAttribute.Class;-- 0xf
   WA_WState_Hidden                   : Qt.WidgetAttribute.Class;-- 0x10
   WA_ForceDisabled                   : Qt.WidgetAttribute.Class;-- 0x20
   WA_KeyCompression                  : Qt.WidgetAttribute.Class;-- 0x21
   WA_PendingMoveEvent                : Qt.WidgetAttribute.Class;-- 0x22
   WA_PendingResizeEvent              : Qt.WidgetAttribute.Class;-- 0x23
   WA_SetPalette                      : Qt.WidgetAttribute.Class;-- 0x24
   WA_SetFont                         : Qt.WidgetAttribute.Class;-- 0x25
   WA_SetCursor                       : Qt.WidgetAttribute.Class;-- 0x26
   WA_NoChildEventsFromChildren       : Qt.WidgetAttribute.Class;-- 0x27
   WA_WindowModified                  : Qt.WidgetAttribute.Class;-- 0x29
   WA_Resized                         : Qt.WidgetAttribute.Class;-- 0x2a
   WA_Moved                           : Qt.WidgetAttribute.Class;-- 0x2b
   WA_PendingUpdate                   : Qt.WidgetAttribute.Class;-- 0x2c
   WA_InvalidSize                     : Qt.WidgetAttribute.Class;-- 0x2d
   WA_CustomWhatsThis                 : Qt.WidgetAttribute.Class;-- 0x2f
   WA_LayoutOnEntireRect              : Qt.WidgetAttribute.Class;-- 0x30
   WA_OutsideWSRange                  : Qt.WidgetAttribute.Class;-- 0x31
   WA_GrabbedShortcut                 : Qt.WidgetAttribute.Class;-- 0x32
   WA_TransparentForMouseEvents       : Qt.WidgetAttribute.Class;-- 0x33
   WA_PaintUnclipped                  : Qt.WidgetAttribute.Class;-- 0x34
   WA_SetWindowIcon                   : Qt.WidgetAttribute.Class;-- 0x35
   WA_NoMouseReplay                   : Qt.WidgetAttribute.Class;-- 0x36
   WA_DeleteOnClose                   : Qt.WidgetAttribute.Class;-- 0x37
   WA_RightToLeft                     : Qt.WidgetAttribute.Class;-- 0x38
   WA_SetLayoutDirection              : Qt.WidgetAttribute.Class;-- 0x39
   WA_NoChildEventsForParent          : Qt.WidgetAttribute.Class;-- 0x3a
   WA_ForceUpdatesDisabled            : Qt.WidgetAttribute.Class;-- 0x3b
   WA_WState_Created                  : Qt.WidgetAttribute.Class;-- 0x3c
   WA_WState_CompressKeys             : Qt.WidgetAttribute.Class;-- 0x3d
   WA_WState_InPaintEvent             : Qt.WidgetAttribute.Class;-- 0x3e
   WA_WState_Reparented               : Qt.WidgetAttribute.Class;-- 0x3f
   WA_WState_ConfigPending            : Qt.WidgetAttribute.Class;-- 0x40
   WA_WState_Polished                 : Qt.WidgetAttribute.Class;-- 0x42
   WA_WState_OwnSizePolicy            : Qt.WidgetAttribute.Class;-- 0x44
   WA_WState_ExplicitShowHide         : Qt.WidgetAttribute.Class;-- 0x45
   WA_ShowModal                       : Qt.WidgetAttribute.Class;-- 0x46
   WA_MouseNoMask                     : Qt.WidgetAttribute.Class;-- 0x47
   WA_NoMousePropagation              : Qt.WidgetAttribute.Class;-- 0x49
   WA_Hover                           : Qt.WidgetAttribute.Class;-- 0x4a
   WA_InputMethodTransparent          : Qt.WidgetAttribute.Class;-- 0x4b
   WA_QuitOnClose                     : Qt.WidgetAttribute.Class;-- 0x4c
   WA_KeyboardFocusChange             : Qt.WidgetAttribute.Class;-- 0x4d
   WA_AcceptDrops                     : Qt.WidgetAttribute.Class;-- 0x4e
   WA_DropSiteRegistered              : Qt.WidgetAttribute.Class;-- 0x4f
   WA_WindowPropagation               : Qt.WidgetAttribute.Class;-- 0x50
   WA_NoX11EventCompression           : Qt.WidgetAttribute.Class;-- 0x51
   WA_TintedBackground                : Qt.WidgetAttribute.Class;-- 0x52
   WA_X11OpenGLOverlay                : Qt.WidgetAttribute.Class;-- 0x53
   WA_AlwaysShowToolTips              : Qt.WidgetAttribute.Class;-- 0x54
   WA_MacOpaqueSizeGrip               : Qt.WidgetAttribute.Class;-- 0x55
   WA_SetStyle                        : Qt.WidgetAttribute.Class;-- 0x56
   WA_SetLocale                       : Qt.WidgetAttribute.Class;-- 0x57
   WA_MacShowFocusRect                : Qt.WidgetAttribute.Class;-- 0x58
   WA_MacNormalSize                   : Qt.WidgetAttribute.Class;-- 0x59
   WA_MacSmallSize                    : Qt.WidgetAttribute.Class;-- 0x5a
   WA_MacMiniSize                     : Qt.WidgetAttribute.Class;-- 0x5b
   WA_LayoutUsesWidgetRect            : Qt.WidgetAttribute.Class;-- 0x5c
   WA_StyledBackground                : Qt.WidgetAttribute.Class;-- 0x5d
   WA_CanHostQMdiSubWindowTitleBar    : Qt.WidgetAttribute.Class;-- 0x5f
   WA_MacAlwaysShowToolWindow         : Qt.WidgetAttribute.Class;-- 0x60
   WA_StyleSheet                      : Qt.WidgetAttribute.Class;-- 0x61
   WA_ShowWithoutActivating           : Qt.WidgetAttribute.Class;-- 0x62
   WA_X11BypassTransientForHint       : Qt.WidgetAttribute.Class;-- 0x63
   WA_NativeWindow                    : Qt.WidgetAttribute.Class;-- 0x64
   WA_DontCreateNativeAncestors       : Qt.WidgetAttribute.Class;-- 0x65
   WA_DontShowOnScreen                : Qt.WidgetAttribute.Class;-- 0x67
   WA_X11NetWmWindowTypeDesktop       : Qt.WidgetAttribute.Class;-- 0x68
   WA_X11NetWmWindowTypeDock          : Qt.WidgetAttribute.Class;-- 0x69
   WA_X11NetWmWindowTypeToolBar       : Qt.WidgetAttribute.Class;-- 0x6a
   WA_X11NetWmWindowTypeMenu          : Qt.WidgetAttribute.Class;-- 0x6b
   WA_X11NetWmWindowTypeUtility       : Qt.WidgetAttribute.Class;-- 0x6c
   WA_X11NetWmWindowTypeSplash        : Qt.WidgetAttribute.Class;-- 0x6d
   WA_X11NetWmWindowTypeDialog        : Qt.WidgetAttribute.Class;-- 0x6e
   WA_X11NetWmWindowTypeDropDownMenu  : Qt.WidgetAttribute.Class;-- 0x6f
   WA_X11NetWmWindowTypePopupMenu     : Qt.WidgetAttribute.Class;-- 0x70
   WA_X11NetWmWindowTypeToolTip       : Qt.WidgetAttribute.Class;-- 0x71
   WA_X11NetWmWindowTypeNotification  : Qt.WidgetAttribute.Class;-- 0x72
   WA_X11NetWmWindowTypeCombo         : Qt.WidgetAttribute.Class;-- 0x73
   WA_X11NetWmWindowTypeDND           : Qt.WidgetAttribute.Class;-- 0x74
   WA_SetWindowModality               : Qt.WidgetAttribute.Class;-- 0x76
   WA_WState_WindowOpacitySet         : Qt.WidgetAttribute.Class;-- 0x77
   WA_TranslucentBackground           : Qt.WidgetAttribute.Class;-- 0x78
   WA_AcceptTouchEvents               : Qt.WidgetAttribute.Class;-- 0x79
   WA_WState_AcceptedTouchBeginEvent  : Qt.WidgetAttribute.Class;-- 0x7a
   WA_TouchPadAcceptSingleTouchEvents : Qt.WidgetAttribute.Class;-- 0x7b
   WA_X11DoNotAcceptFocus             : Qt.WidgetAttribute.Class;-- 0x7e
   WA_AlwaysStackOnTop                : Qt.WidgetAttribute.Class;-- 0x80
   WA_TabletTracking                  : Qt.WidgetAttribute.Class;-- 0x81
   WA_ContentsMarginsRespectsSafeArea : Qt.WidgetAttribute.Class;-- 0x82
   WA_StyleSheetTarget                : Qt.WidgetAttribute.Class;-- 0x83
   WA_AttributeCount                  : Qt.WidgetAttribute.Class;-- 0x84
end QtAda6.QtCore.Qt.WidgetAttribute;
