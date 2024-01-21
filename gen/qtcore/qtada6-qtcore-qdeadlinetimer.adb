-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qdeadlinetimer.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Py; use Py;
with Ada.Unchecked_Deallocation;
with QtAda6.QtCore.QDeadlineTimer.ForeverConstant;
with QtAda6.QtCore.Qt.TimerType;
package body QtAda6.QtCore.QDeadlineTimer is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create
     (QDeadlineTimer_P : UNION_QtAda6_QtCore_QDeadlineTimerQtAda6_QtCore_QDeadlineTimer_ForeverConstantQtAda6_QtCore_Qt_TimerTypeint)
      return Class
   is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDeadlineTimer");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if QDeadlineTimer_P /= null then QDeadlineTimer_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create
     (arg_1_P  : access QtAda6.QtCore.QDeadlineTimer.ForeverConstant.Inst'Class;
      type_U_P : access QtAda6.QtCore.Qt.TimerType.Inst'Class := null) return Class
   is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDeadlineTimer");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if type_U_P /= null then type_U_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (msecs_P : int; type_K_P : access QtAda6.QtCore.Qt.TimerType.Inst'Class := null) return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDeadlineTimer");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (msecs_P));
      Tuple_SetItem (Args, 1, (if type_K_P /= null then type_K_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (type_U_P : access QtAda6.QtCore.Qt.TimerType.Inst'Class := null) return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDeadlineTimer");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if type_U_P /= null then type_U_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function U_add_U (self : access Inst; msecs_P : int) return access QtAda6.QtCore.QDeadlineTimer.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QDeadlineTimer.Class := new QtAda6.QtCore.QDeadlineTimer.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__add__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (msecs_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_add_U;
   procedure U_copy_U is
      Class, Method, Args, List, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDeadlineTimer");
      Method := Object_GetAttrString (Class, "__copy__");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end U_copy_U;
   function U_iadd_U (self : access Inst; msecs_P : int) return access QtAda6.QtCore.QDeadlineTimer.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QDeadlineTimer.Class := new QtAda6.QtCore.QDeadlineTimer.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__iadd__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (msecs_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_iadd_U;
   function U_isub_U (self : access Inst; msecs_P : int) return access QtAda6.QtCore.QDeadlineTimer.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QDeadlineTimer.Class := new QtAda6.QtCore.QDeadlineTimer.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__isub__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (msecs_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_isub_U;
   function U_sub_U
     (self  : access Inst;
      dt2_P : UNION_QtAda6_QtCore_QDeadlineTimerQtAda6_QtCore_QDeadlineTimer_ForeverConstantQtAda6_QtCore_Qt_TimerTypeint)
      return int
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__sub__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if dt2_P /= null then dt2_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end U_sub_U;
   function U_sub_U (self : access Inst; msecs_P : int) return access QtAda6.QtCore.QDeadlineTimer.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QDeadlineTimer.Class := new QtAda6.QtCore.QDeadlineTimer.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__sub__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (msecs_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_sub_U;
   function U_q_data (self : access Inst) return TUPLE_intint is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "_q_data");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end U_q_data;
   function addNSecs
     (dt_P : UNION_QtAda6_QtCore_QDeadlineTimerQtAda6_QtCore_QDeadlineTimer_ForeverConstantQtAda6_QtCore_Qt_TimerTypeint;
      nsecs_P : int) return access QtAda6.QtCore.QDeadlineTimer.Inst'Class
   is
      Class, Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtCore.QDeadlineTimer.Class := new QtAda6.QtCore.QDeadlineTimer.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDeadlineTimer");
      Method := Object_GetAttrString (Class, "addNSecs");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if dt_P /= null then dt_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (nsecs_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end addNSecs;
   function current
     (timerType_P : access QtAda6.QtCore.Qt.TimerType.Inst'Class := null)
      return access QtAda6.QtCore.QDeadlineTimer.Inst'Class
   is
      Class, Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtCore.QDeadlineTimer.Class := new QtAda6.QtCore.QDeadlineTimer.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDeadlineTimer");
      Method := Object_GetAttrString (Class, "current");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if timerType_P /= null then timerType_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end current;
   function deadline (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "deadline");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end deadline;
   function deadlineNSecs (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "deadlineNSecs");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end deadlineNSecs;
   function hasExpired (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hasExpired");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end hasExpired;
   function isForever (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isForever");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isForever;
   function remainingTime (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "remainingTime");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end remainingTime;
   function remainingTimeNSecs (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "remainingTimeNSecs");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end remainingTimeNSecs;
   procedure setDeadline
     (self : access Inst; msecs_P : int; timerType_P : access QtAda6.QtCore.Qt.TimerType.Inst'Class := null)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setDeadline");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (msecs_P));
      Tuple_SetItem (Args, 1, (if timerType_P /= null then timerType_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setDeadline;
   procedure setPreciseDeadline
     (self     : access Inst; secs_P : int; nsecs_P : int := 0;
      type_K_P : access QtAda6.QtCore.Qt.TimerType.Inst'Class := null)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPreciseDeadline");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (secs_P));
      Tuple_SetItem (Args, 1, Long_FromLong (nsecs_P));
      Tuple_SetItem (Args, 2, (if type_K_P /= null then type_K_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setPreciseDeadline;
   procedure setPreciseRemainingTime
     (self     : access Inst; secs_P : int; nsecs_P : int := 0;
      type_K_P : access QtAda6.QtCore.Qt.TimerType.Inst'Class := null)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPreciseRemainingTime");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (secs_P));
      Tuple_SetItem (Args, 1, Long_FromLong (nsecs_P));
      Tuple_SetItem (Args, 2, (if type_K_P /= null then type_K_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setPreciseRemainingTime;
   procedure setRemainingTime
     (self : access Inst; msecs_P : int; type_K_P : access QtAda6.QtCore.Qt.TimerType.Inst'Class := null)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setRemainingTime");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (msecs_P));
      Tuple_SetItem (Args, 1, (if type_K_P /= null then type_K_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setRemainingTime;
   procedure setTimerType (self : access Inst; type_K_P : access QtAda6.QtCore.Qt.TimerType.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setTimerType");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if type_K_P /= null then type_K_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setTimerType;
   procedure swap
     (self    : access Inst;
      other_P : UNION_QtAda6_QtCore_QDeadlineTimerQtAda6_QtCore_QDeadlineTimer_ForeverConstantQtAda6_QtCore_Qt_TimerTypeint)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "swap");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if other_P /= null then other_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end swap;
   function timerType (self : access Inst) return access QtAda6.QtCore.Qt.TimerType.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.Qt.TimerType.Class := new QtAda6.QtCore.Qt.TimerType.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "timerType");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end timerType;
end QtAda6.QtCore.QDeadlineTimer;
