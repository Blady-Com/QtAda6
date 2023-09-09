-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qcalendar.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QCalendar.SystemId;
limited with QtAda6.QtCore.QCalendar.System;
limited with QtAda6.QtCore.QCalendar.YearMonthDay;
limited with QtAda6.QtCore.QDate;
limited with QtAda6.QtCore.QDateTime;
limited with QtAda6.QtCore.QTime;
limited with QtAda6.QtCore.QLocale;
limited with QtAda6.QtCore.QLocale.Language;
limited with QtAda6.QtCore.QLocale.FormatType;
package QtAda6.QtCore.QCalendar is
   type List_str is access Any;
   type Union_QtAda6_QtCore_QCalendar_YearMonthDay_int is access Any;
   type Union_QtAda6_QtCore_QLocale_QtAda6_QtCore_QLocale_Language is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (QCalendar_P : access QtAda6.QtCore.QCalendar.Inst'Class) return Class;
   function Create (id_P : access QtAda6.QtCore.QCalendar.SystemId.Inst'Class) return Class;
   function Create (name_P : str) return Class;
   function Create (system_P : access QtAda6.QtCore.QCalendar.System.Inst'Class) return Class;
   procedure U_copy_U;
   function availableCalendars return List_str;
   function dateFromParts
     (self : access Inst; parts_P : Union_QtAda6_QtCore_QCalendar_YearMonthDay_int)
      return access QtAda6.QtCore.QDate.Inst'Class;
   function dateFromParts
     (self : access Inst; year_P : int; month_P : int; day_P : int) return access QtAda6.QtCore.QDate.Inst'Class;
   function dateTimeToString
     (self       : access Inst; format_P : str; datetime_P : access QtAda6.QtCore.QDateTime.Inst'Class;
      dateOnly_P : access QtAda6.QtCore.QDate.Inst'Class; timeOnly_P : access QtAda6.QtCore.QTime.Inst'Class;
      locale_P   : Union_QtAda6_QtCore_QLocale_QtAda6_QtCore_QLocale_Language) return str;
   function dayOfWeek (self : access Inst; date_P : access QtAda6.QtCore.QDate.Inst'Class) return int;
   function daysInMonth (self : access Inst; month_P : int; year_P : int) return int;
   function daysInYear (self : access Inst; year_P : int) return int;
   function hasYearZero (self : access Inst) return bool;
   function isDateValid (self : access Inst; year_P : int; month_P : int; day_P : int) return bool;
   function isGregorian (self : access Inst) return bool;
   function isLeapYear (self : access Inst; year_P : int) return bool;
   function isLunar (self : access Inst) return bool;
   function isLuniSolar (self : access Inst) return bool;
   function isProleptic (self : access Inst) return bool;
   function isSolar (self : access Inst) return bool;
   function isValid (self : access Inst) return bool;
   function maximumDaysInMonth (self : access Inst) return int;
   function maximumMonthsInYear (self : access Inst) return int;
   function minimumDaysInMonth (self : access Inst) return int;
   function monthName
     (self   : access Inst; locale_P : Union_QtAda6_QtCore_QLocale_QtAda6_QtCore_QLocale_Language; month_P : int;
      year_P : int; format_P : access QtAda6.QtCore.QLocale.FormatType.Inst'Class) return str;
   function monthsInYear (self : access Inst; year_P : int) return int;
   function name (self : access Inst) return str;
   function partsFromDate
     (self : access Inst; date_P : access QtAda6.QtCore.QDate.Inst'Class)
      return access QtAda6.QtCore.QCalendar.YearMonthDay.Inst'Class;
   function standaloneMonthName
     (self   : access Inst; locale_P : Union_QtAda6_QtCore_QLocale_QtAda6_QtCore_QLocale_Language; month_P : int;
      year_P : int; format_P : access QtAda6.QtCore.QLocale.FormatType.Inst'Class) return str;
   function standaloneWeekDayName
     (self     : access Inst; locale_P : Union_QtAda6_QtCore_QLocale_QtAda6_QtCore_QLocale_Language; day_P : int;
      format_P : access QtAda6.QtCore.QLocale.FormatType.Inst'Class) return str;
   function weekDayName
     (self     : access Inst; locale_P : Union_QtAda6_QtCore_QLocale_QtAda6_QtCore_QLocale_Language; day_P : int;
      format_P : access QtAda6.QtCore.QLocale.FormatType.Inst'Class) return str;
end QtAda6.QtCore.QCalendar;
