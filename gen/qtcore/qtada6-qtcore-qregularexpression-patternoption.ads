-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qregularexpression-patternoption.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Flag;
package QtAda6.QtCore.QRegularExpression.PatternOption is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Flag.Inst with null record;
   procedure Finalize (Self : in out Class);
   NoPatternOption             : QRegularExpression.PatternOption.Class;-- 0x0
   CaseInsensitiveOption       : QRegularExpression.PatternOption.Class;-- 0x1
   DotMatchesEverythingOption  : QRegularExpression.PatternOption.Class;-- 0x2
   MultilineOption             : QRegularExpression.PatternOption.Class;-- 0x4
   ExtendedPatternSyntaxOption : QRegularExpression.PatternOption.Class;-- 0x8
   InvertedGreedinessOption    : QRegularExpression.PatternOption.Class;-- 0x10
   DontCaptureOption           : QRegularExpression.PatternOption.Class;-- 0x20
   UseUnicodePropertiesOption  : QRegularExpression.PatternOption.Class;-- 0x40
end QtAda6.QtCore.QRegularExpression.PatternOption;
