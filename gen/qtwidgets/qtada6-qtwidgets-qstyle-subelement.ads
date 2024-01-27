-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qstyle-subelement.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtWidgets.QStyle.SubElement is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.IntEnum with null record;
   procedure Finalize (Self : in out Class);
   function SE_PushButtonContents return Class;-- 0x0
   function SE_PushButtonFocusRect return Class;-- 0x1
   function SE_CheckBoxIndicator return Class;-- 0x2
   function SE_CheckBoxContents return Class;-- 0x3
   function SE_CheckBoxFocusRect return Class;-- 0x4
   function SE_CheckBoxClickRect return Class;-- 0x5
   function SE_RadioButtonIndicator return Class;-- 0x6
   function SE_RadioButtonContents return Class;-- 0x7
   function SE_RadioButtonFocusRect return Class;-- 0x8
   function SE_RadioButtonClickRect return Class;-- 0x9
   function SE_ComboBoxFocusRect return Class;-- 0xa
   function SE_SliderFocusRect return Class;-- 0xb
   function SE_ProgressBarGroove return Class;-- 0xc
   function SE_ProgressBarContents return Class;-- 0xd
   function SE_ProgressBarLabel return Class;-- 0xe
   function SE_ToolBoxTabContents return Class;-- 0xf
   function SE_HeaderLabel return Class;-- 0x10
   function SE_HeaderArrow return Class;-- 0x11
   function SE_TabWidgetTabBar return Class;-- 0x12
   function SE_TabWidgetTabPane return Class;-- 0x13
   function SE_TabWidgetTabContents return Class;-- 0x14
   function SE_TabWidgetLeftCorner return Class;-- 0x15
   function SE_TabWidgetRightCorner return Class;-- 0x16
   function SE_ItemViewItemCheckIndicator return Class;-- 0x17
   function SE_TabBarTearIndicator return Class;-- 0x18
   function SE_TabBarTearIndicatorLeft return Class;-- 0x18
   function SE_TreeViewDisclosureItem return Class;-- 0x19
   function SE_LineEditContents return Class;-- 0x1a
   function SE_FrameContents return Class;-- 0x1b
   function SE_DockWidgetCloseButton return Class;-- 0x1c
   function SE_DockWidgetFloatButton return Class;-- 0x1d
   function SE_DockWidgetTitleBarText return Class;-- 0x1e
   function SE_DockWidgetIcon return Class;-- 0x1f
   function SE_CheckBoxLayoutItem return Class;-- 0x20
   function SE_ComboBoxLayoutItem return Class;-- 0x21
   function SE_DateTimeEditLayoutItem return Class;-- 0x22
   function SE_LabelLayoutItem return Class;-- 0x23
   function SE_ProgressBarLayoutItem return Class;-- 0x24
   function SE_PushButtonLayoutItem return Class;-- 0x25
   function SE_RadioButtonLayoutItem return Class;-- 0x26
   function SE_SliderLayoutItem return Class;-- 0x27
   function SE_SpinBoxLayoutItem return Class;-- 0x28
   function SE_ToolButtonLayoutItem return Class;-- 0x29
   function SE_FrameLayoutItem return Class;-- 0x2a
   function SE_GroupBoxLayoutItem return Class;-- 0x2b
   function SE_TabWidgetLayoutItem return Class;-- 0x2c
   function SE_ItemViewItemDecoration return Class;-- 0x2d
   function SE_ItemViewItemText return Class;-- 0x2e
   function SE_ItemViewItemFocusRect return Class;-- 0x2f
   function SE_TabBarTabLeftButton return Class;-- 0x30
   function SE_TabBarTabRightButton return Class;-- 0x31
   function SE_TabBarTabText return Class;-- 0x32
   function SE_ShapedFrameContents return Class;-- 0x33
   function SE_ToolBarHandle return Class;-- 0x34
   function SE_TabBarScrollLeftButton return Class;-- 0x35
   function SE_TabBarScrollRightButton return Class;-- 0x36
   function SE_TabBarTearIndicatorRight return Class;-- 0x37
   function SE_PushButtonBevel return Class;-- 0x38
   function SE_CustomBase return Class;-- 0xf0000000
end QtAda6.QtWidgets.QStyle.SubElement;
