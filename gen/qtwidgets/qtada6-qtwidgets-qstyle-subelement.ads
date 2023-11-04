-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qstyle-subelement.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.IntEnum;
package QtAda6.QtWidgets.QStyle.SubElement is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.IntEnum.Inst with null record;
   procedure Finalize (Self : in out Class);
   SE_PushButtonContents         : QStyle.SubElement.Class;-- 0x0
   SE_PushButtonFocusRect        : QStyle.SubElement.Class;-- 0x1
   SE_CheckBoxIndicator          : QStyle.SubElement.Class;-- 0x2
   SE_CheckBoxContents           : QStyle.SubElement.Class;-- 0x3
   SE_CheckBoxFocusRect          : QStyle.SubElement.Class;-- 0x4
   SE_CheckBoxClickRect          : QStyle.SubElement.Class;-- 0x5
   SE_RadioButtonIndicator       : QStyle.SubElement.Class;-- 0x6
   SE_RadioButtonContents        : QStyle.SubElement.Class;-- 0x7
   SE_RadioButtonFocusRect       : QStyle.SubElement.Class;-- 0x8
   SE_RadioButtonClickRect       : QStyle.SubElement.Class;-- 0x9
   SE_ComboBoxFocusRect          : QStyle.SubElement.Class;-- 0xa
   SE_SliderFocusRect            : QStyle.SubElement.Class;-- 0xb
   SE_ProgressBarGroove          : QStyle.SubElement.Class;-- 0xc
   SE_ProgressBarContents        : QStyle.SubElement.Class;-- 0xd
   SE_ProgressBarLabel           : QStyle.SubElement.Class;-- 0xe
   SE_ToolBoxTabContents         : QStyle.SubElement.Class;-- 0xf
   SE_HeaderLabel                : QStyle.SubElement.Class;-- 0x10
   SE_HeaderArrow                : QStyle.SubElement.Class;-- 0x11
   SE_TabWidgetTabBar            : QStyle.SubElement.Class;-- 0x12
   SE_TabWidgetTabPane           : QStyle.SubElement.Class;-- 0x13
   SE_TabWidgetTabContents       : QStyle.SubElement.Class;-- 0x14
   SE_TabWidgetLeftCorner        : QStyle.SubElement.Class;-- 0x15
   SE_TabWidgetRightCorner       : QStyle.SubElement.Class;-- 0x16
   SE_ItemViewItemCheckIndicator : QStyle.SubElement.Class;-- 0x17
   SE_TabBarTearIndicator        : QStyle.SubElement.Class;-- 0x18
   SE_TabBarTearIndicatorLeft    : QStyle.SubElement.Class;-- 0x18
   SE_TreeViewDisclosureItem     : QStyle.SubElement.Class;-- 0x19
   SE_LineEditContents           : QStyle.SubElement.Class;-- 0x1a
   SE_FrameContents              : QStyle.SubElement.Class;-- 0x1b
   SE_DockWidgetCloseButton      : QStyle.SubElement.Class;-- 0x1c
   SE_DockWidgetFloatButton      : QStyle.SubElement.Class;-- 0x1d
   SE_DockWidgetTitleBarText     : QStyle.SubElement.Class;-- 0x1e
   SE_DockWidgetIcon             : QStyle.SubElement.Class;-- 0x1f
   SE_CheckBoxLayoutItem         : QStyle.SubElement.Class;-- 0x20
   SE_ComboBoxLayoutItem         : QStyle.SubElement.Class;-- 0x21
   SE_DateTimeEditLayoutItem     : QStyle.SubElement.Class;-- 0x22
   SE_LabelLayoutItem            : QStyle.SubElement.Class;-- 0x23
   SE_ProgressBarLayoutItem      : QStyle.SubElement.Class;-- 0x24
   SE_PushButtonLayoutItem       : QStyle.SubElement.Class;-- 0x25
   SE_RadioButtonLayoutItem      : QStyle.SubElement.Class;-- 0x26
   SE_SliderLayoutItem           : QStyle.SubElement.Class;-- 0x27
   SE_SpinBoxLayoutItem          : QStyle.SubElement.Class;-- 0x28
   SE_ToolButtonLayoutItem       : QStyle.SubElement.Class;-- 0x29
   SE_FrameLayoutItem            : QStyle.SubElement.Class;-- 0x2a
   SE_GroupBoxLayoutItem         : QStyle.SubElement.Class;-- 0x2b
   SE_TabWidgetLayoutItem        : QStyle.SubElement.Class;-- 0x2c
   SE_ItemViewItemDecoration     : QStyle.SubElement.Class;-- 0x2d
   SE_ItemViewItemText           : QStyle.SubElement.Class;-- 0x2e
   SE_ItemViewItemFocusRect      : QStyle.SubElement.Class;-- 0x2f
   SE_TabBarTabLeftButton        : QStyle.SubElement.Class;-- 0x30
   SE_TabBarTabRightButton       : QStyle.SubElement.Class;-- 0x31
   SE_TabBarTabText              : QStyle.SubElement.Class;-- 0x32
   SE_ShapedFrameContents        : QStyle.SubElement.Class;-- 0x33
   SE_ToolBarHandle              : QStyle.SubElement.Class;-- 0x34
   SE_TabBarScrollLeftButton     : QStyle.SubElement.Class;-- 0x35
   SE_TabBarScrollRightButton    : QStyle.SubElement.Class;-- 0x36
   SE_TabBarTearIndicatorRight   : QStyle.SubElement.Class;-- 0x37
   SE_PushButtonBevel            : QStyle.SubElement.Class;-- 0x38
   SE_CustomBase                 : QStyle.SubElement.Class;-- 0xf0000000
end QtAda6.QtWidgets.QStyle.SubElement;
