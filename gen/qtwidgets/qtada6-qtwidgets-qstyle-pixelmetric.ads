-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qstyle-pixelmetric.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.IntEnum;
package QtAda6.QtWidgets.QStyle.PixelMetric is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.IntEnum.Inst with null record;
   procedure Finalize (Self : in out Class);
   PM_ButtonMargin                       : QStyle.PixelMetric.Class;-- 0x0
   PM_ButtonDefaultIndicator             : QStyle.PixelMetric.Class;-- 0x1
   PM_MenuButtonIndicator                : QStyle.PixelMetric.Class;-- 0x2
   PM_ButtonShiftHorizontal              : QStyle.PixelMetric.Class;-- 0x3
   PM_ButtonShiftVertical                : QStyle.PixelMetric.Class;-- 0x4
   PM_DefaultFrameWidth                  : QStyle.PixelMetric.Class;-- 0x5
   PM_SpinBoxFrameWidth                  : QStyle.PixelMetric.Class;-- 0x6
   PM_ComboBoxFrameWidth                 : QStyle.PixelMetric.Class;-- 0x7
   PM_MaximumDragDistance                : QStyle.PixelMetric.Class;-- 0x8
   PM_ScrollBarExtent                    : QStyle.PixelMetric.Class;-- 0x9
   PM_ScrollBarSliderMin                 : QStyle.PixelMetric.Class;-- 0xa
   PM_SliderThickness                    : QStyle.PixelMetric.Class;-- 0xb
   PM_SliderControlThickness             : QStyle.PixelMetric.Class;-- 0xc
   PM_SliderLength                       : QStyle.PixelMetric.Class;-- 0xd
   PM_SliderTickmarkOffset               : QStyle.PixelMetric.Class;-- 0xe
   PM_SliderSpaceAvailable               : QStyle.PixelMetric.Class;-- 0xf
   PM_DockWidgetSeparatorExtent          : QStyle.PixelMetric.Class;-- 0x10
   PM_DockWidgetHandleExtent             : QStyle.PixelMetric.Class;-- 0x11
   PM_DockWidgetFrameWidth               : QStyle.PixelMetric.Class;-- 0x12
   PM_TabBarTabOverlap                   : QStyle.PixelMetric.Class;-- 0x13
   PM_TabBarTabHSpace                    : QStyle.PixelMetric.Class;-- 0x14
   PM_TabBarTabVSpace                    : QStyle.PixelMetric.Class;-- 0x15
   PM_TabBarBaseHeight                   : QStyle.PixelMetric.Class;-- 0x16
   PM_TabBarBaseOverlap                  : QStyle.PixelMetric.Class;-- 0x17
   PM_ProgressBarChunkWidth              : QStyle.PixelMetric.Class;-- 0x18
   PM_SplitterWidth                      : QStyle.PixelMetric.Class;-- 0x19
   PM_TitleBarHeight                     : QStyle.PixelMetric.Class;-- 0x1a
   PM_MenuScrollerHeight                 : QStyle.PixelMetric.Class;-- 0x1b
   PM_MenuHMargin                        : QStyle.PixelMetric.Class;-- 0x1c
   PM_MenuVMargin                        : QStyle.PixelMetric.Class;-- 0x1d
   PM_MenuPanelWidth                     : QStyle.PixelMetric.Class;-- 0x1e
   PM_MenuTearoffHeight                  : QStyle.PixelMetric.Class;-- 0x1f
   PM_MenuDesktopFrameWidth              : QStyle.PixelMetric.Class;-- 0x20
   PM_MenuBarPanelWidth                  : QStyle.PixelMetric.Class;-- 0x21
   PM_MenuBarItemSpacing                 : QStyle.PixelMetric.Class;-- 0x22
   PM_MenuBarVMargin                     : QStyle.PixelMetric.Class;-- 0x23
   PM_MenuBarHMargin                     : QStyle.PixelMetric.Class;-- 0x24
   PM_IndicatorWidth                     : QStyle.PixelMetric.Class;-- 0x25
   PM_IndicatorHeight                    : QStyle.PixelMetric.Class;-- 0x26
   PM_ExclusiveIndicatorWidth            : QStyle.PixelMetric.Class;-- 0x27
   PM_ExclusiveIndicatorHeight           : QStyle.PixelMetric.Class;-- 0x28
   PM_DialogButtonsSeparator             : QStyle.PixelMetric.Class;-- 0x29
   PM_DialogButtonsButtonWidth           : QStyle.PixelMetric.Class;-- 0x2a
   PM_DialogButtonsButtonHeight          : QStyle.PixelMetric.Class;-- 0x2b
   PM_MdiSubWindowFrameWidth             : QStyle.PixelMetric.Class;-- 0x2c
   PM_MdiSubWindowMinimizedWidth         : QStyle.PixelMetric.Class;-- 0x2d
   PM_HeaderMargin                       : QStyle.PixelMetric.Class;-- 0x2e
   PM_HeaderMarkSize                     : QStyle.PixelMetric.Class;-- 0x2f
   PM_HeaderGripMargin                   : QStyle.PixelMetric.Class;-- 0x30
   PM_TabBarTabShiftHorizontal           : QStyle.PixelMetric.Class;-- 0x31
   PM_TabBarTabShiftVertical             : QStyle.PixelMetric.Class;-- 0x32
   PM_TabBarScrollButtonWidth            : QStyle.PixelMetric.Class;-- 0x33
   PM_ToolBarFrameWidth                  : QStyle.PixelMetric.Class;-- 0x34
   PM_ToolBarHandleExtent                : QStyle.PixelMetric.Class;-- 0x35
   PM_ToolBarItemSpacing                 : QStyle.PixelMetric.Class;-- 0x36
   PM_ToolBarItemMargin                  : QStyle.PixelMetric.Class;-- 0x37
   PM_ToolBarSeparatorExtent             : QStyle.PixelMetric.Class;-- 0x38
   PM_ToolBarExtensionExtent             : QStyle.PixelMetric.Class;-- 0x39
   PM_SpinBoxSliderHeight                : QStyle.PixelMetric.Class;-- 0x3a
   PM_ToolBarIconSize                    : QStyle.PixelMetric.Class;-- 0x3b
   PM_ListViewIconSize                   : QStyle.PixelMetric.Class;-- 0x3c
   PM_IconViewIconSize                   : QStyle.PixelMetric.Class;-- 0x3d
   PM_SmallIconSize                      : QStyle.PixelMetric.Class;-- 0x3e
   PM_LargeIconSize                      : QStyle.PixelMetric.Class;-- 0x3f
   PM_FocusFrameVMargin                  : QStyle.PixelMetric.Class;-- 0x40
   PM_FocusFrameHMargin                  : QStyle.PixelMetric.Class;-- 0x41
   PM_ToolTipLabelFrameWidth             : QStyle.PixelMetric.Class;-- 0x42
   PM_CheckBoxLabelSpacing               : QStyle.PixelMetric.Class;-- 0x43
   PM_TabBarIconSize                     : QStyle.PixelMetric.Class;-- 0x44
   PM_SizeGripSize                       : QStyle.PixelMetric.Class;-- 0x45
   PM_DockWidgetTitleMargin              : QStyle.PixelMetric.Class;-- 0x46
   PM_MessageBoxIconSize                 : QStyle.PixelMetric.Class;-- 0x47
   PM_ButtonIconSize                     : QStyle.PixelMetric.Class;-- 0x48
   PM_DockWidgetTitleBarButtonMargin     : QStyle.PixelMetric.Class;-- 0x49
   PM_RadioButtonLabelSpacing            : QStyle.PixelMetric.Class;-- 0x4a
   PM_LayoutLeftMargin                   : QStyle.PixelMetric.Class;-- 0x4b
   PM_LayoutTopMargin                    : QStyle.PixelMetric.Class;-- 0x4c
   PM_LayoutRightMargin                  : QStyle.PixelMetric.Class;-- 0x4d
   PM_LayoutBottomMargin                 : QStyle.PixelMetric.Class;-- 0x4e
   PM_LayoutHorizontalSpacing            : QStyle.PixelMetric.Class;-- 0x4f
   PM_LayoutVerticalSpacing              : QStyle.PixelMetric.Class;-- 0x50
   PM_TabBar_ScrollButtonOverlap         : QStyle.PixelMetric.Class;-- 0x51
   PM_TextCursorWidth                    : QStyle.PixelMetric.Class;-- 0x52
   PM_TabCloseIndicatorWidth             : QStyle.PixelMetric.Class;-- 0x53
   PM_TabCloseIndicatorHeight            : QStyle.PixelMetric.Class;-- 0x54
   PM_ScrollView_ScrollBarSpacing        : QStyle.PixelMetric.Class;-- 0x55
   PM_ScrollView_ScrollBarOverlap        : QStyle.PixelMetric.Class;-- 0x56
   PM_SubMenuOverlap                     : QStyle.PixelMetric.Class;-- 0x57
   PM_TreeViewIndentation                : QStyle.PixelMetric.Class;-- 0x58
   PM_HeaderDefaultSectionSizeHorizontal : QStyle.PixelMetric.Class;-- 0x59
   PM_HeaderDefaultSectionSizeVertical   : QStyle.PixelMetric.Class;-- 0x5a
   PM_TitleBarButtonIconSize             : QStyle.PixelMetric.Class;-- 0x5b
   PM_TitleBarButtonSize                 : QStyle.PixelMetric.Class;-- 0x5c
   PM_LineEditIconSize                   : QStyle.PixelMetric.Class;-- 0x5d
   PM_LineEditIconMargin                 : QStyle.PixelMetric.Class;-- 0x5e
   PM_CustomBase                         : QStyle.PixelMetric.Class;-- 0xf0000000
end QtAda6.QtWidgets.QStyle.PixelMetric;
