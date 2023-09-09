-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qdate.adb
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
with QtAda6.QtCore.QCalendar;
with QtAda6.QtCore.QDateTime;
with QtAda6.QtCore.Qt.TimeSpec;
with QtAda6.QtCore.QTimeZone;
with QtAda6.QtCore.Qt.DateFormat;
package body QtAda6.QtCore.QDate is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDate");
      Args  := Tuple_New (0);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (QDate_P : access QtAda6.QtCore.QDate.Inst'Class) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDate");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, QDate_P.Python_Proxy);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (y_P : int; m_P : int; d_P : int) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDate");
      Args  := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (y_P));
      Tuple_SetItem (Args, 1, Long_FromLong (m_P));
      Tuple_SetItem (Args, 2, Long_FromLong (d_P));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (y_P : int; m_P : int; d_P : int; cal_P : access QtAda6.QtCore.QCalendar.Inst'Class) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDate");
      Args  := Tuple_New (4);
      Tuple_SetItem (Args, 0, Long_FromLong (y_P));
      Tuple_SetItem (Args, 1, Long_FromLong (m_P));
      Tuple_SetItem (Args, 2, Long_FromLong (d_P));
      Tuple_SetItem (Args, 3, cal_P.Python_Proxy);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   procedure U_copy_U is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDate");
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
   function addDays (self : access Inst; days_P : int) return access QtAda6.QtCore.QDate.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QDate.Class := new QtAda6.QtCore.QDate.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addDays");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (days_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end addDays;
   function addMonths (self : access Inst; months_P : int) return access QtAda6.QtCore.QDate.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QDate.Class := new QtAda6.QtCore.QDate.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addMonths");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (months_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end addMonths;
   function addMonths
     (self : access Inst; months_P : int; cal_P : access QtAda6.QtCore.QCalendar.Inst'Class)
      return access QtAda6.QtCore.QDate.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QDate.Class := new QtAda6.QtCore.QDate.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addMonths");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (months_P));
      Tuple_SetItem (Args, 1, cal_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end addMonths;
   function addYears (self : access Inst; years_P : int) return access QtAda6.QtCore.QDate.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QDate.Class := new QtAda6.QtCore.QDate.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addYears");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (years_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end addYears;
   function addYears
     (self : access Inst; years_P : int; cal_P : access QtAda6.QtCore.QCalendar.Inst'Class)
      return access QtAda6.QtCore.QDate.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QDate.Class := new QtAda6.QtCore.QDate.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addYears");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (years_P));
      Tuple_SetItem (Args, 1, cal_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end addYears;
   function currentDate return access QtAda6.QtCore.QDate.Inst'Class is
      Class, Method, Args, Result : Handle;
      Ret                         : constant QtAda6.QtCore.QDate.Class := new QtAda6.QtCore.QDate.Inst;
   begin
      Class            := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDate");
      Method           := Object_GetAttrString (Class, "currentDate");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end currentDate;
   function day (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "day");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end day;
   function day (self : access Inst; cal_P : access QtAda6.QtCore.QCalendar.Inst'Class) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "day");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, cal_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end day;
   function dayOfWeek (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "dayOfWeek");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end dayOfWeek;
   function dayOfWeek (self : access Inst; cal_P : access QtAda6.QtCore.QCalendar.Inst'Class) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "dayOfWeek");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, cal_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end dayOfWeek;
   function dayOfYear (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "dayOfYear");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end dayOfYear;
   function dayOfYear (self : access Inst; cal_P : access QtAda6.QtCore.QCalendar.Inst'Class) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "dayOfYear");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, cal_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end dayOfYear;
   function daysInMonth (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "daysInMonth");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end daysInMonth;
   function daysInMonth (self : access Inst; cal_P : access QtAda6.QtCore.QCalendar.Inst'Class) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "daysInMonth");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, cal_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end daysInMonth;
   function daysInYear (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "daysInYear");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end daysInYear;
   function daysInYear (self : access Inst; cal_P : access QtAda6.QtCore.QCalendar.Inst'Class) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "daysInYear");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, cal_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end daysInYear;
   function daysTo (self : access Inst; d_P : access QtAda6.QtCore.QDate.Inst'Class) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "daysTo");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, d_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end daysTo;
   function endOfDay (self : access Inst) return access QtAda6.QtCore.QDateTime.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QDateTime.Class := new QtAda6.QtCore.QDateTime.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "endOfDay");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end endOfDay;
   function endOfDay
     (self : access Inst; spec_P : access QtAda6.QtCore.Qt.TimeSpec.Inst'Class; offsetSeconds_P : int)
      return access QtAda6.QtCore.QDateTime.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QDateTime.Class := new QtAda6.QtCore.QDateTime.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "endOfDay");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, spec_P.Python_Proxy);
      Tuple_SetItem (Args, 1, Long_FromLong (offsetSeconds_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end endOfDay;
   function endOfDay
     (self : access Inst; zone_P : access QtAda6.QtCore.QTimeZone.Inst'Class)
      return access QtAda6.QtCore.QDateTime.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QDateTime.Class := new QtAda6.QtCore.QDateTime.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "endOfDay");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, zone_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end endOfDay;
   function fromJulianDay (jd_U_P : int) return access QtAda6.QtCore.QDate.Inst'Class is
      Class, Method, Args, Result : Handle;
      Ret                         : constant QtAda6.QtCore.QDate.Class := new QtAda6.QtCore.QDate.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDate");
      Method := Object_GetAttrString (Class, "fromJulianDay");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (jd_U_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fromJulianDay;
   function fromString
     (string_P : str; format_P : access QtAda6.QtCore.Qt.DateFormat.Inst'Class)
      return access QtAda6.QtCore.QDate.Inst'Class
   is
      Class, Method, Args, Result : Handle;
      Ret                         : constant QtAda6.QtCore.QDate.Class := new QtAda6.QtCore.QDate.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDate");
      Method := Object_GetAttrString (Class, "fromString");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (string_P));
      Tuple_SetItem (Args, 1, format_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fromString;
   function fromString
     (string_P : str; format_P : str; cal_P : access QtAda6.QtCore.QCalendar.Inst'Class)
      return access QtAda6.QtCore.QDate.Inst'Class
   is
      Class, Method, Args, Result : Handle;
      Ret                         : constant QtAda6.QtCore.QDate.Class := new QtAda6.QtCore.QDate.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDate");
      Method := Object_GetAttrString (Class, "fromString");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Unicode_FromString (string_P));
      Tuple_SetItem (Args, 1, Unicode_FromString (format_P));
      Tuple_SetItem (Args, 2, cal_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fromString;
   function getDate (self : access Inst) return Tuple is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "getDate");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Tuple_conv_P2A_is_not_supported;
   end getDate;
   function isLeapYear (year_P : int) return bool is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDate");
      Method := Object_GetAttrString (Class, "isLeapYear");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (year_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isLeapYear;
   function isNull (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isNull");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isNull;
   function isValid (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isValid");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isValid;
   function isValid (y_P : int; m_P : int; d_P : int) return bool is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDate");
      Method := Object_GetAttrString (Class, "isValid");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (y_P));
      Tuple_SetItem (Args, 1, Long_FromLong (m_P));
      Tuple_SetItem (Args, 2, Long_FromLong (d_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isValid;
   function month (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "month");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end month;
   function month (self : access Inst; cal_P : access QtAda6.QtCore.QCalendar.Inst'Class) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "month");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, cal_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end month;
   function setDate (self : access Inst; year_P : int; month_P : int; day_P : int) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setDate");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (year_P));
      Tuple_SetItem (Args, 1, Long_FromLong (month_P));
      Tuple_SetItem (Args, 2, Long_FromLong (day_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end setDate;
   function setDate
     (self : access Inst; year_P : int; month_P : int; day_P : int; cal_P : access QtAda6.QtCore.QCalendar.Inst'Class)
      return bool
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setDate");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Long_FromLong (year_P));
      Tuple_SetItem (Args, 1, Long_FromLong (month_P));
      Tuple_SetItem (Args, 2, Long_FromLong (day_P));
      Tuple_SetItem (Args, 3, cal_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end setDate;
   function startOfDay (self : access Inst) return access QtAda6.QtCore.QDateTime.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QDateTime.Class := new QtAda6.QtCore.QDateTime.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "startOfDay");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end startOfDay;
   function startOfDay
     (self : access Inst; spec_P : access QtAda6.QtCore.Qt.TimeSpec.Inst'Class; offsetSeconds_P : int)
      return access QtAda6.QtCore.QDateTime.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QDateTime.Class := new QtAda6.QtCore.QDateTime.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "startOfDay");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, spec_P.Python_Proxy);
      Tuple_SetItem (Args, 1, Long_FromLong (offsetSeconds_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end startOfDay;
   function startOfDay
     (self : access Inst; zone_P : access QtAda6.QtCore.QTimeZone.Inst'Class)
      return access QtAda6.QtCore.QDateTime.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QDateTime.Class := new QtAda6.QtCore.QDateTime.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "startOfDay");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, zone_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end startOfDay;
   function toJulianDay (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toJulianDay");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end toJulianDay;
   function toPython (self : access Inst) return Object is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toPython");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return (Python_Proxy => Result);
   end toPython;
   function toString (self : access Inst; format_P : access QtAda6.QtCore.Qt.DateFormat.Inst'Class) return str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toString");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, format_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end toString;
   function toString (self : access Inst; format_P : str; cal_P : access QtAda6.QtCore.QCalendar.Inst'Class) return str
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toString");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (format_P));
      Tuple_SetItem (Args, 1, cal_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end toString;
   function weekNumber (self : access Inst) return Tuple is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "weekNumber");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Tuple_conv_P2A_is_not_supported;
   end weekNumber;
   function year (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "year");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end year;
   function year (self : access Inst; cal_P : access QtAda6.QtCore.QCalendar.Inst'Class) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "year");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, cal_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end year;
end QtAda6.QtCore.QDate;
