-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qregularexpressionmatch.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QRegularExpression.MatchOption;
limited with QtAda6.QtCore.QRegularExpression.MatchType;
limited with QtAda6.QtCore.QRegularExpression;
package QtAda6.QtCore.QRegularExpressionMatch is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   type LIST_str is array (Positive range <>) of str;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (match_P : access QtAda6.QtCore.QRegularExpressionMatch.Inst'Class) return Class;
   procedure U_copy_U;
   function captured (self : access Inst; name_P : str) return str;
   function captured (self : access Inst; nth_P : int := 0) return str;
   function capturedEnd (self : access Inst; name_P : str) return int;
   function capturedEnd (self : access Inst; nth_P : int := 0) return int;
   function capturedLength (self : access Inst; name_P : str) return int;
   function capturedLength (self : access Inst; nth_P : int := 0) return int;
   function capturedStart (self : access Inst; name_P : str) return int;
   function capturedStart (self : access Inst; nth_P : int := 0) return int;
   function capturedTexts (self : access Inst) return LIST_str;
   function capturedView (self : access Inst; name_P : str) return str;
   function capturedView (self : access Inst; nth_P : int := 0) return str;
   function hasCaptured (self : access Inst; name_P : str) return bool;
   function hasCaptured (self : access Inst; nth_P : int) return bool;
   function hasMatch (self : access Inst) return bool;
   function hasPartialMatch (self : access Inst) return bool;
   function isValid (self : access Inst) return bool;
   function lastCapturedIndex (self : access Inst) return int;
   function matchOptions (self : access Inst) return access QtAda6.QtCore.QRegularExpression.MatchOption.Inst'Class;
   function matchType (self : access Inst) return access QtAda6.QtCore.QRegularExpression.MatchType.Inst'Class;
   function regularExpression (self : access Inst) return access QtAda6.QtCore.QRegularExpression.Inst'Class;
   procedure swap (self : access Inst; other_P : access QtAda6.QtCore.QRegularExpressionMatch.Inst'Class);
end QtAda6.QtCore.QRegularExpressionMatch;
