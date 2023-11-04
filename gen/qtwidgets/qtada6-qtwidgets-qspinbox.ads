-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qspinbox.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtWidgets.QWidget;
limited with QtAda6.QtCore.QEvent;
limited with QtAda6.QtWidgets.QAbstractSpinBox.StepType;
with QtAda6.QtWidgets.QAbstractSpinBox;
package QtAda6.QtWidgets.QSpinBox is
   type ClassVar_Signal is access Any;
   type Optional_QtAda6_QtWidgets_QWidget is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new QtAda6.QtWidgets.QAbstractSpinBox.Inst with null record;
   procedure Finalize (Self : in out Class);
   textChanged  : ClassVar_Signal;-- textChanged(QString)
   valueChanged : ClassVar_Signal;-- valueChanged(int)
   function Create (parent_P : Optional_QtAda6_QtWidgets_QWidget) return Class;
   function cleanText (self : access Inst) return str;
   function displayIntegerBase (self : access Inst) return int;
   function event (self : access Inst; event_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   function fixup (self : access Inst; str_P : str) return str;
   function maximum (self : access Inst) return int;
   function minimum (self : access Inst) return int;
   function prefix (self : access Inst) return str;
   procedure setDisplayIntegerBase (self : access Inst; base_P : int);
   procedure setMaximum (self : access Inst; max_P : int);
   procedure setMinimum (self : access Inst; min_P : int);
   procedure setPrefix (self : access Inst; prefix_P : str);
   procedure setRange (self : access Inst; min_P : int; max_P : int);
   procedure setSingleStep (self : access Inst; val_P : int);
   procedure setStepType
     (self : access Inst; stepType_P : access QtAda6.QtWidgets.QAbstractSpinBox.StepType.Inst'Class);
   procedure setSuffix (self : access Inst; suffix_P : str);
   procedure setValue (self : access Inst; val_P : int);
   function singleStep (self : access Inst) return int;
   function stepType (self : access Inst) return access QtAda6.QtWidgets.QAbstractSpinBox.StepType.Inst'Class;
   function suffix (self : access Inst) return str;
   function textFromValue (self : access Inst; val_P : int) return str;
   function validate (self : access Inst; input_P : str; pos_P : int) return Object;
   function value (self : access Inst) return int;
   function valueFromText (self : access Inst; text_P : str) return int;
end QtAda6.QtWidgets.QSpinBox;
