-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qdoublevalidator.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QObject;
limited with QtAda6.QtGui.QDoubleValidator.Notation;
with QtAda6.QtGui.QValidator;
with QtAda6.QtCore.Signal;
package QtAda6.QtGui.QDoubleValidator is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtGui.QValidator.Inst with null record;
   subtype CLASSVAR_Signal is QtAda6.QtCore.Signal.Class;
   procedure Finalize (Self : in out Class);
   function bottomChanged (self : access Inst) return CLASSVAR_Signal;-- bottomChanged(double)
   function decimalsChanged (self : access Inst) return CLASSVAR_Signal;-- decimalsChanged(int)
   function notationChanged (self : access Inst) return CLASSVAR_Signal;-- notationChanged(QDoubleValidator::Notation)
   function topChanged (self : access Inst) return CLASSVAR_Signal;-- topChanged(double)
   function Create
     (bottom_P : float; top_P : float; decimals_P : int; parent_P : access QtAda6.QtCore.QObject.Inst'Class := null)
      return Class;
   function Create (parent_P : access QtAda6.QtCore.QObject.Inst'Class := null) return Class;
   function bottom (self : access Inst) return float;
   function decimals (self : access Inst) return int;
   function fixup (self : access Inst; input_P : str) return str;
   function notation_F (self : access Inst) return access QtAda6.QtGui.QDoubleValidator.Notation.Inst'Class;
   procedure setBottom (self : access Inst; arg_1_P : float);
   procedure setDecimals (self : access Inst; arg_1_P : int);
   procedure setNotation (self : access Inst; arg_1_P : access QtAda6.QtGui.QDoubleValidator.Notation.Inst'Class);
   procedure setRange (self : access Inst; bottom_P : float; top_P : float);
   procedure setRange (self : access Inst; bottom_P : float; top_P : float; decimals_P : int);
   procedure setTop (self : access Inst; arg_1_P : float);
   function top (self : access Inst) return float;
   function validate (self : access Inst; arg_1_P : str; arg_2_P : int) return access Object'Class;
end QtAda6.QtGui.QDoubleValidator;
