-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qstyle-complexcontrol.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.IntEnum;
package QtAda6.QtWidgets.QStyle.ComplexControl is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.IntEnum.Inst with null record;
   procedure Finalize (Self : in out Class);
   CC_SpinBox     : QStyle.ComplexControl.Class;-- 0x0
   CC_ComboBox    : QStyle.ComplexControl.Class;-- 0x1
   CC_ScrollBar   : QStyle.ComplexControl.Class;-- 0x2
   CC_Slider      : QStyle.ComplexControl.Class;-- 0x3
   CC_ToolButton  : QStyle.ComplexControl.Class;-- 0x4
   CC_TitleBar    : QStyle.ComplexControl.Class;-- 0x5
   CC_Dial        : QStyle.ComplexControl.Class;-- 0x6
   CC_GroupBox    : QStyle.ComplexControl.Class;-- 0x7
   CC_MdiControls : QStyle.ComplexControl.Class;-- 0x8
   CC_CustomBase  : QStyle.ComplexControl.Class;-- 0xf0000000
end QtAda6.QtWidgets.QStyle.ComplexControl;
