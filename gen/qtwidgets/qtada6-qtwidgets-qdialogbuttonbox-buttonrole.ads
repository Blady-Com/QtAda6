-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qdialogbuttonbox-buttonrole.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Enum;
package QtAda6.QtWidgets.QDialogButtonBox.ButtonRole is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Enum.Inst with null record;
   procedure Finalize (Self : in out Class);
   InvalidRole     : QDialogButtonBox.ButtonRole.Class;-- -0x1
   AcceptRole      : QDialogButtonBox.ButtonRole.Class;-- 0x0
   RejectRole      : QDialogButtonBox.ButtonRole.Class;-- 0x1
   DestructiveRole : QDialogButtonBox.ButtonRole.Class;-- 0x2
   ActionRole      : QDialogButtonBox.ButtonRole.Class;-- 0x3
   HelpRole        : QDialogButtonBox.ButtonRole.Class;-- 0x4
   YesRole         : QDialogButtonBox.ButtonRole.Class;-- 0x5
   NoRole          : QDialogButtonBox.ButtonRole.Class;-- 0x6
   ResetRole       : QDialogButtonBox.ButtonRole.Class;-- 0x7
   ApplyRole       : QDialogButtonBox.ButtonRole.Class;-- 0x8
   NRoles          : QDialogButtonBox.ButtonRole.Class;-- 0x9
end QtAda6.QtWidgets.QDialogButtonBox.ButtonRole;
