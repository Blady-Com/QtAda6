-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qregularexpressionvalidator.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QObject;
limited with QtAda6.QtCore.QRegularExpression;
with QtAda6.QtGui.QValidator;
package QtAda6.QtGui.QRegularExpressionValidator is
type ClassVar_Signal is access Any;
type Optional_QtAda6_QtCore_QObject is access Any;
type Union_QtAda6_QtCore_QRegularExpression_str is access Any;
type Inst;
type Inst_Access is access all Inst;
type Class is access all Inst'Class;
type Inst is new QtAda6.QtGui.QValidator.Inst with null record;
procedure Finalize (Self : in out Class);
regularExpressionChanged:ClassVar_Signal;-- regularExpressionChanged(QRegularExpression)
function Create(parent_P : Optional_QtAda6_QtCore_QObject) return Class;
function Create(re_P : Union_QtAda6_QtCore_QRegularExpression_str;parent_P : Optional_QtAda6_QtCore_QObject) return Class;
function regularExpression(self : access Inst) return access QtAda6.QtCore.QRegularExpression.Inst'Class;
procedure setRegularExpression(self : access Inst;re_P : Union_QtAda6_QtCore_QRegularExpression_str);
function validate(self : access Inst;input_P : str;pos_P : int) return object;
end QtAda6.QtGui.QRegularExpressionValidator;
