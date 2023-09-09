-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qcalendar.adb
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
with QtAda6.QtCore.QCalendar.SystemId;
with QtAda6.QtCore.QCalendar.System;
with QtAda6.QtCore.QCalendar.YearMonthDay;
with QtAda6.QtCore.QDate;
with QtAda6.QtCore.QDateTime;
with QtAda6.QtCore.QTime;
with QtAda6.QtCore.QLocale;
with QtAda6.QtCore.QLocale.Language;
with QtAda6.QtCore.QLocale.FormatType;
package body QtAda6.QtCore.QCalendar is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCalendar");
      Args  := Tuple_New (0);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (QCalendar_P : access QtAda6.QtCore.QCalendar.Inst'Class) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCalendar");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, QCalendar_P.Python_Proxy);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (id_P : access QtAda6.QtCore.QCalendar.SystemId.Inst'Class) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCalendar");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, id_P.Python_Proxy);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (name_P : str) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCalendar");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (name_P));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (system_P : access QtAda6.QtCore.QCalendar.System.Inst'Class) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCalendar");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, system_P.Python_Proxy);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   procedure U_copy_U is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCalendar");
      Method := Object_GetAttrString (Class, "__copy__");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end U_copy_U;
   function availableCalendars return List_str is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCalendar");
      Method := Object_GetAttrString (Class, "availableCalendars");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end availableCalendars;
   function dateFromParts
     (self : access Inst; parts_P : Union_QtAda6_QtCore_QCalendar_YearMonthDay_int)
      return access QtAda6.QtCore.QDate.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QDate.Class := new QtAda6.QtCore.QDate.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "dateFromParts");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end dateFromParts;
   function dateFromParts
     (self : access Inst; year_P : int; month_P : int; day_P : int) return access QtAda6.QtCore.QDate.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QDate.Class := new QtAda6.QtCore.QDate.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "dateFromParts");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (year_P));
      Tuple_SetItem (Args, 1, Long_FromLong (month_P));
      Tuple_SetItem (Args, 2, Long_FromLong (day_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end dateFromParts;
   function dateTimeToString
     (self       : access Inst; format_P : str; datetime_P : access QtAda6.QtCore.QDateTime.Inst'Class;
      dateOnly_P : access QtAda6.QtCore.QDate.Inst'Class; timeOnly_P : access QtAda6.QtCore.QTime.Inst'Class;
      locale_P   : Union_QtAda6_QtCore_QLocale_QtAda6_QtCore_QLocale_Language) return str
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "dateTimeToString");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, Unicode_FromString (format_P));
      Tuple_SetItem (Args, 1, datetime_P.Python_Proxy);
      Tuple_SetItem (Args, 2, dateOnly_P.Python_Proxy);
      Tuple_SetItem (Args, 3, timeOnly_P.Python_Proxy);
      Tuple_SetItem (Args, 4, No_Value);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end dateTimeToString;
   function dayOfWeek (self : access Inst; date_P : access QtAda6.QtCore.QDate.Inst'Class) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "dayOfWeek");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, date_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end dayOfWeek;
   function daysInMonth (self : access Inst; month_P : int; year_P : int) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "daysInMonth");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (month_P));
      Tuple_SetItem (Args, 1, Long_FromLong (year_P));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end daysInMonth;
   function daysInYear (self : access Inst; year_P : int) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "daysInYear");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (year_P));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end daysInYear;
   function hasYearZero (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hasYearZero");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end hasYearZero;
   function isDateValid (self : access Inst; year_P : int; month_P : int; day_P : int) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isDateValid");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (year_P));
      Tuple_SetItem (Args, 1, Long_FromLong (month_P));
      Tuple_SetItem (Args, 2, Long_FromLong (day_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isDateValid;
   function isGregorian (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isGregorian");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isGregorian;
   function isLeapYear (self : access Inst; year_P : int) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isLeapYear");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (year_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isLeapYear;
   function isLunar (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isLunar");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isLunar;
   function isLuniSolar (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isLuniSolar");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isLuniSolar;
   function isProleptic (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isProleptic");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isProleptic;
   function isSolar (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isSolar");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isSolar;
   function isValid (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isValid");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isValid;
   function maximumDaysInMonth (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "maximumDaysInMonth");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end maximumDaysInMonth;
   function maximumMonthsInYear (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "maximumMonthsInYear");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end maximumMonthsInYear;
   function minimumDaysInMonth (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "minimumDaysInMonth");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end minimumDaysInMonth;
   function monthName
     (self   : access Inst; locale_P : Union_QtAda6_QtCore_QLocale_QtAda6_QtCore_QLocale_Language; month_P : int;
      year_P : int; format_P : access QtAda6.QtCore.QLocale.FormatType.Inst'Class) return str
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "monthName");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, No_Value);
      Tuple_SetItem (Args, 1, Long_FromLong (month_P));
      Tuple_SetItem (Args, 2, Long_FromLong (year_P));
      Tuple_SetItem (Args, 3, format_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end monthName;
   function monthsInYear (self : access Inst; year_P : int) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "monthsInYear");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (year_P));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end monthsInYear;
   function name (self : access Inst) return str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "name");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end name;
   function partsFromDate
     (self : access Inst; date_P : access QtAda6.QtCore.QDate.Inst'Class)
      return access QtAda6.QtCore.QCalendar.YearMonthDay.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret : constant QtAda6.QtCore.QCalendar.YearMonthDay.Class := new QtAda6.QtCore.QCalendar.YearMonthDay.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "partsFromDate");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, date_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end partsFromDate;
   function standaloneMonthName
     (self   : access Inst; locale_P : Union_QtAda6_QtCore_QLocale_QtAda6_QtCore_QLocale_Language; month_P : int;
      year_P : int; format_P : access QtAda6.QtCore.QLocale.FormatType.Inst'Class) return str
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "standaloneMonthName");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, No_Value);
      Tuple_SetItem (Args, 1, Long_FromLong (month_P));
      Tuple_SetItem (Args, 2, Long_FromLong (year_P));
      Tuple_SetItem (Args, 3, format_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end standaloneMonthName;
   function standaloneWeekDayName
     (self     : access Inst; locale_P : Union_QtAda6_QtCore_QLocale_QtAda6_QtCore_QLocale_Language; day_P : int;
      format_P : access QtAda6.QtCore.QLocale.FormatType.Inst'Class) return str
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "standaloneWeekDayName");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, No_Value);
      Tuple_SetItem (Args, 1, Long_FromLong (day_P));
      Tuple_SetItem (Args, 2, format_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end standaloneWeekDayName;
   function weekDayName
     (self     : access Inst; locale_P : Union_QtAda6_QtCore_QLocale_QtAda6_QtCore_QLocale_Language; day_P : int;
      format_P : access QtAda6.QtCore.QLocale.FormatType.Inst'Class) return str
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "weekDayName");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, No_Value);
      Tuple_SetItem (Args, 1, Long_FromLong (day_P));
      Tuple_SetItem (Args, 2, format_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end weekDayName;
end QtAda6.QtCore.QCalendar;
