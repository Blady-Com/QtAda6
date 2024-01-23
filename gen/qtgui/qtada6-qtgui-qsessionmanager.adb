-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qsessionmanager.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Py; use Py;
with Ada.Unchecked_Deallocation;
with QtAda6.QtCore.QObject;
with QtAda6.QtGui.QSessionManager.RestartHint;
package body QtAda6.QtGui.QSessionManager is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function allowsErrorInteraction (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "allowsErrorInteraction");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end allowsErrorInteraction;
   function allowsInteraction (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "allowsInteraction");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end allowsInteraction;
   procedure cancel (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "cancel");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end cancel;
   function discardCommand (self : access Inst) return LIST_str is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "discardCommand");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return (2 .. 1 => <>);
   end discardCommand;
   function isPhase2 (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isPhase2");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isPhase2;
   procedure release (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "release");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end release;
   procedure requestPhase2 (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "requestPhase2");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end requestPhase2;
   function restartCommand (self : access Inst) return LIST_str is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "restartCommand");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return (2 .. 1 => <>);
   end restartCommand;
   function restartHint_F (self : access Inst) return access QtAda6.QtGui.QSessionManager.RestartHint.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QSessionManager.RestartHint.Class :=
        new QtAda6.QtGui.QSessionManager.RestartHint.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "restartHint");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end restartHint_F;
   function sessionId (self : access Inst) return str is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "sessionId");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end sessionId;
   function sessionKey (self : access Inst) return str is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "sessionKey");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end sessionKey;
   procedure setDiscardCommand (self : access Inst; arg_1_P : SEQUENCE_str) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setDiscardCommand");
      List   := List_New (arg_1_P'Length);
      for ind in arg_1_P'Range loop
         List_SetItem (List, ssize_t (ind - arg_1_P'First), Unicode_FromString (arg_1_P (ind)));
      end loop;
      Args := Tuple_New (1);
      Tuple_SetItem (Args, 0, List);
      Result := Object_CallObject (Method, Args, True);
   end setDiscardCommand;
   procedure setManagerProperty (self : access Inst; name_P : str; value_P : str) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setManagerProperty");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (name_P));
      Tuple_SetItem (Args, 1, Unicode_FromString (value_P));
      Result := Object_CallObject (Method, Args, True);
   end setManagerProperty;
   procedure setManagerProperty (self : access Inst; name_P : str; value_P : SEQUENCE_str) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setManagerProperty");
      List   := List_New (value_P'Length);
      for ind in value_P'Range loop
         List_SetItem (List, ssize_t (ind - value_P'First), Unicode_FromString (value_P (ind)));
      end loop;
      Args := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (name_P));
      Tuple_SetItem (Args, 1, List);
      Result := Object_CallObject (Method, Args, True);
   end setManagerProperty;
   procedure setRestartCommand (self : access Inst; arg_1_P : SEQUENCE_str) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setRestartCommand");
      List   := List_New (arg_1_P'Length);
      for ind in arg_1_P'Range loop
         List_SetItem (List, ssize_t (ind - arg_1_P'First), Unicode_FromString (arg_1_P (ind)));
      end loop;
      Args := Tuple_New (1);
      Tuple_SetItem (Args, 0, List);
      Result := Object_CallObject (Method, Args, True);
   end setRestartCommand;
   procedure setRestartHint (self : access Inst; arg_1_P : access QtAda6.QtGui.QSessionManager.RestartHint.Inst'Class)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setRestartHint");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setRestartHint;
end QtAda6.QtGui.QSessionManager;
