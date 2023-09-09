-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qurlquery.adb
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
with QtAda6.QtCore.QUrl;
with QtAda6.QtCore.QUrl.ComponentFormattingOption;
package body QtAda6.QtCore.QUrlQuery is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QUrlQuery");
      Args  := Tuple_New (0);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (other_P : access QtAda6.QtCore.QUrlQuery.Inst'Class) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QUrlQuery");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, other_P.Python_Proxy);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (queryString_P : str) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QUrlQuery");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (queryString_P));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (url_P : Union_QtAda6_QtCore_QUrl_str) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QUrlQuery");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   procedure U_copy_U is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QUrlQuery");
      Method := Object_GetAttrString (Class, "__copy__");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end U_copy_U;
   procedure addQueryItem (self : access Inst; key_P : str; value_P : str) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addQueryItem");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (key_P));
      Tuple_SetItem (Args, 1, Unicode_FromString (value_P));
      Result := Object_CallObject (Method, Args, True);
   end addQueryItem;
   function allQueryItemValues
     (self : access Inst; key_P : str; encoding_P : access QtAda6.QtCore.QUrl.ComponentFormattingOption.Inst'Class)
      return List_str
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "allQueryItemValues");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (key_P));
      Tuple_SetItem (Args, 1, encoding_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end allQueryItemValues;
   procedure clear (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "clear");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end clear;
   function hasQueryItem (self : access Inst; key_P : str) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hasQueryItem");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (key_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end hasQueryItem;
   function isEmpty (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isEmpty");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isEmpty;
   function query
     (self : access Inst; encoding_P : access QtAda6.QtCore.QUrl.ComponentFormattingOption.Inst'Class) return str
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "query");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, encoding_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end query;
   function queryItemValue
     (self : access Inst; key_P : str; encoding_P : access QtAda6.QtCore.QUrl.ComponentFormattingOption.Inst'Class)
      return str
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "queryItemValue");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (key_P));
      Tuple_SetItem (Args, 1, encoding_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end queryItemValue;
   function queryItems
     (self : access Inst; encoding_P : access QtAda6.QtCore.QUrl.ComponentFormattingOption.Inst'Class)
      return List_Tuple_str_str
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "queryItems");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, encoding_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end queryItems;
   function queryPairDelimiter (self : access Inst) return str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "queryPairDelimiter");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end queryPairDelimiter;
   function queryValueDelimiter (self : access Inst) return str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "queryValueDelimiter");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end queryValueDelimiter;
   procedure removeAllQueryItems (self : access Inst; key_P : str) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "removeAllQueryItems");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (key_P));
      Result := Object_CallObject (Method, Args, True);
   end removeAllQueryItems;
   procedure removeQueryItem (self : access Inst; key_P : str) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "removeQueryItem");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (key_P));
      Result := Object_CallObject (Method, Args, True);
   end removeQueryItem;
   procedure setQuery (self : access Inst; queryString_P : str) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setQuery");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (queryString_P));
      Result := Object_CallObject (Method, Args, True);
   end setQuery;
   procedure setQueryDelimiters (self : access Inst; valueDelimiter_P : str; pairDelimiter_P : str) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setQueryDelimiters");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (valueDelimiter_P));
      Tuple_SetItem (Args, 1, Unicode_FromString (pairDelimiter_P));
      Result := Object_CallObject (Method, Args, True);
   end setQueryDelimiters;
   procedure setQueryItems (self : access Inst; query_P : Sequence_Tuple_str_str) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setQueryItems");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end setQueryItems;
   procedure swap (self : access Inst; other_P : access QtAda6.QtCore.QUrlQuery.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "swap");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, other_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end swap;
   function toString
     (self : access Inst; encoding_P : access QtAda6.QtCore.QUrl.ComponentFormattingOption.Inst'Class) return str
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toString");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, encoding_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end toString;
end QtAda6.QtCore.QUrlQuery;
