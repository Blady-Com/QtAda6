-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qt-textflag.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.IntFlag;
package QtAda6.QtCore.Qt.TextFlag is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.IntFlag.Inst with null record;
   procedure Finalize (Self : in out Class);
   TextSingleLine            : Qt.TextFlag.Class;-- 0x100
   TextDontClip              : Qt.TextFlag.Class;-- 0x200
   TextExpandTabs            : Qt.TextFlag.Class;-- 0x400
   TextShowMnemonic          : Qt.TextFlag.Class;-- 0x800
   TextWordWrap              : Qt.TextFlag.Class;-- 0x1000
   TextWrapAnywhere          : Qt.TextFlag.Class;-- 0x2000
   TextDontPrint             : Qt.TextFlag.Class;-- 0x4000
   TextHideMnemonic          : Qt.TextFlag.Class;-- 0x8000
   TextJustificationForced   : Qt.TextFlag.Class;-- 0x10000
   TextForceLeftToRight      : Qt.TextFlag.Class;-- 0x20000
   TextForceRightToLeft      : Qt.TextFlag.Class;-- 0x40000
   TextLongestVariant        : Qt.TextFlag.Class;-- 0x80000
   TextIncludeTrailingSpaces : Qt.TextFlag.Class;-- 0x8000000
end QtAda6.QtCore.Qt.TextFlag;
