-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qevent-type_k.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtCore.QEvent.Type_K is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.IntEnum with null record;
   procedure Finalize (Self : in out Class);
   function None_U return Class;-- 0x0
   function Timer return Class;-- 0x1
   function MouseButtonPress return Class;-- 0x2
   function MouseButtonRelease return Class;-- 0x3
   function MouseButtonDblClick return Class;-- 0x4
   function MouseMove return Class;-- 0x5
   function KeyPress return Class;-- 0x6
   function KeyRelease return Class;-- 0x7
   function FocusIn return Class;-- 0x8
   function FocusOut return Class;-- 0x9
   function Enter return Class;-- 0xa
   function Leave return Class;-- 0xb
   function Paint return Class;-- 0xc
   function Move return Class;-- 0xd
   function Resize return Class;-- 0xe
   function Create return Class;-- 0xf
   function Destroy return Class;-- 0x10
   function Show return Class;-- 0x11
   function Hide return Class;-- 0x12
   function Close return Class;-- 0x13
   function Quit return Class;-- 0x14
   function ParentChange return Class;-- 0x15
   function ThreadChange return Class;-- 0x16
   function FocusAboutToChange return Class;-- 0x17
   function WindowActivate return Class;-- 0x18
   function WindowDeactivate return Class;-- 0x19
   function ShowToParent return Class;-- 0x1a
   function HideToParent return Class;-- 0x1b
   function Wheel return Class;-- 0x1f
   function WindowTitleChange return Class;-- 0x21
   function WindowIconChange return Class;-- 0x22
   function ApplicationWindowIconChange return Class;-- 0x23
   function ApplicationFontChange return Class;-- 0x24
   function ApplicationLayoutDirectionChange return Class;-- 0x25
   function ApplicationPaletteChange return Class;-- 0x26
   function PaletteChange return Class;-- 0x27
   function Clipboard return Class;-- 0x28
   function Speech return Class;-- 0x2a
   function MetaCall return Class;-- 0x2b
   function SockAct return Class;-- 0x32
   function ShortcutOverride return Class;-- 0x33
   function DeferredDelete return Class;-- 0x34
   function DragEnter return Class;-- 0x3c
   function DragMove return Class;-- 0x3d
   function DragLeave return Class;-- 0x3e
   function Drop return Class;-- 0x3f
   function DragResponse return Class;-- 0x40
   function ChildAdded return Class;-- 0x44
   function ChildPolished return Class;-- 0x45
   function ChildRemoved return Class;-- 0x47
   function ShowWindowRequest return Class;-- 0x49
   function PolishRequest return Class;-- 0x4a
   function Polish return Class;-- 0x4b
   function LayoutRequest return Class;-- 0x4c
   function UpdateRequest return Class;-- 0x4d
   function UpdateLater return Class;-- 0x4e
   function EmbeddingControl return Class;-- 0x4f
   function ActivateControl return Class;-- 0x50
   function DeactivateControl return Class;-- 0x51
   function ContextMenu return Class;-- 0x52
   function InputMethod return Class;-- 0x53
   function TabletMove return Class;-- 0x57
   function LocaleChange return Class;-- 0x58
   function LanguageChange return Class;-- 0x59
   function LayoutDirectionChange return Class;-- 0x5a
   function Style return Class;-- 0x5b
   function TabletPress return Class;-- 0x5c
   function TabletRelease return Class;-- 0x5d
   function OkRequest return Class;-- 0x5e
   function HelpRequest return Class;-- 0x5f
   function IconDrag return Class;-- 0x60
   function FontChange return Class;-- 0x61
   function EnabledChange return Class;-- 0x62
   function ActivationChange return Class;-- 0x63
   function StyleChange return Class;-- 0x64
   function IconTextChange return Class;-- 0x65
   function ModifiedChange return Class;-- 0x66
   function WindowBlocked return Class;-- 0x67
   function WindowUnblocked return Class;-- 0x68
   function WindowStateChange return Class;-- 0x69
   function ReadOnlyChange return Class;-- 0x6a
   function MouseTrackingChange return Class;-- 0x6d
   function ToolTip return Class;-- 0x6e
   function WhatsThis return Class;-- 0x6f
   function StatusTip return Class;-- 0x70
   function ActionChanged return Class;-- 0x71
   function ActionAdded return Class;-- 0x72
   function ActionRemoved return Class;-- 0x73
   function FileOpen return Class;-- 0x74
   function Shortcut return Class;-- 0x75
   function WhatsThisClicked return Class;-- 0x76
   function ToolBarChange return Class;-- 0x78
   function ApplicationActivate return Class;-- 0x79
   function ApplicationActivated return Class;-- 0x79
   function ApplicationDeactivate return Class;-- 0x7a
   function ApplicationDeactivated return Class;-- 0x7a
   function QueryWhatsThis return Class;-- 0x7b
   function EnterWhatsThisMode return Class;-- 0x7c
   function LeaveWhatsThisMode return Class;-- 0x7d
   function ZOrderChange return Class;-- 0x7e
   function HoverEnter return Class;-- 0x7f
   function HoverLeave return Class;-- 0x80
   function HoverMove return Class;-- 0x81
   function ParentAboutToChange return Class;-- 0x83
   function WinEventAct return Class;-- 0x84
   function AcceptDropsChange return Class;-- 0x98
   function ZeroTimerEvent return Class;-- 0x9a
   function GraphicsSceneMouseMove return Class;-- 0x9b
   function GraphicsSceneMousePress return Class;-- 0x9c
   function GraphicsSceneMouseRelease return Class;-- 0x9d
   function GraphicsSceneMouseDoubleClick return Class;-- 0x9e
   function GraphicsSceneContextMenu return Class;-- 0x9f
   function GraphicsSceneHoverEnter return Class;-- 0xa0
   function GraphicsSceneHoverMove return Class;-- 0xa1
   function GraphicsSceneHoverLeave return Class;-- 0xa2
   function GraphicsSceneHelp return Class;-- 0xa3
   function GraphicsSceneDragEnter return Class;-- 0xa4
   function GraphicsSceneDragMove return Class;-- 0xa5
   function GraphicsSceneDragLeave return Class;-- 0xa6
   function GraphicsSceneDrop return Class;-- 0xa7
   function GraphicsSceneWheel return Class;-- 0xa8
   function KeyboardLayoutChange return Class;-- 0xa9
   function DynamicPropertyChange return Class;-- 0xaa
   function TabletEnterProximity return Class;-- 0xab
   function TabletLeaveProximity return Class;-- 0xac
   function NonClientAreaMouseMove return Class;-- 0xad
   function NonClientAreaMouseButtonPress return Class;-- 0xae
   function NonClientAreaMouseButtonRelease return Class;-- 0xaf
   function NonClientAreaMouseButtonDblClick return Class;-- 0xb0
   function MacSizeChange return Class;-- 0xb1
   function ContentsRectChange return Class;-- 0xb2
   function MacGLWindowChange return Class;-- 0xb3
   function FutureCallOut return Class;-- 0xb4
   function GraphicsSceneResize return Class;-- 0xb5
   function GraphicsSceneMove return Class;-- 0xb6
   function CursorChange return Class;-- 0xb7
   function ToolTipChange return Class;-- 0xb8
   function NetworkReplyUpdated return Class;-- 0xb9
   function GrabMouse return Class;-- 0xba
   function UngrabMouse return Class;-- 0xbb
   function GrabKeyboard return Class;-- 0xbc
   function UngrabKeyboard return Class;-- 0xbd
   function StateMachineSignal return Class;-- 0xc0
   function StateMachineWrapped return Class;-- 0xc1
   function TouchBegin return Class;-- 0xc2
   function TouchUpdate return Class;-- 0xc3
   function TouchEnd return Class;-- 0xc4
   function NativeGesture return Class;-- 0xc5
   function Gesture return Class;-- 0xc6
   function RequestSoftwareInputPanel return Class;-- 0xc7
   function CloseSoftwareInputPanel return Class;-- 0xc8
   function GestureOverride return Class;-- 0xca
   function WinIdChange return Class;-- 0xcb
   function ScrollPrepare return Class;-- 0xcc
   function Scroll return Class;-- 0xcd
   function Expose return Class;-- 0xce
   function InputMethodQuery return Class;-- 0xcf
   function OrientationChange return Class;-- 0xd0
   function TouchCancel return Class;-- 0xd1
   function ThemeChange return Class;-- 0xd2
   function SockClose return Class;-- 0xd3
   function PlatformPanel return Class;-- 0xd4
   function StyleAnimationUpdate return Class;-- 0xd5
   function ApplicationStateChange return Class;-- 0xd6
   function WindowChangeInternal return Class;-- 0xd7
   function ScreenChangeInternal return Class;-- 0xd8
   function PlatformSurface return Class;-- 0xd9
   function Pointer return Class;-- 0xda
   function TabletTrackingChange return Class;-- 0xdb
   function GraphicsSceneLeave return Class;-- 0xdc
   function WindowAboutToChangeInternal return Class;-- 0xdd
   function User return Class;-- 0x3e8
   function MaxUser return Class;-- 0xffff
end QtAda6.QtCore.QEvent.Type_K;
