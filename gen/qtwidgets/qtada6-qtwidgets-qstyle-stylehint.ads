-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qstyle-stylehint.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.IntEnum;
package QtAda6.QtWidgets.QStyle.StyleHint is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.IntEnum.Inst with null record;
   procedure Finalize (Self : in out Class);
   SH_EtchDisabledText                               : QStyle.StyleHint.Class;-- 0x0
   SH_DitherDisabledText                             : QStyle.StyleHint.Class;-- 0x1
   SH_ScrollBar_MiddleClickAbsolutePosition          : QStyle.StyleHint.Class;-- 0x2
   SH_ScrollBar_ScrollWhenPointerLeavesControl       : QStyle.StyleHint.Class;-- 0x3
   SH_TabBar_SelectMouseType                         : QStyle.StyleHint.Class;-- 0x4
   SH_TabBar_Alignment                               : QStyle.StyleHint.Class;-- 0x5
   SH_Header_ArrowAlignment                          : QStyle.StyleHint.Class;-- 0x6
   SH_Slider_SnapToValue                             : QStyle.StyleHint.Class;-- 0x7
   SH_Slider_SloppyKeyEvents                         : QStyle.StyleHint.Class;-- 0x8
   SH_ProgressDialog_CenterCancelButton              : QStyle.StyleHint.Class;-- 0x9
   SH_ProgressDialog_TextLabelAlignment              : QStyle.StyleHint.Class;-- 0xa
   SH_PrintDialog_RightAlignButtons                  : QStyle.StyleHint.Class;-- 0xb
   SH_MainWindow_SpaceBelowMenuBar                   : QStyle.StyleHint.Class;-- 0xc
   SH_FontDialog_SelectAssociatedText                : QStyle.StyleHint.Class;-- 0xd
   SH_Menu_AllowActiveAndDisabled                    : QStyle.StyleHint.Class;-- 0xe
   SH_Menu_SpaceActivatesItem                        : QStyle.StyleHint.Class;-- 0xf
   SH_Menu_SubMenuPopupDelay                         : QStyle.StyleHint.Class;-- 0x10
   SH_ScrollView_FrameOnlyAroundContents             : QStyle.StyleHint.Class;-- 0x11
   SH_MenuBar_AltKeyNavigation                       : QStyle.StyleHint.Class;-- 0x12
   SH_ComboBox_ListMouseTracking                     : QStyle.StyleHint.Class;-- 0x13
   SH_Menu_MouseTracking                             : QStyle.StyleHint.Class;-- 0x14
   SH_MenuBar_MouseTracking                          : QStyle.StyleHint.Class;-- 0x15
   SH_ItemView_ChangeHighlightOnFocus                : QStyle.StyleHint.Class;-- 0x16
   SH_Widget_ShareActivation                         : QStyle.StyleHint.Class;-- 0x17
   SH_Workspace_FillSpaceOnMaximize                  : QStyle.StyleHint.Class;-- 0x18
   SH_ComboBox_Popup                                 : QStyle.StyleHint.Class;-- 0x19
   SH_TitleBar_NoBorder                              : QStyle.StyleHint.Class;-- 0x1a
   SH_Slider_StopMouseOverSlider                     : QStyle.StyleHint.Class;-- 0x1b
   SH_BlinkCursorWhenTextSelected                    : QStyle.StyleHint.Class;-- 0x1c
   SH_RichText_FullWidthSelection                    : QStyle.StyleHint.Class;-- 0x1d
   SH_Menu_Scrollable                                : QStyle.StyleHint.Class;-- 0x1e
   SH_GroupBox_TextLabelVerticalAlignment            : QStyle.StyleHint.Class;-- 0x1f
   SH_GroupBox_TextLabelColor                        : QStyle.StyleHint.Class;-- 0x20
   SH_Menu_SloppySubMenus                            : QStyle.StyleHint.Class;-- 0x21
   SH_Table_GridLineColor                            : QStyle.StyleHint.Class;-- 0x22
   SH_LineEdit_PasswordCharacter                     : QStyle.StyleHint.Class;-- 0x23
   SH_DialogButtons_DefaultButton                    : QStyle.StyleHint.Class;-- 0x24
   SH_ToolBox_SelectedPageTitleBold                  : QStyle.StyleHint.Class;-- 0x25
   SH_TabBar_PreferNoArrows                          : QStyle.StyleHint.Class;-- 0x26
   SH_ScrollBar_LeftClickAbsolutePosition            : QStyle.StyleHint.Class;-- 0x27
   SH_ListViewExpand_SelectMouseType                 : QStyle.StyleHint.Class;-- 0x28
   SH_UnderlineShortcut                              : QStyle.StyleHint.Class;-- 0x29
   SH_SpinBox_AnimateButton                          : QStyle.StyleHint.Class;-- 0x2a
   SH_SpinBox_KeyPressAutoRepeatRate                 : QStyle.StyleHint.Class;-- 0x2b
   SH_SpinBox_ClickAutoRepeatRate                    : QStyle.StyleHint.Class;-- 0x2c
   SH_Menu_FillScreenWithScroll                      : QStyle.StyleHint.Class;-- 0x2d
   SH_ToolTipLabel_Opacity                           : QStyle.StyleHint.Class;-- 0x2e
   SH_DrawMenuBarSeparator                           : QStyle.StyleHint.Class;-- 0x2f
   SH_TitleBar_ModifyNotification                    : QStyle.StyleHint.Class;-- 0x30
   SH_Button_FocusPolicy                             : QStyle.StyleHint.Class;-- 0x31
   SH_MessageBox_UseBorderForButtonSpacing           : QStyle.StyleHint.Class;-- 0x32
   SH_TitleBar_AutoRaise                             : QStyle.StyleHint.Class;-- 0x33
   SH_ToolButton_PopupDelay                          : QStyle.StyleHint.Class;-- 0x34
   SH_FocusFrame_Mask                                : QStyle.StyleHint.Class;-- 0x35
   SH_RubberBand_Mask                                : QStyle.StyleHint.Class;-- 0x36
   SH_WindowFrame_Mask                               : QStyle.StyleHint.Class;-- 0x37
   SH_SpinControls_DisableOnBounds                   : QStyle.StyleHint.Class;-- 0x38
   SH_Dial_BackgroundRole                            : QStyle.StyleHint.Class;-- 0x39
   SH_ComboBox_LayoutDirection                       : QStyle.StyleHint.Class;-- 0x3a
   SH_ItemView_EllipsisLocation                      : QStyle.StyleHint.Class;-- 0x3b
   SH_ItemView_ShowDecorationSelected                : QStyle.StyleHint.Class;-- 0x3c
   SH_ItemView_ActivateItemOnSingleClick             : QStyle.StyleHint.Class;-- 0x3d
   SH_ScrollBar_ContextMenu                          : QStyle.StyleHint.Class;-- 0x3e
   SH_ScrollBar_RollBetweenButtons                   : QStyle.StyleHint.Class;-- 0x3f
   SH_Slider_AbsoluteSetButtons                      : QStyle.StyleHint.Class;-- 0x40
   SH_Slider_PageSetButtons                          : QStyle.StyleHint.Class;-- 0x41
   SH_Menu_KeyboardSearch                            : QStyle.StyleHint.Class;-- 0x42
   SH_TabBar_ElideMode                               : QStyle.StyleHint.Class;-- 0x43
   SH_DialogButtonLayout                             : QStyle.StyleHint.Class;-- 0x44
   SH_ComboBox_PopupFrameStyle                       : QStyle.StyleHint.Class;-- 0x45
   SH_MessageBox_TextInteractionFlags                : QStyle.StyleHint.Class;-- 0x46
   SH_DialogButtonBox_ButtonsHaveIcons               : QStyle.StyleHint.Class;-- 0x47
   SH_MessageBox_CenterButtons                       : QStyle.StyleHint.Class;-- 0x48
   SH_Menu_SelectionWrap                             : QStyle.StyleHint.Class;-- 0x49
   SH_ItemView_MovementWithoutUpdatingSelection      : QStyle.StyleHint.Class;-- 0x4a
   SH_ToolTip_Mask                                   : QStyle.StyleHint.Class;-- 0x4b
   SH_FocusFrame_AboveWidget                         : QStyle.StyleHint.Class;-- 0x4c
   SH_TextControl_FocusIndicatorTextCharFormat       : QStyle.StyleHint.Class;-- 0x4d
   SH_WizardStyle                                    : QStyle.StyleHint.Class;-- 0x4e
   SH_ItemView_ArrowKeysNavigateIntoChildren         : QStyle.StyleHint.Class;-- 0x4f
   SH_Menu_Mask                                      : QStyle.StyleHint.Class;-- 0x50
   SH_Menu_FlashTriggeredItem                        : QStyle.StyleHint.Class;-- 0x51
   SH_Menu_FadeOutOnHide                             : QStyle.StyleHint.Class;-- 0x52
   SH_SpinBox_ClickAutoRepeatThreshold               : QStyle.StyleHint.Class;-- 0x53
   SH_ItemView_PaintAlternatingRowColorsForEmptyArea : QStyle.StyleHint.Class;-- 0x54
   SH_FormLayoutWrapPolicy                           : QStyle.StyleHint.Class;-- 0x55
   SH_TabWidget_DefaultTabPosition                   : QStyle.StyleHint.Class;-- 0x56
   SH_ToolBar_Movable                                : QStyle.StyleHint.Class;-- 0x57
   SH_FormLayoutFieldGrowthPolicy                    : QStyle.StyleHint.Class;-- 0x58
   SH_FormLayoutFormAlignment                        : QStyle.StyleHint.Class;-- 0x59
   SH_FormLayoutLabelAlignment                       : QStyle.StyleHint.Class;-- 0x5a
   SH_ItemView_DrawDelegateFrame                     : QStyle.StyleHint.Class;-- 0x5b
   SH_TabBar_CloseButtonPosition                     : QStyle.StyleHint.Class;-- 0x5c
   SH_DockWidget_ButtonsHaveFrame                    : QStyle.StyleHint.Class;-- 0x5d
   SH_ToolButtonStyle                                : QStyle.StyleHint.Class;-- 0x5e
   SH_RequestSoftwareInputPanel                      : QStyle.StyleHint.Class;-- 0x5f
   SH_ScrollBar_Transient                            : QStyle.StyleHint.Class;-- 0x60
   SH_Menu_SupportsSections                          : QStyle.StyleHint.Class;-- 0x61
   SH_ToolTip_WakeUpDelay                            : QStyle.StyleHint.Class;-- 0x62
   SH_ToolTip_FallAsleepDelay                        : QStyle.StyleHint.Class;-- 0x63
   SH_Widget_Animate                                 : QStyle.StyleHint.Class;-- 0x64
   SH_Splitter_OpaqueResize                          : QStyle.StyleHint.Class;-- 0x65
   SH_ComboBox_UseNativePopup                        : QStyle.StyleHint.Class;-- 0x66
   SH_LineEdit_PasswordMaskDelay                     : QStyle.StyleHint.Class;-- 0x67
   SH_TabBar_ChangeCurrentDelay                      : QStyle.StyleHint.Class;-- 0x68
   SH_Menu_SubMenuUniDirection                       : QStyle.StyleHint.Class;-- 0x69
   SH_Menu_SubMenuUniDirectionFailCount              : QStyle.StyleHint.Class;-- 0x6a
   SH_Menu_SubMenuSloppySelectOtherActions           : QStyle.StyleHint.Class;-- 0x6b
   SH_Menu_SubMenuSloppyCloseTimeout                 : QStyle.StyleHint.Class;-- 0x6c
   SH_Menu_SubMenuResetWhenReenteringParent          : QStyle.StyleHint.Class;-- 0x6d
   SH_Menu_SubMenuDontStartSloppyOnLeave             : QStyle.StyleHint.Class;-- 0x6e
   SH_ItemView_ScrollMode                            : QStyle.StyleHint.Class;-- 0x6f
   SH_TitleBar_ShowToolTipsOnButtons                 : QStyle.StyleHint.Class;-- 0x70
   SH_Widget_Animation_Duration                      : QStyle.StyleHint.Class;-- 0x71
   SH_ComboBox_AllowWheelScrolling                   : QStyle.StyleHint.Class;-- 0x72
   SH_SpinBox_ButtonsInsideFrame                     : QStyle.StyleHint.Class;-- 0x73
   SH_SpinBox_StepModifier                           : QStyle.StyleHint.Class;-- 0x74
   SH_TabBar_AllowWheelScrolling                     : QStyle.StyleHint.Class;-- 0x75
   SH_Table_AlwaysDrawLeftTopGridLines               : QStyle.StyleHint.Class;-- 0x76
   SH_SpinBox_SelectOnStep                           : QStyle.StyleHint.Class;-- 0x77
   SH_CustomBase                                     : QStyle.StyleHint.Class;-- 0xf0000000
end QtAda6.QtWidgets.QStyle.StyleHint;
