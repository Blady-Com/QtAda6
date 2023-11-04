-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qdialogbuttonbox-standardbutton.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Flag;
package QtAda6.QtWidgets.QDialogButtonBox.StandardButton is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Flag.Inst with null record;
   procedure Finalize (Self : in out Class);
   NoButton        : QDialogButtonBox.StandardButton.Class;-- 0x0
   FirstButton     : QDialogButtonBox.StandardButton.Class;-- 0x400
   Ok              : QDialogButtonBox.StandardButton.Class;-- 0x400
   Save            : QDialogButtonBox.StandardButton.Class;-- 0x800
   SaveAll         : QDialogButtonBox.StandardButton.Class;-- 0x1000
   Open            : QDialogButtonBox.StandardButton.Class;-- 0x2000
   Yes             : QDialogButtonBox.StandardButton.Class;-- 0x4000
   YesToAll        : QDialogButtonBox.StandardButton.Class;-- 0x8000
   No              : QDialogButtonBox.StandardButton.Class;-- 0x10000
   NoToAll         : QDialogButtonBox.StandardButton.Class;-- 0x20000
   Abort_K         : QDialogButtonBox.StandardButton.Class;-- 0x40000
   Retry           : QDialogButtonBox.StandardButton.Class;-- 0x80000
   Ignore          : QDialogButtonBox.StandardButton.Class;-- 0x100000
   Close           : QDialogButtonBox.StandardButton.Class;-- 0x200000
   Cancel          : QDialogButtonBox.StandardButton.Class;-- 0x400000
   Discard         : QDialogButtonBox.StandardButton.Class;-- 0x800000
   Help            : QDialogButtonBox.StandardButton.Class;-- 0x1000000
   Apply           : QDialogButtonBox.StandardButton.Class;-- 0x2000000
   Reset           : QDialogButtonBox.StandardButton.Class;-- 0x4000000
   LastButton      : QDialogButtonBox.StandardButton.Class;-- 0x8000000
   RestoreDefaults : QDialogButtonBox.StandardButton.Class;-- 0x8000000
end QtAda6.QtWidgets.QDialogButtonBox.StandardButton;
