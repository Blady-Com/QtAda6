-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qt-enterkeytype.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Enum;
package QtAda6.QtCore.Qt.EnterKeyType is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Enum.Inst with null record;
   procedure Finalize (Self : in out Class);
   EnterKeyDefault  : Qt.EnterKeyType.Class;-- 0x0
   EnterKeyReturn   : Qt.EnterKeyType.Class;-- 0x1
   EnterKeyDone     : Qt.EnterKeyType.Class;-- 0x2
   EnterKeyGo       : Qt.EnterKeyType.Class;-- 0x3
   EnterKeySend     : Qt.EnterKeyType.Class;-- 0x4
   EnterKeySearch   : Qt.EnterKeyType.Class;-- 0x5
   EnterKeyNext     : Qt.EnterKeyType.Class;-- 0x6
   EnterKeyPrevious : Qt.EnterKeyType.Class;-- 0x7
end QtAda6.QtCore.Qt.EnterKeyType;
