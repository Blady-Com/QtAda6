-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qurl-componentformattingoption.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtCore.QUrl.ComponentFormattingOption is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.IntFlag with null record;
   procedure Finalize (Self : in out Class);
   function PrettyDecoded return Class;-- 0x0
   function EncodeSpaces return Class;-- 0x100000
   function EncodeUnicode return Class;-- 0x200000
   function EncodeDelimiters return Class;-- 0xc00000
   function EncodeReserved return Class;-- 0x1000000
   function FullyEncoded return Class;-- 0x1f00000
   function DecodeReserved return Class;-- 0x2000000
   function FullyDecoded return Class;-- 0x7f00000
end QtAda6.QtCore.QUrl.ComponentFormattingOption;
