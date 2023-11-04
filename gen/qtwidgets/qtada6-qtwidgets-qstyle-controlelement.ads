-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qstyle-controlelement.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.IntEnum;
package QtAda6.QtWidgets.QStyle.ControlElement is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.IntEnum.Inst with null record;
   procedure Finalize (Self : in out Class);
   CE_PushButton          : QStyle.ControlElement.Class;-- 0x0
   CE_PushButtonBevel     : QStyle.ControlElement.Class;-- 0x1
   CE_PushButtonLabel     : QStyle.ControlElement.Class;-- 0x2
   CE_CheckBox            : QStyle.ControlElement.Class;-- 0x3
   CE_CheckBoxLabel       : QStyle.ControlElement.Class;-- 0x4
   CE_RadioButton         : QStyle.ControlElement.Class;-- 0x5
   CE_RadioButtonLabel    : QStyle.ControlElement.Class;-- 0x6
   CE_TabBarTab           : QStyle.ControlElement.Class;-- 0x7
   CE_TabBarTabShape      : QStyle.ControlElement.Class;-- 0x8
   CE_TabBarTabLabel      : QStyle.ControlElement.Class;-- 0x9
   CE_ProgressBar         : QStyle.ControlElement.Class;-- 0xa
   CE_ProgressBarGroove   : QStyle.ControlElement.Class;-- 0xb
   CE_ProgressBarContents : QStyle.ControlElement.Class;-- 0xc
   CE_ProgressBarLabel    : QStyle.ControlElement.Class;-- 0xd
   CE_MenuItem            : QStyle.ControlElement.Class;-- 0xe
   CE_MenuScroller        : QStyle.ControlElement.Class;-- 0xf
   CE_MenuVMargin         : QStyle.ControlElement.Class;-- 0x10
   CE_MenuHMargin         : QStyle.ControlElement.Class;-- 0x11
   CE_MenuTearoff         : QStyle.ControlElement.Class;-- 0x12
   CE_MenuEmptyArea       : QStyle.ControlElement.Class;-- 0x13
   CE_MenuBarItem         : QStyle.ControlElement.Class;-- 0x14
   CE_MenuBarEmptyArea    : QStyle.ControlElement.Class;-- 0x15
   CE_ToolButtonLabel     : QStyle.ControlElement.Class;-- 0x16
   CE_Header              : QStyle.ControlElement.Class;-- 0x17
   CE_HeaderSection       : QStyle.ControlElement.Class;-- 0x18
   CE_HeaderLabel         : QStyle.ControlElement.Class;-- 0x19
   CE_ToolBoxTab          : QStyle.ControlElement.Class;-- 0x1a
   CE_SizeGrip            : QStyle.ControlElement.Class;-- 0x1b
   CE_Splitter            : QStyle.ControlElement.Class;-- 0x1c
   CE_RubberBand          : QStyle.ControlElement.Class;-- 0x1d
   CE_DockWidgetTitle     : QStyle.ControlElement.Class;-- 0x1e
   CE_ScrollBarAddLine    : QStyle.ControlElement.Class;-- 0x1f
   CE_ScrollBarSubLine    : QStyle.ControlElement.Class;-- 0x20
   CE_ScrollBarAddPage    : QStyle.ControlElement.Class;-- 0x21
   CE_ScrollBarSubPage    : QStyle.ControlElement.Class;-- 0x22
   CE_ScrollBarSlider     : QStyle.ControlElement.Class;-- 0x23
   CE_ScrollBarFirst      : QStyle.ControlElement.Class;-- 0x24
   CE_ScrollBarLast       : QStyle.ControlElement.Class;-- 0x25
   CE_FocusFrame          : QStyle.ControlElement.Class;-- 0x26
   CE_ComboBoxLabel       : QStyle.ControlElement.Class;-- 0x27
   CE_ToolBar             : QStyle.ControlElement.Class;-- 0x28
   CE_ToolBoxTabShape     : QStyle.ControlElement.Class;-- 0x29
   CE_ToolBoxTabLabel     : QStyle.ControlElement.Class;-- 0x2a
   CE_HeaderEmptyArea     : QStyle.ControlElement.Class;-- 0x2b
   CE_ColumnViewGrip      : QStyle.ControlElement.Class;-- 0x2c
   CE_ItemViewItem        : QStyle.ControlElement.Class;-- 0x2d
   CE_ShapedFrame         : QStyle.ControlElement.Class;-- 0x2e
   CE_CustomBase          : QStyle.ControlElement.Class;-- 0xf0000000
end QtAda6.QtWidgets.QStyle.ControlElement;
