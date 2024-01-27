-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qstyle-subcontrol.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtWidgets.QStyle.SubControl is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.Flag with null record;
   procedure Finalize (Self : in out Class);
   function SC_None return Class;-- 0x0
   function SC_ComboBoxFrame return Class;-- 0x1
   function SC_DialGroove return Class;-- 0x1
   function SC_GroupBoxCheckBox return Class;-- 0x1
   function SC_MdiMinButton return Class;-- 0x1
   function SC_ScrollBarAddLine return Class;-- 0x1
   function SC_SliderGroove return Class;-- 0x1
   function SC_SpinBoxUp return Class;-- 0x1
   function SC_TitleBarSysMenu return Class;-- 0x1
   function SC_ToolButton return Class;-- 0x1
   function SC_ComboBoxEditField return Class;-- 0x2
   function SC_DialHandle return Class;-- 0x2
   function SC_GroupBoxLabel return Class;-- 0x2
   function SC_MdiNormalButton return Class;-- 0x2
   function SC_ScrollBarSubLine return Class;-- 0x2
   function SC_SliderHandle return Class;-- 0x2
   function SC_SpinBoxDown return Class;-- 0x2
   function SC_TitleBarMinButton return Class;-- 0x2
   function SC_ToolButtonMenu return Class;-- 0x2
   function SC_ComboBoxArrow return Class;-- 0x4
   function SC_DialTickmarks return Class;-- 0x4
   function SC_GroupBoxContents return Class;-- 0x4
   function SC_MdiCloseButton return Class;-- 0x4
   function SC_ScrollBarAddPage return Class;-- 0x4
   function SC_SliderTickmarks return Class;-- 0x4
   function SC_SpinBoxFrame return Class;-- 0x4
   function SC_TitleBarMaxButton return Class;-- 0x4
   function SC_ComboBoxListBoxPopup return Class;-- 0x8
   function SC_GroupBoxFrame return Class;-- 0x8
   function SC_ScrollBarSubPage return Class;-- 0x8
   function SC_SpinBoxEditField return Class;-- 0x8
   function SC_TitleBarCloseButton return Class;-- 0x8
   function SC_ScrollBarFirst return Class;-- 0x10
   function SC_TitleBarNormalButton return Class;-- 0x10
   function SC_ScrollBarLast return Class;-- 0x20
   function SC_TitleBarShadeButton return Class;-- 0x20
   function SC_ScrollBarSlider return Class;-- 0x40
   function SC_TitleBarUnshadeButton return Class;-- 0x40
   function SC_ScrollBarGroove return Class;-- 0x80
   function SC_TitleBarContextHelpButton return Class;-- 0x80
   function SC_TitleBarLabel return Class;-- 0x100
   function SC_CustomBase return Class;-- 0xf0000000
   function SC_All return Class;-- 0xffffffff
end QtAda6.QtWidgets.QStyle.SubControl;
