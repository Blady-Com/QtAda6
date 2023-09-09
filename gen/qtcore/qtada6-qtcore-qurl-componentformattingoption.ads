-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qurl-componentformattingoption.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.IntFlag;
package QtAda6.QtCore.QUrl.ComponentFormattingOption is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.IntFlag.Inst with null record;
   procedure Finalize (Self : in out Class);
   PrettyDecoded    : QUrl.ComponentFormattingOption.Class;-- 0x0
   EncodeSpaces     : QUrl.ComponentFormattingOption.Class;-- 0x100000
   EncodeUnicode    : QUrl.ComponentFormattingOption.Class;-- 0x200000
   EncodeDelimiters : QUrl.ComponentFormattingOption.Class;-- 0xc00000
   EncodeReserved   : QUrl.ComponentFormattingOption.Class;-- 0x1000000
   FullyEncoded     : QUrl.ComponentFormattingOption.Class;-- 0x1f00000
   DecodeReserved   : QUrl.ComponentFormattingOption.Class;-- 0x2000000
   FullyDecoded     : QUrl.ComponentFormattingOption.Class;-- 0x7f00000
end QtAda6.QtCore.QUrl.ComponentFormattingOption;
