-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qt-focusreason.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtCore.Qt.FocusReason is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.Enum with null record;
   procedure Finalize (Self : in out Class);
   function MouseFocusReason return Class;-- 0x0
   function TabFocusReason return Class;-- 0x1
   function BacktabFocusReason return Class;-- 0x2
   function ActiveWindowFocusReason return Class;-- 0x3
   function PopupFocusReason return Class;-- 0x4
   function ShortcutFocusReason return Class;-- 0x5
   function MenuBarFocusReason return Class;-- 0x6
   function OtherFocusReason return Class;-- 0x7
   function NoFocusReason return Class;-- 0x8
end QtAda6.QtCore.Qt.FocusReason;
