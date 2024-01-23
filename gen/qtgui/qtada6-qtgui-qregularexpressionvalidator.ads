-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qregularexpressionvalidator.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QObject;
limited with QtAda6.QtCore.QRegularExpression;
with QtAda6.QtGui.QValidator;
with QtAda6.QtCore.Signal;
package QtAda6.QtGui.QRegularExpressionValidator is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtGui.QValidator.Inst with null record;
   subtype CLASSVAR_Signal is QtAda6.QtCore.Signal.Class;
   type UNION_QtAda6_QtCore_QRegularExpressionstr is new Any;
   procedure Finalize (Self : in out Class);
   function regularExpressionChanged
     (self : access Inst) return CLASSVAR_Signal;-- regularExpressionChanged(QRegularExpression)
   function Create (parent_P : access QtAda6.QtCore.QObject.Inst'Class := null) return Class;
   function Create
     (re_P : UNION_QtAda6_QtCore_QRegularExpressionstr; parent_P : access QtAda6.QtCore.QObject.Inst'Class := null)
      return Class;
   function regularExpression (self : access Inst) return access QtAda6.QtCore.QRegularExpression.Inst'Class;
   procedure setRegularExpression (self : access Inst; re_P : UNION_QtAda6_QtCore_QRegularExpressionstr);
   function validate (self : access Inst; input_P : str; pos_P : int) return access Object'Class;
end QtAda6.QtGui.QRegularExpressionValidator;
