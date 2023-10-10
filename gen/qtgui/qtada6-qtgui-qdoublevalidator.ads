-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qdoublevalidator.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QObject;
limited with QtAda6.QtGui.QDoubleValidator.Notation;
with QtAda6.QtGui.QValidator;
package QtAda6.QtGui.QDoubleValidator is
type ClassVar_Signal is access Any;
type Optional_QtAda6_QtCore_QObject is access Any;
type Inst;
type Inst_Access is access all Inst;
type Class is access all Inst'Class;
type Inst is new QtAda6.QtGui.QValidator.Inst with null record;
procedure Finalize (Self : in out Class);
bottomChanged:ClassVar_Signal;-- bottomChanged(double)
decimalsChanged:ClassVar_Signal;-- decimalsChanged(int)
notationChanged:ClassVar_Signal;-- notationChanged(QDoubleValidator::Notation)
topChanged:ClassVar_Signal;-- topChanged(double)
function Create(bottom_P : float;top_P : float;decimals_P : int;parent_P : Optional_QtAda6_QtCore_QObject) return Class;
function Create(parent_P : Optional_QtAda6_QtCore_QObject) return Class;
function bottom(self : access Inst) return float;
function decimals(self : access Inst) return int;
function fixup(self : access Inst;input_P : str) return str;
function notation_F(self : access Inst) return access QtAda6.QtGui.QDoubleValidator.Notation.Inst'Class;
procedure setBottom(self : access Inst;arg_1_P : float);
procedure setDecimals(self : access Inst;arg_1_P : int);
procedure setNotation(self : access Inst;arg_1_P : access QtAda6.QtGui.QDoubleValidator.Notation.Inst'Class);
procedure setRange(self : access Inst;bottom_P : float;top_P : float);
procedure setRange(self : access Inst;bottom_P : float;top_P : float;decimals_P : int);
procedure setTop(self : access Inst;arg_1_P : float);
function top(self : access Inst) return float;
function validate(self : access Inst;arg_1_P : str;arg_2_P : int) return object;
end QtAda6.QtGui.QDoubleValidator;
