-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qmessagebox-buttonrole.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtWidgets.QMessageBox.ButtonRole is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.Enum with null record;
   procedure Finalize (Self : in out Class);
   function InvalidRole return Class;-- -0x1
   function AcceptRole return Class;-- 0x0
   function RejectRole return Class;-- 0x1
   function DestructiveRole return Class;-- 0x2
   function ActionRole return Class;-- 0x3
   function HelpRole return Class;-- 0x4
   function YesRole return Class;-- 0x5
   function NoRole return Class;-- 0x6
   function ResetRole return Class;-- 0x7
   function ApplyRole return Class;-- 0x8
   function NRoles return Class;-- 0x9
end QtAda6.QtWidgets.QMessageBox.ButtonRole;
