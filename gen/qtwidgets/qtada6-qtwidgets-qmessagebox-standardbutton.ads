-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qmessagebox-standardbutton.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.IntFlag;
package QtAda6.QtWidgets.QMessageBox.StandardButton is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.IntFlag.Inst with null record;
   procedure Finalize (Self : in out Class);
   ButtonMask      : QMessageBox.StandardButton.Class;-- -0x301
   NoButton        : QMessageBox.StandardButton.Class;-- 0x0
   Default         : QMessageBox.StandardButton.Class;-- 0x100
   Escape          : QMessageBox.StandardButton.Class;-- 0x200
   FlagMask        : QMessageBox.StandardButton.Class;-- 0x300
   FirstButton     : QMessageBox.StandardButton.Class;-- 0x400
   Ok              : QMessageBox.StandardButton.Class;-- 0x400
   Save            : QMessageBox.StandardButton.Class;-- 0x800
   SaveAll         : QMessageBox.StandardButton.Class;-- 0x1000
   Open            : QMessageBox.StandardButton.Class;-- 0x2000
   Yes             : QMessageBox.StandardButton.Class;-- 0x4000
   YesAll          : QMessageBox.StandardButton.Class;-- 0x8000
   YesToAll        : QMessageBox.StandardButton.Class;-- 0x8000
   No              : QMessageBox.StandardButton.Class;-- 0x10000
   NoAll           : QMessageBox.StandardButton.Class;-- 0x20000
   NoToAll         : QMessageBox.StandardButton.Class;-- 0x20000
   Abort_K         : QMessageBox.StandardButton.Class;-- 0x40000
   Retry           : QMessageBox.StandardButton.Class;-- 0x80000
   Ignore          : QMessageBox.StandardButton.Class;-- 0x100000
   Close           : QMessageBox.StandardButton.Class;-- 0x200000
   Cancel          : QMessageBox.StandardButton.Class;-- 0x400000
   Discard         : QMessageBox.StandardButton.Class;-- 0x800000
   Help            : QMessageBox.StandardButton.Class;-- 0x1000000
   Apply           : QMessageBox.StandardButton.Class;-- 0x2000000
   Reset           : QMessageBox.StandardButton.Class;-- 0x4000000
   LastButton      : QMessageBox.StandardButton.Class;-- 0x8000000
   RestoreDefaults : QMessageBox.StandardButton.Class;-- 0x8000000
end QtAda6.QtWidgets.QMessageBox.StandardButton;
