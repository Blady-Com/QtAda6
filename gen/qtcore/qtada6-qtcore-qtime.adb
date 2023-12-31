-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qtime.adb
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
with QtAda6.QtCore.Qt.DateFormat;
package body QtAda6.QtCore.QTime is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QTime");
      Args  := Tuple_New (0);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (QTime_P : access QtAda6.QtCore.QTime.Inst'Class) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QTime");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, QTime_P.Python_Proxy);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (h_P : int; m_P : int; s_P : int; ms_P : int) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QTime");
      Args  := Tuple_New (4);
      Tuple_SetItem (Args, 0, Long_FromLong (h_P));
      Tuple_SetItem (Args, 1, Long_FromLong (m_P));
      Tuple_SetItem (Args, 2, Long_FromLong (s_P));
      Tuple_SetItem (Args, 3, Long_FromLong (ms_P));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   procedure U_copy_U is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QTime");
      Method := Object_GetAttrString (Class, "__copy__");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end U_copy_U;
   function U_reduce_U (self : access Inst) return Object is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__reduce__");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return (Python_Proxy => Result);
   end U_reduce_U;
   function U_repr_U (self : access Inst) return Object is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__repr__");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return (Python_Proxy => Result);
   end U_repr_U;
   function addMSecs (self : access Inst; ms_P : int) return access QtAda6.QtCore.QTime.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QTime.Class := new QtAda6.QtCore.QTime.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addMSecs");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (ms_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end addMSecs;
   function addSecs (self : access Inst; secs_P : int) return access QtAda6.QtCore.QTime.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QTime.Class := new QtAda6.QtCore.QTime.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addSecs");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (secs_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end addSecs;
   function currentTime return access QtAda6.QtCore.QTime.Inst'Class is
      Class, Method, Args, Result : Handle;
      Ret                         : constant QtAda6.QtCore.QTime.Class := new QtAda6.QtCore.QTime.Inst;
   begin
      Class            := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QTime");
      Method           := Object_GetAttrString (Class, "currentTime");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end currentTime;
   function fromMSecsSinceStartOfDay (msecs_P : int) return access QtAda6.QtCore.QTime.Inst'Class is
      Class, Method, Args, Result : Handle;
      Ret                         : constant QtAda6.QtCore.QTime.Class := new QtAda6.QtCore.QTime.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QTime");
      Method := Object_GetAttrString (Class, "fromMSecsSinceStartOfDay");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (msecs_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fromMSecsSinceStartOfDay;
   function fromString
     (string_P : str; format_P : access QtAda6.QtCore.Qt.DateFormat.Inst'Class)
      return access QtAda6.QtCore.QTime.Inst'Class
   is
      Class, Method, Args, Result : Handle;
      Ret                         : constant QtAda6.QtCore.QTime.Class := new QtAda6.QtCore.QTime.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QTime");
      Method := Object_GetAttrString (Class, "fromString");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (string_P));
      Tuple_SetItem (Args, 1, format_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fromString;
   function fromString (string_P : str; format_P : str) return access QtAda6.QtCore.QTime.Inst'Class is
      Class, Method, Args, Result : Handle;
      Ret                         : constant QtAda6.QtCore.QTime.Class := new QtAda6.QtCore.QTime.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QTime");
      Method := Object_GetAttrString (Class, "fromString");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (string_P));
      Tuple_SetItem (Args, 1, Unicode_FromString (format_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fromString;
   function hour (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hour");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end hour;
   function isNull (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isNull");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isNull;
   function isValid (h_P : int; m_P : int; s_P : int; ms_P : int) return bool is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QTime");
      Method := Object_GetAttrString (Class, "isValid");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Long_FromLong (h_P));
      Tuple_SetItem (Args, 1, Long_FromLong (m_P));
      Tuple_SetItem (Args, 2, Long_FromLong (s_P));
      Tuple_SetItem (Args, 3, Long_FromLong (ms_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isValid;
   function isValid (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isValid");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isValid;
   function minute (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "minute");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end minute;
   function msec (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "msec");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end msec;
   function msecsSinceStartOfDay (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "msecsSinceStartOfDay");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end msecsSinceStartOfDay;
   function msecsTo (self : access Inst; t_P : access QtAda6.QtCore.QTime.Inst'Class) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "msecsTo");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, t_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end msecsTo;
   function second (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "second");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end second;
   function secsTo (self : access Inst; t_P : access QtAda6.QtCore.QTime.Inst'Class) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "secsTo");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, t_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end secsTo;
   function setHMS (self : access Inst; h_P : int; m_P : int; s_P : int; ms_P : int) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setHMS");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Long_FromLong (h_P));
      Tuple_SetItem (Args, 1, Long_FromLong (m_P));
      Tuple_SetItem (Args, 2, Long_FromLong (s_P));
      Tuple_SetItem (Args, 3, Long_FromLong (ms_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end setHMS;
   function toPython (self : access Inst) return Object is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toPython");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return (Python_Proxy => Result);
   end toPython;
   function toString (self : access Inst; f_P : access QtAda6.QtCore.Qt.DateFormat.Inst'Class) return str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toString");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, f_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end toString;
   function toString (self : access Inst; format_P : str) return str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toString");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (format_P));
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end toString;
end QtAda6.QtCore.QTime;
