-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qt-inputmethodhint.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Flag;
package QtAda6.QtCore.Qt.InputMethodHint is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Flag.Inst with null record;
   procedure Finalize (Self : in out Class);
   ImhNone                   : Qt.InputMethodHint.Class;-- 0x0
   ImhHiddenText             : Qt.InputMethodHint.Class;-- 0x1
   ImhSensitiveData          : Qt.InputMethodHint.Class;-- 0x2
   ImhNoAutoUppercase        : Qt.InputMethodHint.Class;-- 0x4
   ImhPreferNumbers          : Qt.InputMethodHint.Class;-- 0x8
   ImhPreferUppercase        : Qt.InputMethodHint.Class;-- 0x10
   ImhPreferLowercase        : Qt.InputMethodHint.Class;-- 0x20
   ImhNoPredictiveText       : Qt.InputMethodHint.Class;-- 0x40
   ImhDate                   : Qt.InputMethodHint.Class;-- 0x80
   ImhTime                   : Qt.InputMethodHint.Class;-- 0x100
   ImhPreferLatin            : Qt.InputMethodHint.Class;-- 0x200
   ImhMultiLine              : Qt.InputMethodHint.Class;-- 0x400
   ImhNoEditMenu             : Qt.InputMethodHint.Class;-- 0x800
   ImhNoTextHandles          : Qt.InputMethodHint.Class;-- 0x1000
   ImhDigitsOnly             : Qt.InputMethodHint.Class;-- 0x10000
   ImhFormattedNumbersOnly   : Qt.InputMethodHint.Class;-- 0x20000
   ImhUppercaseOnly          : Qt.InputMethodHint.Class;-- 0x40000
   ImhLowercaseOnly          : Qt.InputMethodHint.Class;-- 0x80000
   ImhDialableCharactersOnly : Qt.InputMethodHint.Class;-- 0x100000
   ImhEmailCharactersOnly    : Qt.InputMethodHint.Class;-- 0x200000
   ImhUrlCharactersOnly      : Qt.InputMethodHint.Class;-- 0x400000
   ImhLatinOnly              : Qt.InputMethodHint.Class;-- 0x800000
   ImhExclusiveInputMask     : Qt.InputMethodHint.Class;-- 0xffff0000
end QtAda6.QtCore.Qt.InputMethodHint;
