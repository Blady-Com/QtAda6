-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qdatetime.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.Qt.TimeSpec;
limited with QtAda6.QtCore.QDate;
limited with QtAda6.QtCore.QTime;
limited with QtAda6.QtCore.QTimeZone;
limited with QtAda6.QtCore.Qt.DateFormat;
limited with QtAda6.QtCore.QCalendar;
package QtAda6.QtCore.QDateTime is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create
     (arg_1_P : int; arg_2_P : int; arg_3_P : int; arg_4_P : int; arg_5_P : int; arg_6_P : int) return Class;
   function Create
     (arg_1_P : int; arg_2_P : int; arg_3_P : int; arg_4_P : int; arg_5_P : int; arg_6_P : int; arg_7_P : int;
      arg_8_P : access QtAda6.QtCore.Qt.TimeSpec.Inst'Class) return Class;
   function Create
     (arg_1_P : int; arg_2_P : int; arg_3_P : int; arg_4_P : int; arg_5_P : int; arg_6_P : int; arg_7_P : int;
      arg_8_P : int) return Class;
   function Create
     (date_P : access QtAda6.QtCore.QDate.Inst'Class; time_P : access QtAda6.QtCore.QTime.Inst'Class) return Class;
   function Create
     (date_P : access QtAda6.QtCore.QDate.Inst'Class; time_P : access QtAda6.QtCore.QTime.Inst'Class;
      spec_P : access QtAda6.QtCore.Qt.TimeSpec.Inst'Class; offsetSeconds_P : int) return Class;
   function Create
     (date_P     : access QtAda6.QtCore.QDate.Inst'Class; time_P : access QtAda6.QtCore.QTime.Inst'Class;
      timeZone_P : access QtAda6.QtCore.QTimeZone.Inst'Class) return Class;
   function Create (other_P : access QtAda6.QtCore.QDateTime.Inst'Class) return Class;
   procedure U_copy_U;
   function U_reduce_U (self : access Inst) return Object;
   function U_repr_U (self : access Inst) return Object;
   function addDays (self : access Inst; days_P : int) return access QtAda6.QtCore.QDateTime.Inst'Class;
   function addMSecs (self : access Inst; msecs_P : int) return access QtAda6.QtCore.QDateTime.Inst'Class;
   function addMonths (self : access Inst; months_P : int) return access QtAda6.QtCore.QDateTime.Inst'Class;
   function addSecs (self : access Inst; secs_P : int) return access QtAda6.QtCore.QDateTime.Inst'Class;
   function addYears (self : access Inst; years_P : int) return access QtAda6.QtCore.QDateTime.Inst'Class;
   function currentDateTime return access QtAda6.QtCore.QDateTime.Inst'Class;
   function currentDateTime
     (zone_P : access QtAda6.QtCore.QTimeZone.Inst'Class) return access QtAda6.QtCore.QDateTime.Inst'Class;
   function currentDateTimeUtc return access QtAda6.QtCore.QDateTime.Inst'Class;
   function currentMSecsSinceEpoch return int;
   function currentSecsSinceEpoch return int;
   function date (self : access Inst) return access QtAda6.QtCore.QDate.Inst'Class;
   function daysTo (self : access Inst; arg_1_P : access QtAda6.QtCore.QDateTime.Inst'Class) return int;
   function fromMSecsSinceEpoch (msecs_P : int) return access QtAda6.QtCore.QDateTime.Inst'Class;
   function fromMSecsSinceEpoch
     (msecs_P : int; spec_P : access QtAda6.QtCore.Qt.TimeSpec.Inst'Class; offsetFromUtc_P : int)
      return access QtAda6.QtCore.QDateTime.Inst'Class;
   function fromMSecsSinceEpoch
     (msecs_P : int; timeZone_P : access QtAda6.QtCore.QTimeZone.Inst'Class)
      return access QtAda6.QtCore.QDateTime.Inst'Class;
   function fromSecsSinceEpoch (secs_P : int) return access QtAda6.QtCore.QDateTime.Inst'Class;
   function fromSecsSinceEpoch
     (secs_P : int; spec_P : access QtAda6.QtCore.Qt.TimeSpec.Inst'Class; offsetFromUtc_P : int)
      return access QtAda6.QtCore.QDateTime.Inst'Class;
   function fromSecsSinceEpoch
     (secs_P : int; timeZone_P : access QtAda6.QtCore.QTimeZone.Inst'Class)
      return access QtAda6.QtCore.QDateTime.Inst'Class;
   function fromString
     (string_P : str; format_P : access QtAda6.QtCore.Qt.DateFormat.Inst'Class)
      return access QtAda6.QtCore.QDateTime.Inst'Class;
   function fromString
     (string_P : str; format_P : str; cal_P : access QtAda6.QtCore.QCalendar.Inst'Class)
      return access QtAda6.QtCore.QDateTime.Inst'Class;
   function isDaylightTime (self : access Inst) return bool;
   function isNull (self : access Inst) return bool;
   function isValid (self : access Inst) return bool;
   function msecsTo (self : access Inst; arg_1_P : access QtAda6.QtCore.QDateTime.Inst'Class) return int;
   function offsetFromUtc (self : access Inst) return int;
   function secsTo (self : access Inst; arg_1_P : access QtAda6.QtCore.QDateTime.Inst'Class) return int;
   procedure setDate (self : access Inst; date_P : access QtAda6.QtCore.QDate.Inst'Class);
   procedure setMSecsSinceEpoch (self : access Inst; msecs_P : int);
   procedure setOffsetFromUtc (self : access Inst; offsetSeconds_P : int);
   procedure setSecsSinceEpoch (self : access Inst; secs_P : int);
   procedure setTime (self : access Inst; time_P : access QtAda6.QtCore.QTime.Inst'Class);
   procedure setTimeSpec (self : access Inst; spec_P : access QtAda6.QtCore.Qt.TimeSpec.Inst'Class);
   procedure setTimeZone (self : access Inst; toZone_P : access QtAda6.QtCore.QTimeZone.Inst'Class);
   procedure swap (self : access Inst; other_P : access QtAda6.QtCore.QDateTime.Inst'Class);
   function time (self : access Inst) return access QtAda6.QtCore.QTime.Inst'Class;
   function timeRepresentation (self : access Inst) return access QtAda6.QtCore.QTimeZone.Inst'Class;
   function timeSpec (self : access Inst) return access QtAda6.QtCore.Qt.TimeSpec.Inst'Class;
   function timeZone (self : access Inst) return access QtAda6.QtCore.QTimeZone.Inst'Class;
   function timeZoneAbbreviation (self : access Inst) return str;
   function toLocalTime (self : access Inst) return access QtAda6.QtCore.QDateTime.Inst'Class;
   function toMSecsSinceEpoch (self : access Inst) return int;
   function toOffsetFromUtc
     (self : access Inst; offsetSeconds_P : int) return access QtAda6.QtCore.QDateTime.Inst'Class;
   function toPython (self : access Inst) return Object;
   function toSecsSinceEpoch (self : access Inst) return int;
   function toString (self : access Inst; format_P : access QtAda6.QtCore.Qt.DateFormat.Inst'Class) return str;
   function toString (self : access Inst; format_P : str; cal_P : access QtAda6.QtCore.QCalendar.Inst'Class) return str;
   function toTimeSpec
     (self : access Inst; spec_P : access QtAda6.QtCore.Qt.TimeSpec.Inst'Class)
      return access QtAda6.QtCore.QDateTime.Inst'Class;
   function toTimeZone
     (self : access Inst; toZone_P : access QtAda6.QtCore.QTimeZone.Inst'Class)
      return access QtAda6.QtCore.QDateTime.Inst'Class;
   function toUTC (self : access Inst) return access QtAda6.QtCore.QDateTime.Inst'Class;
end QtAda6.QtCore.QDateTime;
