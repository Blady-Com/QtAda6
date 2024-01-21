-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qt-textflag.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtCore.Qt.TextFlag is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.IntFlag with null record;
   procedure Finalize (Self : in out Class);
   function TextSingleLine return Class;-- 0x100
   function TextDontClip return Class;-- 0x200
   function TextExpandTabs return Class;-- 0x400
   function TextShowMnemonic return Class;-- 0x800
   function TextWordWrap return Class;-- 0x1000
   function TextWrapAnywhere return Class;-- 0x2000
   function TextDontPrint return Class;-- 0x4000
   function TextHideMnemonic return Class;-- 0x8000
   function TextJustificationForced return Class;-- 0x10000
   function TextForceLeftToRight return Class;-- 0x20000
   function TextForceRightToLeft return Class;-- 0x40000
   function TextLongestVariant return Class;-- 0x80000
   function TextIncludeTrailingSpaces return Class;-- 0x8000000
end QtAda6.QtCore.Qt.TextFlag;
