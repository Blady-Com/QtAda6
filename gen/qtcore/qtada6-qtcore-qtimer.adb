-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qtimer.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Py; use Py;
with Ada.Unchecked_Deallocation;
with QtAda6.QtCore.QObject;
with QtAda6.QtCore.Qt.TimerType;
with QtAda6.QtCore.QTimerEvent;
package body QtAda6.QtCore.QTimer is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create (parent_P : Optional_QtAda6_QtCore_QObject) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QTimer");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function interval (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "interval");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end interval;
   function isActive (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isActive");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isActive;
   function isSingleShot (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isSingleShot");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isSingleShot;
   procedure killTimer (self : access Inst; arg_1_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "killTimer");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (arg_1_P));
      Result := Object_CallObject (Method, Args, True);
   end killTimer;
   function remainingTime (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "remainingTime");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end remainingTime;
   procedure setInterval (self : access Inst; msec_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setInterval");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (msec_P));
      Result := Object_CallObject (Method, Args, True);
   end setInterval;
   procedure setSingleShot (self : access Inst; singleShot_P : bool) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setSingleShot");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (singleShot_P));
      Result := Object_CallObject (Method, Args, True);
   end setSingleShot;
   procedure setTimerType (self : access Inst; atype_P : access QtAda6.QtCore.Qt.TimerType.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setTimerType");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, atype_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setTimerType;
   procedure singleShot (arg_1_P : int; arg_2_P : Callable) is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QTimer");
      Method := Object_GetAttrString (Class, "singleShot");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (arg_1_P));
      Tuple_SetItem (Args, 1, Callable_conv_A2P_is_not_supported);
      Result := Object_CallObject (Method, Args, True);
   end singleShot;
   procedure singleShot (msec_P : int; receiver_P : access QtAda6.QtCore.QObject.Inst'Class; member_P : bytes) is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QTimer");
      Method := Object_GetAttrString (Class, "singleShot");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (msec_P));
      Tuple_SetItem (Args, 1, receiver_P.Python_Proxy);
      Tuple_SetItem (Args, 2, Bytes_FromString (String (member_P)));
      Result := Object_CallObject (Method, Args, True);
   end singleShot;
   procedure singleShot
     (msec_P     : int; timerType_P : access QtAda6.QtCore.Qt.TimerType.Inst'Class;
      receiver_P : access QtAda6.QtCore.QObject.Inst'Class; member_P : bytes)
   is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QTimer");
      Method := Object_GetAttrString (Class, "singleShot");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Long_FromLong (msec_P));
      Tuple_SetItem (Args, 1, timerType_P.Python_Proxy);
      Tuple_SetItem (Args, 2, receiver_P.Python_Proxy);
      Tuple_SetItem (Args, 3, Bytes_FromString (String (member_P)));
      Result := Object_CallObject (Method, Args, True);
   end singleShot;
   procedure start (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "start");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end start;
   procedure start (self : access Inst; msec_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "start");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (msec_P));
      Result := Object_CallObject (Method, Args, True);
   end start;
   procedure stop (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "stop");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end stop;
   procedure timerEvent (self : access Inst; arg_1_P : access QtAda6.QtCore.QTimerEvent.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "timerEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, arg_1_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end timerEvent;
   function timerId (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "timerId");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end timerId;
   function timerType (self : access Inst) return access QtAda6.QtCore.Qt.TimerType.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.Qt.TimerType.Class := new QtAda6.QtCore.Qt.TimerType.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "timerType");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end timerType;
end QtAda6.QtCore.QTimer;
