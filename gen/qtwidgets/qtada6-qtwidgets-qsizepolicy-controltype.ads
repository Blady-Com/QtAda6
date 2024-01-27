-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qsizepolicy-controltype.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtWidgets.QSizePolicy.ControlType is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.Flag with null record;
   procedure Finalize (Self : in out Class);
   function DefaultType return Class;-- 0x1
   function ButtonBox return Class;-- 0x2
   function CheckBox return Class;-- 0x4
   function ComboBox return Class;-- 0x8
   function Frame return Class;-- 0x10
   function GroupBox return Class;-- 0x20
   function Label return Class;-- 0x40
   function Line return Class;-- 0x80
   function LineEdit return Class;-- 0x100
   function PushButton return Class;-- 0x200
   function RadioButton return Class;-- 0x400
   function Slider return Class;-- 0x800
   function SpinBox return Class;-- 0x1000
   function TabWidget return Class;-- 0x2000
   function ToolButton return Class;-- 0x4000
end QtAda6.QtWidgets.QSizePolicy.ControlType;
