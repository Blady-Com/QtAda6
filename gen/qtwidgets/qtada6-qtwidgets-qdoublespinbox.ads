-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qdoublespinbox.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.Signal;
limited with QtAda6.QtWidgets.QWidget;
limited with QtAda6.QtWidgets.QAbstractSpinBox.StepType;
with QtAda6.QtWidgets.QAbstractSpinBox;
package QtAda6.QtWidgets.QDoubleSpinBox is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtWidgets.QAbstractSpinBox.Inst with null record;
   procedure Finalize (Self : in out Class);
   function textChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- textChanged(QString)
   function valueChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- valueChanged(double)
   function Create (parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null) return Class;
   function cleanText (self : access Inst) return str;
   function decimals (self : access Inst) return int;
   function fixup (self : access Inst; str_P : str) return str;
   function maximum (self : access Inst) return float;
   function minimum (self : access Inst) return float;
   function prefix (self : access Inst) return str;
   procedure setDecimals (self : access Inst; prec_P : int);
   procedure setMaximum (self : access Inst; max_P : float);
   procedure setMinimum (self : access Inst; min_P : float);
   procedure setPrefix (self : access Inst; prefix_P : str);
   procedure setRange (self : access Inst; min_P : float; max_P : float);
   procedure setSingleStep (self : access Inst; val_P : float);
   procedure setStepType
     (self : access Inst; stepType_P : access QtAda6.QtWidgets.QAbstractSpinBox.StepType.Inst'Class);
   procedure setSuffix (self : access Inst; suffix_P : str);
   procedure setValue (self : access Inst; val_P : float);
   function singleStep (self : access Inst) return float;
   function stepType (self : access Inst) return access QtAda6.QtWidgets.QAbstractSpinBox.StepType.Inst'Class;
   function suffix (self : access Inst) return str;
   function textFromValue (self : access Inst; val_P : float) return str;
   function validate (self : access Inst; input_P : str; pos_P : int) return access Object'Class;
   function value (self : access Inst) return float;
   function valueFromText (self : access Inst; text_P : str) return float;
end QtAda6.QtWidgets.QDoubleSpinBox;
