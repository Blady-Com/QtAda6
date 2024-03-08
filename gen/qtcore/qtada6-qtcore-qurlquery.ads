-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qurlquery.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QUrl.ComponentFormattingOption;
package QtAda6.QtCore.QUrlQuery is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   type UNION_QtAda6_QtCore_QUrl_str is new Any;
   type LIST_str is array (Positive range <>) of str;
   type LIST_TUPLE_str_str is array (Positive range <>) of TUPLE_str_str;
   type SEQUENCE_TUPLE_str_str is array (Positive range <>) of TUPLE_str_str;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (other_P : access QtAda6.QtCore.QUrlQuery.Inst'Class) return Class;
   function Create (queryString_P : str) return Class;
   function Create (url_P : UNION_QtAda6_QtCore_QUrl_str) return Class;
   procedure U_copy_U;
   procedure addQueryItem (self : access Inst; key_P : str; value_P : str);
   function allQueryItemValues
     (self       : access Inst; key_P : str;
      encoding_P : access QtAda6.QtCore.QUrl.ComponentFormattingOption.Inst'Class := null) return LIST_str;
   procedure clear (self : access Inst);
   function hasQueryItem (self : access Inst; key_P : str) return bool;
   function isEmpty (self : access Inst) return bool;
   function query
     (self : access Inst; encoding_P : access QtAda6.QtCore.QUrl.ComponentFormattingOption.Inst'Class := null)
      return str;
   function queryItemValue
     (self       : access Inst; key_P : str;
      encoding_P : access QtAda6.QtCore.QUrl.ComponentFormattingOption.Inst'Class := null) return str;
   function queryItems
     (self : access Inst; encoding_P : access QtAda6.QtCore.QUrl.ComponentFormattingOption.Inst'Class := null)
      return LIST_TUPLE_str_str;
   function queryPairDelimiter (self : access Inst) return str;
   function queryValueDelimiter (self : access Inst) return str;
   procedure removeAllQueryItems (self : access Inst; key_P : str);
   procedure removeQueryItem (self : access Inst; key_P : str);
   procedure setQuery (self : access Inst; queryString_P : str);
   procedure setQueryDelimiters (self : access Inst; valueDelimiter_P : str; pairDelimiter_P : str);
   procedure setQueryItems (self : access Inst; query_P : SEQUENCE_TUPLE_str_str);
   procedure swap (self : access Inst; other_P : access QtAda6.QtCore.QUrlQuery.Inst'Class);
   function toString
     (self : access Inst; encoding_P : access QtAda6.QtCore.QUrl.ComponentFormattingOption.Inst'Class := null)
      return str;
end QtAda6.QtCore.QUrlQuery;
