-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qlcdnumber.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Py; use Py;
with Ada.Unchecked_Deallocation;
with QtAda6.QtWidgets.QFrame;
with QtAda6.QtWidgets.QWidget;
with QtAda6.QtCore.QEvent;
with QtAda6.QtWidgets.QLCDNumber.Mode;
with QtAda6.QtGui.QPaintEvent;
with QtAda6.QtWidgets.QLCDNumber.SegmentStyle;
with QtAda6.QtCore.QSize;
package body QtAda6.QtWidgets.QLCDNumber is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create (numDigits_P : int; parent_P : Optional_QtAda6_QtWidgets_QWidget) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QLCDNumber");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (numDigits_P));
      Tuple_SetItem (Args, 1, No_Value);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (parent_P : Optional_QtAda6_QtWidgets_QWidget) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QLCDNumber");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function checkOverflow (self : access Inst; num_P : float) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "checkOverflow");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (num_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end checkOverflow;
   function checkOverflow (self : access Inst; num_P : int) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "checkOverflow");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (num_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end checkOverflow;
   function digitCount (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "digitCount");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end digitCount;
   procedure display (self : access Inst; num_P : float) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "display");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (num_P));
      Result := Object_CallObject (Method, Args, True);
   end display;
   procedure display (self : access Inst; num_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "display");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (num_P));
      Result := Object_CallObject (Method, Args, True);
   end display;
   procedure display (self : access Inst; str_P : str) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "display");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (str_P));
      Result := Object_CallObject (Method, Args, True);
   end display;
   function event (self : access Inst; e_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "event");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, e_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end event;
   function intValue (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "intValue");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end intValue;
   function mode_F (self : access Inst) return access QtAda6.QtWidgets.QLCDNumber.Mode.Inst'Class is
      Method, Args, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QLCDNumber.Mode.Class := new QtAda6.QtWidgets.QLCDNumber.Mode.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "mode");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mode_F;
   procedure paintEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QPaintEvent.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "paintEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, arg_1_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end paintEvent;
   function segmentStyle_F (self : access Inst) return access QtAda6.QtWidgets.QLCDNumber.SegmentStyle.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtWidgets.QLCDNumber.SegmentStyle.Class :=
        new QtAda6.QtWidgets.QLCDNumber.SegmentStyle.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "segmentStyle");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end segmentStyle_F;
   procedure setBinMode (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setBinMode");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end setBinMode;
   procedure setDecMode (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setDecMode");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end setDecMode;
   procedure setDigitCount (self : access Inst; nDigits_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setDigitCount");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (nDigits_P));
      Result := Object_CallObject (Method, Args, True);
   end setDigitCount;
   procedure setHexMode (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setHexMode");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end setHexMode;
   procedure setMode (self : access Inst; arg_1_P : access QtAda6.QtWidgets.QLCDNumber.Mode.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setMode");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, arg_1_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setMode;
   procedure setOctMode (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setOctMode");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end setOctMode;
   procedure setSegmentStyle (self : access Inst; arg_1_P : access QtAda6.QtWidgets.QLCDNumber.SegmentStyle.Inst'Class)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setSegmentStyle");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, arg_1_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setSegmentStyle;
   procedure setSmallDecimalPoint (self : access Inst; arg_1_P : bool) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setSmallDecimalPoint");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (arg_1_P));
      Result := Object_CallObject (Method, Args, True);
   end setSmallDecimalPoint;
   function sizeHint (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QSize.Class := new QtAda6.QtCore.QSize.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "sizeHint");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end sizeHint;
   function smallDecimalPoint (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "smallDecimalPoint");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end smallDecimalPoint;
   function value (self : access Inst) return float is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "value");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end value;
end QtAda6.QtWidgets.QLCDNumber;
