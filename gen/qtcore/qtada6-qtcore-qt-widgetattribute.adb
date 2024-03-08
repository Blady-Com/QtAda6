-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qt-widgetattribute.adb
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
package body QtAda6.QtCore.Qt.WidgetAttribute is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function WA_Disabled return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WA_Disabled"));
   end WA_Disabled;
   function WA_UnderMouse return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WA_UnderMouse"));
   end WA_UnderMouse;
   function WA_MouseTracking return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WA_MouseTracking"));
   end WA_MouseTracking;
   function WA_OpaquePaintEvent return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WA_OpaquePaintEvent"));
   end WA_OpaquePaintEvent;
   function WA_StaticContents return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WA_StaticContents"));
   end WA_StaticContents;
   function WA_LaidOut return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WA_LaidOut"));
   end WA_LaidOut;
   function WA_PaintOnScreen return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WA_PaintOnScreen"));
   end WA_PaintOnScreen;
   function WA_NoSystemBackground return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WA_NoSystemBackground"));
   end WA_NoSystemBackground;
   function WA_UpdatesDisabled return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WA_UpdatesDisabled"));
   end WA_UpdatesDisabled;
   function WA_Mapped return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WA_Mapped"));
   end WA_Mapped;
   function WA_InputMethodEnabled return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WA_InputMethodEnabled"));
   end WA_InputMethodEnabled;
   function WA_WState_Visible return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WA_WState_Visible"));
   end WA_WState_Visible;
   function WA_WState_Hidden return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WA_WState_Hidden"));
   end WA_WState_Hidden;
   function WA_ForceDisabled return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WA_ForceDisabled"));
   end WA_ForceDisabled;
   function WA_KeyCompression return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WA_KeyCompression"));
   end WA_KeyCompression;
   function WA_PendingMoveEvent return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WA_PendingMoveEvent"));
   end WA_PendingMoveEvent;
   function WA_PendingResizeEvent return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WA_PendingResizeEvent"));
   end WA_PendingResizeEvent;
   function WA_SetPalette return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WA_SetPalette"));
   end WA_SetPalette;
   function WA_SetFont return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WA_SetFont"));
   end WA_SetFont;
   function WA_SetCursor return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WA_SetCursor"));
   end WA_SetCursor;
   function WA_NoChildEventsFromChildren return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WA_NoChildEventsFromChildren"));
   end WA_NoChildEventsFromChildren;
   function WA_WindowModified return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WA_WindowModified"));
   end WA_WindowModified;
   function WA_Resized return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WA_Resized"));
   end WA_Resized;
   function WA_Moved return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WA_Moved"));
   end WA_Moved;
   function WA_PendingUpdate return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WA_PendingUpdate"));
   end WA_PendingUpdate;
   function WA_InvalidSize return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WA_InvalidSize"));
   end WA_InvalidSize;
   function WA_CustomWhatsThis return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WA_CustomWhatsThis"));
   end WA_CustomWhatsThis;
   function WA_LayoutOnEntireRect return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WA_LayoutOnEntireRect"));
   end WA_LayoutOnEntireRect;
   function WA_OutsideWSRange return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WA_OutsideWSRange"));
   end WA_OutsideWSRange;
   function WA_GrabbedShortcut return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WA_GrabbedShortcut"));
   end WA_GrabbedShortcut;
   function WA_TransparentForMouseEvents return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WA_TransparentForMouseEvents"));
   end WA_TransparentForMouseEvents;
   function WA_PaintUnclipped return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WA_PaintUnclipped"));
   end WA_PaintUnclipped;
   function WA_SetWindowIcon return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WA_SetWindowIcon"));
   end WA_SetWindowIcon;
   function WA_NoMouseReplay return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WA_NoMouseReplay"));
   end WA_NoMouseReplay;
   function WA_DeleteOnClose return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WA_DeleteOnClose"));
   end WA_DeleteOnClose;
   function WA_RightToLeft return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WA_RightToLeft"));
   end WA_RightToLeft;
   function WA_SetLayoutDirection return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WA_SetLayoutDirection"));
   end WA_SetLayoutDirection;
   function WA_NoChildEventsForParent return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WA_NoChildEventsForParent"));
   end WA_NoChildEventsForParent;
   function WA_ForceUpdatesDisabled return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WA_ForceUpdatesDisabled"));
   end WA_ForceUpdatesDisabled;
   function WA_WState_Created return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WA_WState_Created"));
   end WA_WState_Created;
   function WA_WState_CompressKeys return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WA_WState_CompressKeys"));
   end WA_WState_CompressKeys;
   function WA_WState_InPaintEvent return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WA_WState_InPaintEvent"));
   end WA_WState_InPaintEvent;
   function WA_WState_Reparented return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WA_WState_Reparented"));
   end WA_WState_Reparented;
   function WA_WState_ConfigPending return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WA_WState_ConfigPending"));
   end WA_WState_ConfigPending;
   function WA_WState_Polished return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WA_WState_Polished"));
   end WA_WState_Polished;
   function WA_WState_OwnSizePolicy return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WA_WState_OwnSizePolicy"));
   end WA_WState_OwnSizePolicy;
   function WA_WState_ExplicitShowHide return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WA_WState_ExplicitShowHide"));
   end WA_WState_ExplicitShowHide;
   function WA_ShowModal return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WA_ShowModal"));
   end WA_ShowModal;
   function WA_MouseNoMask return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WA_MouseNoMask"));
   end WA_MouseNoMask;
   function WA_NoMousePropagation return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WA_NoMousePropagation"));
   end WA_NoMousePropagation;
   function WA_Hover return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WA_Hover"));
   end WA_Hover;
   function WA_InputMethodTransparent return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WA_InputMethodTransparent"));
   end WA_InputMethodTransparent;
   function WA_QuitOnClose return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WA_QuitOnClose"));
   end WA_QuitOnClose;
   function WA_KeyboardFocusChange return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WA_KeyboardFocusChange"));
   end WA_KeyboardFocusChange;
   function WA_AcceptDrops return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WA_AcceptDrops"));
   end WA_AcceptDrops;
   function WA_DropSiteRegistered return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WA_DropSiteRegistered"));
   end WA_DropSiteRegistered;
   function WA_WindowPropagation return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WA_WindowPropagation"));
   end WA_WindowPropagation;
   function WA_NoX11EventCompression return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WA_NoX11EventCompression"));
   end WA_NoX11EventCompression;
   function WA_TintedBackground return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WA_TintedBackground"));
   end WA_TintedBackground;
   function WA_X11OpenGLOverlay return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WA_X11OpenGLOverlay"));
   end WA_X11OpenGLOverlay;
   function WA_AlwaysShowToolTips return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WA_AlwaysShowToolTips"));
   end WA_AlwaysShowToolTips;
   function WA_MacOpaqueSizeGrip return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WA_MacOpaqueSizeGrip"));
   end WA_MacOpaqueSizeGrip;
   function WA_SetStyle return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WA_SetStyle"));
   end WA_SetStyle;
   function WA_SetLocale return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WA_SetLocale"));
   end WA_SetLocale;
   function WA_MacShowFocusRect return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WA_MacShowFocusRect"));
   end WA_MacShowFocusRect;
   function WA_MacNormalSize return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WA_MacNormalSize"));
   end WA_MacNormalSize;
   function WA_MacSmallSize return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WA_MacSmallSize"));
   end WA_MacSmallSize;
   function WA_MacMiniSize return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WA_MacMiniSize"));
   end WA_MacMiniSize;
   function WA_LayoutUsesWidgetRect return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WA_LayoutUsesWidgetRect"));
   end WA_LayoutUsesWidgetRect;
   function WA_StyledBackground return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WA_StyledBackground"));
   end WA_StyledBackground;
   function WA_CanHostQMdiSubWindowTitleBar return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WA_CanHostQMdiSubWindowTitleBar"));
   end WA_CanHostQMdiSubWindowTitleBar;
   function WA_MacAlwaysShowToolWindow return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WA_MacAlwaysShowToolWindow"));
   end WA_MacAlwaysShowToolWindow;
   function WA_StyleSheet return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WA_StyleSheet"));
   end WA_StyleSheet;
   function WA_ShowWithoutActivating return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WA_ShowWithoutActivating"));
   end WA_ShowWithoutActivating;
   function WA_X11BypassTransientForHint return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WA_X11BypassTransientForHint"));
   end WA_X11BypassTransientForHint;
   function WA_NativeWindow return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WA_NativeWindow"));
   end WA_NativeWindow;
   function WA_DontCreateNativeAncestors return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WA_DontCreateNativeAncestors"));
   end WA_DontCreateNativeAncestors;
   function WA_DontShowOnScreen return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WA_DontShowOnScreen"));
   end WA_DontShowOnScreen;
   function WA_X11NetWmWindowTypeDesktop return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WA_X11NetWmWindowTypeDesktop"));
   end WA_X11NetWmWindowTypeDesktop;
   function WA_X11NetWmWindowTypeDock return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WA_X11NetWmWindowTypeDock"));
   end WA_X11NetWmWindowTypeDock;
   function WA_X11NetWmWindowTypeToolBar return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WA_X11NetWmWindowTypeToolBar"));
   end WA_X11NetWmWindowTypeToolBar;
   function WA_X11NetWmWindowTypeMenu return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WA_X11NetWmWindowTypeMenu"));
   end WA_X11NetWmWindowTypeMenu;
   function WA_X11NetWmWindowTypeUtility return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WA_X11NetWmWindowTypeUtility"));
   end WA_X11NetWmWindowTypeUtility;
   function WA_X11NetWmWindowTypeSplash return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WA_X11NetWmWindowTypeSplash"));
   end WA_X11NetWmWindowTypeSplash;
   function WA_X11NetWmWindowTypeDialog return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WA_X11NetWmWindowTypeDialog"));
   end WA_X11NetWmWindowTypeDialog;
   function WA_X11NetWmWindowTypeDropDownMenu return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WA_X11NetWmWindowTypeDropDownMenu"));
   end WA_X11NetWmWindowTypeDropDownMenu;
   function WA_X11NetWmWindowTypePopupMenu return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WA_X11NetWmWindowTypePopupMenu"));
   end WA_X11NetWmWindowTypePopupMenu;
   function WA_X11NetWmWindowTypeToolTip return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WA_X11NetWmWindowTypeToolTip"));
   end WA_X11NetWmWindowTypeToolTip;
   function WA_X11NetWmWindowTypeNotification return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WA_X11NetWmWindowTypeNotification"));
   end WA_X11NetWmWindowTypeNotification;
   function WA_X11NetWmWindowTypeCombo return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WA_X11NetWmWindowTypeCombo"));
   end WA_X11NetWmWindowTypeCombo;
   function WA_X11NetWmWindowTypeDND return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WA_X11NetWmWindowTypeDND"));
   end WA_X11NetWmWindowTypeDND;
   function WA_SetWindowModality return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WA_SetWindowModality"));
   end WA_SetWindowModality;
   function WA_WState_WindowOpacitySet return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WA_WState_WindowOpacitySet"));
   end WA_WState_WindowOpacitySet;
   function WA_TranslucentBackground return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WA_TranslucentBackground"));
   end WA_TranslucentBackground;
   function WA_AcceptTouchEvents return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WA_AcceptTouchEvents"));
   end WA_AcceptTouchEvents;
   function WA_WState_AcceptedTouchBeginEvent return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WA_WState_AcceptedTouchBeginEvent"));
   end WA_WState_AcceptedTouchBeginEvent;
   function WA_TouchPadAcceptSingleTouchEvents return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WA_TouchPadAcceptSingleTouchEvents"));
   end WA_TouchPadAcceptSingleTouchEvents;
   function WA_X11DoNotAcceptFocus return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WA_X11DoNotAcceptFocus"));
   end WA_X11DoNotAcceptFocus;
   function WA_AlwaysStackOnTop return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WA_AlwaysStackOnTop"));
   end WA_AlwaysStackOnTop;
   function WA_TabletTracking return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WA_TabletTracking"));
   end WA_TabletTracking;
   function WA_ContentsMarginsRespectsSafeArea return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WA_ContentsMarginsRespectsSafeArea"));
   end WA_ContentsMarginsRespectsSafeArea;
   function WA_StyleSheetTarget return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WA_StyleSheetTarget"));
   end WA_StyleSheetTarget;
   function WA_AttributeCount return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WA_AttributeCount"));
   end WA_AttributeCount;
end QtAda6.QtCore.Qt.WidgetAttribute;
