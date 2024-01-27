-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qstyleoption-optiontype.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtWidgets.QStyleOption.OptionType is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.Enum with null record;
   procedure Finalize (Self : in out Class);
   function SO_Default return Class;-- 0x0
   function SO_FocusRect return Class;-- 0x1
   function SO_Button return Class;-- 0x2
   function SO_Tab return Class;-- 0x3
   function SO_MenuItem return Class;-- 0x4
   function SO_Frame return Class;-- 0x5
   function SO_ProgressBar return Class;-- 0x6
   function SO_ToolBox return Class;-- 0x7
   function SO_Header return Class;-- 0x8
   function SO_DockWidget return Class;-- 0x9
   function SO_ViewItem return Class;-- 0xa
   function SO_TabWidgetFrame return Class;-- 0xb
   function SO_TabBarBase return Class;-- 0xc
   function SO_RubberBand return Class;-- 0xd
   function SO_ToolBar return Class;-- 0xe
   function SO_GraphicsItem return Class;-- 0xf
   function SO_CustomBase return Class;-- 0xf00
   function SO_Complex return Class;-- 0xf0000
   function SO_Slider return Class;-- 0xf0001
   function SO_SpinBox return Class;-- 0xf0002
   function SO_ToolButton return Class;-- 0xf0003
   function SO_ComboBox return Class;-- 0xf0004
   function SO_TitleBar return Class;-- 0xf0005
   function SO_GroupBox return Class;-- 0xf0006
   function SO_SizeGrip return Class;-- 0xf0007
   function SO_ComplexCustomBase return Class;-- 0xf000000
end QtAda6.QtWidgets.QStyleOption.OptionType;
