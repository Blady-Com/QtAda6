-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qwaitcondition.adb
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
with QtAda6.QtCore.QMutex;
with QtAda6.QtCore.QDeadlineTimer;
with QtAda6.QtCore.QDeadlineTimer.ForeverConstant;
with QtAda6.QtCore.Qt.TimerType;
with QtAda6.QtCore.QReadWriteLock;
package body QtAda6.QtCore.QWaitCondition is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QWaitCondition");
      Args  := Tuple_New (0);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   procedure notify_all (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "notify_all");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end notify_all;
   procedure notify_one (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "notify_one");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end notify_one;
   function wait
     (self       : access Inst; lockedMutex_P : access QtAda6.QtCore.QMutex.Inst'Class;
      deadline_P : Union_QtAda6_QtCore_QDeadlineTimer_QtAda6_QtCore_QDeadlineTimer_ForeverConstant_QtAda6_QtCore_Qt_TimerType_int)
      return bool
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "wait");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, lockedMutex_P.Python_Proxy);
      Tuple_SetItem (Args, 1, No_Value);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end wait;
   function wait (self : access Inst; lockedMutex_P : access QtAda6.QtCore.QMutex.Inst'Class; time_P : int) return bool
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "wait");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, lockedMutex_P.Python_Proxy);
      Tuple_SetItem (Args, 1, Long_FromLong (time_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end wait;
   function wait
     (self       : access Inst; lockedReadWriteLock_P : access QtAda6.QtCore.QReadWriteLock.Inst'Class;
      deadline_P : Union_QtAda6_QtCore_QDeadlineTimer_QtAda6_QtCore_QDeadlineTimer_ForeverConstant_QtAda6_QtCore_Qt_TimerType_int)
      return bool
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "wait");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, lockedReadWriteLock_P.Python_Proxy);
      Tuple_SetItem (Args, 1, No_Value);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end wait;
   function wait
     (self : access Inst; lockedReadWriteLock_P : access QtAda6.QtCore.QReadWriteLock.Inst'Class; time_P : int)
      return bool
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "wait");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, lockedReadWriteLock_P.Python_Proxy);
      Tuple_SetItem (Args, 1, Long_FromLong (time_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end wait;
   procedure wakeAll (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "wakeAll");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end wakeAll;
   procedure wakeOne (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "wakeOne");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end wakeOne;
end QtAda6.QtCore.QWaitCondition;
