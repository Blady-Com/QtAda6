-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qlocale.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QLocale.Language;
limited with QtAda6.QtCore.QLocale.Script;
limited with QtAda6.QtCore.QLocale.Country;
limited with QtAda6.QtCore.QLocale.LanguageCodeType;
limited with QtAda6.QtCore.QLocale.CurrencySymbolFormat;
limited with QtAda6.QtCore.QLocale.FormatType;
limited with QtAda6.QtCore.Qt.DayOfWeek;
limited with QtAda6.QtCore.QLocale.DataSizeFormat;
limited with QtAda6.QtCore.QLocale.MeasurementSystem;
limited with QtAda6.QtCore.QLocale.NumberOption;
limited with QtAda6.QtCore.QLocale.QuotationStyle;
limited with QtAda6.QtCore.Qt.LayoutDirection;
limited with QtAda6.QtCore.QCalendar;
limited with QtAda6.QtCore.QDate;
limited with QtAda6.QtCore.QDateTime;
limited with QtAda6.QtCore.QTime;
package QtAda6.QtCore.QLocale is
   type Union_QtAda6_QtCore_QLocale_QtAda6_QtCore_QLocale_Language is access Any;
   type List_QtAda6_QtCore_QLocale_Country is access Any;
   type Sequence_str is access Any;
   type List_QtAda6_QtCore_QLocale is access Any;
   type Tuple_float_bool is access Any;
   type Tuple_int_bool is access Any;
   type List_str is access Any;
   type List_QtAda6_QtCore_Qt_DayOfWeek is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create
     (language_P  : access QtAda6.QtCore.QLocale.Language.Inst'Class;
      script_P    : access QtAda6.QtCore.QLocale.Script.Inst'Class;
      territory_P : access QtAda6.QtCore.QLocale.Country.Inst'Class) return Class;
   function Create
     (language_P  : access QtAda6.QtCore.QLocale.Language.Inst'Class;
      territory_P : access QtAda6.QtCore.QLocale.Country.Inst'Class) return Class;
   function Create (name_P : str) return Class;
   function Create (other_P : Union_QtAda6_QtCore_QLocale_QtAda6_QtCore_QLocale_Language) return Class;
   procedure U_copy_U;
   function amText (self : access Inst) return str;
   function bcp47Name (self : access Inst) return str;
   function c_F return access QtAda6.QtCore.QLocale.Inst'Class;
   function codeToCountry (countryCode_P : str) return access QtAda6.QtCore.QLocale.Country.Inst'Class;
   function codeToLanguage
     (languageCode_P : str; codeTypes_P : access QtAda6.QtCore.QLocale.LanguageCodeType.Inst'Class)
      return access QtAda6.QtCore.QLocale.Language.Inst'Class;
   function codeToScript (scriptCode_P : str) return access QtAda6.QtCore.QLocale.Script.Inst'Class;
   function codeToTerritory (territoryCode_P : str) return access QtAda6.QtCore.QLocale.Country.Inst'Class;
   function collation (self : access Inst) return access QtAda6.QtCore.QLocale.Inst'Class;
   function countriesForLanguage
     (lang_P : access QtAda6.QtCore.QLocale.Language.Inst'Class) return List_QtAda6_QtCore_QLocale_Country;
   function country_F (self : access Inst) return access QtAda6.QtCore.QLocale.Country.Inst'Class;
   function countryToCode (country_P : access QtAda6.QtCore.QLocale.Country.Inst'Class) return str;
   function countryToString (country_P : access QtAda6.QtCore.QLocale.Country.Inst'Class) return str;
   function createSeparatedList (self : access Inst; strl_P : Sequence_str) return str;
   function currencySymbol_F
     (self : access Inst; arg_1_P : access QtAda6.QtCore.QLocale.CurrencySymbolFormat.Inst'Class) return str;
   function dateFormat (self : access Inst; format_P : access QtAda6.QtCore.QLocale.FormatType.Inst'Class) return str;
   function dateTimeFormat
     (self : access Inst; format_P : access QtAda6.QtCore.QLocale.FormatType.Inst'Class) return str;
   function dayName
     (self : access Inst; arg_1_P : int; format_P : access QtAda6.QtCore.QLocale.FormatType.Inst'Class) return str;
   function decimalPoint (self : access Inst) return str;
   function exponential (self : access Inst) return str;
   function firstDayOfWeek (self : access Inst) return access QtAda6.QtCore.Qt.DayOfWeek.Inst'Class;
   function formattedDataSize
     (self     : access Inst; bytes_P : int; precision_P : int;
      format_P : access QtAda6.QtCore.QLocale.DataSizeFormat.Inst'Class) return str;
   function groupSeparator (self : access Inst) return str;
   function language_F (self : access Inst) return access QtAda6.QtCore.QLocale.Language.Inst'Class;
   function languageToCode
     (language_P  : access QtAda6.QtCore.QLocale.Language.Inst'Class;
      codeTypes_P : access QtAda6.QtCore.QLocale.LanguageCodeType.Inst'Class) return str;
   function languageToString (language_P : access QtAda6.QtCore.QLocale.Language.Inst'Class) return str;
   function matchingLocales
     (language_P  : access QtAda6.QtCore.QLocale.Language.Inst'Class;
      script_P    : access QtAda6.QtCore.QLocale.Script.Inst'Class;
      territory_P : access QtAda6.QtCore.QLocale.Country.Inst'Class) return List_QtAda6_QtCore_QLocale;
   function measurementSystem_F (self : access Inst) return access QtAda6.QtCore.QLocale.MeasurementSystem.Inst'Class;
   function monthName
     (self : access Inst; arg_1_P : int; format_P : access QtAda6.QtCore.QLocale.FormatType.Inst'Class) return str;
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
     (self : access Inst; str_P : str; style_P : access QtAda6.QtCore.QLocale.QuotationStyle.Inst'Class) return str;
   function script_F (self : access Inst) return access QtAda6.QtCore.QLocale.Script.Inst'Class;
   function scriptToCode (script_P : access QtAda6.QtCore.QLocale.Script.Inst'Class) return str;
   function scriptToString (script_P : access QtAda6.QtCore.QLocale.Script.Inst'Class) return str;
   procedure setDefault (locale_P : Union_QtAda6_QtCore_QLocale_QtAda6_QtCore_QLocale_Language);
   procedure setNumberOptions (self : access Inst; options_P : access QtAda6.QtCore.QLocale.NumberOption.Inst'Class);
   function standaloneDayName
     (self : access Inst; arg_1_P : int; format_P : access QtAda6.QtCore.QLocale.FormatType.Inst'Class) return str;
   function standaloneMonthName
     (self : access Inst; arg_1_P : int; format_P : access QtAda6.QtCore.QLocale.FormatType.Inst'Class) return str;
   procedure swap (self : access Inst; other_P : Union_QtAda6_QtCore_QLocale_QtAda6_QtCore_QLocale_Language);
   function system_F return access QtAda6.QtCore.QLocale.Inst'Class;
   function territory (self : access Inst) return access QtAda6.QtCore.QLocale.Country.Inst'Class;
   function territoryToCode (territory_P : access QtAda6.QtCore.QLocale.Country.Inst'Class) return str;
   function territoryToString (territory_P : access QtAda6.QtCore.QLocale.Country.Inst'Class) return str;
   function textDirection (self : access Inst) return access QtAda6.QtCore.Qt.LayoutDirection.Inst'Class;
   function timeFormat (self : access Inst; format_P : access QtAda6.QtCore.QLocale.FormatType.Inst'Class) return str;
   function toCurrencyString (self : access Inst; arg_1_P : float; symbol_P : str; precision_P : int) return str;
   function toCurrencyString (self : access Inst; arg_1_P : int; symbol_P : str) return str;
-- function toCurrencyString(self : access Inst;i_P : float;symbol_P : str;precision_P : int) return str;
-- function toCurrencyString(self : access Inst;i_P : int;symbol_P : str) return str;
   function toDate
     (self  : access Inst; string_P : str; format_P : access QtAda6.QtCore.QLocale.FormatType.Inst'Class;
      cal_P : access QtAda6.QtCore.QCalendar.Inst'Class) return access QtAda6.QtCore.QDate.Inst'Class;
   function toDate
     (self : access Inst; string_P : str; format_P : access QtAda6.QtCore.QLocale.FormatType.Inst'Class)
      return access QtAda6.QtCore.QDate.Inst'Class;
   function toDate (self : access Inst; string_P : str; format_P : str) return access QtAda6.QtCore.QDate.Inst'Class;
   function toDate
     (self : access Inst; string_P : str; format_P : str; cal_P : access QtAda6.QtCore.QCalendar.Inst'Class)
      return access QtAda6.QtCore.QDate.Inst'Class;
   function toDateTime
     (self  : access Inst; string_P : str; format_P : access QtAda6.QtCore.QLocale.FormatType.Inst'Class;
      cal_P : access QtAda6.QtCore.QCalendar.Inst'Class) return access QtAda6.QtCore.QDateTime.Inst'Class;
   function toDateTime
     (self : access Inst; string_P : str; format_P : access QtAda6.QtCore.QLocale.FormatType.Inst'Class)
      return access QtAda6.QtCore.QDateTime.Inst'Class;
   function toDateTime
     (self : access Inst; string_P : str; format_P : str) return access QtAda6.QtCore.QDateTime.Inst'Class;
   function toDateTime
     (self : access Inst; string_P : str; format_P : str; cal_P : access QtAda6.QtCore.QCalendar.Inst'Class)
      return access QtAda6.QtCore.QDateTime.Inst'Class;
   function toDouble (self : access Inst; s_P : str) return Tuple;
-- function toDouble(self : access Inst;s_P : str) return Tuple_float_bool;
   function toFloat (self : access Inst; s_P : str) return Tuple;
-- function toFloat(self : access Inst;s_P : str) return Tuple_float_bool;
   function toInt (self : access Inst; s_P : str) return Tuple;
-- function toInt(self : access Inst;s_P : str) return Tuple_int_bool;
   function toLong (self : access Inst; s_P : str) return Tuple_int_bool;
   function toLongLong (self : access Inst; s_P : str) return Tuple;
-- function toLongLong(self : access Inst;s_P : str) return Tuple_int_bool;
   function toLower (self : access Inst; str_P : str) return str;
   function toShort (self : access Inst; s_P : str) return Tuple;
-- function toShort(self : access Inst;s_P : str) return Tuple_int_bool;
   function toString
     (self     : access Inst; date_P : access QtAda6.QtCore.QDate.Inst'Class;
      format_P : access QtAda6.QtCore.QLocale.FormatType.Inst'Class; cal_P : access QtAda6.QtCore.QCalendar.Inst'Class)
      return str;
   function toString
     (self     : access Inst; date_P : access QtAda6.QtCore.QDate.Inst'Class;
      format_P : access QtAda6.QtCore.QLocale.FormatType.Inst'Class) return str;
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
      format_P : access QtAda6.QtCore.QLocale.FormatType.Inst'Class) return str;
   function toString
     (self : access Inst; dateTime_P : access QtAda6.QtCore.QDateTime.Inst'Class; format_P : str) return str;
   function toString
     (self  : access Inst; dateTime_P : access QtAda6.QtCore.QDateTime.Inst'Class; format_P : str;
      cal_P : access QtAda6.QtCore.QCalendar.Inst'Class) return str;
   function toString (self : access Inst; f_P : float; format_P : int; precision_P : int) return str;
-- function toString(self : access Inst;f_P : float;format_P : int;precision_P : int) return str;
   function toString (self : access Inst; i_P : int) return str;
-- function toString(self : access Inst;i_P : int) return str;
-- function toString(self : access Inst;i_P : int) return str;
   function toString
     (self     : access Inst; time_P : access QtAda6.QtCore.QTime.Inst'Class;
      format_P : access QtAda6.QtCore.QLocale.FormatType.Inst'Class) return str;
   function toString (self : access Inst; time_P : access QtAda6.QtCore.QTime.Inst'Class; format_P : str) return str;
   function toTime
     (self : access Inst; string_P : str; format_P : access QtAda6.QtCore.QLocale.FormatType.Inst'Class)
      return access QtAda6.QtCore.QTime.Inst'Class;
   function toTime (self : access Inst; string_P : str; format_P : str) return access QtAda6.QtCore.QTime.Inst'Class;
   function toUInt (self : access Inst; s_P : str) return Tuple;
-- function toUInt(self : access Inst;s_P : str) return Tuple_int_bool;
   function toULong (self : access Inst; s_P : str) return Tuple_int_bool;
   function toULongLong (self : access Inst; s_P : str) return Tuple;
-- function toULongLong(self : access Inst;s_P : str) return Tuple_int_bool;
   function toUShort (self : access Inst; s_P : str) return Tuple;
-- function toUShort(self : access Inst;s_P : str) return Tuple_int_bool;
   function toUpper (self : access Inst; str_P : str) return str;
   function uiLanguages (self : access Inst) return List_str;
   function weekdays (self : access Inst) return List_QtAda6_QtCore_Qt_DayOfWeek;
   function zeroDigit (self : access Inst) return str;
end QtAda6.QtCore.QLocale;
