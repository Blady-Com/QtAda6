-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qt-focusreason.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Enum;
package QtAda6.QtCore.Qt.FocusReason is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Enum.Inst with null record;
   procedure Finalize (Self : in out Class);
   MouseFocusReason        : Qt.FocusReason.Class;-- 0x0
   TabFocusReason          : Qt.FocusReason.Class;-- 0x1
   BacktabFocusReason      : Qt.FocusReason.Class;-- 0x2
   ActiveWindowFocusReason : Qt.FocusReason.Class;-- 0x3
   PopupFocusReason        : Qt.FocusReason.Class;-- 0x4
   ShortcutFocusReason     : Qt.FocusReason.Class;-- 0x5
   MenuBarFocusReason      : Qt.FocusReason.Class;-- 0x6
   OtherFocusReason        : Qt.FocusReason.Class;-- 0x7
   NoFocusReason           : Qt.FocusReason.Class;-- 0x8
end QtAda6.QtCore.Qt.FocusReason;
