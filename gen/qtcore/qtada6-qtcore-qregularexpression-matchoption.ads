-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qregularexpression-matchoption.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Flag;
package QtAda6.QtCore.QRegularExpression.MatchOption is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Flag.Inst with null record;
   procedure Finalize (Self : in out Class);
   NoMatchOption                     : QRegularExpression.MatchOption.Class;-- 0x0
   AnchorAtOffsetMatchOption         : QRegularExpression.MatchOption.Class;-- 0x1
   AnchoredMatchOption               : QRegularExpression.MatchOption.Class;-- 0x1
   DontCheckSubjectStringMatchOption : QRegularExpression.MatchOption.Class;-- 0x2
end QtAda6.QtCore.QRegularExpression.MatchOption;
