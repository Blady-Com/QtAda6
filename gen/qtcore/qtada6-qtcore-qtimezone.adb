-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qtimezone.adb
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
with QtAda6.QtCore.QTimeZone;
with QtAda6.QtCore.QLocale.Country;
with QtAda6.QtCore.QDateTime;
with QtAda6.QtCore.QByteArray;
with QtAda6.QtCore.QTimeZone.NameType;
with QtAda6.QtCore.QTimeZone.TimeType;
with QtAda6.QtCore.Qt.TimeSpec;
with QtAda6.QtCore.QTimeZone.OffsetData;
package body QtAda6.QtCore.QTimeZone is
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
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QTimeZone");
      Args  := Tuple_New (0);
      Dict  := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (ianaId_P : UNION_QtAda6_QtCore_QByteArray_bytes) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QTimeZone");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if ianaId_P /= null then ianaId_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (offsetSeconds_P : int) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QTimeZone");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (offsetSeconds_P));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (other_P : access QtAda6.QtCore.QTimeZone.Inst'Class) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QTimeZone");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if other_P /= null then other_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (zoneId_P    : UNION_QtAda6_QtCore_QByteArray_bytes; offsetSeconds_P : int; name_P : str; abbreviation_P : str;
      territory_P : access QtAda6.QtCore.QLocale.Country.Inst'Class := null; comment_P : str := "") return Class
   is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QTimeZone");
      Args  := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if zoneId_P /= null then zoneId_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (offsetSeconds_P));
      Tuple_SetItem (Args, 2, Unicode_FromString (name_P));
      Tuple_SetItem (Args, 3, Unicode_FromString (abbreviation_P));
      Dict := Dict_New;
      if territory_P /= null then
         Dict_SetItemString (Dict, "territory", territory_P.Python_Proxy);
      end if;
      if comment_P /= "" then
         Dict_SetItemString (Dict, "comment", Unicode_FromString (comment_P));
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   procedure U_copy_U is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QTimeZone");
      Method := Object_GetAttrString (Class, "__copy__");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end U_copy_U;
   function abbreviation (self : access Inst; atDateTime_P : access QtAda6.QtCore.QDateTime.Inst'Class) return str is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "abbreviation");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if atDateTime_P /= null then atDateTime_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end abbreviation;
   function asBackendZone (self : access Inst) return access QtAda6.QtCore.QTimeZone.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QTimeZone.Class := new QtAda6.QtCore.QTimeZone.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "asBackendZone");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end asBackendZone;
   function availableTimeZoneIds return LIST_QtAda6_QtCore_QByteArray is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QTimeZone");
      Method := Object_GetAttrString (Class, "availableTimeZoneIds");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return (2 .. 1 => <>);
   end availableTimeZoneIds;
   function availableTimeZoneIds (offsetSeconds_P : int) return LIST_QtAda6_QtCore_QByteArray is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QTimeZone");
      Method := Object_GetAttrString (Class, "availableTimeZoneIds");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (offsetSeconds_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return (2 .. 1 => <>);
   end availableTimeZoneIds;
   function availableTimeZoneIds
     (territory_P : access QtAda6.QtCore.QLocale.Country.Inst'Class) return LIST_QtAda6_QtCore_QByteArray
   is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QTimeZone");
      Method := Object_GetAttrString (Class, "availableTimeZoneIds");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if territory_P /= null then territory_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return (2 .. 1 => <>);
   end availableTimeZoneIds;
   function comment (self : access Inst) return str is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "comment");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end comment;
   function country (self : access Inst) return access QtAda6.QtCore.QLocale.Country.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QLocale.Country.Class := new QtAda6.QtCore.QLocale.Country.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "country");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end country;
   function daylightTimeOffset (self : access Inst; atDateTime_P : access QtAda6.QtCore.QDateTime.Inst'Class) return int
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "daylightTimeOffset");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if atDateTime_P /= null then atDateTime_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end daylightTimeOffset;
   function displayName
     (self       : access Inst; atDateTime_P : access QtAda6.QtCore.QDateTime.Inst'Class;
      nameType_P : access QtAda6.QtCore.QTimeZone.NameType.Inst'Class         := null;
      locale_P   : UNION_QtAda6_QtCore_QLocale_QtAda6_QtCore_QLocale_Language := null) return str
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "displayName");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if atDateTime_P /= null then atDateTime_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if nameType_P /= null then
         Dict_SetItemString (Dict, "nameType", nameType_P.Python_Proxy);
      end if;
      if locale_P /= null then
         Dict_SetItemString (Dict, "locale", locale_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end displayName;
   function displayName
     (self       : access Inst; timeType_P : access QtAda6.QtCore.QTimeZone.TimeType.Inst'Class;
      nameType_P : access QtAda6.QtCore.QTimeZone.NameType.Inst'Class         := null;
      locale_P   : UNION_QtAda6_QtCore_QLocale_QtAda6_QtCore_QLocale_Language := null) return str
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "displayName");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if timeType_P /= null then timeType_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if nameType_P /= null then
         Dict_SetItemString (Dict, "nameType", nameType_P.Python_Proxy);
      end if;
      if locale_P /= null then
         Dict_SetItemString (Dict, "locale", locale_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end displayName;
   function fixedSecondsAheadOfUtc (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "fixedSecondsAheadOfUtc");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end fixedSecondsAheadOfUtc;
   function fromSecondsAheadOfUtc (offset_P : int) return access QtAda6.QtCore.QTimeZone.Inst'Class is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QTimeZone.Class := new QtAda6.QtCore.QTimeZone.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QTimeZone");
      Method := Object_GetAttrString (Class, "fromSecondsAheadOfUtc");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (offset_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fromSecondsAheadOfUtc;
   function hasDaylightTime (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hasDaylightTime");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end hasDaylightTime;
   function hasTransitions (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hasTransitions");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end hasTransitions;
   function ianaIdToWindowsId
     (ianaId_P : UNION_QtAda6_QtCore_QByteArray_bytes) return access QtAda6.QtCore.QByteArray.Inst'Class
   is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QTimeZone");
      Method := Object_GetAttrString (Class, "ianaIdToWindowsId");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if ianaId_P /= null then ianaId_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end ianaIdToWindowsId;
   function id (self : access Inst) return access QtAda6.QtCore.QByteArray.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "id");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end id;
   function isDaylightTime (self : access Inst; atDateTime_P : access QtAda6.QtCore.QDateTime.Inst'Class) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isDaylightTime");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if atDateTime_P /= null then atDateTime_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isDaylightTime;
   function isTimeZoneIdAvailable (ianaId_P : UNION_QtAda6_QtCore_QByteArray_bytes) return bool is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QTimeZone");
      Method := Object_GetAttrString (Class, "isTimeZoneIdAvailable");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if ianaId_P /= null then ianaId_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isTimeZoneIdAvailable;
   function isUtcOrFixedOffset (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isUtcOrFixedOffset");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isUtcOrFixedOffset;
   function isUtcOrFixedOffset (spec_P : access QtAda6.QtCore.Qt.TimeSpec.Inst'Class) return bool is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QTimeZone");
      Method := Object_GetAttrString (Class, "isUtcOrFixedOffset");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if spec_P /= null then spec_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isUtcOrFixedOffset;
   function isValid (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isValid");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isValid;
   function nextTransition
     (self : access Inst; afterDateTime_P : access QtAda6.QtCore.QDateTime.Inst'Class)
      return access QtAda6.QtCore.QTimeZone.OffsetData.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QTimeZone.OffsetData.Class := new QtAda6.QtCore.QTimeZone.OffsetData.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "nextTransition");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if afterDateTime_P /= null then afterDateTime_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end nextTransition;
   function offsetData_F
     (self : access Inst; forDateTime_P : access QtAda6.QtCore.QDateTime.Inst'Class)
      return access QtAda6.QtCore.QTimeZone.OffsetData.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QTimeZone.OffsetData.Class := new QtAda6.QtCore.QTimeZone.OffsetData.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "offsetData");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if forDateTime_P /= null then forDateTime_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end offsetData_F;
   function offsetFromUtc (self : access Inst; atDateTime_P : access QtAda6.QtCore.QDateTime.Inst'Class) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "offsetFromUtc");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if atDateTime_P /= null then atDateTime_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end offsetFromUtc;
   function previousTransition
     (self : access Inst; beforeDateTime_P : access QtAda6.QtCore.QDateTime.Inst'Class)
      return access QtAda6.QtCore.QTimeZone.OffsetData.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QTimeZone.OffsetData.Class := new QtAda6.QtCore.QTimeZone.OffsetData.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "previousTransition");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if beforeDateTime_P /= null then beforeDateTime_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end previousTransition;
   function standardTimeOffset (self : access Inst; atDateTime_P : access QtAda6.QtCore.QDateTime.Inst'Class) return int
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "standardTimeOffset");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if atDateTime_P /= null then atDateTime_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end standardTimeOffset;
   procedure swap (self : access Inst; other_P : access QtAda6.QtCore.QTimeZone.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "swap");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if other_P /= null then other_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end swap;
   function systemTimeZone return access QtAda6.QtCore.QTimeZone.Inst'Class is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QTimeZone.Class := new QtAda6.QtCore.QTimeZone.Inst;
   begin
      Class            := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QTimeZone");
      Method           := Object_GetAttrString (Class, "systemTimeZone");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end systemTimeZone;
   function systemTimeZoneId return access QtAda6.QtCore.QByteArray.Inst'Class is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Class            := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QTimeZone");
      Method           := Object_GetAttrString (Class, "systemTimeZoneId");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end systemTimeZoneId;
   function territory (self : access Inst) return access QtAda6.QtCore.QLocale.Country.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QLocale.Country.Class := new QtAda6.QtCore.QLocale.Country.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "territory");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end territory;
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
   function transitions
     (self         : access Inst; fromDateTime_P : access QtAda6.QtCore.QDateTime.Inst'Class;
      toDateTime_P : access QtAda6.QtCore.QDateTime.Inst'Class) return LIST_QtAda6_QtCore_QTimeZone_OffsetData
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "transitions");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if fromDateTime_P /= null then fromDateTime_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if toDateTime_P /= null then toDateTime_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return (2 .. 1 => <>);
   end transitions;
   function utc return access QtAda6.QtCore.QTimeZone.Inst'Class is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QTimeZone.Class := new QtAda6.QtCore.QTimeZone.Inst;
   begin
      Class            := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QTimeZone");
      Method           := Object_GetAttrString (Class, "utc");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end utc;
   function windowsIdToDefaultIanaId
     (windowsId_P : UNION_QtAda6_QtCore_QByteArray_bytes) return access QtAda6.QtCore.QByteArray.Inst'Class
   is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QTimeZone");
      Method := Object_GetAttrString (Class, "windowsIdToDefaultIanaId");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if windowsId_P /= null then windowsId_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end windowsIdToDefaultIanaId;
   function windowsIdToDefaultIanaId
     (windowsId_P : UNION_QtAda6_QtCore_QByteArray_bytes; territory_P : access QtAda6.QtCore.QLocale.Country.Inst'Class)
      return access QtAda6.QtCore.QByteArray.Inst'Class
   is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QTimeZone");
      Method := Object_GetAttrString (Class, "windowsIdToDefaultIanaId");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if windowsId_P /= null then windowsId_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if territory_P /= null then territory_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end windowsIdToDefaultIanaId;
   function windowsIdToIanaIds (windowsId_P : UNION_QtAda6_QtCore_QByteArray_bytes) return LIST_QtAda6_QtCore_QByteArray
   is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QTimeZone");
      Method := Object_GetAttrString (Class, "windowsIdToIanaIds");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if windowsId_P /= null then windowsId_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return (2 .. 1 => <>);
   end windowsIdToIanaIds;
   function windowsIdToIanaIds
     (windowsId_P : UNION_QtAda6_QtCore_QByteArray_bytes; territory_P : access QtAda6.QtCore.QLocale.Country.Inst'Class)
      return LIST_QtAda6_QtCore_QByteArray
   is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QTimeZone");
      Method := Object_GetAttrString (Class, "windowsIdToIanaIds");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if windowsId_P /= null then windowsId_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if territory_P /= null then territory_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return (2 .. 1 => <>);
   end windowsIdToIanaIds;
end QtAda6.QtCore.QTimeZone;
