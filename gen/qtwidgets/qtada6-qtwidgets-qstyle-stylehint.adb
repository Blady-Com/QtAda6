-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qstyle-stylehint.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Py; use Py;
with Ada.Unchecked_Deallocation;
package body QtAda6.QtWidgets.QStyle.StyleHint is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function SH_EtchDisabledText return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_EtchDisabledText"));
   end SH_EtchDisabledText;
   function SH_DitherDisabledText return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_DitherDisabledText"));
   end SH_DitherDisabledText;
   function SH_ScrollBar_MiddleClickAbsolutePosition return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_ScrollBar_MiddleClickAbsolutePosition"));
   end SH_ScrollBar_MiddleClickAbsolutePosition;
   function SH_ScrollBar_ScrollWhenPointerLeavesControl return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return
        new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_ScrollBar_ScrollWhenPointerLeavesControl"));
   end SH_ScrollBar_ScrollWhenPointerLeavesControl;
   function SH_TabBar_SelectMouseType return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_TabBar_SelectMouseType"));
   end SH_TabBar_SelectMouseType;
   function SH_TabBar_Alignment return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_TabBar_Alignment"));
   end SH_TabBar_Alignment;
   function SH_Header_ArrowAlignment return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_Header_ArrowAlignment"));
   end SH_Header_ArrowAlignment;
   function SH_Slider_SnapToValue return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_Slider_SnapToValue"));
   end SH_Slider_SnapToValue;
   function SH_Slider_SloppyKeyEvents return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_Slider_SloppyKeyEvents"));
   end SH_Slider_SloppyKeyEvents;
   function SH_ProgressDialog_CenterCancelButton return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_ProgressDialog_CenterCancelButton"));
   end SH_ProgressDialog_CenterCancelButton;
   function SH_ProgressDialog_TextLabelAlignment return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_ProgressDialog_TextLabelAlignment"));
   end SH_ProgressDialog_TextLabelAlignment;
   function SH_PrintDialog_RightAlignButtons return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_PrintDialog_RightAlignButtons"));
   end SH_PrintDialog_RightAlignButtons;
   function SH_MainWindow_SpaceBelowMenuBar return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_MainWindow_SpaceBelowMenuBar"));
   end SH_MainWindow_SpaceBelowMenuBar;
   function SH_FontDialog_SelectAssociatedText return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_FontDialog_SelectAssociatedText"));
   end SH_FontDialog_SelectAssociatedText;
   function SH_Menu_AllowActiveAndDisabled return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_Menu_AllowActiveAndDisabled"));
   end SH_Menu_AllowActiveAndDisabled;
   function SH_Menu_SpaceActivatesItem return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_Menu_SpaceActivatesItem"));
   end SH_Menu_SpaceActivatesItem;
   function SH_Menu_SubMenuPopupDelay return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_Menu_SubMenuPopupDelay"));
   end SH_Menu_SubMenuPopupDelay;
   function SH_ScrollView_FrameOnlyAroundContents return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_ScrollView_FrameOnlyAroundContents"));
   end SH_ScrollView_FrameOnlyAroundContents;
   function SH_MenuBar_AltKeyNavigation return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_MenuBar_AltKeyNavigation"));
   end SH_MenuBar_AltKeyNavigation;
   function SH_ComboBox_ListMouseTracking return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_ComboBox_ListMouseTracking"));
   end SH_ComboBox_ListMouseTracking;
   function SH_Menu_MouseTracking return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_Menu_MouseTracking"));
   end SH_Menu_MouseTracking;
   function SH_MenuBar_MouseTracking return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_MenuBar_MouseTracking"));
   end SH_MenuBar_MouseTracking;
   function SH_ItemView_ChangeHighlightOnFocus return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_ItemView_ChangeHighlightOnFocus"));
   end SH_ItemView_ChangeHighlightOnFocus;
   function SH_Widget_ShareActivation return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_Widget_ShareActivation"));
   end SH_Widget_ShareActivation;
   function SH_Workspace_FillSpaceOnMaximize return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_Workspace_FillSpaceOnMaximize"));
   end SH_Workspace_FillSpaceOnMaximize;
   function SH_ComboBox_Popup return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_ComboBox_Popup"));
   end SH_ComboBox_Popup;
   function SH_TitleBar_NoBorder return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_TitleBar_NoBorder"));
   end SH_TitleBar_NoBorder;
   function SH_Slider_StopMouseOverSlider return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_Slider_StopMouseOverSlider"));
   end SH_Slider_StopMouseOverSlider;
   function SH_BlinkCursorWhenTextSelected return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_BlinkCursorWhenTextSelected"));
   end SH_BlinkCursorWhenTextSelected;
   function SH_RichText_FullWidthSelection return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_RichText_FullWidthSelection"));
   end SH_RichText_FullWidthSelection;
   function SH_Menu_Scrollable return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_Menu_Scrollable"));
   end SH_Menu_Scrollable;
   function SH_GroupBox_TextLabelVerticalAlignment return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_GroupBox_TextLabelVerticalAlignment"));
   end SH_GroupBox_TextLabelVerticalAlignment;
   function SH_GroupBox_TextLabelColor return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_GroupBox_TextLabelColor"));
   end SH_GroupBox_TextLabelColor;
   function SH_Menu_SloppySubMenus return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_Menu_SloppySubMenus"));
   end SH_Menu_SloppySubMenus;
   function SH_Table_GridLineColor return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_Table_GridLineColor"));
   end SH_Table_GridLineColor;
   function SH_LineEdit_PasswordCharacter return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_LineEdit_PasswordCharacter"));
   end SH_LineEdit_PasswordCharacter;
   function SH_DialogButtons_DefaultButton return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_DialogButtons_DefaultButton"));
   end SH_DialogButtons_DefaultButton;
   function SH_ToolBox_SelectedPageTitleBold return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_ToolBox_SelectedPageTitleBold"));
   end SH_ToolBox_SelectedPageTitleBold;
   function SH_TabBar_PreferNoArrows return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_TabBar_PreferNoArrows"));
   end SH_TabBar_PreferNoArrows;
   function SH_ScrollBar_LeftClickAbsolutePosition return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_ScrollBar_LeftClickAbsolutePosition"));
   end SH_ScrollBar_LeftClickAbsolutePosition;
   function SH_ListViewExpand_SelectMouseType return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_ListViewExpand_SelectMouseType"));
   end SH_ListViewExpand_SelectMouseType;
   function SH_UnderlineShortcut return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_UnderlineShortcut"));
   end SH_UnderlineShortcut;
   function SH_SpinBox_AnimateButton return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_SpinBox_AnimateButton"));
   end SH_SpinBox_AnimateButton;
   function SH_SpinBox_KeyPressAutoRepeatRate return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_SpinBox_KeyPressAutoRepeatRate"));
   end SH_SpinBox_KeyPressAutoRepeatRate;
   function SH_SpinBox_ClickAutoRepeatRate return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_SpinBox_ClickAutoRepeatRate"));
   end SH_SpinBox_ClickAutoRepeatRate;
   function SH_Menu_FillScreenWithScroll return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_Menu_FillScreenWithScroll"));
   end SH_Menu_FillScreenWithScroll;
   function SH_ToolTipLabel_Opacity return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_ToolTipLabel_Opacity"));
   end SH_ToolTipLabel_Opacity;
   function SH_DrawMenuBarSeparator return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_DrawMenuBarSeparator"));
   end SH_DrawMenuBarSeparator;
   function SH_TitleBar_ModifyNotification return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_TitleBar_ModifyNotification"));
   end SH_TitleBar_ModifyNotification;
   function SH_Button_FocusPolicy return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_Button_FocusPolicy"));
   end SH_Button_FocusPolicy;
   function SH_MessageBox_UseBorderForButtonSpacing return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_MessageBox_UseBorderForButtonSpacing"));
   end SH_MessageBox_UseBorderForButtonSpacing;
   function SH_TitleBar_AutoRaise return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_TitleBar_AutoRaise"));
   end SH_TitleBar_AutoRaise;
   function SH_ToolButton_PopupDelay return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_ToolButton_PopupDelay"));
   end SH_ToolButton_PopupDelay;
   function SH_FocusFrame_Mask return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_FocusFrame_Mask"));
   end SH_FocusFrame_Mask;
   function SH_RubberBand_Mask return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_RubberBand_Mask"));
   end SH_RubberBand_Mask;
   function SH_WindowFrame_Mask return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_WindowFrame_Mask"));
   end SH_WindowFrame_Mask;
   function SH_SpinControls_DisableOnBounds return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_SpinControls_DisableOnBounds"));
   end SH_SpinControls_DisableOnBounds;
   function SH_Dial_BackgroundRole return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_Dial_BackgroundRole"));
   end SH_Dial_BackgroundRole;
   function SH_ComboBox_LayoutDirection return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_ComboBox_LayoutDirection"));
   end SH_ComboBox_LayoutDirection;
   function SH_ItemView_EllipsisLocation return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_ItemView_EllipsisLocation"));
   end SH_ItemView_EllipsisLocation;
   function SH_ItemView_ShowDecorationSelected return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_ItemView_ShowDecorationSelected"));
   end SH_ItemView_ShowDecorationSelected;
   function SH_ItemView_ActivateItemOnSingleClick return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_ItemView_ActivateItemOnSingleClick"));
   end SH_ItemView_ActivateItemOnSingleClick;
   function SH_ScrollBar_ContextMenu return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_ScrollBar_ContextMenu"));
   end SH_ScrollBar_ContextMenu;
   function SH_ScrollBar_RollBetweenButtons return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_ScrollBar_RollBetweenButtons"));
   end SH_ScrollBar_RollBetweenButtons;
   function SH_Slider_AbsoluteSetButtons return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_Slider_AbsoluteSetButtons"));
   end SH_Slider_AbsoluteSetButtons;
   function SH_Slider_PageSetButtons return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_Slider_PageSetButtons"));
   end SH_Slider_PageSetButtons;
   function SH_Menu_KeyboardSearch return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_Menu_KeyboardSearch"));
   end SH_Menu_KeyboardSearch;
   function SH_TabBar_ElideMode return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_TabBar_ElideMode"));
   end SH_TabBar_ElideMode;
   function SH_DialogButtonLayout return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_DialogButtonLayout"));
   end SH_DialogButtonLayout;
   function SH_ComboBox_PopupFrameStyle return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_ComboBox_PopupFrameStyle"));
   end SH_ComboBox_PopupFrameStyle;
   function SH_MessageBox_TextInteractionFlags return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_MessageBox_TextInteractionFlags"));
   end SH_MessageBox_TextInteractionFlags;
   function SH_DialogButtonBox_ButtonsHaveIcons return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_DialogButtonBox_ButtonsHaveIcons"));
   end SH_DialogButtonBox_ButtonsHaveIcons;
   function SH_MessageBox_CenterButtons return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_MessageBox_CenterButtons"));
   end SH_MessageBox_CenterButtons;
   function SH_Menu_SelectionWrap return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_Menu_SelectionWrap"));
   end SH_Menu_SelectionWrap;
   function SH_ItemView_MovementWithoutUpdatingSelection return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return
        new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_ItemView_MovementWithoutUpdatingSelection"));
   end SH_ItemView_MovementWithoutUpdatingSelection;
   function SH_ToolTip_Mask return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_ToolTip_Mask"));
   end SH_ToolTip_Mask;
   function SH_FocusFrame_AboveWidget return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_FocusFrame_AboveWidget"));
   end SH_FocusFrame_AboveWidget;
   function SH_TextControl_FocusIndicatorTextCharFormat return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return
        new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_TextControl_FocusIndicatorTextCharFormat"));
   end SH_TextControl_FocusIndicatorTextCharFormat;
   function SH_WizardStyle return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_WizardStyle"));
   end SH_WizardStyle;
   function SH_ItemView_ArrowKeysNavigateIntoChildren return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return
        new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_ItemView_ArrowKeysNavigateIntoChildren"));
   end SH_ItemView_ArrowKeysNavigateIntoChildren;
   function SH_Menu_Mask return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_Menu_Mask"));
   end SH_Menu_Mask;
   function SH_Menu_FlashTriggeredItem return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_Menu_FlashTriggeredItem"));
   end SH_Menu_FlashTriggeredItem;
   function SH_Menu_FadeOutOnHide return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_Menu_FadeOutOnHide"));
   end SH_Menu_FadeOutOnHide;
   function SH_SpinBox_ClickAutoRepeatThreshold return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_SpinBox_ClickAutoRepeatThreshold"));
   end SH_SpinBox_ClickAutoRepeatThreshold;
   function SH_ItemView_PaintAlternatingRowColorsForEmptyArea return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return
        new Inst'
          (Python_Proxy => Object_GetAttrString (Parent_Class, "SH_ItemView_PaintAlternatingRowColorsForEmptyArea"));
   end SH_ItemView_PaintAlternatingRowColorsForEmptyArea;
   function SH_FormLayoutWrapPolicy return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_FormLayoutWrapPolicy"));
   end SH_FormLayoutWrapPolicy;
   function SH_TabWidget_DefaultTabPosition return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_TabWidget_DefaultTabPosition"));
   end SH_TabWidget_DefaultTabPosition;
   function SH_ToolBar_Movable return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_ToolBar_Movable"));
   end SH_ToolBar_Movable;
   function SH_FormLayoutFieldGrowthPolicy return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_FormLayoutFieldGrowthPolicy"));
   end SH_FormLayoutFieldGrowthPolicy;
   function SH_FormLayoutFormAlignment return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_FormLayoutFormAlignment"));
   end SH_FormLayoutFormAlignment;
   function SH_FormLayoutLabelAlignment return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_FormLayoutLabelAlignment"));
   end SH_FormLayoutLabelAlignment;
   function SH_ItemView_DrawDelegateFrame return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_ItemView_DrawDelegateFrame"));
   end SH_ItemView_DrawDelegateFrame;
   function SH_TabBar_CloseButtonPosition return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_TabBar_CloseButtonPosition"));
   end SH_TabBar_CloseButtonPosition;
   function SH_DockWidget_ButtonsHaveFrame return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_DockWidget_ButtonsHaveFrame"));
   end SH_DockWidget_ButtonsHaveFrame;
   function SH_ToolButtonStyle return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_ToolButtonStyle"));
   end SH_ToolButtonStyle;
   function SH_RequestSoftwareInputPanel return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_RequestSoftwareInputPanel"));
   end SH_RequestSoftwareInputPanel;
   function SH_ScrollBar_Transient return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_ScrollBar_Transient"));
   end SH_ScrollBar_Transient;
   function SH_Menu_SupportsSections return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_Menu_SupportsSections"));
   end SH_Menu_SupportsSections;
   function SH_ToolTip_WakeUpDelay return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_ToolTip_WakeUpDelay"));
   end SH_ToolTip_WakeUpDelay;
   function SH_ToolTip_FallAsleepDelay return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_ToolTip_FallAsleepDelay"));
   end SH_ToolTip_FallAsleepDelay;
   function SH_Widget_Animate return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_Widget_Animate"));
   end SH_Widget_Animate;
   function SH_Splitter_OpaqueResize return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_Splitter_OpaqueResize"));
   end SH_Splitter_OpaqueResize;
   function SH_ComboBox_UseNativePopup return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_ComboBox_UseNativePopup"));
   end SH_ComboBox_UseNativePopup;
   function SH_LineEdit_PasswordMaskDelay return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_LineEdit_PasswordMaskDelay"));
   end SH_LineEdit_PasswordMaskDelay;
   function SH_TabBar_ChangeCurrentDelay return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_TabBar_ChangeCurrentDelay"));
   end SH_TabBar_ChangeCurrentDelay;
   function SH_Menu_SubMenuUniDirection return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_Menu_SubMenuUniDirection"));
   end SH_Menu_SubMenuUniDirection;
   function SH_Menu_SubMenuUniDirectionFailCount return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_Menu_SubMenuUniDirectionFailCount"));
   end SH_Menu_SubMenuUniDirectionFailCount;
   function SH_Menu_SubMenuSloppySelectOtherActions return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_Menu_SubMenuSloppySelectOtherActions"));
   end SH_Menu_SubMenuSloppySelectOtherActions;
   function SH_Menu_SubMenuSloppyCloseTimeout return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_Menu_SubMenuSloppyCloseTimeout"));
   end SH_Menu_SubMenuSloppyCloseTimeout;
   function SH_Menu_SubMenuResetWhenReenteringParent return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_Menu_SubMenuResetWhenReenteringParent"));
   end SH_Menu_SubMenuResetWhenReenteringParent;
   function SH_Menu_SubMenuDontStartSloppyOnLeave return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_Menu_SubMenuDontStartSloppyOnLeave"));
   end SH_Menu_SubMenuDontStartSloppyOnLeave;
   function SH_ItemView_ScrollMode return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_ItemView_ScrollMode"));
   end SH_ItemView_ScrollMode;
   function SH_TitleBar_ShowToolTipsOnButtons return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_TitleBar_ShowToolTipsOnButtons"));
   end SH_TitleBar_ShowToolTipsOnButtons;
   function SH_Widget_Animation_Duration return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_Widget_Animation_Duration"));
   end SH_Widget_Animation_Duration;
   function SH_ComboBox_AllowWheelScrolling return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_ComboBox_AllowWheelScrolling"));
   end SH_ComboBox_AllowWheelScrolling;
   function SH_SpinBox_ButtonsInsideFrame return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_SpinBox_ButtonsInsideFrame"));
   end SH_SpinBox_ButtonsInsideFrame;
   function SH_SpinBox_StepModifier return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_SpinBox_StepModifier"));
   end SH_SpinBox_StepModifier;
   function SH_TabBar_AllowWheelScrolling return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_TabBar_AllowWheelScrolling"));
   end SH_TabBar_AllowWheelScrolling;
   function SH_Table_AlwaysDrawLeftTopGridLines return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_Table_AlwaysDrawLeftTopGridLines"));
   end SH_Table_AlwaysDrawLeftTopGridLines;
   function SH_SpinBox_SelectOnStep return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_SpinBox_SelectOnStep"));
   end SH_SpinBox_SelectOnStep;
   function SH_CustomBase return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SH_CustomBase"));
   end SH_CustomBase;
end QtAda6.QtWidgets.QStyle.StyleHint;
