-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qabstractslider.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Py; use Py;
with Ada.Unchecked_Deallocation;
with QtAda6.QtCore.Signal;
with QtAda6.QtWidgets.QWidget;
with QtAda6.QtCore.QEvent;
with QtAda6.QtGui.QKeyEvent;
with QtAda6.QtCore.Qt.Orientation;
with QtAda6.QtWidgets.QAbstractSlider.SliderAction;
with QtAda6.QtWidgets.QAbstractSlider.SliderChange;
with QtAda6.QtCore.QTimerEvent;
with QtAda6.QtGui.QWheelEvent;
package body QtAda6.QtWidgets.QAbstractSlider is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function actionTriggered (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "actionTriggered"));
   end actionTriggered;
   function rangeChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "rangeChanged"));
   end rangeChanged;
   function sliderMoved (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "sliderMoved"));
   end sliderMoved;
   function sliderPressed (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "sliderPressed"));
   end sliderPressed;
   function sliderReleased (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "sliderReleased"));
   end sliderReleased;
   function valueChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "valueChanged"));
   end valueChanged;
   function Create (parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QAbstractSlider");
      Args  := Tuple_New (0);
      Dict  := Dict_New;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   procedure changeEvent (self : access Inst; e_P : access QtAda6.QtCore.QEvent.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "changeEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if e_P /= null then e_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end changeEvent;
   function event (self : access Inst; e_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "event");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if e_P /= null then e_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end event;
   function hasTracking (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hasTracking");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end hasTracking;
   function invertedAppearance (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "invertedAppearance");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end invertedAppearance;
   function invertedControls (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "invertedControls");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end invertedControls;
   function isSliderDown (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isSliderDown");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isSliderDown;
   procedure keyPressEvent (self : access Inst; ev_P : access QtAda6.QtGui.QKeyEvent.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "keyPressEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if ev_P /= null then ev_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end keyPressEvent;
   function maximum (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "maximum");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end maximum;
   function minimum (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "minimum");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end minimum;
   function orientation (self : access Inst) return access QtAda6.QtCore.Qt.Orientation.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.Orientation.Class := new QtAda6.QtCore.Qt.Orientation.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "orientation");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end orientation;
   function pageStep (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "pageStep");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end pageStep;
   function repeatAction (self : access Inst) return access QtAda6.QtWidgets.QAbstractSlider.SliderAction.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtWidgets.QAbstractSlider.SliderAction.Class :=
        new QtAda6.QtWidgets.QAbstractSlider.SliderAction.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "repeatAction");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end repeatAction;
   procedure setInvertedAppearance (self : access Inst; arg_1_P : bool) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setInvertedAppearance");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (arg_1_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setInvertedAppearance;
   procedure setInvertedControls (self : access Inst; arg_1_P : bool) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setInvertedControls");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (arg_1_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setInvertedControls;
   procedure setMaximum (self : access Inst; arg_1_P : int) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setMaximum");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (arg_1_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setMaximum;
   procedure setMinimum (self : access Inst; arg_1_P : int) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setMinimum");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (arg_1_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setMinimum;
   procedure setOrientation (self : access Inst; arg_1_P : access QtAda6.QtCore.Qt.Orientation.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setOrientation");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setOrientation;
   procedure setPageStep (self : access Inst; arg_1_P : int) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPageStep");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (arg_1_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPageStep;
   procedure setRange (self : access Inst; min_P : int; max_P : int) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setRange");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (min_P));
      Tuple_SetItem (Args, 1, Long_FromLong (max_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setRange;
   procedure setRepeatAction
     (self            : access Inst; action_P : access QtAda6.QtWidgets.QAbstractSlider.SliderAction.Inst'Class;
      thresholdTime_P : int := 0; repeatTime_P : int := 0)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setRepeatAction");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if action_P /= null then action_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if thresholdTime_P /= 0 then
         Dict_SetItemString (Dict, "thresholdTime", Long_FromLong (thresholdTime_P));
      end if;
      if repeatTime_P /= 0 then
         Dict_SetItemString (Dict, "repeatTime", Long_FromLong (repeatTime_P));
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end setRepeatAction;
   procedure setSingleStep (self : access Inst; arg_1_P : int) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setSingleStep");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (arg_1_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setSingleStep;
   procedure setSliderDown (self : access Inst; arg_1_P : bool) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setSliderDown");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (arg_1_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setSliderDown;
   procedure setSliderPosition (self : access Inst; arg_1_P : int) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setSliderPosition");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (arg_1_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setSliderPosition;
   procedure setTracking (self : access Inst; enable_P : bool) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setTracking");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (enable_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setTracking;
   procedure setValue (self : access Inst; arg_1_P : int) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setValue");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (arg_1_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setValue;
   function singleStep (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "singleStep");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end singleStep;
   procedure sliderChange_F
     (self : access Inst; change_P : access QtAda6.QtWidgets.QAbstractSlider.SliderChange.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "sliderChange");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if change_P /= null then change_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end sliderChange_F;
   function sliderPosition (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "sliderPosition");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end sliderPosition;
   procedure timerEvent (self : access Inst; arg_1_P : access QtAda6.QtCore.QTimerEvent.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "timerEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end timerEvent;
   procedure triggerAction
     (self : access Inst; action_P : access QtAda6.QtWidgets.QAbstractSlider.SliderAction.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "triggerAction");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if action_P /= null then action_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end triggerAction;
   function value (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "value");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end value;
   procedure wheelEvent (self : access Inst; e_P : access QtAda6.QtGui.QWheelEvent.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "wheelEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if e_P /= null then e_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end wheelEvent;
end QtAda6.QtWidgets.QAbstractSlider;
