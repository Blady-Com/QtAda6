-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qregularexpression.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QRegularExpression.PatternOption;
limited with QtAda6.QtCore.Qt.CaseSensitivity;
limited with QtAda6.QtCore.QRegularExpression.WildcardConversionOption;
limited with QtAda6.QtCore.QRegularExpression.MatchType;
limited with QtAda6.QtCore.QRegularExpression.MatchOption;
limited with QtAda6.QtCore.QRegularExpressionMatchIterator;
limited with QtAda6.QtCore.QRegularExpressionMatch;
package QtAda6.QtCore.QRegularExpression is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   type UNION_QtAda6_QtCore_QRegularExpression_str is new Any;
   type LIST_str is array (Positive range <>) of str;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create
     (pattern_P : str; options_P : access QtAda6.QtCore.QRegularExpression.PatternOption.Inst'Class := null)
      return Class;
   function Create (re_P : UNION_QtAda6_QtCore_QRegularExpression_str) return Class;
   procedure U_copy_U;
   function anchoredPattern (expression_P : str) return str;
   function captureCount (self : access Inst) return int;
   function errorString (self : access Inst) return str;
   function escape (str_P : str) return str;
   function fromWildcard
     (pattern_P : str; cs_P : access QtAda6.QtCore.Qt.CaseSensitivity.Inst'Class := null;
      options_P : access QtAda6.QtCore.QRegularExpression.WildcardConversionOption.Inst'Class := null)
      return access QtAda6.QtCore.QRegularExpression.Inst'Class;
   function globalMatch
     (self           : access Inst; subject_P : str; offset_P : int := 0;
      matchType_P    : access QtAda6.QtCore.QRegularExpression.MatchType.Inst'Class   := null;
      matchOptions_P : access QtAda6.QtCore.QRegularExpression.MatchOption.Inst'Class := null)
      return access QtAda6.QtCore.QRegularExpressionMatchIterator.Inst'Class;
-- function globalMatch(self : access Inst;subjectView_P : str;offset_P : int := 0;matchType_P : access QtAda6.QtCore.QRegularExpression.MatchType.Inst'Class := null;matchOptions_P : access QtAda6.QtCore.QRegularExpression.MatchOption.Inst'Class := null) return access QtAda6.QtCore.QRegularExpressionMatchIterator.Inst'Class;
   function globalMatchView
     (self           : access Inst; subjectView_P : str; offset_P : int := 0;
      matchType_P    : access QtAda6.QtCore.QRegularExpression.MatchType.Inst'Class   := null;
      matchOptions_P : access QtAda6.QtCore.QRegularExpression.MatchOption.Inst'Class := null)
      return access QtAda6.QtCore.QRegularExpressionMatchIterator.Inst'Class;
   function isValid (self : access Inst) return bool;
   function match
     (self           : access Inst; subject_P : str; offset_P : int := 0;
      matchType_P    : access QtAda6.QtCore.QRegularExpression.MatchType.Inst'Class   := null;
      matchOptions_P : access QtAda6.QtCore.QRegularExpression.MatchOption.Inst'Class := null)
      return access QtAda6.QtCore.QRegularExpressionMatch.Inst'Class;
-- function match(self : access Inst;subjectView_P : str;offset_P : int := 0;matchType_P : access QtAda6.QtCore.QRegularExpression.MatchType.Inst'Class := null;matchOptions_P : access QtAda6.QtCore.QRegularExpression.MatchOption.Inst'Class := null) return access QtAda6.QtCore.QRegularExpressionMatch.Inst'Class;
   function matchView
     (self           : access Inst; subjectView_P : str; offset_P : int := 0;
      matchType_P    : access QtAda6.QtCore.QRegularExpression.MatchType.Inst'Class   := null;
      matchOptions_P : access QtAda6.QtCore.QRegularExpression.MatchOption.Inst'Class := null)
      return access QtAda6.QtCore.QRegularExpressionMatch.Inst'Class;
   function namedCaptureGroups (self : access Inst) return LIST_str;
   procedure optimize (self : access Inst);
   function pattern (self : access Inst) return str;
   function patternErrorOffset (self : access Inst) return int;
   function patternOptions (self : access Inst) return access QtAda6.QtCore.QRegularExpression.PatternOption.Inst'Class;
   procedure setPattern (self : access Inst; pattern_P : str);
   procedure setPatternOptions
     (self : access Inst; options_P : access QtAda6.QtCore.QRegularExpression.PatternOption.Inst'Class);
   procedure swap (self : access Inst; other_P : UNION_QtAda6_QtCore_QRegularExpression_str);
   function wildcardToRegularExpression
     (str_P : str; options_P : access QtAda6.QtCore.QRegularExpression.WildcardConversionOption.Inst'Class := null)
      return str;
end QtAda6.QtCore.QRegularExpression;
