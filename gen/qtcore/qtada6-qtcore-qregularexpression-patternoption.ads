-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qregularexpression-patternoption.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtCore.QRegularExpression.PatternOption is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.Flag with null record;
   procedure Finalize (Self : in out Class);
   function NoPatternOption return Class;-- 0x0
   function CaseInsensitiveOption return Class;-- 0x1
   function DotMatchesEverythingOption return Class;-- 0x2
   function MultilineOption return Class;-- 0x4
   function ExtendedPatternSyntaxOption return Class;-- 0x8
   function InvertedGreedinessOption return Class;-- 0x10
   function DontCaptureOption return Class;-- 0x20
   function UseUnicodePropertiesOption return Class;-- 0x40
end QtAda6.QtCore.QRegularExpression.PatternOption;
