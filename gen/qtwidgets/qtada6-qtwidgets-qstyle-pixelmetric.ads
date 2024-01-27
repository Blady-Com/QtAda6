-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qstyle-pixelmetric.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtWidgets.QStyle.PixelMetric is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.IntEnum with null record;
   procedure Finalize (Self : in out Class);
   function PM_ButtonMargin return Class;-- 0x0
   function PM_ButtonDefaultIndicator return Class;-- 0x1
   function PM_MenuButtonIndicator return Class;-- 0x2
   function PM_ButtonShiftHorizontal return Class;-- 0x3
   function PM_ButtonShiftVertical return Class;-- 0x4
   function PM_DefaultFrameWidth return Class;-- 0x5
   function PM_SpinBoxFrameWidth return Class;-- 0x6
   function PM_ComboBoxFrameWidth return Class;-- 0x7
   function PM_MaximumDragDistance return Class;-- 0x8
   function PM_ScrollBarExtent return Class;-- 0x9
   function PM_ScrollBarSliderMin return Class;-- 0xa
   function PM_SliderThickness return Class;-- 0xb
   function PM_SliderControlThickness return Class;-- 0xc
   function PM_SliderLength return Class;-- 0xd
   function PM_SliderTickmarkOffset return Class;-- 0xe
   function PM_SliderSpaceAvailable return Class;-- 0xf
   function PM_DockWidgetSeparatorExtent return Class;-- 0x10
   function PM_DockWidgetHandleExtent return Class;-- 0x11
   function PM_DockWidgetFrameWidth return Class;-- 0x12
   function PM_TabBarTabOverlap return Class;-- 0x13
   function PM_TabBarTabHSpace return Class;-- 0x14
   function PM_TabBarTabVSpace return Class;-- 0x15
   function PM_TabBarBaseHeight return Class;-- 0x16
   function PM_TabBarBaseOverlap return Class;-- 0x17
   function PM_ProgressBarChunkWidth return Class;-- 0x18
   function PM_SplitterWidth return Class;-- 0x19
   function PM_TitleBarHeight return Class;-- 0x1a
   function PM_MenuScrollerHeight return Class;-- 0x1b
   function PM_MenuHMargin return Class;-- 0x1c
   function PM_MenuVMargin return Class;-- 0x1d
   function PM_MenuPanelWidth return Class;-- 0x1e
   function PM_MenuTearoffHeight return Class;-- 0x1f
   function PM_MenuDesktopFrameWidth return Class;-- 0x20
   function PM_MenuBarPanelWidth return Class;-- 0x21
   function PM_MenuBarItemSpacing return Class;-- 0x22
   function PM_MenuBarVMargin return Class;-- 0x23
   function PM_MenuBarHMargin return Class;-- 0x24
   function PM_IndicatorWidth return Class;-- 0x25
   function PM_IndicatorHeight return Class;-- 0x26
   function PM_ExclusiveIndicatorWidth return Class;-- 0x27
   function PM_ExclusiveIndicatorHeight return Class;-- 0x28
   function PM_DialogButtonsSeparator return Class;-- 0x29
   function PM_DialogButtonsButtonWidth return Class;-- 0x2a
   function PM_DialogButtonsButtonHeight return Class;-- 0x2b
   function PM_MdiSubWindowFrameWidth return Class;-- 0x2c
   function PM_MdiSubWindowMinimizedWidth return Class;-- 0x2d
   function PM_HeaderMargin return Class;-- 0x2e
   function PM_HeaderMarkSize return Class;-- 0x2f
   function PM_HeaderGripMargin return Class;-- 0x30
   function PM_TabBarTabShiftHorizontal return Class;-- 0x31
   function PM_TabBarTabShiftVertical return Class;-- 0x32
   function PM_TabBarScrollButtonWidth return Class;-- 0x33
   function PM_ToolBarFrameWidth return Class;-- 0x34
   function PM_ToolBarHandleExtent return Class;-- 0x35
   function PM_ToolBarItemSpacing return Class;-- 0x36
   function PM_ToolBarItemMargin return Class;-- 0x37
   function PM_ToolBarSeparatorExtent return Class;-- 0x38
   function PM_ToolBarExtensionExtent return Class;-- 0x39
   function PM_SpinBoxSliderHeight return Class;-- 0x3a
   function PM_ToolBarIconSize return Class;-- 0x3b
   function PM_ListViewIconSize return Class;-- 0x3c
   function PM_IconViewIconSize return Class;-- 0x3d
   function PM_SmallIconSize return Class;-- 0x3e
   function PM_LargeIconSize return Class;-- 0x3f
   function PM_FocusFrameVMargin return Class;-- 0x40
   function PM_FocusFrameHMargin return Class;-- 0x41
   function PM_ToolTipLabelFrameWidth return Class;-- 0x42
   function PM_CheckBoxLabelSpacing return Class;-- 0x43
   function PM_TabBarIconSize return Class;-- 0x44
   function PM_SizeGripSize return Class;-- 0x45
   function PM_DockWidgetTitleMargin return Class;-- 0x46
   function PM_MessageBoxIconSize return Class;-- 0x47
   function PM_ButtonIconSize return Class;-- 0x48
   function PM_DockWidgetTitleBarButtonMargin return Class;-- 0x49
   function PM_RadioButtonLabelSpacing return Class;-- 0x4a
   function PM_LayoutLeftMargin return Class;-- 0x4b
   function PM_LayoutTopMargin return Class;-- 0x4c
   function PM_LayoutRightMargin return Class;-- 0x4d
   function PM_LayoutBottomMargin return Class;-- 0x4e
   function PM_LayoutHorizontalSpacing return Class;-- 0x4f
   function PM_LayoutVerticalSpacing return Class;-- 0x50
   function PM_TabBar_ScrollButtonOverlap return Class;-- 0x51
   function PM_TextCursorWidth return Class;-- 0x52
   function PM_TabCloseIndicatorWidth return Class;-- 0x53
   function PM_TabCloseIndicatorHeight return Class;-- 0x54
   function PM_ScrollView_ScrollBarSpacing return Class;-- 0x55
   function PM_ScrollView_ScrollBarOverlap return Class;-- 0x56
   function PM_SubMenuOverlap return Class;-- 0x57
   function PM_TreeViewIndentation return Class;-- 0x58
   function PM_HeaderDefaultSectionSizeHorizontal return Class;-- 0x59
   function PM_HeaderDefaultSectionSizeVertical return Class;-- 0x5a
   function PM_TitleBarButtonIconSize return Class;-- 0x5b
   function PM_TitleBarButtonSize return Class;-- 0x5c
   function PM_LineEditIconSize return Class;-- 0x5d
   function PM_LineEditIconMargin return Class;-- 0x5e
   function PM_CustomBase return Class;-- 0xf0000000
end QtAda6.QtWidgets.QStyle.PixelMetric;
