-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qeventloop.adb
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
with QtAda6.QtCore.QEvent;
with QtAda6.QtCore.QEventLoop.ProcessEventsFlag;
package body QtAda6.QtCore.QEventLoop is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create (parent_P : Optional_QtAda6_QtCore_QObject) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEventLoop");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function event_F (self : access Inst; event_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "event");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, event_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end event_F;
   function exec (self : access Inst; flags_P : access QtAda6.QtCore.QEventLoop.ProcessEventsFlag.Inst'Class) return int
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "exec");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, flags_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end exec;
   function exec_U
     (self : access Inst; flags_P : access QtAda6.QtCore.QEventLoop.ProcessEventsFlag.Inst'Class) return int
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "exec_");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, flags_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end exec_U;
   procedure exit_K (self : access Inst; returnCode_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "exit");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (returnCode_P));
      Result := Object_CallObject (Method, Args, True);
   end exit_K;
   function isRunning (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isRunning");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isRunning;
   procedure processEvents_F
     (self : access Inst; flags_P : access QtAda6.QtCore.QEventLoop.ProcessEventsFlag.Inst'Class; maximumTime_P : int)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "processEvents");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, flags_P.Python_Proxy);
      Tuple_SetItem (Args, 1, Long_FromLong (maximumTime_P));
      Result := Object_CallObject (Method, Args, True);
   end processEvents_F;
   function processEvents_F
     (self : access Inst; flags_P : access QtAda6.QtCore.QEventLoop.ProcessEventsFlag.Inst'Class) return bool
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "processEvents");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, flags_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end processEvents_F;
   procedure quit (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "quit");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end quit;
   procedure wakeUp (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "wakeUp");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end wakeUp;
end QtAda6.QtCore.QEventLoop;
