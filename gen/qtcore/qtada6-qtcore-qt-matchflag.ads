-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qt-matchflag.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtCore.Qt.MatchFlag is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.Flag with null record;
   procedure Finalize (Self : in out Class);
   function MatchExactly return Class;-- 0x0
   function MatchContains return Class;-- 0x1
   function MatchStartsWith return Class;-- 0x2
   function MatchEndsWith return Class;-- 0x3
   function MatchRegularExpression return Class;-- 0x4
   function MatchWildcard return Class;-- 0x5
   function MatchFixedString return Class;-- 0x8
   function MatchTypeMask return Class;-- 0xf
   function MatchCaseSensitive return Class;-- 0x10
   function MatchWrap return Class;-- 0x20
   function MatchRecursive return Class;-- 0x40
end QtAda6.QtCore.Qt.MatchFlag;
