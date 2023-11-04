-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qmessagebox-buttonrole.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Enum;
package QtAda6.QtWidgets.QMessageBox.ButtonRole is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Enum.Inst with null record;
   procedure Finalize (Self : in out Class);
   InvalidRole     : QMessageBox.ButtonRole.Class;-- -0x1
   AcceptRole      : QMessageBox.ButtonRole.Class;-- 0x0
   RejectRole      : QMessageBox.ButtonRole.Class;-- 0x1
   DestructiveRole : QMessageBox.ButtonRole.Class;-- 0x2
   ActionRole      : QMessageBox.ButtonRole.Class;-- 0x3
   HelpRole        : QMessageBox.ButtonRole.Class;-- 0x4
   YesRole         : QMessageBox.ButtonRole.Class;-- 0x5
   NoRole          : QMessageBox.ButtonRole.Class;-- 0x6
   ResetRole       : QMessageBox.ButtonRole.Class;-- 0x7
   ApplyRole       : QMessageBox.ButtonRole.Class;-- 0x8
   NRoles          : QMessageBox.ButtonRole.Class;-- 0x9
end QtAda6.QtWidgets.QMessageBox.ButtonRole;
