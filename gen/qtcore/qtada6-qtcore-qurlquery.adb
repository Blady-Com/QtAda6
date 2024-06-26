-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qurlquery.adb
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
with QtAda6.QtCore.QUrl;
with QtAda6.QtCore.QUrl.ComponentFormattingOption;
package body QtAda6.QtCore.QUrlQuery is
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
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QUrlQuery");
      Args  := Tuple_New (0);
      Dict  := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (other_P : access QtAda6.QtCore.QUrlQuery.Inst'Class) return Class is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QUrlQuery");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if other_P /= null then other_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (queryString_P : str) return Class is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QUrlQuery");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (queryString_P));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (url_P : access QtAda6.QtCore.QUrl.Inst'Class) return Class is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QUrlQuery");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if url_P /= null then url_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   procedure U_copy_U is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QUrlQuery");
      Method := Object_GetAttrString (Class, "__copy__");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end U_copy_U;
   procedure addQueryItem (self : access Inst; key_P : str; value_P : str) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addQueryItem");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (key_P));
      Tuple_SetItem (Args, 1, Unicode_FromString (value_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end addQueryItem;
   function allQueryItemValues
     (self       : access Inst; key_P : str;
      encoding_P : access QtAda6.QtCore.QUrl.ComponentFormattingOption.Inst'Class := null) return LIST_str
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "allQueryItemValues");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (key_P));
      Dict := Dict_New;
      if encoding_P /= null then
         Dict_SetItemString (Dict, "encoding", encoding_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return Ret : LIST_str (1 .. Natural (List_Size (Result))) do
         for Ind in Ret'Range loop
            Ret (Ind) := As_String (List_GetItem (Result, ssize_t (Ind - Ret'First)));
         end loop;
      end return;
   end allQueryItemValues;
   procedure clear (self : access Inst) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "clear");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end clear;
   function hasQueryItem (self : access Inst; key_P : str) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hasQueryItem");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (key_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end hasQueryItem;
   function isEmpty (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isEmpty");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isEmpty;
   function query
     (self : access Inst; encoding_P : access QtAda6.QtCore.QUrl.ComponentFormattingOption.Inst'Class := null)
      return str
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "query");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      if encoding_P /= null then
         Dict_SetItemString (Dict, "encoding", encoding_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end query;
   function queryItemValue
     (self       : access Inst; key_P : str;
      encoding_P : access QtAda6.QtCore.QUrl.ComponentFormattingOption.Inst'Class := null) return str
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "queryItemValue");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (key_P));
      Dict := Dict_New;
      if encoding_P /= null then
         Dict_SetItemString (Dict, "encoding", encoding_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end queryItemValue;
   function queryItems
     (self : access Inst; encoding_P : access QtAda6.QtCore.QUrl.ComponentFormattingOption.Inst'Class := null)
      return LIST_TUPLE_str_str
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "queryItems");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      if encoding_P /= null then
         Dict_SetItemString (Dict, "encoding", encoding_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return Ret : LIST_TUPLE_str_str (1 .. Natural (List_Size (Result))) do
         for Ind in Ret'Range loop
            declare
               function TI (CI : ssize_t) return TUPLE_str_str is
               begin
                  return Ret : TUPLE_str_str do
                     Ret.C0 := As_String (Tuple_GetItem (List_GetItem (Result, CI), 0));
                     Ret.C1 := As_String (Tuple_GetItem (List_GetItem (Result, CI), 1));
                  end return;
               end TI;
            begin
               Ret (Ind) := TI (ssize_t (Ind - Ret'First));
            end;
         end loop;
      end return;
   end queryItems;
   function queryPairDelimiter (self : access Inst) return str is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "queryPairDelimiter");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end queryPairDelimiter;
   function queryValueDelimiter (self : access Inst) return str is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "queryValueDelimiter");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end queryValueDelimiter;
   procedure removeAllQueryItems (self : access Inst; key_P : str) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "removeAllQueryItems");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (key_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end removeAllQueryItems;
   procedure removeQueryItem (self : access Inst; key_P : str) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "removeQueryItem");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (key_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end removeQueryItem;
   procedure setQuery (self : access Inst; queryString_P : str) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setQuery");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (queryString_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setQuery;
   procedure setQueryDelimiters (self : access Inst; valueDelimiter_P : str; pairDelimiter_P : str) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setQueryDelimiters");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (valueDelimiter_P));
      Tuple_SetItem (Args, 1, Unicode_FromString (pairDelimiter_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setQueryDelimiters;
   procedure setQueryItems (self : access Inst; query_P : SEQUENCE_TUPLE_str_str) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setQueryItems");
      Args   := Tuple_New (1);
      List   := List_New (query_P'Length);
      for ind in query_P'Range loop
         Tuple := Tuple_New (2);
         Tuple_SetItem (Tuple, 0, Unicode_FromString (query_P (ind).C0));
         Tuple_SetItem (Tuple, 1, Unicode_FromString (query_P (ind).C1));
         List_SetItem (List, ssize_t (ind - query_P'First), Tuple);
      end loop;
      Tuple_SetItem (Args, 0, List);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setQueryItems;
   procedure swap (self : access Inst; other_P : access QtAda6.QtCore.QUrlQuery.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "swap");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if other_P /= null then other_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end swap;
   function toString
     (self : access Inst; encoding_P : access QtAda6.QtCore.QUrl.ComponentFormattingOption.Inst'Class := null)
      return str
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toString");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      if encoding_P /= null then
         Dict_SetItemString (Dict, "encoding", encoding_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end toString;
end QtAda6.QtCore.QUrlQuery;
