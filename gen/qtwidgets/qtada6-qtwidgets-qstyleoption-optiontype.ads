-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qstyleoption-optiontype.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Enum;
package QtAda6.QtWidgets.QStyleOption.OptionType is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Enum.Inst with null record;
   procedure Finalize (Self : in out Class);
   SO_Default           : QStyleOption.OptionType.Class;-- 0x0
   SO_FocusRect         : QStyleOption.OptionType.Class;-- 0x1
   SO_Button            : QStyleOption.OptionType.Class;-- 0x2
   SO_Tab               : QStyleOption.OptionType.Class;-- 0x3
   SO_MenuItem          : QStyleOption.OptionType.Class;-- 0x4
   SO_Frame             : QStyleOption.OptionType.Class;-- 0x5
   SO_ProgressBar       : QStyleOption.OptionType.Class;-- 0x6
   SO_ToolBox           : QStyleOption.OptionType.Class;-- 0x7
   SO_Header            : QStyleOption.OptionType.Class;-- 0x8
   SO_DockWidget        : QStyleOption.OptionType.Class;-- 0x9
   SO_ViewItem          : QStyleOption.OptionType.Class;-- 0xa
   SO_TabWidgetFrame    : QStyleOption.OptionType.Class;-- 0xb
   SO_TabBarBase        : QStyleOption.OptionType.Class;-- 0xc
   SO_RubberBand        : QStyleOption.OptionType.Class;-- 0xd
   SO_ToolBar           : QStyleOption.OptionType.Class;-- 0xe
   SO_GraphicsItem      : QStyleOption.OptionType.Class;-- 0xf
   SO_CustomBase        : QStyleOption.OptionType.Class;-- 0xf00
   SO_Complex           : QStyleOption.OptionType.Class;-- 0xf0000
   SO_Slider            : QStyleOption.OptionType.Class;-- 0xf0001
   SO_SpinBox           : QStyleOption.OptionType.Class;-- 0xf0002
   SO_ToolButton        : QStyleOption.OptionType.Class;-- 0xf0003
   SO_ComboBox          : QStyleOption.OptionType.Class;-- 0xf0004
   SO_TitleBar          : QStyleOption.OptionType.Class;-- 0xf0005
   SO_GroupBox          : QStyleOption.OptionType.Class;-- 0xf0006
   SO_SizeGrip          : QStyleOption.OptionType.Class;-- 0xf0007
   SO_ComplexCustomBase : QStyleOption.OptionType.Class;-- 0xf000000
end QtAda6.QtWidgets.QStyleOption.OptionType;
