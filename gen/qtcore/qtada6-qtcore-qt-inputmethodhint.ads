-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qt-inputmethodhint.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtCore.Qt.InputMethodHint is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.Flag with null record;
   procedure Finalize (Self : in out Class);
   function ImhNone return Class;-- 0x0
   function ImhHiddenText return Class;-- 0x1
   function ImhSensitiveData return Class;-- 0x2
   function ImhNoAutoUppercase return Class;-- 0x4
   function ImhPreferNumbers return Class;-- 0x8
   function ImhPreferUppercase return Class;-- 0x10
   function ImhPreferLowercase return Class;-- 0x20
   function ImhNoPredictiveText return Class;-- 0x40
   function ImhDate return Class;-- 0x80
   function ImhTime return Class;-- 0x100
   function ImhPreferLatin return Class;-- 0x200
   function ImhMultiLine return Class;-- 0x400
   function ImhNoEditMenu return Class;-- 0x800
   function ImhNoTextHandles return Class;-- 0x1000
   function ImhDigitsOnly return Class;-- 0x10000
   function ImhFormattedNumbersOnly return Class;-- 0x20000
   function ImhUppercaseOnly return Class;-- 0x40000
   function ImhLowercaseOnly return Class;-- 0x80000
   function ImhDialableCharactersOnly return Class;-- 0x100000
   function ImhEmailCharactersOnly return Class;-- 0x200000
   function ImhUrlCharactersOnly return Class;-- 0x400000
   function ImhLatinOnly return Class;-- 0x800000
   function ImhExclusiveInputMask return Class;-- 0xffff0000
end QtAda6.QtCore.Qt.InputMethodHint;
