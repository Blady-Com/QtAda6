-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qt-keyboardmodifier.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Flag;
package QtAda6.QtCore.Qt.KeyboardModifier is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Flag.Inst with null record;
   procedure Finalize (Self : in out Class);
   NoModifier           : Qt.KeyboardModifier.Class;-- 0x0
   ShiftModifier        : Qt.KeyboardModifier.Class;-- 0x2000000
   ControlModifier      : Qt.KeyboardModifier.Class;-- 0x4000000
   AltModifier          : Qt.KeyboardModifier.Class;-- 0x8000000
   MetaModifier         : Qt.KeyboardModifier.Class;-- 0x10000000
   KeypadModifier       : Qt.KeyboardModifier.Class;-- 0x20000000
   GroupSwitchModifier  : Qt.KeyboardModifier.Class;-- 0x40000000
   KeyboardModifierMask : Qt.KeyboardModifier.Class;-- 0xfe000000
end QtAda6.QtCore.Qt.KeyboardModifier;
