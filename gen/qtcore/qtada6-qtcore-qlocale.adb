-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qlocale.adb
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
with QtAda6.QtCore.QLocale.Language;
with QtAda6.QtCore.QLocale.Script;
with QtAda6.QtCore.QLocale.Country;
with QtAda6.QtCore.QLocale.LanguageCodeType;
with QtAda6.QtCore.QLocale.CurrencySymbolFormat;
with QtAda6.QtCore.QLocale.FormatType;
with QtAda6.QtCore.Qt.DayOfWeek;
with QtAda6.QtCore.QLocale.DataSizeFormat;
with QtAda6.QtCore.QLocale.MeasurementSystem;
with QtAda6.QtCore.QLocale.NumberOption;
with QtAda6.QtCore.QLocale.QuotationStyle;
with QtAda6.QtCore.Qt.LayoutDirection;
with QtAda6.QtCore.QCalendar;
with QtAda6.QtCore.QDate;
with QtAda6.QtCore.QDateTime;
with QtAda6.QtCore.QTime;
package body QtAda6.QtCore.QLocale is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Args  := Tuple_New (0);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create
     (language_P  : access QtAda6.QtCore.QLocale.Language.Inst'Class;
      script_P    : access QtAda6.QtCore.QLocale.Script.Inst'Class  := null;
      territory_P : access QtAda6.QtCore.QLocale.Country.Inst'Class := null) return Class
   is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Args  := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if language_P /= null then language_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if script_P /= null then script_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if territory_P /= null then territory_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create
     (language_P  : access QtAda6.QtCore.QLocale.Language.Inst'Class;
      territory_P : access QtAda6.QtCore.QLocale.Country.Inst'Class) return Class
   is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if language_P /= null then language_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if territory_P /= null then territory_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (name_P : str) return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (name_P));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (other_P : UNION_QtAda6_QtCore_QLocaleQtAda6_QtCore_QLocale_Language) return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if other_P /= null then other_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   procedure U_copy_U is
      Class, Method, Args, List, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Method := Object_GetAttrString (Class, "__copy__");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end U_copy_U;
   function amText (self : access Inst) return str is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "amText");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end amText;
   function bcp47Name (self : access Inst) return str is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "bcp47Name");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end bcp47Name;
   function c_F return access QtAda6.QtCore.QLocale.Inst'Class is
      Class, Method, Args, List, Result : Handle;
      Ret                               : constant QtAda6.QtCore.QLocale.Class := new QtAda6.QtCore.QLocale.Inst;
   begin
      Class            := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Method           := Object_GetAttrString (Class, "c");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end c_F;
   function codeToCountry (countryCode_P : str) return access QtAda6.QtCore.QLocale.Country.Inst'Class is
      Class, Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtCore.QLocale.Country.Class := new QtAda6.QtCore.QLocale.Country.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Method := Object_GetAttrString (Class, "codeToCountry");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (countryCode_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end codeToCountry;
   function codeToLanguage
     (languageCode_P : str; codeTypes_P : access QtAda6.QtCore.QLocale.LanguageCodeType.Inst'Class := null)
      return access QtAda6.QtCore.QLocale.Language.Inst'Class
   is
      Class, Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtCore.QLocale.Language.Class := new QtAda6.QtCore.QLocale.Language.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Method := Object_GetAttrString (Class, "codeToLanguage");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (languageCode_P));
      Tuple_SetItem (Args, 1, (if codeTypes_P /= null then codeTypes_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end codeToLanguage;
   function codeToScript (scriptCode_P : str) return access QtAda6.QtCore.QLocale.Script.Inst'Class is
      Class, Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtCore.QLocale.Script.Class := new QtAda6.QtCore.QLocale.Script.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Method := Object_GetAttrString (Class, "codeToScript");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (scriptCode_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end codeToScript;
   function codeToTerritory (territoryCode_P : str) return access QtAda6.QtCore.QLocale.Country.Inst'Class is
      Class, Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtCore.QLocale.Country.Class := new QtAda6.QtCore.QLocale.Country.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Method := Object_GetAttrString (Class, "codeToTerritory");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (territoryCode_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end codeToTerritory;
   function collation (self : access Inst) return access QtAda6.QtCore.QLocale.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QLocale.Class := new QtAda6.QtCore.QLocale.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "collation");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end collation;
   function countriesForLanguage
     (lang_P : access QtAda6.QtCore.QLocale.Language.Inst'Class) return LIST_QtAda6_QtCore_QLocale_Country
   is
      Class, Method, Args, List, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Method := Object_GetAttrString (Class, "countriesForLanguage");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if lang_P /= null then lang_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return (2 .. 1 => <>);
   end countriesForLanguage;
   function country_F (self : access Inst) return access QtAda6.QtCore.QLocale.Country.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtCore.QLocale.Country.Class := new QtAda6.QtCore.QLocale.Country.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "country");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end country_F;
   function countryToCode (country_P : access QtAda6.QtCore.QLocale.Country.Inst'Class) return str is
      Class, Method, Args, List, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Method := Object_GetAttrString (Class, "countryToCode");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if country_P /= null then country_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end countryToCode;
   function countryToString (country_P : access QtAda6.QtCore.QLocale.Country.Inst'Class) return str is
      Class, Method, Args, List, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Method := Object_GetAttrString (Class, "countryToString");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if country_P /= null then country_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end countryToString;
   function createSeparatedList (self : access Inst; strl_P : SEQUENCE_str) return str is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "createSeparatedList");
      List   := List_New (strl_P'Length);
      for ind in strl_P'Range loop
         List_SetItem (List, ssize_t (ind - strl_P'First), Unicode_FromString (strl_P (ind)));
      end loop;
      Args := Tuple_New (1);
      Tuple_SetItem (Args, 0, List);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end createSeparatedList;
   function currencySymbol_F
     (self : access Inst; arg_1_P : access QtAda6.QtCore.QLocale.CurrencySymbolFormat.Inst'Class := null) return str
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "currencySymbol");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end currencySymbol_F;
   function dateFormat
     (self : access Inst; format_P : access QtAda6.QtCore.QLocale.FormatType.Inst'Class := null) return str
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "dateFormat");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if format_P /= null then format_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end dateFormat;
   function dateTimeFormat
     (self : access Inst; format_P : access QtAda6.QtCore.QLocale.FormatType.Inst'Class := null) return str
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "dateTimeFormat");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if format_P /= null then format_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end dateTimeFormat;
   function dayName
     (self : access Inst; arg_1_P : int; format_P : access QtAda6.QtCore.QLocale.FormatType.Inst'Class := null)
      return str
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "dayName");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (arg_1_P));
      Tuple_SetItem (Args, 1, (if format_P /= null then format_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end dayName;
   function decimalPoint (self : access Inst) return str is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "decimalPoint");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end decimalPoint;
   function exponential (self : access Inst) return str is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "exponential");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end exponential;
   function firstDayOfWeek (self : access Inst) return access QtAda6.QtCore.Qt.DayOfWeek.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.Qt.DayOfWeek.Class := new QtAda6.QtCore.Qt.DayOfWeek.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "firstDayOfWeek");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end firstDayOfWeek;
   function formattedDataSize
     (self     : access Inst; bytes_P : int; precision_P : int := 0;
      format_P : access QtAda6.QtCore.QLocale.DataSizeFormat.Inst'Class := null) return str
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "formattedDataSize");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (bytes_P));
      Tuple_SetItem (Args, 1, Long_FromLong (precision_P));
      Tuple_SetItem (Args, 2, (if format_P /= null then format_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end formattedDataSize;
   function groupSeparator (self : access Inst) return str is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "groupSeparator");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end groupSeparator;
   function language_F (self : access Inst) return access QtAda6.QtCore.QLocale.Language.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtCore.QLocale.Language.Class := new QtAda6.QtCore.QLocale.Language.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "language");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end language_F;
   function languageToCode
     (language_P  : access QtAda6.QtCore.QLocale.Language.Inst'Class;
      codeTypes_P : access QtAda6.QtCore.QLocale.LanguageCodeType.Inst'Class := null) return str
   is
      Class, Method, Args, List, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Method := Object_GetAttrString (Class, "languageToCode");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if language_P /= null then language_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if codeTypes_P /= null then codeTypes_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end languageToCode;
   function languageToString (language_P : access QtAda6.QtCore.QLocale.Language.Inst'Class) return str is
      Class, Method, Args, List, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Method := Object_GetAttrString (Class, "languageToString");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if language_P /= null then language_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end languageToString;
   function matchingLocales
     (language_P  : access QtAda6.QtCore.QLocale.Language.Inst'Class;
      script_P    : access QtAda6.QtCore.QLocale.Script.Inst'Class;
      territory_P : access QtAda6.QtCore.QLocale.Country.Inst'Class) return LIST_QtAda6_QtCore_QLocale
   is
      Class, Method, Args, List, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Method := Object_GetAttrString (Class, "matchingLocales");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if language_P /= null then language_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if script_P /= null then script_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if territory_P /= null then territory_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return (2 .. 1 => <>);
   end matchingLocales;
   function measurementSystem_F (self : access Inst) return access QtAda6.QtCore.QLocale.MeasurementSystem.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtCore.QLocale.MeasurementSystem.Class := new QtAda6.QtCore.QLocale.MeasurementSystem.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "measurementSystem");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end measurementSystem_F;
   function monthName
     (self : access Inst; arg_1_P : int; format_P : access QtAda6.QtCore.QLocale.FormatType.Inst'Class := null)
      return str
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "monthName");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (arg_1_P));
      Tuple_SetItem (Args, 1, (if format_P /= null then format_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end monthName;
   function name (self : access Inst) return str is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "name");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end name;
   function nativeCountryName (self : access Inst) return str is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "nativeCountryName");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end nativeCountryName;
   function nativeLanguageName (self : access Inst) return str is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "nativeLanguageName");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end nativeLanguageName;
   function nativeTerritoryName (self : access Inst) return str is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "nativeTerritoryName");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end nativeTerritoryName;
   function negativeSign (self : access Inst) return str is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "negativeSign");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end negativeSign;
   function numberOptions (self : access Inst) return access QtAda6.QtCore.QLocale.NumberOption.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtCore.QLocale.NumberOption.Class := new QtAda6.QtCore.QLocale.NumberOption.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "numberOptions");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end numberOptions;
   function percent (self : access Inst) return str is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "percent");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end percent;
   function pmText (self : access Inst) return str is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "pmText");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end pmText;
   function positiveSign (self : access Inst) return str is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "positiveSign");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end positiveSign;
   function quoteString
     (self : access Inst; str_P : str; style_P : access QtAda6.QtCore.QLocale.QuotationStyle.Inst'Class := null)
      return str
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "quoteString");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (str_P));
      Tuple_SetItem (Args, 1, (if style_P /= null then style_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end quoteString;
   function script_F (self : access Inst) return access QtAda6.QtCore.QLocale.Script.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QLocale.Script.Class := new QtAda6.QtCore.QLocale.Script.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "script");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end script_F;
   function scriptToCode (script_P : access QtAda6.QtCore.QLocale.Script.Inst'Class) return str is
      Class, Method, Args, List, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Method := Object_GetAttrString (Class, "scriptToCode");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if script_P /= null then script_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end scriptToCode;
   function scriptToString (script_P : access QtAda6.QtCore.QLocale.Script.Inst'Class) return str is
      Class, Method, Args, List, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Method := Object_GetAttrString (Class, "scriptToString");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if script_P /= null then script_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end scriptToString;
   procedure setDefault (locale_P : UNION_QtAda6_QtCore_QLocaleQtAda6_QtCore_QLocale_Language) is
      Class, Method, Args, List, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Method := Object_GetAttrString (Class, "setDefault");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if locale_P /= null then locale_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setDefault;
   procedure setNumberOptions (self : access Inst; options_P : access QtAda6.QtCore.QLocale.NumberOption.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setNumberOptions");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if options_P /= null then options_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setNumberOptions;
   function standaloneDayName
     (self : access Inst; arg_1_P : int; format_P : access QtAda6.QtCore.QLocale.FormatType.Inst'Class := null)
      return str
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "standaloneDayName");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (arg_1_P));
      Tuple_SetItem (Args, 1, (if format_P /= null then format_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end standaloneDayName;
   function standaloneMonthName
     (self : access Inst; arg_1_P : int; format_P : access QtAda6.QtCore.QLocale.FormatType.Inst'Class := null)
      return str
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "standaloneMonthName");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (arg_1_P));
      Tuple_SetItem (Args, 1, (if format_P /= null then format_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end standaloneMonthName;
   procedure swap (self : access Inst; other_P : UNION_QtAda6_QtCore_QLocaleQtAda6_QtCore_QLocale_Language) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "swap");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if other_P /= null then other_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end swap;
   function system_F return access QtAda6.QtCore.QLocale.Inst'Class is
      Class, Method, Args, List, Result : Handle;
      Ret                               : constant QtAda6.QtCore.QLocale.Class := new QtAda6.QtCore.QLocale.Inst;
   begin
      Class            := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Method           := Object_GetAttrString (Class, "system");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end system_F;
   function territory (self : access Inst) return access QtAda6.QtCore.QLocale.Country.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtCore.QLocale.Country.Class := new QtAda6.QtCore.QLocale.Country.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "territory");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end territory;
   function territoryToCode (territory_P : access QtAda6.QtCore.QLocale.Country.Inst'Class) return str is
      Class, Method, Args, List, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Method := Object_GetAttrString (Class, "territoryToCode");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if territory_P /= null then territory_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end territoryToCode;
   function territoryToString (territory_P : access QtAda6.QtCore.QLocale.Country.Inst'Class) return str is
      Class, Method, Args, List, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Method := Object_GetAttrString (Class, "territoryToString");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if territory_P /= null then territory_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end territoryToString;
   function textDirection (self : access Inst) return access QtAda6.QtCore.Qt.LayoutDirection.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.LayoutDirection.Class := new QtAda6.QtCore.Qt.LayoutDirection.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "textDirection");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end textDirection;
   function timeFormat
     (self : access Inst; format_P : access QtAda6.QtCore.QLocale.FormatType.Inst'Class := null) return str
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "timeFormat");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if format_P /= null then format_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end timeFormat;
   function toCurrencyString
     (self : access Inst; arg_1_P : float; symbol_P : str := ""; precision_P : int := 0) return str
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toCurrencyString");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Float_FromDouble (arg_1_P));
      Tuple_SetItem (Args, 1, Unicode_FromString (symbol_P));
      Tuple_SetItem (Args, 2, Long_FromLong (precision_P));
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end toCurrencyString;
   function toCurrencyString (self : access Inst; arg_1_P : int; symbol_P : str := "") return str is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toCurrencyString");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (arg_1_P));
      Tuple_SetItem (Args, 1, Unicode_FromString (symbol_P));
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end toCurrencyString;
   function toDate
     (self  : access Inst; string_P : str; format_P : access QtAda6.QtCore.QLocale.FormatType.Inst'Class;
      cal_P : access QtAda6.QtCore.QCalendar.Inst'Class) return access QtAda6.QtCore.QDate.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QDate.Class := new QtAda6.QtCore.QDate.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toDate");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Unicode_FromString (string_P));
      Tuple_SetItem (Args, 1, (if format_P /= null then format_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if cal_P /= null then cal_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end toDate;
   function toDate
     (self : access Inst; string_P : str; format_P : access QtAda6.QtCore.QLocale.FormatType.Inst'Class := null)
      return access QtAda6.QtCore.QDate.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QDate.Class := new QtAda6.QtCore.QDate.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toDate");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (string_P));
      Tuple_SetItem (Args, 1, (if format_P /= null then format_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end toDate;
   function toDate (self : access Inst; string_P : str; format_P : str) return access QtAda6.QtCore.QDate.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QDate.Class := new QtAda6.QtCore.QDate.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toDate");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (string_P));
      Tuple_SetItem (Args, 1, Unicode_FromString (format_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end toDate;
   function toDate
     (self : access Inst; string_P : str; format_P : str; cal_P : access QtAda6.QtCore.QCalendar.Inst'Class)
      return access QtAda6.QtCore.QDate.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QDate.Class := new QtAda6.QtCore.QDate.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toDate");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Unicode_FromString (string_P));
      Tuple_SetItem (Args, 1, Unicode_FromString (format_P));
      Tuple_SetItem (Args, 2, (if cal_P /= null then cal_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end toDate;
   function toDateTime
     (self  : access Inst; string_P : str; format_P : access QtAda6.QtCore.QLocale.FormatType.Inst'Class;
      cal_P : access QtAda6.QtCore.QCalendar.Inst'Class) return access QtAda6.QtCore.QDateTime.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QDateTime.Class := new QtAda6.QtCore.QDateTime.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toDateTime");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Unicode_FromString (string_P));
      Tuple_SetItem (Args, 1, (if format_P /= null then format_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if cal_P /= null then cal_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end toDateTime;
   function toDateTime
     (self : access Inst; string_P : str; format_P : access QtAda6.QtCore.QLocale.FormatType.Inst'Class := null)
      return access QtAda6.QtCore.QDateTime.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QDateTime.Class := new QtAda6.QtCore.QDateTime.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toDateTime");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (string_P));
      Tuple_SetItem (Args, 1, (if format_P /= null then format_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end toDateTime;
   function toDateTime
     (self : access Inst; string_P : str; format_P : str) return access QtAda6.QtCore.QDateTime.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QDateTime.Class := new QtAda6.QtCore.QDateTime.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toDateTime");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (string_P));
      Tuple_SetItem (Args, 1, Unicode_FromString (format_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end toDateTime;
   function toDateTime
     (self : access Inst; string_P : str; format_P : str; cal_P : access QtAda6.QtCore.QCalendar.Inst'Class)
      return access QtAda6.QtCore.QDateTime.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QDateTime.Class := new QtAda6.QtCore.QDateTime.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toDateTime");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Unicode_FromString (string_P));
      Tuple_SetItem (Args, 1, Unicode_FromString (format_P));
      Tuple_SetItem (Args, 2, (if cal_P /= null then cal_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end toDateTime;
   function toDouble (self : access Inst; s_P : str) return TUPLE is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toDouble");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (s_P));
      Result := Object_CallObject (Method, Args, True);
      return null;
   end toDouble;
   function toDouble (self : access Inst; s_P : str) return TUPLE_floatbool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toDouble");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (s_P));
      Result := Object_CallObject (Method, Args, True);
      return null;
   end toDouble;
   function toFloat (self : access Inst; s_P : str) return TUPLE is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toFloat");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (s_P));
      Result := Object_CallObject (Method, Args, True);
      return null;
   end toFloat;
   function toFloat (self : access Inst; s_P : str) return TUPLE_floatbool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toFloat");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (s_P));
      Result := Object_CallObject (Method, Args, True);
      return null;
   end toFloat;
   function toInt (self : access Inst; s_P : str) return TUPLE is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toInt");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (s_P));
      Result := Object_CallObject (Method, Args, True);
      return null;
   end toInt;
   function toInt (self : access Inst; s_P : str) return TUPLE_intbool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toInt");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (s_P));
      Result := Object_CallObject (Method, Args, True);
      return null;
   end toInt;
   function toLong (self : access Inst; s_P : str) return TUPLE_intbool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toLong");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (s_P));
      Result := Object_CallObject (Method, Args, True);
      return null;
   end toLong;
   function toLongLong (self : access Inst; s_P : str) return TUPLE is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toLongLong");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (s_P));
      Result := Object_CallObject (Method, Args, True);
      return null;
   end toLongLong;
   function toLongLong (self : access Inst; s_P : str) return TUPLE_intbool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toLongLong");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (s_P));
      Result := Object_CallObject (Method, Args, True);
      return null;
   end toLongLong;
   function toLower (self : access Inst; str_P : str) return str is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toLower");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (str_P));
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end toLower;
   function toShort (self : access Inst; s_P : str) return TUPLE is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toShort");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (s_P));
      Result := Object_CallObject (Method, Args, True);
      return null;
   end toShort;
   function toShort (self : access Inst; s_P : str) return TUPLE_intbool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toShort");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (s_P));
      Result := Object_CallObject (Method, Args, True);
      return null;
   end toShort;
   function toString
     (self     : access Inst; date_P : access QtAda6.QtCore.QDate.Inst'Class;
      format_P : access QtAda6.QtCore.QLocale.FormatType.Inst'Class; cal_P : access QtAda6.QtCore.QCalendar.Inst'Class)
      return str
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toString");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if date_P /= null then date_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if format_P /= null then format_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if cal_P /= null then cal_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end toString;
   function toString
     (self     : access Inst; date_P : access QtAda6.QtCore.QDate.Inst'Class;
      format_P : access QtAda6.QtCore.QLocale.FormatType.Inst'Class := null) return str
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toString");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if date_P /= null then date_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if format_P /= null then format_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end toString;
   function toString (self : access Inst; date_P : access QtAda6.QtCore.QDate.Inst'Class; format_P : str) return str is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toString");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if date_P /= null then date_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Unicode_FromString (format_P));
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end toString;
   function toString
     (self  : access Inst; date_P : access QtAda6.QtCore.QDate.Inst'Class; format_P : str;
      cal_P : access QtAda6.QtCore.QCalendar.Inst'Class) return str
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toString");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if date_P /= null then date_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Unicode_FromString (format_P));
      Tuple_SetItem (Args, 2, (if cal_P /= null then cal_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end toString;
   function toString
     (self     : access Inst; dateTime_P : access QtAda6.QtCore.QDateTime.Inst'Class;
      format_P : access QtAda6.QtCore.QLocale.FormatType.Inst'Class; cal_P : access QtAda6.QtCore.QCalendar.Inst'Class)
      return str
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toString");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if dateTime_P /= null then dateTime_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if format_P /= null then format_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if cal_P /= null then cal_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end toString;
   function toString
     (self     : access Inst; dateTime_P : access QtAda6.QtCore.QDateTime.Inst'Class;
      format_P : access QtAda6.QtCore.QLocale.FormatType.Inst'Class := null) return str
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toString");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if dateTime_P /= null then dateTime_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if format_P /= null then format_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end toString;
   function toString
     (self : access Inst; dateTime_P : access QtAda6.QtCore.QDateTime.Inst'Class; format_P : str) return str
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toString");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if dateTime_P /= null then dateTime_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Unicode_FromString (format_P));
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end toString;
   function toString
     (self  : access Inst; dateTime_P : access QtAda6.QtCore.QDateTime.Inst'Class; format_P : str;
      cal_P : access QtAda6.QtCore.QCalendar.Inst'Class) return str
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toString");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if dateTime_P /= null then dateTime_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Unicode_FromString (format_P));
      Tuple_SetItem (Args, 2, (if cal_P /= null then cal_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end toString;
   function toString (self : access Inst; f_P : float; format_P : int := 0; precision_P : int := 0) return str is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toString");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Float_FromDouble (f_P));
      Tuple_SetItem (Args, 1, Long_FromLong (format_P));
      Tuple_SetItem (Args, 2, Long_FromLong (precision_P));
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end toString;
   function toString (self : access Inst; i_P : int) return str is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toString");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (i_P));
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end toString;
   function toString
     (self     : access Inst; time_P : access QtAda6.QtCore.QTime.Inst'Class;
      format_P : access QtAda6.QtCore.QLocale.FormatType.Inst'Class := null) return str
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toString");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if time_P /= null then time_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if format_P /= null then format_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end toString;
   function toString (self : access Inst; time_P : access QtAda6.QtCore.QTime.Inst'Class; format_P : str) return str is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toString");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if time_P /= null then time_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Unicode_FromString (format_P));
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end toString;
   function toTime
     (self : access Inst; string_P : str; format_P : access QtAda6.QtCore.QLocale.FormatType.Inst'Class := null)
      return access QtAda6.QtCore.QTime.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QTime.Class := new QtAda6.QtCore.QTime.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toTime");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (string_P));
      Tuple_SetItem (Args, 1, (if format_P /= null then format_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end toTime;
   function toTime (self : access Inst; string_P : str; format_P : str) return access QtAda6.QtCore.QTime.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QTime.Class := new QtAda6.QtCore.QTime.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toTime");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (string_P));
      Tuple_SetItem (Args, 1, Unicode_FromString (format_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end toTime;
   function toUInt (self : access Inst; s_P : str) return TUPLE is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toUInt");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (s_P));
      Result := Object_CallObject (Method, Args, True);
      return null;
   end toUInt;
   function toUInt (self : access Inst; s_P : str) return TUPLE_intbool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toUInt");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (s_P));
      Result := Object_CallObject (Method, Args, True);
      return null;
   end toUInt;
   function toULong (self : access Inst; s_P : str) return TUPLE_intbool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toULong");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (s_P));
      Result := Object_CallObject (Method, Args, True);
      return null;
   end toULong;
   function toULongLong (self : access Inst; s_P : str) return TUPLE is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toULongLong");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (s_P));
      Result := Object_CallObject (Method, Args, True);
      return null;
   end toULongLong;
   function toULongLong (self : access Inst; s_P : str) return TUPLE_intbool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toULongLong");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (s_P));
      Result := Object_CallObject (Method, Args, True);
      return null;
   end toULongLong;
   function toUShort (self : access Inst; s_P : str) return TUPLE is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toUShort");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (s_P));
      Result := Object_CallObject (Method, Args, True);
      return null;
   end toUShort;
   function toUShort (self : access Inst; s_P : str) return TUPLE_intbool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toUShort");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (s_P));
      Result := Object_CallObject (Method, Args, True);
      return null;
   end toUShort;
   function toUpper (self : access Inst; str_P : str) return str is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toUpper");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (str_P));
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end toUpper;
   function uiLanguages (self : access Inst) return LIST_str is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "uiLanguages");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return (2 .. 1 => <>);
   end uiLanguages;
   function weekdays (self : access Inst) return LIST_QtAda6_QtCore_Qt_DayOfWeek is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "weekdays");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return (2 .. 1 => <>);
   end weekdays;
   function zeroDigit (self : access Inst) return str is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "zeroDigit");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end zeroDigit;
end QtAda6.QtCore.QLocale;
