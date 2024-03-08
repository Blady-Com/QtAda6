-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qtimezone.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QLocale.Country;
limited with QtAda6.QtCore.QDateTime;
limited with QtAda6.QtCore.QByteArray;
limited with QtAda6.QtCore.QTimeZone.NameType;
limited with QtAda6.QtCore.QTimeZone.TimeType;
limited with QtAda6.QtCore.Qt.TimeSpec;
limited with QtAda6.QtCore.QTimeZone.OffsetData;
package QtAda6.QtCore.QTimeZone is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   type UNION_QtAda6_QtCore_QByteArray_bytes is new Any;
   subtype LIST_QtAda6_QtCore_QByteArray is QtAda6.QtCore.QByteArray.Class_Array;
   type UNION_QtAda6_QtCore_QLocale_QtAda6_QtCore_QLocale_Language is new Any;
   subtype LIST_QtAda6_QtCore_QTimeZone_OffsetData is QtAda6.QtCore.QTimeZone.OffsetData.Class_Array;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (ianaId_P : UNION_QtAda6_QtCore_QByteArray_bytes) return Class;
   function Create (offsetSeconds_P : int) return Class;
   function Create (other_P : access QtAda6.QtCore.QTimeZone.Inst'Class) return Class;
   function Create
     (zoneId_P    : UNION_QtAda6_QtCore_QByteArray_bytes; offsetSeconds_P : int; name_P : str; abbreviation_P : str;
      territory_P : access QtAda6.QtCore.QLocale.Country.Inst'Class := null; comment_P : str := "") return Class;
   procedure U_copy_U;
   function abbreviation (self : access Inst; atDateTime_P : access QtAda6.QtCore.QDateTime.Inst'Class) return str;
   function asBackendZone (self : access Inst) return access QtAda6.QtCore.QTimeZone.Inst'Class;
   function availableTimeZoneIds return LIST_QtAda6_QtCore_QByteArray;
   function availableTimeZoneIds (offsetSeconds_P : int) return LIST_QtAda6_QtCore_QByteArray;
   function availableTimeZoneIds
     (territory_P : access QtAda6.QtCore.QLocale.Country.Inst'Class) return LIST_QtAda6_QtCore_QByteArray;
   function comment (self : access Inst) return str;
   function country (self : access Inst) return access QtAda6.QtCore.QLocale.Country.Inst'Class;
   function daylightTimeOffset
     (self : access Inst; atDateTime_P : access QtAda6.QtCore.QDateTime.Inst'Class) return int;
   function displayName
     (self       : access Inst; atDateTime_P : access QtAda6.QtCore.QDateTime.Inst'Class;
      nameType_P : access QtAda6.QtCore.QTimeZone.NameType.Inst'Class         := null;
      locale_P   : UNION_QtAda6_QtCore_QLocale_QtAda6_QtCore_QLocale_Language := null) return str;
   function displayName
     (self       : access Inst; timeType_P : access QtAda6.QtCore.QTimeZone.TimeType.Inst'Class;
      nameType_P : access QtAda6.QtCore.QTimeZone.NameType.Inst'Class         := null;
      locale_P   : UNION_QtAda6_QtCore_QLocale_QtAda6_QtCore_QLocale_Language := null) return str;
   function fixedSecondsAheadOfUtc (self : access Inst) return int;
   function fromSecondsAheadOfUtc (offset_P : int) return access QtAda6.QtCore.QTimeZone.Inst'Class;
   function hasDaylightTime (self : access Inst) return bool;
   function hasTransitions (self : access Inst) return bool;
   function ianaIdToWindowsId
     (ianaId_P : UNION_QtAda6_QtCore_QByteArray_bytes) return access QtAda6.QtCore.QByteArray.Inst'Class;
   function id (self : access Inst) return access QtAda6.QtCore.QByteArray.Inst'Class;
   function isDaylightTime (self : access Inst; atDateTime_P : access QtAda6.QtCore.QDateTime.Inst'Class) return bool;
   function isTimeZoneIdAvailable (ianaId_P : UNION_QtAda6_QtCore_QByteArray_bytes) return bool;
   function isUtcOrFixedOffset (self : access Inst) return bool;
   function isUtcOrFixedOffset (spec_P : access QtAda6.QtCore.Qt.TimeSpec.Inst'Class) return bool;
   function isValid (self : access Inst) return bool;
   function nextTransition
     (self : access Inst; afterDateTime_P : access QtAda6.QtCore.QDateTime.Inst'Class)
      return access QtAda6.QtCore.QTimeZone.OffsetData.Inst'Class;
   function offsetData_F
     (self : access Inst; forDateTime_P : access QtAda6.QtCore.QDateTime.Inst'Class)
      return access QtAda6.QtCore.QTimeZone.OffsetData.Inst'Class;
   function offsetFromUtc (self : access Inst; atDateTime_P : access QtAda6.QtCore.QDateTime.Inst'Class) return int;
   function previousTransition
     (self : access Inst; beforeDateTime_P : access QtAda6.QtCore.QDateTime.Inst'Class)
      return access QtAda6.QtCore.QTimeZone.OffsetData.Inst'Class;
   function standardTimeOffset
     (self : access Inst; atDateTime_P : access QtAda6.QtCore.QDateTime.Inst'Class) return int;
   procedure swap (self : access Inst; other_P : access QtAda6.QtCore.QTimeZone.Inst'Class);
   function systemTimeZone return access QtAda6.QtCore.QTimeZone.Inst'Class;
   function systemTimeZoneId return access QtAda6.QtCore.QByteArray.Inst'Class;
   function territory (self : access Inst) return access QtAda6.QtCore.QLocale.Country.Inst'Class;
   function timeSpec (self : access Inst) return access QtAda6.QtCore.Qt.TimeSpec.Inst'Class;
   function transitions
     (self         : access Inst; fromDateTime_P : access QtAda6.QtCore.QDateTime.Inst'Class;
      toDateTime_P : access QtAda6.QtCore.QDateTime.Inst'Class) return LIST_QtAda6_QtCore_QTimeZone_OffsetData;
   function utc return access QtAda6.QtCore.QTimeZone.Inst'Class;
   function windowsIdToDefaultIanaId
     (windowsId_P : UNION_QtAda6_QtCore_QByteArray_bytes) return access QtAda6.QtCore.QByteArray.Inst'Class;
   function windowsIdToDefaultIanaId
     (windowsId_P : UNION_QtAda6_QtCore_QByteArray_bytes; territory_P : access QtAda6.QtCore.QLocale.Country.Inst'Class)
      return access QtAda6.QtCore.QByteArray.Inst'Class;
   function windowsIdToIanaIds
     (windowsId_P : UNION_QtAda6_QtCore_QByteArray_bytes) return LIST_QtAda6_QtCore_QByteArray;
   function windowsIdToIanaIds
     (windowsId_P : UNION_QtAda6_QtCore_QByteArray_bytes; territory_P : access QtAda6.QtCore.QLocale.Country.Inst'Class)
      return LIST_QtAda6_QtCore_QByteArray;
end QtAda6.QtCore.QTimeZone;
