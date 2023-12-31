-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qevent-type_k.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.IntEnum;
package QtAda6.QtCore.QEvent.Type_K is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.IntEnum.Inst with null record;
   procedure Finalize (Self : in out Class);
   None_U                           : QEvent.Type_K.Class;-- 0x0
   Timer                            : QEvent.Type_K.Class;-- 0x1
   MouseButtonPress                 : QEvent.Type_K.Class;-- 0x2
   MouseButtonRelease               : QEvent.Type_K.Class;-- 0x3
   MouseButtonDblClick              : QEvent.Type_K.Class;-- 0x4
   MouseMove                        : QEvent.Type_K.Class;-- 0x5
   KeyPress                         : QEvent.Type_K.Class;-- 0x6
   KeyRelease                       : QEvent.Type_K.Class;-- 0x7
   FocusIn                          : QEvent.Type_K.Class;-- 0x8
   FocusOut                         : QEvent.Type_K.Class;-- 0x9
   Enter                            : QEvent.Type_K.Class;-- 0xa
   Leave                            : QEvent.Type_K.Class;-- 0xb
   Paint                            : QEvent.Type_K.Class;-- 0xc
   Move                             : QEvent.Type_K.Class;-- 0xd
   Resize                           : QEvent.Type_K.Class;-- 0xe
   Create                           : QEvent.Type_K.Class;-- 0xf
   Destroy                          : QEvent.Type_K.Class;-- 0x10
   Show                             : QEvent.Type_K.Class;-- 0x11
   Hide                             : QEvent.Type_K.Class;-- 0x12
   Close                            : QEvent.Type_K.Class;-- 0x13
   Quit                             : QEvent.Type_K.Class;-- 0x14
   ParentChange                     : QEvent.Type_K.Class;-- 0x15
   ThreadChange                     : QEvent.Type_K.Class;-- 0x16
   FocusAboutToChange               : QEvent.Type_K.Class;-- 0x17
   WindowActivate                   : QEvent.Type_K.Class;-- 0x18
   WindowDeactivate                 : QEvent.Type_K.Class;-- 0x19
   ShowToParent                     : QEvent.Type_K.Class;-- 0x1a
   HideToParent                     : QEvent.Type_K.Class;-- 0x1b
   Wheel                            : QEvent.Type_K.Class;-- 0x1f
   WindowTitleChange                : QEvent.Type_K.Class;-- 0x21
   WindowIconChange                 : QEvent.Type_K.Class;-- 0x22
   ApplicationWindowIconChange      : QEvent.Type_K.Class;-- 0x23
   ApplicationFontChange            : QEvent.Type_K.Class;-- 0x24
   ApplicationLayoutDirectionChange : QEvent.Type_K.Class;-- 0x25
   ApplicationPaletteChange         : QEvent.Type_K.Class;-- 0x26
   PaletteChange                    : QEvent.Type_K.Class;-- 0x27
   Clipboard                        : QEvent.Type_K.Class;-- 0x28
   Speech                           : QEvent.Type_K.Class;-- 0x2a
   MetaCall                         : QEvent.Type_K.Class;-- 0x2b
   SockAct                          : QEvent.Type_K.Class;-- 0x32
   ShortcutOverride                 : QEvent.Type_K.Class;-- 0x33
   DeferredDelete                   : QEvent.Type_K.Class;-- 0x34
   DragEnter                        : QEvent.Type_K.Class;-- 0x3c
   DragMove                         : QEvent.Type_K.Class;-- 0x3d
   DragLeave                        : QEvent.Type_K.Class;-- 0x3e
   Drop                             : QEvent.Type_K.Class;-- 0x3f
   DragResponse                     : QEvent.Type_K.Class;-- 0x40
   ChildAdded                       : QEvent.Type_K.Class;-- 0x44
   ChildPolished                    : QEvent.Type_K.Class;-- 0x45
   ChildRemoved                     : QEvent.Type_K.Class;-- 0x47
   ShowWindowRequest                : QEvent.Type_K.Class;-- 0x49
   PolishRequest                    : QEvent.Type_K.Class;-- 0x4a
   Polish                           : QEvent.Type_K.Class;-- 0x4b
   LayoutRequest                    : QEvent.Type_K.Class;-- 0x4c
   UpdateRequest                    : QEvent.Type_K.Class;-- 0x4d
   UpdateLater                      : QEvent.Type_K.Class;-- 0x4e
   EmbeddingControl                 : QEvent.Type_K.Class;-- 0x4f
   ActivateControl                  : QEvent.Type_K.Class;-- 0x50
   DeactivateControl                : QEvent.Type_K.Class;-- 0x51
   ContextMenu                      : QEvent.Type_K.Class;-- 0x52
   InputMethod                      : QEvent.Type_K.Class;-- 0x53
   TabletMove                       : QEvent.Type_K.Class;-- 0x57
   LocaleChange                     : QEvent.Type_K.Class;-- 0x58
   LanguageChange                   : QEvent.Type_K.Class;-- 0x59
   LayoutDirectionChange            : QEvent.Type_K.Class;-- 0x5a
   Style                            : QEvent.Type_K.Class;-- 0x5b
   TabletPress                      : QEvent.Type_K.Class;-- 0x5c
   TabletRelease                    : QEvent.Type_K.Class;-- 0x5d
   OkRequest                        : QEvent.Type_K.Class;-- 0x5e
   HelpRequest                      : QEvent.Type_K.Class;-- 0x5f
   IconDrag                         : QEvent.Type_K.Class;-- 0x60
   FontChange                       : QEvent.Type_K.Class;-- 0x61
   EnabledChange                    : QEvent.Type_K.Class;-- 0x62
   ActivationChange                 : QEvent.Type_K.Class;-- 0x63
   StyleChange                      : QEvent.Type_K.Class;-- 0x64
   IconTextChange                   : QEvent.Type_K.Class;-- 0x65
   ModifiedChange                   : QEvent.Type_K.Class;-- 0x66
   WindowBlocked                    : QEvent.Type_K.Class;-- 0x67
   WindowUnblocked                  : QEvent.Type_K.Class;-- 0x68
   WindowStateChange                : QEvent.Type_K.Class;-- 0x69
   ReadOnlyChange                   : QEvent.Type_K.Class;-- 0x6a
   MouseTrackingChange              : QEvent.Type_K.Class;-- 0x6d
   ToolTip                          : QEvent.Type_K.Class;-- 0x6e
   WhatsThis                        : QEvent.Type_K.Class;-- 0x6f
   StatusTip                        : QEvent.Type_K.Class;-- 0x70
   ActionChanged                    : QEvent.Type_K.Class;-- 0x71
   ActionAdded                      : QEvent.Type_K.Class;-- 0x72
   ActionRemoved                    : QEvent.Type_K.Class;-- 0x73
   FileOpen                         : QEvent.Type_K.Class;-- 0x74
   Shortcut                         : QEvent.Type_K.Class;-- 0x75
   WhatsThisClicked                 : QEvent.Type_K.Class;-- 0x76
   ToolBarChange                    : QEvent.Type_K.Class;-- 0x78
   ApplicationActivate              : QEvent.Type_K.Class;-- 0x79
   ApplicationActivated             : QEvent.Type_K.Class;-- 0x79
   ApplicationDeactivate            : QEvent.Type_K.Class;-- 0x7a
   ApplicationDeactivated           : QEvent.Type_K.Class;-- 0x7a
   QueryWhatsThis                   : QEvent.Type_K.Class;-- 0x7b
   EnterWhatsThisMode               : QEvent.Type_K.Class;-- 0x7c
   LeaveWhatsThisMode               : QEvent.Type_K.Class;-- 0x7d
   ZOrderChange                     : QEvent.Type_K.Class;-- 0x7e
   HoverEnter                       : QEvent.Type_K.Class;-- 0x7f
   HoverLeave                       : QEvent.Type_K.Class;-- 0x80
   HoverMove                        : QEvent.Type_K.Class;-- 0x81
   ParentAboutToChange              : QEvent.Type_K.Class;-- 0x83
   WinEventAct                      : QEvent.Type_K.Class;-- 0x84
   AcceptDropsChange                : QEvent.Type_K.Class;-- 0x98
   ZeroTimerEvent                   : QEvent.Type_K.Class;-- 0x9a
   GraphicsSceneMouseMove           : QEvent.Type_K.Class;-- 0x9b
   GraphicsSceneMousePress          : QEvent.Type_K.Class;-- 0x9c
   GraphicsSceneMouseRelease        : QEvent.Type_K.Class;-- 0x9d
   GraphicsSceneMouseDoubleClick    : QEvent.Type_K.Class;-- 0x9e
   GraphicsSceneContextMenu         : QEvent.Type_K.Class;-- 0x9f
   GraphicsSceneHoverEnter          : QEvent.Type_K.Class;-- 0xa0
   GraphicsSceneHoverMove           : QEvent.Type_K.Class;-- 0xa1
   GraphicsSceneHoverLeave          : QEvent.Type_K.Class;-- 0xa2
   GraphicsSceneHelp                : QEvent.Type_K.Class;-- 0xa3
   GraphicsSceneDragEnter           : QEvent.Type_K.Class;-- 0xa4
   GraphicsSceneDragMove            : QEvent.Type_K.Class;-- 0xa5
   GraphicsSceneDragLeave           : QEvent.Type_K.Class;-- 0xa6
   GraphicsSceneDrop                : QEvent.Type_K.Class;-- 0xa7
   GraphicsSceneWheel               : QEvent.Type_K.Class;-- 0xa8
   KeyboardLayoutChange             : QEvent.Type_K.Class;-- 0xa9
   DynamicPropertyChange            : QEvent.Type_K.Class;-- 0xaa
   TabletEnterProximity             : QEvent.Type_K.Class;-- 0xab
   TabletLeaveProximity             : QEvent.Type_K.Class;-- 0xac
   NonClientAreaMouseMove           : QEvent.Type_K.Class;-- 0xad
   NonClientAreaMouseButtonPress    : QEvent.Type_K.Class;-- 0xae
   NonClientAreaMouseButtonRelease  : QEvent.Type_K.Class;-- 0xaf
   NonClientAreaMouseButtonDblClick : QEvent.Type_K.Class;-- 0xb0
   MacSizeChange                    : QEvent.Type_K.Class;-- 0xb1
   ContentsRectChange               : QEvent.Type_K.Class;-- 0xb2
   MacGLWindowChange                : QEvent.Type_K.Class;-- 0xb3
   FutureCallOut                    : QEvent.Type_K.Class;-- 0xb4
   GraphicsSceneResize              : QEvent.Type_K.Class;-- 0xb5
   GraphicsSceneMove                : QEvent.Type_K.Class;-- 0xb6
   CursorChange                     : QEvent.Type_K.Class;-- 0xb7
   ToolTipChange                    : QEvent.Type_K.Class;-- 0xb8
   NetworkReplyUpdated              : QEvent.Type_K.Class;-- 0xb9
   GrabMouse                        : QEvent.Type_K.Class;-- 0xba
   UngrabMouse                      : QEvent.Type_K.Class;-- 0xbb
   GrabKeyboard                     : QEvent.Type_K.Class;-- 0xbc
   UngrabKeyboard                   : QEvent.Type_K.Class;-- 0xbd
   StateMachineSignal               : QEvent.Type_K.Class;-- 0xc0
   StateMachineWrapped              : QEvent.Type_K.Class;-- 0xc1
   TouchBegin                       : QEvent.Type_K.Class;-- 0xc2
   TouchUpdate                      : QEvent.Type_K.Class;-- 0xc3
   TouchEnd                         : QEvent.Type_K.Class;-- 0xc4
   NativeGesture                    : QEvent.Type_K.Class;-- 0xc5
   Gesture                          : QEvent.Type_K.Class;-- 0xc6
   RequestSoftwareInputPanel        : QEvent.Type_K.Class;-- 0xc7
   CloseSoftwareInputPanel          : QEvent.Type_K.Class;-- 0xc8
   GestureOverride                  : QEvent.Type_K.Class;-- 0xca
   WinIdChange                      : QEvent.Type_K.Class;-- 0xcb
   ScrollPrepare                    : QEvent.Type_K.Class;-- 0xcc
   Scroll                           : QEvent.Type_K.Class;-- 0xcd
   Expose                           : QEvent.Type_K.Class;-- 0xce
   InputMethodQuery                 : QEvent.Type_K.Class;-- 0xcf
   OrientationChange                : QEvent.Type_K.Class;-- 0xd0
   TouchCancel                      : QEvent.Type_K.Class;-- 0xd1
   ThemeChange                      : QEvent.Type_K.Class;-- 0xd2
   SockClose                        : QEvent.Type_K.Class;-- 0xd3
   PlatformPanel                    : QEvent.Type_K.Class;-- 0xd4
   StyleAnimationUpdate             : QEvent.Type_K.Class;-- 0xd5
   ApplicationStateChange           : QEvent.Type_K.Class;-- 0xd6
   WindowChangeInternal             : QEvent.Type_K.Class;-- 0xd7
   ScreenChangeInternal             : QEvent.Type_K.Class;-- 0xd8
   PlatformSurface                  : QEvent.Type_K.Class;-- 0xd9
   Pointer                          : QEvent.Type_K.Class;-- 0xda
   TabletTrackingChange             : QEvent.Type_K.Class;-- 0xdb
   GraphicsSceneLeave               : QEvent.Type_K.Class;-- 0xdc
   WindowAboutToChangeInternal      : QEvent.Type_K.Class;-- 0xdd
   User                             : QEvent.Type_K.Class;-- 0x3e8
   MaxUser                          : QEvent.Type_K.Class;-- 0xffff
end QtAda6.QtCore.QEvent.Type_K;
