-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qstyle-subcontrol.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Flag;
package QtAda6.QtWidgets.QStyle.SubControl is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Flag.Inst with null record;
   procedure Finalize (Self : in out Class);
   SC_None                      : QStyle.SubControl.Class;-- 0x0
   SC_ComboBoxFrame             : QStyle.SubControl.Class;-- 0x1
   SC_DialGroove                : QStyle.SubControl.Class;-- 0x1
   SC_GroupBoxCheckBox          : QStyle.SubControl.Class;-- 0x1
   SC_MdiMinButton              : QStyle.SubControl.Class;-- 0x1
   SC_ScrollBarAddLine          : QStyle.SubControl.Class;-- 0x1
   SC_SliderGroove              : QStyle.SubControl.Class;-- 0x1
   SC_SpinBoxUp                 : QStyle.SubControl.Class;-- 0x1
   SC_TitleBarSysMenu           : QStyle.SubControl.Class;-- 0x1
   SC_ToolButton                : QStyle.SubControl.Class;-- 0x1
   SC_ComboBoxEditField         : QStyle.SubControl.Class;-- 0x2
   SC_DialHandle                : QStyle.SubControl.Class;-- 0x2
   SC_GroupBoxLabel             : QStyle.SubControl.Class;-- 0x2
   SC_MdiNormalButton           : QStyle.SubControl.Class;-- 0x2
   SC_ScrollBarSubLine          : QStyle.SubControl.Class;-- 0x2
   SC_SliderHandle              : QStyle.SubControl.Class;-- 0x2
   SC_SpinBoxDown               : QStyle.SubControl.Class;-- 0x2
   SC_TitleBarMinButton         : QStyle.SubControl.Class;-- 0x2
   SC_ToolButtonMenu            : QStyle.SubControl.Class;-- 0x2
   SC_ComboBoxArrow             : QStyle.SubControl.Class;-- 0x4
   SC_DialTickmarks             : QStyle.SubControl.Class;-- 0x4
   SC_GroupBoxContents          : QStyle.SubControl.Class;-- 0x4
   SC_MdiCloseButton            : QStyle.SubControl.Class;-- 0x4
   SC_ScrollBarAddPage          : QStyle.SubControl.Class;-- 0x4
   SC_SliderTickmarks           : QStyle.SubControl.Class;-- 0x4
   SC_SpinBoxFrame              : QStyle.SubControl.Class;-- 0x4
   SC_TitleBarMaxButton         : QStyle.SubControl.Class;-- 0x4
   SC_ComboBoxListBoxPopup      : QStyle.SubControl.Class;-- 0x8
   SC_GroupBoxFrame             : QStyle.SubControl.Class;-- 0x8
   SC_ScrollBarSubPage          : QStyle.SubControl.Class;-- 0x8
   SC_SpinBoxEditField          : QStyle.SubControl.Class;-- 0x8
   SC_TitleBarCloseButton       : QStyle.SubControl.Class;-- 0x8
   SC_ScrollBarFirst            : QStyle.SubControl.Class;-- 0x10
   SC_TitleBarNormalButton      : QStyle.SubControl.Class;-- 0x10
   SC_ScrollBarLast             : QStyle.SubControl.Class;-- 0x20
   SC_TitleBarShadeButton       : QStyle.SubControl.Class;-- 0x20
   SC_ScrollBarSlider           : QStyle.SubControl.Class;-- 0x40
   SC_TitleBarUnshadeButton     : QStyle.SubControl.Class;-- 0x40
   SC_ScrollBarGroove           : QStyle.SubControl.Class;-- 0x80
   SC_TitleBarContextHelpButton : QStyle.SubControl.Class;-- 0x80
   SC_TitleBarLabel             : QStyle.SubControl.Class;-- 0x100
   SC_CustomBase                : QStyle.SubControl.Class;-- 0xf0000000
   SC_All                       : QStyle.SubControl.Class;-- 0xffffffff
end QtAda6.QtWidgets.QStyle.SubControl;
