-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qstyle-stateflag.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Flag;
package QtAda6.QtWidgets.QStyle.StateFlag is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Flag.Inst with null record;
   procedure Finalize (Self : in out Class);
   State_None                : QStyle.StateFlag.Class;-- 0x0
   State_Enabled             : QStyle.StateFlag.Class;-- 0x1
   State_Raised              : QStyle.StateFlag.Class;-- 0x2
   State_Sunken              : QStyle.StateFlag.Class;-- 0x4
   State_Off                 : QStyle.StateFlag.Class;-- 0x8
   State_NoChange            : QStyle.StateFlag.Class;-- 0x10
   State_On                  : QStyle.StateFlag.Class;-- 0x20
   State_DownArrow           : QStyle.StateFlag.Class;-- 0x40
   State_Horizontal          : QStyle.StateFlag.Class;-- 0x80
   State_HasFocus            : QStyle.StateFlag.Class;-- 0x100
   State_Top                 : QStyle.StateFlag.Class;-- 0x200
   State_Bottom              : QStyle.StateFlag.Class;-- 0x400
   State_FocusAtBorder       : QStyle.StateFlag.Class;-- 0x800
   State_AutoRaise           : QStyle.StateFlag.Class;-- 0x1000
   State_MouseOver           : QStyle.StateFlag.Class;-- 0x2000
   State_UpArrow             : QStyle.StateFlag.Class;-- 0x4000
   State_Selected            : QStyle.StateFlag.Class;-- 0x8000
   State_Active              : QStyle.StateFlag.Class;-- 0x10000
   State_Window              : QStyle.StateFlag.Class;-- 0x20000
   State_Open                : QStyle.StateFlag.Class;-- 0x40000
   State_Children            : QStyle.StateFlag.Class;-- 0x80000
   State_Item                : QStyle.StateFlag.Class;-- 0x100000
   State_Sibling             : QStyle.StateFlag.Class;-- 0x200000
   State_Editing             : QStyle.StateFlag.Class;-- 0x400000
   State_KeyboardFocusChange : QStyle.StateFlag.Class;-- 0x800000
   State_ReadOnly            : QStyle.StateFlag.Class;-- 0x2000000
   State_Small               : QStyle.StateFlag.Class;-- 0x4000000
   State_Mini                : QStyle.StateFlag.Class;-- 0x8000000
end QtAda6.QtWidgets.QStyle.StateFlag;
