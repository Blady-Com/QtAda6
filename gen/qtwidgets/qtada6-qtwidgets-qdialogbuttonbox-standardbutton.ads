-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qdialogbuttonbox-standardbutton.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtWidgets.QDialogButtonBox.StandardButton is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.Flag with null record;
   procedure Finalize (Self : in out Class);
   function NoButton return Class;-- 0x0
   function FirstButton return Class;-- 0x400
   function Ok return Class;-- 0x400
   function Save return Class;-- 0x800
   function SaveAll return Class;-- 0x1000
   function Open return Class;-- 0x2000
   function Yes return Class;-- 0x4000
   function YesToAll return Class;-- 0x8000
   function No return Class;-- 0x10000
   function NoToAll return Class;-- 0x20000
   function Abort_K return Class;-- 0x40000
   function Retry return Class;-- 0x80000
   function Ignore return Class;-- 0x100000
   function Close return Class;-- 0x200000
   function Cancel return Class;-- 0x400000
   function Discard return Class;-- 0x800000
   function Help return Class;-- 0x1000000
   function Apply return Class;-- 0x2000000
   function Reset return Class;-- 0x4000000
   function LastButton return Class;-- 0x8000000
   function RestoreDefaults return Class;-- 0x8000000
end QtAda6.QtWidgets.QDialogButtonBox.StandardButton;
