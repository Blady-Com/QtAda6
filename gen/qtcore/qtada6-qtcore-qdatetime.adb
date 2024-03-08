-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qdatetime.adb
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
with QtAda6.QtCore.Qt.TimeSpec;
with QtAda6.QtCore.QDate;
with QtAda6.QtCore.QTime;
with QtAda6.QtCore.QTimeZone;
with QtAda6.QtCore.QDateTime;
with QtAda6.QtCore.Qt.DateFormat;
with QtAda6.QtCore.QCalendar;
package body QtAda6.QtCore.QDateTime is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDateTime");
      Args  := Tuple_New (0);
      Dict  := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (arg_1_P : int; arg_2_P : int; arg_3_P : int; arg_4_P : int; arg_5_P : int; arg_6_P : int) return Class
   is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDateTime");
      Args  := Tuple_New (6);
      Tuple_SetItem (Args, 0, Long_FromLong (arg_1_P));
      Tuple_SetItem (Args, 1, Long_FromLong (arg_2_P));
      Tuple_SetItem (Args, 2, Long_FromLong (arg_3_P));
      Tuple_SetItem (Args, 3, Long_FromLong (arg_4_P));
      Tuple_SetItem (Args, 4, Long_FromLong (arg_5_P));
      Tuple_SetItem (Args, 5, Long_FromLong (arg_6_P));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (arg_1_P : int; arg_2_P : int; arg_3_P : int; arg_4_P : int; arg_5_P : int; arg_6_P : int; arg_7_P : int;
      arg_8_P : access QtAda6.QtCore.Qt.TimeSpec.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDateTime");
      Args  := Tuple_New (7);
      Tuple_SetItem (Args, 0, Long_FromLong (arg_1_P));
      Tuple_SetItem (Args, 1, Long_FromLong (arg_2_P));
      Tuple_SetItem (Args, 2, Long_FromLong (arg_3_P));
      Tuple_SetItem (Args, 3, Long_FromLong (arg_4_P));
      Tuple_SetItem (Args, 4, Long_FromLong (arg_5_P));
      Tuple_SetItem (Args, 5, Long_FromLong (arg_6_P));
      Tuple_SetItem (Args, 6, Long_FromLong (arg_7_P));
      Dict := Dict_New;
      if arg_8_P /= null then
         Dict_SetItemString (Dict, "arg__8", arg_8_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (arg_1_P : int; arg_2_P : int; arg_3_P : int; arg_4_P : int; arg_5_P : int; arg_6_P : int; arg_7_P : int;
      arg_8_P : int := 0) return Class
   is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDateTime");
      Args  := Tuple_New (7);
      Tuple_SetItem (Args, 0, Long_FromLong (arg_1_P));
      Tuple_SetItem (Args, 1, Long_FromLong (arg_2_P));
      Tuple_SetItem (Args, 2, Long_FromLong (arg_3_P));
      Tuple_SetItem (Args, 3, Long_FromLong (arg_4_P));
      Tuple_SetItem (Args, 4, Long_FromLong (arg_5_P));
      Tuple_SetItem (Args, 5, Long_FromLong (arg_6_P));
      Tuple_SetItem (Args, 6, Long_FromLong (arg_7_P));
      Dict := Dict_New;
      if arg_8_P /= 0 then
         Dict_SetItemString (Dict, "arg__8", Long_FromLong (arg_8_P));
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (date_P : access QtAda6.QtCore.QDate.Inst'Class; time_P : access QtAda6.QtCore.QTime.Inst'Class) return Class
   is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDateTime");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if date_P /= null then date_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if time_P /= null then time_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (date_P : access QtAda6.QtCore.QDate.Inst'Class; time_P : access QtAda6.QtCore.QTime.Inst'Class;
      spec_P : access QtAda6.QtCore.Qt.TimeSpec.Inst'Class; offsetSeconds_P : int := 0) return Class
   is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDateTime");
      Args  := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if date_P /= null then date_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if time_P /= null then time_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if spec_P /= null then spec_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if offsetSeconds_P /= 0 then
         Dict_SetItemString (Dict, "offsetSeconds", Long_FromLong (offsetSeconds_P));
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (date_P     : access QtAda6.QtCore.QDate.Inst'Class; time_P : access QtAda6.QtCore.QTime.Inst'Class;
      timeZone_P : access QtAda6.QtCore.QTimeZone.Inst'Class) return Class
   is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDateTime");
      Args  := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if date_P /= null then date_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if time_P /= null then time_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if timeZone_P /= null then timeZone_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (other_P : access QtAda6.QtCore.QDateTime.Inst'Class) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDateTime");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if other_P /= null then other_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   procedure U_copy_U is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDateTime");
      Method := Object_GetAttrString (Class, "__copy__");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end U_copy_U;
   function U_reduce_U (self : access Inst) return access Object'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__reduce__");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return null;
   end U_reduce_U;
   function U_repr_U (self : access Inst) return access Object'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__repr__");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return null;
   end U_repr_U;
   function addDays (self : access Inst; days_P : int) return access QtAda6.QtCore.QDateTime.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QDateTime.Class := new QtAda6.QtCore.QDateTime.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addDays");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (days_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end addDays;
   function addMSecs (self : access Inst; msecs_P : int) return access QtAda6.QtCore.QDateTime.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QDateTime.Class := new QtAda6.QtCore.QDateTime.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addMSecs");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (msecs_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end addMSecs;
   function addMonths (self : access Inst; months_P : int) return access QtAda6.QtCore.QDateTime.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QDateTime.Class := new QtAda6.QtCore.QDateTime.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addMonths");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (months_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end addMonths;
   function addSecs (self : access Inst; secs_P : int) return access QtAda6.QtCore.QDateTime.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QDateTime.Class := new QtAda6.QtCore.QDateTime.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addSecs");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (secs_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end addSecs;
   function addYears (self : access Inst; years_P : int) return access QtAda6.QtCore.QDateTime.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QDateTime.Class := new QtAda6.QtCore.QDateTime.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addYears");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (years_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end addYears;
   function currentDateTime return access QtAda6.QtCore.QDateTime.Inst'Class is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QDateTime.Class := new QtAda6.QtCore.QDateTime.Inst;
   begin
      Class            := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDateTime");
      Method           := Object_GetAttrString (Class, "currentDateTime");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end currentDateTime;
   function currentDateTime
     (zone_P : access QtAda6.QtCore.QTimeZone.Inst'Class) return access QtAda6.QtCore.QDateTime.Inst'Class
   is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QDateTime.Class := new QtAda6.QtCore.QDateTime.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDateTime");
      Method := Object_GetAttrString (Class, "currentDateTime");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if zone_P /= null then zone_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end currentDateTime;
   function currentDateTimeUtc return access QtAda6.QtCore.QDateTime.Inst'Class is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QDateTime.Class := new QtAda6.QtCore.QDateTime.Inst;
   begin
      Class            := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDateTime");
      Method           := Object_GetAttrString (Class, "currentDateTimeUtc");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end currentDateTimeUtc;
   function currentMSecsSinceEpoch return int is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDateTime");
      Method := Object_GetAttrString (Class, "currentMSecsSinceEpoch");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end currentMSecsSinceEpoch;
   function currentSecsSinceEpoch return int is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDateTime");
      Method := Object_GetAttrString (Class, "currentSecsSinceEpoch");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end currentSecsSinceEpoch;
   function date (self : access Inst) return access QtAda6.QtCore.QDate.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QDate.Class := new QtAda6.QtCore.QDate.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "date");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end date;
   function daysTo (self : access Inst; arg_1_P : access QtAda6.QtCore.QDateTime.Inst'Class) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "daysTo");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end daysTo;
   function fromMSecsSinceEpoch (msecs_P : int) return access QtAda6.QtCore.QDateTime.Inst'Class is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QDateTime.Class := new QtAda6.QtCore.QDateTime.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDateTime");
      Method := Object_GetAttrString (Class, "fromMSecsSinceEpoch");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (msecs_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fromMSecsSinceEpoch;
   function fromMSecsSinceEpoch
     (msecs_P : int; spec_P : access QtAda6.QtCore.Qt.TimeSpec.Inst'Class; offsetFromUtc_P : int := 0)
      return access QtAda6.QtCore.QDateTime.Inst'Class
   is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QDateTime.Class := new QtAda6.QtCore.QDateTime.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDateTime");
      Method := Object_GetAttrString (Class, "fromMSecsSinceEpoch");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (msecs_P));
      Tuple_SetItem (Args, 1, (if spec_P /= null then spec_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if offsetFromUtc_P /= 0 then
         Dict_SetItemString (Dict, "offsetFromUtc", Long_FromLong (offsetFromUtc_P));
      end if;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fromMSecsSinceEpoch;
   function fromMSecsSinceEpoch
     (msecs_P : int; timeZone_P : access QtAda6.QtCore.QTimeZone.Inst'Class)
      return access QtAda6.QtCore.QDateTime.Inst'Class
   is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QDateTime.Class := new QtAda6.QtCore.QDateTime.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDateTime");
      Method := Object_GetAttrString (Class, "fromMSecsSinceEpoch");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (msecs_P));
      Tuple_SetItem (Args, 1, (if timeZone_P /= null then timeZone_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fromMSecsSinceEpoch;
   function fromSecsSinceEpoch (secs_P : int) return access QtAda6.QtCore.QDateTime.Inst'Class is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QDateTime.Class := new QtAda6.QtCore.QDateTime.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDateTime");
      Method := Object_GetAttrString (Class, "fromSecsSinceEpoch");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (secs_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fromSecsSinceEpoch;
   function fromSecsSinceEpoch
     (secs_P : int; spec_P : access QtAda6.QtCore.Qt.TimeSpec.Inst'Class; offsetFromUtc_P : int := 0)
      return access QtAda6.QtCore.QDateTime.Inst'Class
   is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QDateTime.Class := new QtAda6.QtCore.QDateTime.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDateTime");
      Method := Object_GetAttrString (Class, "fromSecsSinceEpoch");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (secs_P));
      Tuple_SetItem (Args, 1, (if spec_P /= null then spec_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if offsetFromUtc_P /= 0 then
         Dict_SetItemString (Dict, "offsetFromUtc", Long_FromLong (offsetFromUtc_P));
      end if;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fromSecsSinceEpoch;
   function fromSecsSinceEpoch
     (secs_P : int; timeZone_P : access QtAda6.QtCore.QTimeZone.Inst'Class)
      return access QtAda6.QtCore.QDateTime.Inst'Class
   is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QDateTime.Class := new QtAda6.QtCore.QDateTime.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDateTime");
      Method := Object_GetAttrString (Class, "fromSecsSinceEpoch");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (secs_P));
      Tuple_SetItem (Args, 1, (if timeZone_P /= null then timeZone_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fromSecsSinceEpoch;
   function fromString
     (string_P : str; format_P : access QtAda6.QtCore.Qt.DateFormat.Inst'Class := null)
      return access QtAda6.QtCore.QDateTime.Inst'Class
   is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QDateTime.Class := new QtAda6.QtCore.QDateTime.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDateTime");
      Method := Object_GetAttrString (Class, "fromString");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (string_P));
      Dict := Dict_New;
      if format_P /= null then
         Dict_SetItemString (Dict, "format", format_P.Python_Proxy);
      end if;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fromString;
   function fromString
     (string_P : str; format_P : str; cal_P : access QtAda6.QtCore.QCalendar.Inst'Class := null)
      return access QtAda6.QtCore.QDateTime.Inst'Class
   is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QDateTime.Class := new QtAda6.QtCore.QDateTime.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDateTime");
      Method := Object_GetAttrString (Class, "fromString");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (string_P));
      Tuple_SetItem (Args, 1, Unicode_FromString (format_P));
      Dict := Dict_New;
      if cal_P /= null then
         Dict_SetItemString (Dict, "cal", cal_P.Python_Proxy);
      end if;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fromString;
   function isDaylightTime (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isDaylightTime");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isDaylightTime;
   function isNull (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isNull");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isNull;
   function isValid (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isValid");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isValid;
   function msecsTo (self : access Inst; arg_1_P : access QtAda6.QtCore.QDateTime.Inst'Class) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "msecsTo");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end msecsTo;
   function offsetFromUtc (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "offsetFromUtc");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end offsetFromUtc;
   function secsTo (self : access Inst; arg_1_P : access QtAda6.QtCore.QDateTime.Inst'Class) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "secsTo");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end secsTo;
   procedure setDate (self : access Inst; date_P : access QtAda6.QtCore.QDate.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setDate");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if date_P /= null then date_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setDate;
   procedure setMSecsSinceEpoch (self : access Inst; msecs_P : int) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setMSecsSinceEpoch");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (msecs_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setMSecsSinceEpoch;
   procedure setOffsetFromUtc (self : access Inst; offsetSeconds_P : int) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setOffsetFromUtc");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (offsetSeconds_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setOffsetFromUtc;
   procedure setSecsSinceEpoch (self : access Inst; secs_P : int) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setSecsSinceEpoch");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (secs_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setSecsSinceEpoch;
   procedure setTime (self : access Inst; time_P : access QtAda6.QtCore.QTime.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setTime");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if time_P /= null then time_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setTime;
   procedure setTimeSpec (self : access Inst; spec_P : access QtAda6.QtCore.Qt.TimeSpec.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setTimeSpec");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if spec_P /= null then spec_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setTimeSpec;
   procedure setTimeZone (self : access Inst; toZone_P : access QtAda6.QtCore.QTimeZone.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setTimeZone");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if toZone_P /= null then toZone_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setTimeZone;
   procedure swap (self : access Inst; other_P : access QtAda6.QtCore.QDateTime.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "swap");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if other_P /= null then other_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end swap;
   function time (self : access Inst) return access QtAda6.QtCore.QTime.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QTime.Class := new QtAda6.QtCore.QTime.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "time");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end time;
   function timeRepresentation (self : access Inst) return access QtAda6.QtCore.QTimeZone.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QTimeZone.Class := new QtAda6.QtCore.QTimeZone.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "timeRepresentation");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end timeRepresentation;
   function timeSpec (self : access Inst) return access QtAda6.QtCore.Qt.TimeSpec.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.TimeSpec.Class := new QtAda6.QtCore.Qt.TimeSpec.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "timeSpec");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end timeSpec;
   function timeZone (self : access Inst) return access QtAda6.QtCore.QTimeZone.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QTimeZone.Class := new QtAda6.QtCore.QTimeZone.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "timeZone");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end timeZone;
   function timeZoneAbbreviation (self : access Inst) return str is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "timeZoneAbbreviation");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end timeZoneAbbreviation;
   function toLocalTime (self : access Inst) return access QtAda6.QtCore.QDateTime.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QDateTime.Class := new QtAda6.QtCore.QDateTime.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "toLocalTime");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end toLocalTime;
   function toMSecsSinceEpoch (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toMSecsSinceEpoch");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end toMSecsSinceEpoch;
   function toOffsetFromUtc (self : access Inst; offsetSeconds_P : int) return access QtAda6.QtCore.QDateTime.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QDateTime.Class := new QtAda6.QtCore.QDateTime.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toOffsetFromUtc");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (offsetSeconds_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end toOffsetFromUtc;
   function toPython (self : access Inst) return access Object'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toPython");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return null;
   end toPython;
   function toSecsSinceEpoch (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toSecsSinceEpoch");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end toSecsSinceEpoch;
   function toString (self : access Inst; format_P : access QtAda6.QtCore.Qt.DateFormat.Inst'Class := null) return str
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toString");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      if format_P /= null then
         Dict_SetItemString (Dict, "format", format_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end toString;
   function toString
     (self : access Inst; format_P : str; cal_P : access QtAda6.QtCore.QCalendar.Inst'Class := null) return str
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toString");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (format_P));
      Dict := Dict_New;
      if cal_P /= null then
         Dict_SetItemString (Dict, "cal", cal_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end toString;
   function toTimeSpec
     (self : access Inst; spec_P : access QtAda6.QtCore.Qt.TimeSpec.Inst'Class)
      return access QtAda6.QtCore.QDateTime.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QDateTime.Class := new QtAda6.QtCore.QDateTime.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toTimeSpec");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if spec_P /= null then spec_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end toTimeSpec;
   function toTimeZone
     (self : access Inst; toZone_P : access QtAda6.QtCore.QTimeZone.Inst'Class)
      return access QtAda6.QtCore.QDateTime.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QDateTime.Class := new QtAda6.QtCore.QDateTime.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toTimeZone");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if toZone_P /= null then toZone_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end toTimeZone;
   function toUTC (self : access Inst) return access QtAda6.QtCore.QDateTime.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QDateTime.Class := new QtAda6.QtCore.QDateTime.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "toUTC");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end toUTC;
end QtAda6.QtCore.QDateTime;
