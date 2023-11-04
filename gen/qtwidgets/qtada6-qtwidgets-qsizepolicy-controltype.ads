-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qsizepolicy-controltype.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Flag;
package QtAda6.QtWidgets.QSizePolicy.ControlType is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Flag.Inst with null record;
   procedure Finalize (Self : in out Class);
   DefaultType : QSizePolicy.ControlType.Class;-- 0x1
   ButtonBox   : QSizePolicy.ControlType.Class;-- 0x2
   CheckBox    : QSizePolicy.ControlType.Class;-- 0x4
   ComboBox    : QSizePolicy.ControlType.Class;-- 0x8
   Frame       : QSizePolicy.ControlType.Class;-- 0x10
   GroupBox    : QSizePolicy.ControlType.Class;-- 0x20
   Label       : QSizePolicy.ControlType.Class;-- 0x40
   Line        : QSizePolicy.ControlType.Class;-- 0x80
   LineEdit    : QSizePolicy.ControlType.Class;-- 0x100
   PushButton  : QSizePolicy.ControlType.Class;-- 0x200
   RadioButton : QSizePolicy.ControlType.Class;-- 0x400
   Slider      : QSizePolicy.ControlType.Class;-- 0x800
   SpinBox     : QSizePolicy.ControlType.Class;-- 0x1000
   TabWidget   : QSizePolicy.ControlType.Class;-- 0x2000
   ToolButton  : QSizePolicy.ControlType.Class;-- 0x4000
end QtAda6.QtWidgets.QSizePolicy.ControlType;
