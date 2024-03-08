-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qevent-type_k.adb
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
package body QtAda6.QtCore.QEvent.Type_K is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function None_U return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "None_"));
   end None_U;
   function Timer return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Timer"));
   end Timer;
   function MouseButtonPress return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "MouseButtonPress"));
   end MouseButtonPress;
   function MouseButtonRelease return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "MouseButtonRelease"));
   end MouseButtonRelease;
   function MouseButtonDblClick return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "MouseButtonDblClick"));
   end MouseButtonDblClick;
   function MouseMove return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "MouseMove"));
   end MouseMove;
   function KeyPress return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "KeyPress"));
   end KeyPress;
   function KeyRelease return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "KeyRelease"));
   end KeyRelease;
   function FocusIn return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "FocusIn"));
   end FocusIn;
   function FocusOut return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "FocusOut"));
   end FocusOut;
   function Enter return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Enter"));
   end Enter;
   function Leave return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Leave"));
   end Leave;
   function Paint return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Paint"));
   end Paint;
   function Move return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Move"));
   end Move;
   function Resize return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Resize"));
   end Resize;
   function Create return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Create"));
   end Create;
   function Destroy return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Destroy"));
   end Destroy;
   function Show return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Show"));
   end Show;
   function Hide return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Hide"));
   end Hide;
   function Close return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Close"));
   end Close;
   function Quit return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Quit"));
   end Quit;
   function ParentChange return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ParentChange"));
   end ParentChange;
   function ThreadChange return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ThreadChange"));
   end ThreadChange;
   function FocusAboutToChange return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "FocusAboutToChange"));
   end FocusAboutToChange;
   function WindowActivate return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WindowActivate"));
   end WindowActivate;
   function WindowDeactivate return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WindowDeactivate"));
   end WindowDeactivate;
   function ShowToParent return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ShowToParent"));
   end ShowToParent;
   function HideToParent return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "HideToParent"));
   end HideToParent;
   function Wheel return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Wheel"));
   end Wheel;
   function WindowTitleChange return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WindowTitleChange"));
   end WindowTitleChange;
   function WindowIconChange return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WindowIconChange"));
   end WindowIconChange;
   function ApplicationWindowIconChange return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ApplicationWindowIconChange"));
   end ApplicationWindowIconChange;
   function ApplicationFontChange return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ApplicationFontChange"));
   end ApplicationFontChange;
   function ApplicationLayoutDirectionChange return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ApplicationLayoutDirectionChange"));
   end ApplicationLayoutDirectionChange;
   function ApplicationPaletteChange return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ApplicationPaletteChange"));
   end ApplicationPaletteChange;
   function PaletteChange return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PaletteChange"));
   end PaletteChange;
   function Clipboard return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Clipboard"));
   end Clipboard;
   function Speech return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Speech"));
   end Speech;
   function MetaCall return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "MetaCall"));
   end MetaCall;
   function SockAct return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SockAct"));
   end SockAct;
   function ShortcutOverride return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ShortcutOverride"));
   end ShortcutOverride;
   function DeferredDelete return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "DeferredDelete"));
   end DeferredDelete;
   function DragEnter return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "DragEnter"));
   end DragEnter;
   function DragMove return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "DragMove"));
   end DragMove;
   function DragLeave return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "DragLeave"));
   end DragLeave;
   function Drop return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Drop"));
   end Drop;
   function DragResponse return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "DragResponse"));
   end DragResponse;
   function ChildAdded return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ChildAdded"));
   end ChildAdded;
   function ChildPolished return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ChildPolished"));
   end ChildPolished;
   function ChildRemoved return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ChildRemoved"));
   end ChildRemoved;
   function ShowWindowRequest return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ShowWindowRequest"));
   end ShowWindowRequest;
   function PolishRequest return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PolishRequest"));
   end PolishRequest;
   function Polish return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Polish"));
   end Polish;
   function LayoutRequest return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "LayoutRequest"));
   end LayoutRequest;
   function UpdateRequest return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "UpdateRequest"));
   end UpdateRequest;
   function UpdateLater return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "UpdateLater"));
   end UpdateLater;
   function EmbeddingControl return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "EmbeddingControl"));
   end EmbeddingControl;
   function ActivateControl return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ActivateControl"));
   end ActivateControl;
   function DeactivateControl return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "DeactivateControl"));
   end DeactivateControl;
   function ContextMenu return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ContextMenu"));
   end ContextMenu;
   function InputMethod return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "InputMethod"));
   end InputMethod;
   function TabletMove return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "TabletMove"));
   end TabletMove;
   function LocaleChange return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "LocaleChange"));
   end LocaleChange;
   function LanguageChange return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "LanguageChange"));
   end LanguageChange;
   function LayoutDirectionChange return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "LayoutDirectionChange"));
   end LayoutDirectionChange;
   function Style return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Style"));
   end Style;
   function TabletPress return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "TabletPress"));
   end TabletPress;
   function TabletRelease return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "TabletRelease"));
   end TabletRelease;
   function OkRequest return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "OkRequest"));
   end OkRequest;
   function HelpRequest return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "HelpRequest"));
   end HelpRequest;
   function IconDrag return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "IconDrag"));
   end IconDrag;
   function FontChange return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "FontChange"));
   end FontChange;
   function EnabledChange return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "EnabledChange"));
   end EnabledChange;
   function ActivationChange return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ActivationChange"));
   end ActivationChange;
   function StyleChange return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "StyleChange"));
   end StyleChange;
   function IconTextChange return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "IconTextChange"));
   end IconTextChange;
   function ModifiedChange return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ModifiedChange"));
   end ModifiedChange;
   function WindowBlocked return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WindowBlocked"));
   end WindowBlocked;
   function WindowUnblocked return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WindowUnblocked"));
   end WindowUnblocked;
   function WindowStateChange return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WindowStateChange"));
   end WindowStateChange;
   function ReadOnlyChange return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ReadOnlyChange"));
   end ReadOnlyChange;
   function MouseTrackingChange return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "MouseTrackingChange"));
   end MouseTrackingChange;
   function ToolTip return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ToolTip"));
   end ToolTip;
   function WhatsThis return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WhatsThis"));
   end WhatsThis;
   function StatusTip return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "StatusTip"));
   end StatusTip;
   function ActionChanged return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ActionChanged"));
   end ActionChanged;
   function ActionAdded return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ActionAdded"));
   end ActionAdded;
   function ActionRemoved return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ActionRemoved"));
   end ActionRemoved;
   function FileOpen return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "FileOpen"));
   end FileOpen;
   function Shortcut return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Shortcut"));
   end Shortcut;
   function WhatsThisClicked return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WhatsThisClicked"));
   end WhatsThisClicked;
   function ToolBarChange return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ToolBarChange"));
   end ToolBarChange;
   function ApplicationActivate return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ApplicationActivate"));
   end ApplicationActivate;
   function ApplicationActivated return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ApplicationActivated"));
   end ApplicationActivated;
   function ApplicationDeactivate return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ApplicationDeactivate"));
   end ApplicationDeactivate;
   function ApplicationDeactivated return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ApplicationDeactivated"));
   end ApplicationDeactivated;
   function QueryWhatsThis return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "QueryWhatsThis"));
   end QueryWhatsThis;
   function EnterWhatsThisMode return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "EnterWhatsThisMode"));
   end EnterWhatsThisMode;
   function LeaveWhatsThisMode return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "LeaveWhatsThisMode"));
   end LeaveWhatsThisMode;
   function ZOrderChange return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ZOrderChange"));
   end ZOrderChange;
   function HoverEnter return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "HoverEnter"));
   end HoverEnter;
   function HoverLeave return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "HoverLeave"));
   end HoverLeave;
   function HoverMove return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "HoverMove"));
   end HoverMove;
   function ParentAboutToChange return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ParentAboutToChange"));
   end ParentAboutToChange;
   function WinEventAct return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WinEventAct"));
   end WinEventAct;
   function AcceptDropsChange return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "AcceptDropsChange"));
   end AcceptDropsChange;
   function ZeroTimerEvent return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ZeroTimerEvent"));
   end ZeroTimerEvent;
   function GraphicsSceneMouseMove return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "GraphicsSceneMouseMove"));
   end GraphicsSceneMouseMove;
   function GraphicsSceneMousePress return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "GraphicsSceneMousePress"));
   end GraphicsSceneMousePress;
   function GraphicsSceneMouseRelease return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "GraphicsSceneMouseRelease"));
   end GraphicsSceneMouseRelease;
   function GraphicsSceneMouseDoubleClick return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "GraphicsSceneMouseDoubleClick"));
   end GraphicsSceneMouseDoubleClick;
   function GraphicsSceneContextMenu return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "GraphicsSceneContextMenu"));
   end GraphicsSceneContextMenu;
   function GraphicsSceneHoverEnter return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "GraphicsSceneHoverEnter"));
   end GraphicsSceneHoverEnter;
   function GraphicsSceneHoverMove return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "GraphicsSceneHoverMove"));
   end GraphicsSceneHoverMove;
   function GraphicsSceneHoverLeave return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "GraphicsSceneHoverLeave"));
   end GraphicsSceneHoverLeave;
   function GraphicsSceneHelp return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "GraphicsSceneHelp"));
   end GraphicsSceneHelp;
   function GraphicsSceneDragEnter return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "GraphicsSceneDragEnter"));
   end GraphicsSceneDragEnter;
   function GraphicsSceneDragMove return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "GraphicsSceneDragMove"));
   end GraphicsSceneDragMove;
   function GraphicsSceneDragLeave return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "GraphicsSceneDragLeave"));
   end GraphicsSceneDragLeave;
   function GraphicsSceneDrop return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "GraphicsSceneDrop"));
   end GraphicsSceneDrop;
   function GraphicsSceneWheel return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "GraphicsSceneWheel"));
   end GraphicsSceneWheel;
   function KeyboardLayoutChange return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "KeyboardLayoutChange"));
   end KeyboardLayoutChange;
   function DynamicPropertyChange return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "DynamicPropertyChange"));
   end DynamicPropertyChange;
   function TabletEnterProximity return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "TabletEnterProximity"));
   end TabletEnterProximity;
   function TabletLeaveProximity return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "TabletLeaveProximity"));
   end TabletLeaveProximity;
   function NonClientAreaMouseMove return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "NonClientAreaMouseMove"));
   end NonClientAreaMouseMove;
   function NonClientAreaMouseButtonPress return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "NonClientAreaMouseButtonPress"));
   end NonClientAreaMouseButtonPress;
   function NonClientAreaMouseButtonRelease return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "NonClientAreaMouseButtonRelease"));
   end NonClientAreaMouseButtonRelease;
   function NonClientAreaMouseButtonDblClick return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "NonClientAreaMouseButtonDblClick"));
   end NonClientAreaMouseButtonDblClick;
   function MacSizeChange return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "MacSizeChange"));
   end MacSizeChange;
   function ContentsRectChange return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ContentsRectChange"));
   end ContentsRectChange;
   function MacGLWindowChange return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "MacGLWindowChange"));
   end MacGLWindowChange;
   function FutureCallOut return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "FutureCallOut"));
   end FutureCallOut;
   function GraphicsSceneResize return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "GraphicsSceneResize"));
   end GraphicsSceneResize;
   function GraphicsSceneMove return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "GraphicsSceneMove"));
   end GraphicsSceneMove;
   function CursorChange return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "CursorChange"));
   end CursorChange;
   function ToolTipChange return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ToolTipChange"));
   end ToolTipChange;
   function NetworkReplyUpdated return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "NetworkReplyUpdated"));
   end NetworkReplyUpdated;
   function GrabMouse return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "GrabMouse"));
   end GrabMouse;
   function UngrabMouse return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "UngrabMouse"));
   end UngrabMouse;
   function GrabKeyboard return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "GrabKeyboard"));
   end GrabKeyboard;
   function UngrabKeyboard return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "UngrabKeyboard"));
   end UngrabKeyboard;
   function StateMachineSignal return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "StateMachineSignal"));
   end StateMachineSignal;
   function StateMachineWrapped return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "StateMachineWrapped"));
   end StateMachineWrapped;
   function TouchBegin return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "TouchBegin"));
   end TouchBegin;
   function TouchUpdate return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "TouchUpdate"));
   end TouchUpdate;
   function TouchEnd return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "TouchEnd"));
   end TouchEnd;
   function NativeGesture return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "NativeGesture"));
   end NativeGesture;
   function Gesture return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Gesture"));
   end Gesture;
   function RequestSoftwareInputPanel return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "RequestSoftwareInputPanel"));
   end RequestSoftwareInputPanel;
   function CloseSoftwareInputPanel return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "CloseSoftwareInputPanel"));
   end CloseSoftwareInputPanel;
   function GestureOverride return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "GestureOverride"));
   end GestureOverride;
   function WinIdChange return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WinIdChange"));
   end WinIdChange;
   function ScrollPrepare return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ScrollPrepare"));
   end ScrollPrepare;
   function Scroll return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Scroll"));
   end Scroll;
   function Expose return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Expose"));
   end Expose;
   function InputMethodQuery return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "InputMethodQuery"));
   end InputMethodQuery;
   function OrientationChange return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "OrientationChange"));
   end OrientationChange;
   function TouchCancel return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "TouchCancel"));
   end TouchCancel;
   function ThemeChange return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ThemeChange"));
   end ThemeChange;
   function SockClose return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SockClose"));
   end SockClose;
   function PlatformPanel return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PlatformPanel"));
   end PlatformPanel;
   function StyleAnimationUpdate return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "StyleAnimationUpdate"));
   end StyleAnimationUpdate;
   function ApplicationStateChange return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ApplicationStateChange"));
   end ApplicationStateChange;
   function WindowChangeInternal return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WindowChangeInternal"));
   end WindowChangeInternal;
   function ScreenChangeInternal return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ScreenChangeInternal"));
   end ScreenChangeInternal;
   function PlatformSurface return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PlatformSurface"));
   end PlatformSurface;
   function Pointer return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Pointer"));
   end Pointer;
   function TabletTrackingChange return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "TabletTrackingChange"));
   end TabletTrackingChange;
   function GraphicsSceneLeave return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "GraphicsSceneLeave"));
   end GraphicsSceneLeave;
   function WindowAboutToChangeInternal return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WindowAboutToChangeInternal"));
   end WindowAboutToChangeInternal;
   function User return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "User"));
   end User;
   function MaxUser return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEvent");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "MaxUser"));
   end MaxUser;
end QtAda6.QtCore.QEvent.Type_K;
