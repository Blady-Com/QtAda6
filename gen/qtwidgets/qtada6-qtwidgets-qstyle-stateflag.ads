-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qstyle-stateflag.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtWidgets.QStyle.StateFlag is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.Flag with null record;
   procedure Finalize (Self : in out Class);
   function State_None return Class;-- 0x0
   function State_Enabled return Class;-- 0x1
   function State_Raised return Class;-- 0x2
   function State_Sunken return Class;-- 0x4
   function State_Off return Class;-- 0x8
   function State_NoChange return Class;-- 0x10
   function State_On return Class;-- 0x20
   function State_DownArrow return Class;-- 0x40
   function State_Horizontal return Class;-- 0x80
   function State_HasFocus return Class;-- 0x100
   function State_Top return Class;-- 0x200
   function State_Bottom return Class;-- 0x400
   function State_FocusAtBorder return Class;-- 0x800
   function State_AutoRaise return Class;-- 0x1000
   function State_MouseOver return Class;-- 0x2000
   function State_UpArrow return Class;-- 0x4000
   function State_Selected return Class;-- 0x8000
   function State_Active return Class;-- 0x10000
   function State_Window return Class;-- 0x20000
   function State_Open return Class;-- 0x40000
   function State_Children return Class;-- 0x80000
   function State_Item return Class;-- 0x100000
   function State_Sibling return Class;-- 0x200000
   function State_Editing return Class;-- 0x400000
   function State_KeyboardFocusChange return Class;-- 0x800000
   function State_ReadOnly return Class;-- 0x2000000
   function State_Small return Class;-- 0x4000000
   function State_Mini return Class;-- 0x8000000
end QtAda6.QtWidgets.QStyle.StateFlag;
