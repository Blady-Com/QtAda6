-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qregularexpressionmatchiterator.ads
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
limited with QtAda6.QtCore.QRegularExpressionMatch;
limited with QtAda6.QtCore.QRegularExpression;
package QtAda6.QtCore.QRegularExpressionMatchIterator is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (iterator_P : access QtAda6.QtCore.QRegularExpressionMatchIterator.Inst'Class) return Class;
   procedure U_copy_U;
   function hasNext (self : access Inst) return bool;
   function isValid (self : access Inst) return bool;
   function matchOptions (self : access Inst) return access QtAda6.QtCore.QRegularExpression.MatchOption.Inst'Class;
   function matchType (self : access Inst) return access QtAda6.QtCore.QRegularExpression.MatchType.Inst'Class;
   function next (self : access Inst) return access QtAda6.QtCore.QRegularExpressionMatch.Inst'Class;
   function peekNext (self : access Inst) return access QtAda6.QtCore.QRegularExpressionMatch.Inst'Class;
   function regularExpression (self : access Inst) return access QtAda6.QtCore.QRegularExpression.Inst'Class;
   procedure swap (self : access Inst; other_P : access QtAda6.QtCore.QRegularExpressionMatchIterator.Inst'Class);
end QtAda6.QtCore.QRegularExpressionMatchIterator;
