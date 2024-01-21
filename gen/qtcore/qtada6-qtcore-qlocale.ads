-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qlocale.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QLocale.Language;
limited with QtAda6.QtCore.QLocale.Script;
limited with QtAda6.QtCore.QLocale.LanguageCodeType;
limited with QtAda6.QtCore.QLocale.CurrencySymbolFormat;
limited with QtAda6.QtCore.QLocale.FormatType;
limited with QtAda6.QtCore.QLocale.DataSizeFormat;
limited with QtAda6.QtCore.QLocale.MeasurementSystem;
limited with QtAda6.QtCore.QLocale.NumberOption;
limited with QtAda6.QtCore.QLocale.QuotationStyle;
limited with QtAda6.QtCore.Qt.LayoutDirection;
limited with QtAda6.QtCore.QCalendar;
limited with QtAda6.QtCore.QDate;
limited with QtAda6.QtCore.QDateTime;
limited with QtAda6.QtCore.QTime;
with QtAda6.QtCore.QLocale.Country;
with QtAda6.QtCore.Qt.DayOfWeek;
package QtAda6.QtCore.QLocale is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   type UNION_QtAda6_QtCore_QLocaleQtAda6_QtCore_QLocale_Language is new Any;
   subtype LIST_QtAda6_QtCore_QLocale_Country is QtAda6.QtCore.QLocale.Country.Class_Array;
   type SEQUENCE_str is array (Positive range <>) of str;
   subtype LIST_QtAda6_QtCore_QLocale is QtAda6.QtCore.QLocale.Class_Array;
   type TUPLE is new Any;
   type TUPLE_floatbool is new Any;
   type TUPLE_intbool is new Any;
   type LIST_str is array (Positive range <>) of str;
   subtype LIST_QtAda6_QtCore_Qt_DayOfWeek is QtAda6.QtCore.Qt.DayOfWeek.Class_Array;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create
     (language_P  : access QtAda6.QtCore.QLocale.Language.Inst'Class;
      script_P    : access QtAda6.QtCore.QLocale.Script.Inst'Class  := null;
      territory_P : access QtAda6.QtCore.QLocale.Country.Inst'Class := null) return Class;
   function Create
     (language_P  : access QtAda6.QtCore.QLocale.Language.Inst'Class;
      territory_P : access QtAda6.QtCore.QLocale.Country.Inst'Class) return Class;
   function Create (name_P : str) return Class;
   function Create (other_P : UNION_QtAda6_QtCore_QLocaleQtAda6_QtCore_QLocale_Language) return Class;
   procedure U_copy_U;
   function amText (self : access Inst) return str;
   function bcp47Name (self : access Inst) return str;
   function c_F return access QtAda6.QtCore.QLocale.Inst'Class;
   function codeToCountry (countryCode_P : str) return access QtAda6.QtCore.QLocale.Country.Inst'Class;
   function codeToLanguage
     (languageCode_P : str; codeTypes_P : access QtAda6.QtCore.QLocale.LanguageCodeType.Inst'Class := null)
      return access QtAda6.QtCore.QLocale.Language.Inst'Class;
   function codeToScript (scriptCode_P : str) return access QtAda6.QtCore.QLocale.Script.Inst'Class;
   function codeToTerritory (territoryCode_P : str) return access QtAda6.QtCore.QLocale.Country.Inst'Class;
   function collation (self : access Inst) return access QtAda6.QtCore.QLocale.Inst'Class;
   function countriesForLanguage
     (lang_P : access QtAda6.QtCore.QLocale.Language.Inst'Class) return LIST_QtAda6_QtCore_QLocale_Country;
   function country_F (self : access Inst) return access QtAda6.QtCore.QLocale.Country.Inst'Class;
   function countryToCode (country_P : access QtAda6.QtCore.QLocale.Country.Inst'Class) return str;
   function countryToString (country_P : access QtAda6.QtCore.QLocale.Country.Inst'Class) return str;
   function createSeparatedList (self : access Inst; strl_P : SEQUENCE_str) return str;
   function currencySymbol_F
     (self : access Inst; arg_1_P : access QtAda6.QtCore.QLocale.CurrencySymbolFormat.Inst'Class := null) return str;
   function dateFormat
     (self : access Inst; format_P : access QtAda6.QtCore.QLocale.FormatType.Inst'Class := null) return str;
   function dateTimeFormat
     (self : access Inst; format_P : access QtAda6.QtCore.QLocale.FormatType.Inst'Class := null) return str;
   function dayName
     (self : access Inst; arg_1_P : int; format_P : access QtAda6.QtCore.QLocale.FormatType.Inst'Class := null)
      return str;
   function decimalPoint (self : access Inst) return str;
   function exponential (self : access Inst) return str;
   function firstDayOfWeek (self : access Inst) return access QtAda6.QtCore.Qt.DayOfWeek.Inst'Class;
   function formattedDataSize
     (self     : access Inst; bytes_P : int; precision_P : int := 0;
      format_P : access QtAda6.QtCore.QLocale.DataSizeFormat.Inst'Class := null) return str;
   function groupSeparator (self : access Inst) return str;
   function language_F (self : access Inst) return access QtAda6.QtCore.QLocale.Language.Inst'Class;
   function languageToCode
     (language_P  : access QtAda6.QtCore.QLocale.Language.Inst'Class;
      codeTypes_P : access QtAda6.QtCore.QLocale.LanguageCodeType.Inst'Class := null) return str;
   function languageToString (language_P : access QtAda6.QtCore.QLocale.Language.Inst'Class) return str;
   function matchingLocales
     (language_P  : access QtAda6.QtCore.QLocale.Language.Inst'Class;
      script_P    : access QtAda6.QtCore.QLocale.Script.Inst'Class;
      territory_P : access QtAda6.QtCore.QLocale.Country.Inst'Class) return LIST_QtAda6_QtCore_QLocale;
   function measurementSystem_F (self : access Inst) return access QtAda6.QtCore.QLocale.MeasurementSystem.Inst'Class;
   function monthName
     (self : access Inst; arg_1_P : int; format_P : access QtAda6.QtCore.QLocale.FormatType.Inst'Class := null)
      return str;
   function name (self : access Inst) return str;
   function nativeCountryName (self : access Inst) return str;
   function nativeLanguageName (self : access Inst) return str;
   function nativeTerritoryName (self : access Inst) return str;
   function negativeSign (self : access Inst) return str;
   function numberOptions (self : access Inst) return access QtAda6.QtCore.QLocale.NumberOption.Inst'Class;
   function percent (self : access Inst) return str;
   function pmText (self : access Inst) return str;
   function positiveSign (self : access Inst) return str;
   function quoteString
     (self : access Inst; str_P : str; style_P : access QtAda6.QtCore.QLocale.QuotationStyle.Inst'Class := null)
      return str;
   function script_F (self : access Inst) return access QtAda6.QtCore.QLocale.Script.Inst'Class;
   function scriptToCode (script_P : access QtAda6.QtCore.QLocale.Script.Inst'Class) return str;
   function scriptToString (script_P : access QtAda6.QtCore.QLocale.Script.Inst'Class) return str;
   procedure setDefault (locale_P : UNION_QtAda6_QtCore_QLocaleQtAda6_QtCore_QLocale_Language);
   procedure setNumberOptions (self : access Inst; options_P : access QtAda6.QtCore.QLocale.NumberOption.Inst'Class);
   function standaloneDayName
     (self : access Inst; arg_1_P : int; format_P : access QtAda6.QtCore.QLocale.FormatType.Inst'Class := null)
      return str;
   function standaloneMonthName
     (self : access Inst; arg_1_P : int; format_P : access QtAda6.QtCore.QLocale.FormatType.Inst'Class := null)
      return str;
   procedure swap (self : access Inst; other_P : UNION_QtAda6_QtCore_QLocaleQtAda6_QtCore_QLocale_Language);
   function system_F return access QtAda6.QtCore.QLocale.Inst'Class;
   function territory (self : access Inst) return access QtAda6.QtCore.QLocale.Country.Inst'Class;
   function territoryToCode (territory_P : access QtAda6.QtCore.QLocale.Country.Inst'Class) return str;
   function territoryToString (territory_P : access QtAda6.QtCore.QLocale.Country.Inst'Class) return str;
   function textDirection (self : access Inst) return access QtAda6.QtCore.Qt.LayoutDirection.Inst'Class;
   function timeFormat
     (self : access Inst; format_P : access QtAda6.QtCore.QLocale.FormatType.Inst'Class := null) return str;
   function toCurrencyString
     (self : access Inst; arg_1_P : float; symbol_P : str := ""; precision_P : int := 0) return str;
   function toCurrencyString (self : access Inst; arg_1_P : int; symbol_P : str := "") return str;
-- function toCurrencyString(self : access Inst;i_P : float;symbol_P : str := "";precision_P : int := 0) return str;
-- function toCurrencyString(self : access Inst;i_P : int;symbol_P : str := "") return str;
   function toDate
     (self  : access Inst; string_P : str; format_P : access QtAda6.QtCore.QLocale.FormatType.Inst'Class;
      cal_P : access QtAda6.QtCore.QCalendar.Inst'Class) return access QtAda6.QtCore.QDate.Inst'Class;
   function toDate
     (self : access Inst; string_P : str; format_P : access QtAda6.QtCore.QLocale.FormatType.Inst'Class := null)
      return access QtAda6.QtCore.QDate.Inst'Class;
   function toDate (self : access Inst; string_P : str; format_P : str) return access QtAda6.QtCore.QDate.Inst'Class;
   function toDate
     (self : access Inst; string_P : str; format_P : str; cal_P : access QtAda6.QtCore.QCalendar.Inst'Class)
      return access QtAda6.QtCore.QDate.Inst'Class;
   function toDateTime
     (self  : access Inst; string_P : str; format_P : access QtAda6.QtCore.QLocale.FormatType.Inst'Class;
      cal_P : access QtAda6.QtCore.QCalendar.Inst'Class) return access QtAda6.QtCore.QDateTime.Inst'Class;
   function toDateTime
     (self : access Inst; string_P : str; format_P : access QtAda6.QtCore.QLocale.FormatType.Inst'Class := null)
      return access QtAda6.QtCore.QDateTime.Inst'Class;
   function toDateTime
     (self : access Inst; string_P : str; format_P : str) return access QtAda6.QtCore.QDateTime.Inst'Class;
   function toDateTime
     (self : access Inst; string_P : str; format_P : str; cal_P : access QtAda6.QtCore.QCalendar.Inst'Class)
      return access QtAda6.QtCore.QDateTime.Inst'Class;
   function toDouble (self : access Inst; s_P : str) return TUPLE;
   function toDouble (self : access Inst; s_P : str) return TUPLE_floatbool;
   function toFloat (self : access Inst; s_P : str) return TUPLE;
   function toFloat (self : access Inst; s_P : str) return TUPLE_floatbool;
   function toInt (self : access Inst; s_P : str) return TUPLE;
   function toInt (self : access Inst; s_P : str) return TUPLE_intbool;
   function toLong (self : access Inst; s_P : str) return TUPLE_intbool;
   function toLongLong (self : access Inst; s_P : str) return TUPLE;
   function toLongLong (self : access Inst; s_P : str) return TUPLE_intbool;
   function toLower (self : access Inst; str_P : str) return str;
   function toShort (self : access Inst; s_P : str) return TUPLE;
   function toShort (self : access Inst; s_P : str) return TUPLE_intbool;
   function toString
     (self     : access Inst; date_P : access QtAda6.QtCore.QDate.Inst'Class;
      format_P : access QtAda6.QtCore.QLocale.FormatType.Inst'Class; cal_P : access QtAda6.QtCore.QCalendar.Inst'Class)
      return str;
   function toString
     (self     : access Inst; date_P : access QtAda6.QtCore.QDate.Inst'Class;
      format_P : access QtAda6.QtCore.QLocale.FormatType.Inst'Class := null) return str;
   function toString (self : access Inst; date_P : access QtAda6.QtCore.QDate.Inst'Class; format_P : str) return str;
   function toString
     (self  : access Inst; date_P : access QtAda6.QtCore.QDate.Inst'Class; format_P : str;
      cal_P : access QtAda6.QtCore.QCalendar.Inst'Class) return str;
   function toString
     (self     : access Inst; dateTime_P : access QtAda6.QtCore.QDateTime.Inst'Class;
      format_P : access QtAda6.QtCore.QLocale.FormatType.Inst'Class; cal_P : access QtAda6.QtCore.QCalendar.Inst'Class)
      return str;
   function toString
     (self     : access Inst; dateTime_P : access QtAda6.QtCore.QDateTime.Inst'Class;
      format_P : access QtAda6.QtCore.QLocale.FormatType.Inst'Class := null) return str;
   function toString
     (self : access Inst; dateTime_P : access QtAda6.QtCore.QDateTime.Inst'Class; format_P : str) return str;
   function toString
     (self  : access Inst; dateTime_P : access QtAda6.QtCore.QDateTime.Inst'Class; format_P : str;
      cal_P : access QtAda6.QtCore.QCalendar.Inst'Class) return str;
   function toString (self : access Inst; f_P : float; format_P : int := 0; precision_P : int := 0) return str;
-- function toString(self : access Inst;f_P : float;format_P : int := 0;precision_P : int := 0) return str;
   function toString (self : access Inst; i_P : int) return str;
-- function toString(self : access Inst;i_P : int) return str;
-- function toString(self : access Inst;i_P : int) return str;
   function toString
     (self     : access Inst; time_P : access QtAda6.QtCore.QTime.Inst'Class;
      format_P : access QtAda6.QtCore.QLocale.FormatType.Inst'Class := null) return str;
   function toString (self : access Inst; time_P : access QtAda6.QtCore.QTime.Inst'Class; format_P : str) return str;
   function toTime
     (self : access Inst; string_P : str; format_P : access QtAda6.QtCore.QLocale.FormatType.Inst'Class := null)
      return access QtAda6.QtCore.QTime.Inst'Class;
   function toTime (self : access Inst; string_P : str; format_P : str) return access QtAda6.QtCore.QTime.Inst'Class;
   function toUInt (self : access Inst; s_P : str) return TUPLE;
   function toUInt (self : access Inst; s_P : str) return TUPLE_intbool;
   function toULong (self : access Inst; s_P : str) return TUPLE_intbool;
   function toULongLong (self : access Inst; s_P : str) return TUPLE;
   function toULongLong (self : access Inst; s_P : str) return TUPLE_intbool;
   function toUShort (self : access Inst; s_P : str) return TUPLE;
   function toUShort (self : access Inst; s_P : str) return TUPLE_intbool;
   function toUpper (self : access Inst; str_P : str) return str;
   function uiLanguages (self : access Inst) return LIST_str;
   function weekdays (self : access Inst) return LIST_QtAda6_QtCore_Qt_DayOfWeek;
   function zeroDigit (self : access Inst) return str;
end QtAda6.QtCore.QLocale;
