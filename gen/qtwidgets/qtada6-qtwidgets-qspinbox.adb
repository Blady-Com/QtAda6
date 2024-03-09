-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qspinbox.adb
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
with QtAda6.QtWidgets.QAbstractSpinBox.StepType;
package body QtAda6.QtWidgets.QSpinBox is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function textChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "textChanged"));
   end textChanged;
   function valueChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "valueChanged"));
   end valueChanged;
   function Create (parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QSpinBox");
      Args  := Tuple_New (0);
      Dict  := Dict_New;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function cleanText (self : access Inst) return str is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "cleanText");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end cleanText;
   function displayIntegerBase (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "displayIntegerBase");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end displayIntegerBase;
   function event (self : access Inst; event_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "event");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end event;
   function fixup (self : access Inst; str_P : str) return str is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "fixup");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (str_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end fixup;
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
   function prefix (self : access Inst) return str is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "prefix");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end prefix;
   procedure setDisplayIntegerBase (self : access Inst; base_P : int) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setDisplayIntegerBase");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (base_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setDisplayIntegerBase;
   procedure setMaximum (self : access Inst; max_P : int) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setMaximum");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (max_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setMaximum;
   procedure setMinimum (self : access Inst; min_P : int) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setMinimum");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (min_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setMinimum;
   procedure setPrefix (self : access Inst; prefix_P : str) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPrefix");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (prefix_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPrefix;
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
   procedure setSingleStep (self : access Inst; val_P : int) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setSingleStep");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (val_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setSingleStep;
   procedure setStepType (self : access Inst; stepType_P : access QtAda6.QtWidgets.QAbstractSpinBox.StepType.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setStepType");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if stepType_P /= null then stepType_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setStepType;
   procedure setSuffix (self : access Inst; suffix_P : str) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setSuffix");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (suffix_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setSuffix;
   procedure setValue (self : access Inst; val_P : int) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setValue");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (val_P));
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
   function stepType (self : access Inst) return access QtAda6.QtWidgets.QAbstractSpinBox.StepType.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtWidgets.QAbstractSpinBox.StepType.Class :=
        new QtAda6.QtWidgets.QAbstractSpinBox.StepType.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "stepType");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end stepType;
   function suffix (self : access Inst) return str is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "suffix");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end suffix;
   function textFromValue (self : access Inst; val_P : int) return str is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "textFromValue");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (val_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end textFromValue;
   function validate (self : access Inst; input_P : str; pos_P : int) return access Object'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "validate");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (input_P));
      Tuple_SetItem (Args, 1, Long_FromLong (pos_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return null;
   end validate;
   function value (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "value");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end value;
   function valueFromText (self : access Inst; text_P : str) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "valueFromText");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (text_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end valueFromText;
end QtAda6.QtWidgets.QSpinBox;
