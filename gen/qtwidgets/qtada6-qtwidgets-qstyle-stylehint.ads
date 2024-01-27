-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qstyle-stylehint.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtWidgets.QStyle.StyleHint is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.IntEnum with null record;
   procedure Finalize (Self : in out Class);
   function SH_EtchDisabledText return Class;-- 0x0
   function SH_DitherDisabledText return Class;-- 0x1
   function SH_ScrollBar_MiddleClickAbsolutePosition return Class;-- 0x2
   function SH_ScrollBar_ScrollWhenPointerLeavesControl return Class;-- 0x3
   function SH_TabBar_SelectMouseType return Class;-- 0x4
   function SH_TabBar_Alignment return Class;-- 0x5
   function SH_Header_ArrowAlignment return Class;-- 0x6
   function SH_Slider_SnapToValue return Class;-- 0x7
   function SH_Slider_SloppyKeyEvents return Class;-- 0x8
   function SH_ProgressDialog_CenterCancelButton return Class;-- 0x9
   function SH_ProgressDialog_TextLabelAlignment return Class;-- 0xa
   function SH_PrintDialog_RightAlignButtons return Class;-- 0xb
   function SH_MainWindow_SpaceBelowMenuBar return Class;-- 0xc
   function SH_FontDialog_SelectAssociatedText return Class;-- 0xd
   function SH_Menu_AllowActiveAndDisabled return Class;-- 0xe
   function SH_Menu_SpaceActivatesItem return Class;-- 0xf
   function SH_Menu_SubMenuPopupDelay return Class;-- 0x10
   function SH_ScrollView_FrameOnlyAroundContents return Class;-- 0x11
   function SH_MenuBar_AltKeyNavigation return Class;-- 0x12
   function SH_ComboBox_ListMouseTracking return Class;-- 0x13
   function SH_Menu_MouseTracking return Class;-- 0x14
   function SH_MenuBar_MouseTracking return Class;-- 0x15
   function SH_ItemView_ChangeHighlightOnFocus return Class;-- 0x16
   function SH_Widget_ShareActivation return Class;-- 0x17
   function SH_Workspace_FillSpaceOnMaximize return Class;-- 0x18
   function SH_ComboBox_Popup return Class;-- 0x19
   function SH_TitleBar_NoBorder return Class;-- 0x1a
   function SH_Slider_StopMouseOverSlider return Class;-- 0x1b
   function SH_BlinkCursorWhenTextSelected return Class;-- 0x1c
   function SH_RichText_FullWidthSelection return Class;-- 0x1d
   function SH_Menu_Scrollable return Class;-- 0x1e
   function SH_GroupBox_TextLabelVerticalAlignment return Class;-- 0x1f
   function SH_GroupBox_TextLabelColor return Class;-- 0x20
   function SH_Menu_SloppySubMenus return Class;-- 0x21
   function SH_Table_GridLineColor return Class;-- 0x22
   function SH_LineEdit_PasswordCharacter return Class;-- 0x23
   function SH_DialogButtons_DefaultButton return Class;-- 0x24
   function SH_ToolBox_SelectedPageTitleBold return Class;-- 0x25
   function SH_TabBar_PreferNoArrows return Class;-- 0x26
   function SH_ScrollBar_LeftClickAbsolutePosition return Class;-- 0x27
   function SH_ListViewExpand_SelectMouseType return Class;-- 0x28
   function SH_UnderlineShortcut return Class;-- 0x29
   function SH_SpinBox_AnimateButton return Class;-- 0x2a
   function SH_SpinBox_KeyPressAutoRepeatRate return Class;-- 0x2b
   function SH_SpinBox_ClickAutoRepeatRate return Class;-- 0x2c
   function SH_Menu_FillScreenWithScroll return Class;-- 0x2d
   function SH_ToolTipLabel_Opacity return Class;-- 0x2e
   function SH_DrawMenuBarSeparator return Class;-- 0x2f
   function SH_TitleBar_ModifyNotification return Class;-- 0x30
   function SH_Button_FocusPolicy return Class;-- 0x31
   function SH_MessageBox_UseBorderForButtonSpacing return Class;-- 0x32
   function SH_TitleBar_AutoRaise return Class;-- 0x33
   function SH_ToolButton_PopupDelay return Class;-- 0x34
   function SH_FocusFrame_Mask return Class;-- 0x35
   function SH_RubberBand_Mask return Class;-- 0x36
   function SH_WindowFrame_Mask return Class;-- 0x37
   function SH_SpinControls_DisableOnBounds return Class;-- 0x38
   function SH_Dial_BackgroundRole return Class;-- 0x39
   function SH_ComboBox_LayoutDirection return Class;-- 0x3a
   function SH_ItemView_EllipsisLocation return Class;-- 0x3b
   function SH_ItemView_ShowDecorationSelected return Class;-- 0x3c
   function SH_ItemView_ActivateItemOnSingleClick return Class;-- 0x3d
   function SH_ScrollBar_ContextMenu return Class;-- 0x3e
   function SH_ScrollBar_RollBetweenButtons return Class;-- 0x3f
   function SH_Slider_AbsoluteSetButtons return Class;-- 0x40
   function SH_Slider_PageSetButtons return Class;-- 0x41
   function SH_Menu_KeyboardSearch return Class;-- 0x42
   function SH_TabBar_ElideMode return Class;-- 0x43
   function SH_DialogButtonLayout return Class;-- 0x44
   function SH_ComboBox_PopupFrameStyle return Class;-- 0x45
   function SH_MessageBox_TextInteractionFlags return Class;-- 0x46
   function SH_DialogButtonBox_ButtonsHaveIcons return Class;-- 0x47
   function SH_MessageBox_CenterButtons return Class;-- 0x48
   function SH_Menu_SelectionWrap return Class;-- 0x49
   function SH_ItemView_MovementWithoutUpdatingSelection return Class;-- 0x4a
   function SH_ToolTip_Mask return Class;-- 0x4b
   function SH_FocusFrame_AboveWidget return Class;-- 0x4c
   function SH_TextControl_FocusIndicatorTextCharFormat return Class;-- 0x4d
   function SH_WizardStyle return Class;-- 0x4e
   function SH_ItemView_ArrowKeysNavigateIntoChildren return Class;-- 0x4f
   function SH_Menu_Mask return Class;-- 0x50
   function SH_Menu_FlashTriggeredItem return Class;-- 0x51
   function SH_Menu_FadeOutOnHide return Class;-- 0x52
   function SH_SpinBox_ClickAutoRepeatThreshold return Class;-- 0x53
   function SH_ItemView_PaintAlternatingRowColorsForEmptyArea return Class;-- 0x54
   function SH_FormLayoutWrapPolicy return Class;-- 0x55
   function SH_TabWidget_DefaultTabPosition return Class;-- 0x56
   function SH_ToolBar_Movable return Class;-- 0x57
   function SH_FormLayoutFieldGrowthPolicy return Class;-- 0x58
   function SH_FormLayoutFormAlignment return Class;-- 0x59
   function SH_FormLayoutLabelAlignment return Class;-- 0x5a
   function SH_ItemView_DrawDelegateFrame return Class;-- 0x5b
   function SH_TabBar_CloseButtonPosition return Class;-- 0x5c
   function SH_DockWidget_ButtonsHaveFrame return Class;-- 0x5d
   function SH_ToolButtonStyle return Class;-- 0x5e
   function SH_RequestSoftwareInputPanel return Class;-- 0x5f
   function SH_ScrollBar_Transient return Class;-- 0x60
   function SH_Menu_SupportsSections return Class;-- 0x61
   function SH_ToolTip_WakeUpDelay return Class;-- 0x62
   function SH_ToolTip_FallAsleepDelay return Class;-- 0x63
   function SH_Widget_Animate return Class;-- 0x64
   function SH_Splitter_OpaqueResize return Class;-- 0x65
   function SH_ComboBox_UseNativePopup return Class;-- 0x66
   function SH_LineEdit_PasswordMaskDelay return Class;-- 0x67
   function SH_TabBar_ChangeCurrentDelay return Class;-- 0x68
   function SH_Menu_SubMenuUniDirection return Class;-- 0x69
   function SH_Menu_SubMenuUniDirectionFailCount return Class;-- 0x6a
   function SH_Menu_SubMenuSloppySelectOtherActions return Class;-- 0x6b
   function SH_Menu_SubMenuSloppyCloseTimeout return Class;-- 0x6c
   function SH_Menu_SubMenuResetWhenReenteringParent return Class;-- 0x6d
   function SH_Menu_SubMenuDontStartSloppyOnLeave return Class;-- 0x6e
   function SH_ItemView_ScrollMode return Class;-- 0x6f
   function SH_TitleBar_ShowToolTipsOnButtons return Class;-- 0x70
   function SH_Widget_Animation_Duration return Class;-- 0x71
   function SH_ComboBox_AllowWheelScrolling return Class;-- 0x72
   function SH_SpinBox_ButtonsInsideFrame return Class;-- 0x73
   function SH_SpinBox_StepModifier return Class;-- 0x74
   function SH_TabBar_AllowWheelScrolling return Class;-- 0x75
   function SH_Table_AlwaysDrawLeftTopGridLines return Class;-- 0x76
   function SH_SpinBox_SelectOnStep return Class;-- 0x77
   function SH_CustomBase return Class;-- 0xf0000000
end QtAda6.QtWidgets.QStyle.StyleHint;
