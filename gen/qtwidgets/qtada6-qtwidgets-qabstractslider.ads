-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qabstractslider.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QEvent;
limited with QtAda6.QtGui.QKeyEvent;
limited with QtAda6.QtCore.Qt.Orientation;
limited with QtAda6.QtWidgets.QAbstractSlider.SliderAction;
limited with QtAda6.QtWidgets.QAbstractSlider.SliderChange;
limited with QtAda6.QtCore.QTimerEvent;
limited with QtAda6.QtGui.QWheelEvent;
with QtAda6.QtWidgets.QWidget;
with QtAda6.QtCore.Signal;
package QtAda6.QtWidgets.QAbstractSlider is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtWidgets.QWidget.Inst with null record;
   subtype CLASSVAR_Signal is QtAda6.QtCore.Signal.Class;
   procedure Finalize (Self : in out Class);
   function actionTriggered (self : access Inst) return CLASSVAR_Signal;-- actionTriggered(int)
   function rangeChanged (self : access Inst) return CLASSVAR_Signal;-- rangeChanged(int,int)
   function sliderMoved (self : access Inst) return CLASSVAR_Signal;-- sliderMoved(int)
   function sliderPressed (self : access Inst) return CLASSVAR_Signal;-- sliderPressed()
   function sliderReleased (self : access Inst) return CLASSVAR_Signal;-- sliderReleased()
   function valueChanged (self : access Inst) return CLASSVAR_Signal;-- valueChanged(int)
   function Create (parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null) return Class;
   procedure changeEvent (self : access Inst; e_P : access QtAda6.QtCore.QEvent.Inst'Class);
   function event (self : access Inst; e_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   function hasTracking (self : access Inst) return bool;
   function invertedAppearance (self : access Inst) return bool;
   function invertedControls (self : access Inst) return bool;
   function isSliderDown (self : access Inst) return bool;
   procedure keyPressEvent (self : access Inst; ev_P : access QtAda6.QtGui.QKeyEvent.Inst'Class);
   function maximum (self : access Inst) return int;
   function minimum (self : access Inst) return int;
   function orientation (self : access Inst) return access QtAda6.QtCore.Qt.Orientation.Inst'Class;
   function pageStep (self : access Inst) return int;
   function repeatAction (self : access Inst) return access QtAda6.QtWidgets.QAbstractSlider.SliderAction.Inst'Class;
   procedure setInvertedAppearance (self : access Inst; arg_1_P : bool);
   procedure setInvertedControls (self : access Inst; arg_1_P : bool);
   procedure setMaximum (self : access Inst; arg_1_P : int);
   procedure setMinimum (self : access Inst; arg_1_P : int);
   procedure setOrientation (self : access Inst; arg_1_P : access QtAda6.QtCore.Qt.Orientation.Inst'Class);
   procedure setPageStep (self : access Inst; arg_1_P : int);
   procedure setRange (self : access Inst; min_P : int; max_P : int);
   procedure setRepeatAction
     (self            : access Inst; action_P : access QtAda6.QtWidgets.QAbstractSlider.SliderAction.Inst'Class;
      thresholdTime_P : int := 0; repeatTime_P : int := 0);
   procedure setSingleStep (self : access Inst; arg_1_P : int);
   procedure setSliderDown (self : access Inst; arg_1_P : bool);
   procedure setSliderPosition (self : access Inst; arg_1_P : int);
   procedure setTracking (self : access Inst; enable_P : bool);
   procedure setValue (self : access Inst; arg_1_P : int);
   function singleStep (self : access Inst) return int;
   procedure sliderChange_F
     (self : access Inst; change_P : access QtAda6.QtWidgets.QAbstractSlider.SliderChange.Inst'Class);
   function sliderPosition (self : access Inst) return int;
   procedure timerEvent (self : access Inst; arg_1_P : access QtAda6.QtCore.QTimerEvent.Inst'Class);
   procedure triggerAction
     (self : access Inst; action_P : access QtAda6.QtWidgets.QAbstractSlider.SliderAction.Inst'Class);
   function value (self : access Inst) return int;
   procedure wheelEvent (self : access Inst; e_P : access QtAda6.QtGui.QWheelEvent.Inst'Class);
end QtAda6.QtWidgets.QAbstractSlider;
