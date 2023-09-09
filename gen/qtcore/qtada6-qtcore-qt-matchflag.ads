-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qt-matchflag.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Flag;
package QtAda6.QtCore.Qt.MatchFlag is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Flag.Inst with null record;
   procedure Finalize (Self : in out Class);
   MatchExactly           : Qt.MatchFlag.Class;-- 0x0
   MatchContains          : Qt.MatchFlag.Class;-- 0x1
   MatchStartsWith        : Qt.MatchFlag.Class;-- 0x2
   MatchEndsWith          : Qt.MatchFlag.Class;-- 0x3
   MatchRegularExpression : Qt.MatchFlag.Class;-- 0x4
   MatchWildcard          : Qt.MatchFlag.Class;-- 0x5
   MatchFixedString       : Qt.MatchFlag.Class;-- 0x8
   MatchTypeMask          : Qt.MatchFlag.Class;-- 0xf
   MatchCaseSensitive     : Qt.MatchFlag.Class;-- 0x10
   MatchWrap              : Qt.MatchFlag.Class;-- 0x20
   MatchRecursive         : Qt.MatchFlag.Class;-- 0x40
end QtAda6.QtCore.Qt.MatchFlag;
