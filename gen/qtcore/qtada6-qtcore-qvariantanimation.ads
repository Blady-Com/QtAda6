-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qvariantanimation.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QObject;
limited with QtAda6.QtCore.QEasingCurve;
limited with QtAda6.QtCore.QEvent;
limited with QtAda6.QtCore.QEasingCurve.Type_K;
limited with QtAda6.QtCore.QAbstractAnimation.State;
with QtAda6.QtCore.QAbstractAnimation;
with QtAda6.QtCore.Signal;
package QtAda6.QtCore.QVariantAnimation is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtCore.QAbstractAnimation.Inst with null record;
   subtype CLASSVAR_Signal is QtAda6.QtCore.Signal.Class;
   type LIST_TUPLE_floatAny is array (Positive range <>) of TUPLE_float_Any;
   type UNION_QtAda6_QtCore_QEasingCurveQtAda6_QtCore_QEasingCurve_Type_K is new Any;
   type SEQUENCE_TUPLE_floatAny is array (Positive range <>) of TUPLE_float_Any;
   procedure Finalize (Self : in out Class);
   function valueChanged (self : access Inst) return CLASSVAR_Signal;-- valueChanged(QVariant)
   function Create (parent_P : access QtAda6.QtCore.QObject.Inst'Class := null) return Class;
   function currentValue (self : access Inst) return Any;
   function duration (self : access Inst) return int;
   function easingCurve (self : access Inst) return access QtAda6.QtCore.QEasingCurve.Inst'Class;
   function endValue (self : access Inst) return Any;
   function event (self : access Inst; event_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   function interpolated (self : access Inst; from_U_P : Any; to_P : Any; progress_P : float) return Any;
   function keyValueAt (self : access Inst; step_P : float) return Any;
   function keyValues (self : access Inst) return LIST_TUPLE_floatAny;
   procedure setDuration (self : access Inst; msecs_P : int);
   procedure setEasingCurve
     (self : access Inst; easing_P : UNION_QtAda6_QtCore_QEasingCurveQtAda6_QtCore_QEasingCurve_Type_K);
   procedure setEndValue (self : access Inst; value_P : Any);
   procedure setKeyValueAt (self : access Inst; step_P : float; value_P : Any);
   procedure setKeyValues (self : access Inst; values_P : SEQUENCE_TUPLE_floatAny);
   procedure setStartValue (self : access Inst; value_P : Any);
   function startValue (self : access Inst) return Any;
   procedure updateCurrentTime (self : access Inst; arg_1_P : int);
   procedure updateCurrentValue (self : access Inst; value_P : Any);
   procedure updateState
     (self       : access Inst; newState_P : access QtAda6.QtCore.QAbstractAnimation.State.Inst'Class;
      oldState_P : access QtAda6.QtCore.QAbstractAnimation.State.Inst'Class);
end QtAda6.QtCore.QVariantAnimation;
