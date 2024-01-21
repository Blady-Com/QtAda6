-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qbasictimer.adb
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
with QtAda6.QtCore.QObject;
with QtAda6.QtCore.Qt.TimerType;
package body QtAda6.QtCore.QBasicTimer is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QBasicTimer");
      Args  := Tuple_New (0);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function isActive (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isActive");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isActive;
   procedure start (self : access Inst; msec_P : int; obj_P : access QtAda6.QtCore.QObject.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "start");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (msec_P));
      Tuple_SetItem (Args, 1, (if obj_P /= null then obj_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end start;
   procedure start
     (self  : access Inst; msec_P : int; timerType_P : access QtAda6.QtCore.Qt.TimerType.Inst'Class;
      obj_P : access QtAda6.QtCore.QObject.Inst'Class)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "start");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (msec_P));
      Tuple_SetItem (Args, 1, (if timerType_P /= null then timerType_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if obj_P /= null then obj_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end start;
   procedure stop (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "stop");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end stop;
   procedure swap (self : access Inst; other_P : access QtAda6.QtCore.QBasicTimer.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "swap");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if other_P /= null then other_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end swap;
   function timerId (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "timerId");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end timerId;
end QtAda6.QtCore.QBasicTimer;
