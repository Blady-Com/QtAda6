-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qstyle-complexcontrol.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtWidgets.QStyle.ComplexControl is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.IntEnum with null record;
   procedure Finalize (Self : in out Class);
   function CC_SpinBox return Class;-- 0x0
   function CC_ComboBox return Class;-- 0x1
   function CC_ScrollBar return Class;-- 0x2
   function CC_Slider return Class;-- 0x3
   function CC_ToolButton return Class;-- 0x4
   function CC_TitleBar return Class;-- 0x5
   function CC_Dial return Class;-- 0x6
   function CC_GroupBox return Class;-- 0x7
   function CC_MdiControls return Class;-- 0x8
   function CC_CustomBase return Class;-- 0xf0000000
end QtAda6.QtWidgets.QStyle.ComplexControl;
