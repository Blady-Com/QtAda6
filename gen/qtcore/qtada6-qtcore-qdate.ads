-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qdate.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QCalendar;
limited with QtAda6.QtCore.QDateTime;
limited with QtAda6.QtCore.Qt.TimeSpec;
limited with QtAda6.QtCore.QTimeZone;
limited with QtAda6.QtCore.Qt.DateFormat;
package QtAda6.QtCore.QDate is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   type TUPLE is null record;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (QDate_P : access QtAda6.QtCore.QDate.Inst'Class) return Class;
   function Create (y_P : int; m_P : int; d_P : int) return Class;
   function Create (y_P : int; m_P : int; d_P : int; cal_P : access QtAda6.QtCore.QCalendar.Inst'Class) return Class;
   procedure U_copy_U;
   function U_reduce_U (self : access Inst) return access Object'Class;
   function U_repr_U (self : access Inst) return access Object'Class;
   function addDays (self : access Inst; days_P : int) return access QtAda6.QtCore.QDate.Inst'Class;
   function addMonths (self : access Inst; months_P : int) return access QtAda6.QtCore.QDate.Inst'Class;
   function addMonths
     (self : access Inst; months_P : int; cal_P : access QtAda6.QtCore.QCalendar.Inst'Class)
      return access QtAda6.QtCore.QDate.Inst'Class;
   function addYears (self : access Inst; years_P : int) return access QtAda6.QtCore.QDate.Inst'Class;
   function addYears
     (self : access Inst; years_P : int; cal_P : access QtAda6.QtCore.QCalendar.Inst'Class)
      return access QtAda6.QtCore.QDate.Inst'Class;
   function currentDate return access QtAda6.QtCore.QDate.Inst'Class;
   function day (self : access Inst) return int;
   function day (self : access Inst; cal_P : access QtAda6.QtCore.QCalendar.Inst'Class) return int;
   function dayOfWeek (self : access Inst) return int;
   function dayOfWeek (self : access Inst; cal_P : access QtAda6.QtCore.QCalendar.Inst'Class) return int;
   function dayOfYear (self : access Inst) return int;
   function dayOfYear (self : access Inst; cal_P : access QtAda6.QtCore.QCalendar.Inst'Class) return int;
   function daysInMonth (self : access Inst) return int;
   function daysInMonth (self : access Inst; cal_P : access QtAda6.QtCore.QCalendar.Inst'Class) return int;
   function daysInYear (self : access Inst) return int;
   function daysInYear (self : access Inst; cal_P : access QtAda6.QtCore.QCalendar.Inst'Class) return int;
   function daysTo (self : access Inst; d_P : access QtAda6.QtCore.QDate.Inst'Class) return int;
   function endOfDay (self : access Inst) return access QtAda6.QtCore.QDateTime.Inst'Class;
   function endOfDay
     (self : access Inst; spec_P : access QtAda6.QtCore.Qt.TimeSpec.Inst'Class; offsetSeconds_P : int := 0)
      return access QtAda6.QtCore.QDateTime.Inst'Class;
   function endOfDay
     (self : access Inst; zone_P : access QtAda6.QtCore.QTimeZone.Inst'Class)
      return access QtAda6.QtCore.QDateTime.Inst'Class;
   function fromJulianDay (jd_U_P : int) return access QtAda6.QtCore.QDate.Inst'Class;
   function fromString
     (string_P : str; format_P : access QtAda6.QtCore.Qt.DateFormat.Inst'Class := null)
      return access QtAda6.QtCore.QDate.Inst'Class;
   function fromString
     (string_P : str; format_P : str; cal_P : access QtAda6.QtCore.QCalendar.Inst'Class := null)
      return access QtAda6.QtCore.QDate.Inst'Class;
   function getDate (self : access Inst) return TUPLE;
   function isLeapYear (year_P : int) return bool;
   function isNull (self : access Inst) return bool;
   function isValid (self : access Inst) return bool;
   function isValid (y_P : int; m_P : int; d_P : int) return bool;
   function month (self : access Inst) return int;
   function month (self : access Inst; cal_P : access QtAda6.QtCore.QCalendar.Inst'Class) return int;
   function setDate (self : access Inst; year_P : int; month_P : int; day_P : int) return bool;
   function setDate
     (self : access Inst; year_P : int; month_P : int; day_P : int; cal_P : access QtAda6.QtCore.QCalendar.Inst'Class)
      return bool;
   function startOfDay (self : access Inst) return access QtAda6.QtCore.QDateTime.Inst'Class;
   function startOfDay
     (self : access Inst; spec_P : access QtAda6.QtCore.Qt.TimeSpec.Inst'Class; offsetSeconds_P : int := 0)
      return access QtAda6.QtCore.QDateTime.Inst'Class;
   function startOfDay
     (self : access Inst; zone_P : access QtAda6.QtCore.QTimeZone.Inst'Class)
      return access QtAda6.QtCore.QDateTime.Inst'Class;
   function toJulianDay (self : access Inst) return int;
   function toPython (self : access Inst) return access Object'Class;
   function toString (self : access Inst; format_P : access QtAda6.QtCore.Qt.DateFormat.Inst'Class := null) return str;
   function toString
     (self : access Inst; format_P : str; cal_P : access QtAda6.QtCore.QCalendar.Inst'Class := null) return str;
   function weekNumber (self : access Inst) return TUPLE;
   function year (self : access Inst) return int;
   function year (self : access Inst; cal_P : access QtAda6.QtCore.QCalendar.Inst'Class) return int;
end QtAda6.QtCore.QDate;
