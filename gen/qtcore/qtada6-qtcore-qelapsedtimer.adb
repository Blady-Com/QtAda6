-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qelapsedtimer.adb
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
with QtAda6.QtCore.QElapsedTimer.ClockType;
package body QtAda6.QtCore.QElapsedTimer is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QElapsedTimer");
      Args  := Tuple_New (0);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (QElapsedTimer_P : access QtAda6.QtCore.QElapsedTimer.Inst'Class) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QElapsedTimer");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, QElapsedTimer_P.Python_Proxy);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   procedure U_copy_U is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QElapsedTimer");
      Method := Object_GetAttrString (Class, "__copy__");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end U_copy_U;
   function clockType_F return access QtAda6.QtCore.QElapsedTimer.ClockType.Inst'Class is
      Class, Method, Args, Result : Handle;
      Ret : constant QtAda6.QtCore.QElapsedTimer.ClockType.Class := new QtAda6.QtCore.QElapsedTimer.ClockType.Inst;
   begin
      Class            := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QElapsedTimer");
      Method           := Object_GetAttrString (Class, "clockType");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end clockType_F;
   function elapsed (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "elapsed");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end elapsed;
   function hasExpired (self : access Inst; timeout_P : int) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hasExpired");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (timeout_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end hasExpired;
   procedure invalidate (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "invalidate");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end invalidate;
   function isMonotonic return bool is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QElapsedTimer");
      Method := Object_GetAttrString (Class, "isMonotonic");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isMonotonic;
   function isValid (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isValid");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isValid;
   function msecsSinceReference (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "msecsSinceReference");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end msecsSinceReference;
   function msecsTo (self : access Inst; other_P : access QtAda6.QtCore.QElapsedTimer.Inst'Class) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "msecsTo");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, other_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end msecsTo;
   function nsecsElapsed (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "nsecsElapsed");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end nsecsElapsed;
   function restart (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "restart");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end restart;
   function secsTo (self : access Inst; other_P : access QtAda6.QtCore.QElapsedTimer.Inst'Class) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "secsTo");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, other_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end secsTo;
   procedure start (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "start");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end start;
end QtAda6.QtCore.QElapsedTimer;
