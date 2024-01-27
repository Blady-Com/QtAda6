-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qstyle-controlelement.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtWidgets.QStyle.ControlElement is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.IntEnum with null record;
   procedure Finalize (Self : in out Class);
   function CE_PushButton return Class;-- 0x0
   function CE_PushButtonBevel return Class;-- 0x1
   function CE_PushButtonLabel return Class;-- 0x2
   function CE_CheckBox return Class;-- 0x3
   function CE_CheckBoxLabel return Class;-- 0x4
   function CE_RadioButton return Class;-- 0x5
   function CE_RadioButtonLabel return Class;-- 0x6
   function CE_TabBarTab return Class;-- 0x7
   function CE_TabBarTabShape return Class;-- 0x8
   function CE_TabBarTabLabel return Class;-- 0x9
   function CE_ProgressBar return Class;-- 0xa
   function CE_ProgressBarGroove return Class;-- 0xb
   function CE_ProgressBarContents return Class;-- 0xc
   function CE_ProgressBarLabel return Class;-- 0xd
   function CE_MenuItem return Class;-- 0xe
   function CE_MenuScroller return Class;-- 0xf
   function CE_MenuVMargin return Class;-- 0x10
   function CE_MenuHMargin return Class;-- 0x11
   function CE_MenuTearoff return Class;-- 0x12
   function CE_MenuEmptyArea return Class;-- 0x13
   function CE_MenuBarItem return Class;-- 0x14
   function CE_MenuBarEmptyArea return Class;-- 0x15
   function CE_ToolButtonLabel return Class;-- 0x16
   function CE_Header return Class;-- 0x17
   function CE_HeaderSection return Class;-- 0x18
   function CE_HeaderLabel return Class;-- 0x19
   function CE_ToolBoxTab return Class;-- 0x1a
   function CE_SizeGrip return Class;-- 0x1b
   function CE_Splitter return Class;-- 0x1c
   function CE_RubberBand return Class;-- 0x1d
   function CE_DockWidgetTitle return Class;-- 0x1e
   function CE_ScrollBarAddLine return Class;-- 0x1f
   function CE_ScrollBarSubLine return Class;-- 0x20
   function CE_ScrollBarAddPage return Class;-- 0x21
   function CE_ScrollBarSubPage return Class;-- 0x22
   function CE_ScrollBarSlider return Class;-- 0x23
   function CE_ScrollBarFirst return Class;-- 0x24
   function CE_ScrollBarLast return Class;-- 0x25
   function CE_FocusFrame return Class;-- 0x26
   function CE_ComboBoxLabel return Class;-- 0x27
   function CE_ToolBar return Class;-- 0x28
   function CE_ToolBoxTabShape return Class;-- 0x29
   function CE_ToolBoxTabLabel return Class;-- 0x2a
   function CE_HeaderEmptyArea return Class;-- 0x2b
   function CE_ColumnViewGrip return Class;-- 0x2c
   function CE_ItemViewItem return Class;-- 0x2d
   function CE_ShapedFrame return Class;-- 0x2e
   function CE_CustomBase return Class;-- 0xf0000000
end QtAda6.QtWidgets.QStyle.ControlElement;
