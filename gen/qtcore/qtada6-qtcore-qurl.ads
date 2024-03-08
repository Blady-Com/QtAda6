-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qurl.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QUrl.ParsingMode;
limited with QtAda6.QtCore.QUrl.ComponentFormattingOption;
limited with QtAda6.QtCore.QUrl.AceProcessingOption;
limited with QtAda6.QtCore.QUrl.UserInputResolutionOption;
limited with QtAda6.QtCore.QUrlQuery;
limited with QtAda6.QtCore.QByteArray;
package QtAda6.QtCore.QUrl is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   type UNION_QtAda6_QtCore_QUrl_str is new Any;
   type UNION_QtAda6_QtCore_QByteArray_bytes is new Any;
   type UNION_str_bytes_os_PathLike is new Any;
   type SEQUENCE_str is array (Positive range <>) of str;
   subtype LIST_QtAda6_QtCore_QUrl is QtAda6.QtCore.QUrl.Class_Array;
   type LIST_str is array (Positive range <>) of str;
   subtype SEQUENCE_QtAda6_QtCore_QUrl is QtAda6.QtCore.QUrl.Class_Array;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (copy_P : UNION_QtAda6_QtCore_QUrl_str) return Class;
   function Create (url_P : str; mode_P : access QtAda6.QtCore.QUrl.ParsingMode.Inst'Class := null) return Class;
   procedure U_copy_U;
   function U_reduce_U (self : access Inst) return access Object'Class;
   function U_repr_U (self : access Inst) return access Object'Class;
   function adjusted
     (self : access Inst; options_P : access QtAda6.QtCore.QUrl.ComponentFormattingOption.Inst'Class)
      return access QtAda6.QtCore.QUrl.Inst'Class;
   function authority
     (self : access Inst; options_P : access QtAda6.QtCore.QUrl.ComponentFormattingOption.Inst'Class := null)
      return str;
   procedure clear (self : access Inst);
   function errorString (self : access Inst) return str;
   function fileName
     (self : access Inst; options_P : access QtAda6.QtCore.QUrl.ComponentFormattingOption.Inst'Class := null)
      return str;
   function fragment
     (self : access Inst; options_P : access QtAda6.QtCore.QUrl.ComponentFormattingOption.Inst'Class := null)
      return str;
   function fromAce
     (domain_P  : UNION_QtAda6_QtCore_QByteArray_bytes;
      options_P : access QtAda6.QtCore.QUrl.AceProcessingOption.Inst'Class := null) return str;
   function fromEncoded
     (url_P : UNION_QtAda6_QtCore_QByteArray_bytes; mode_P : access QtAda6.QtCore.QUrl.ParsingMode.Inst'Class := null)
      return access QtAda6.QtCore.QUrl.Inst'Class;
   function fromLocalFile (localfile_P : UNION_str_bytes_os_PathLike) return access QtAda6.QtCore.QUrl.Inst'Class;
   function fromPercentEncoding (arg_1_P : UNION_QtAda6_QtCore_QByteArray_bytes) return str;
   function fromStringList
     (uris_P : SEQUENCE_str; mode_P : access QtAda6.QtCore.QUrl.ParsingMode.Inst'Class := null)
      return LIST_QtAda6_QtCore_QUrl;
   function fromUserInput
     (userInput_P : str; workingDirectory_P : str := "";
      options_P   : access QtAda6.QtCore.QUrl.UserInputResolutionOption.Inst'Class := null)
      return access QtAda6.QtCore.QUrl.Inst'Class;
   function hasFragment (self : access Inst) return bool;
   function hasQuery (self : access Inst) return bool;
   function host
     (self : access Inst; arg_1_P : access QtAda6.QtCore.QUrl.ComponentFormattingOption.Inst'Class := null) return str;
   function idnWhitelist return LIST_str;
   function isEmpty (self : access Inst) return bool;
   function isLocalFile (self : access Inst) return bool;
   function isParentOf (self : access Inst; url_P : UNION_QtAda6_QtCore_QUrl_str) return bool;
   function isRelative (self : access Inst) return bool;
   function isValid (self : access Inst) return bool;
   function matches
     (self      : access Inst; url_P : UNION_QtAda6_QtCore_QUrl_str;
      options_P : access QtAda6.QtCore.QUrl.ComponentFormattingOption.Inst'Class) return bool;
   function password
     (self : access Inst; arg_1_P : access QtAda6.QtCore.QUrl.ComponentFormattingOption.Inst'Class := null) return str;
   function path
     (self : access Inst; options_P : access QtAda6.QtCore.QUrl.ComponentFormattingOption.Inst'Class := null)
      return str;
   function port (self : access Inst; defaultPort_P : int := 0) return int;
   function query
     (self : access Inst; arg_1_P : access QtAda6.QtCore.QUrl.ComponentFormattingOption.Inst'Class := null) return str;
   function resolved
     (self : access Inst; relative_P : UNION_QtAda6_QtCore_QUrl_str) return access QtAda6.QtCore.QUrl.Inst'Class;
   function scheme (self : access Inst) return str;
   procedure setAuthority
     (self : access Inst; authority_P : str; mode_P : access QtAda6.QtCore.QUrl.ParsingMode.Inst'Class := null);
   procedure setFragment
     (self : access Inst; fragment_P : str; mode_P : access QtAda6.QtCore.QUrl.ParsingMode.Inst'Class := null);
   procedure setHost
     (self : access Inst; host_P : str; mode_P : access QtAda6.QtCore.QUrl.ParsingMode.Inst'Class := null);
   procedure setIdnWhitelist (arg_1_P : SEQUENCE_str);
   procedure setPassword
     (self : access Inst; password_P : str; mode_P : access QtAda6.QtCore.QUrl.ParsingMode.Inst'Class := null);
   procedure setPath
     (self : access Inst; path_P : str; mode_P : access QtAda6.QtCore.QUrl.ParsingMode.Inst'Class := null);
   procedure setPort (self : access Inst; port_P : int);
   procedure setQuery (self : access Inst; query_P : access QtAda6.QtCore.QUrlQuery.Inst'Class);
   procedure setQuery
     (self : access Inst; query_P : str; mode_P : access QtAda6.QtCore.QUrl.ParsingMode.Inst'Class := null);
   procedure setScheme (self : access Inst; scheme_P : str);
   procedure setUrl
     (self : access Inst; url_P : str; mode_P : access QtAda6.QtCore.QUrl.ParsingMode.Inst'Class := null);
   procedure setUserInfo
     (self : access Inst; userInfo_P : str; mode_P : access QtAda6.QtCore.QUrl.ParsingMode.Inst'Class := null);
   procedure setUserName
     (self : access Inst; userName_P : str; mode_P : access QtAda6.QtCore.QUrl.ParsingMode.Inst'Class := null);
   procedure swap (self : access Inst; other_P : UNION_QtAda6_QtCore_QUrl_str);
   function toAce
     (domain_P : str; options_P : access QtAda6.QtCore.QUrl.AceProcessingOption.Inst'Class := null)
      return access QtAda6.QtCore.QByteArray.Inst'Class;
   function toDisplayString
     (self : access Inst; options_P : access QtAda6.QtCore.QUrl.ComponentFormattingOption.Inst'Class := null)
      return str;
   function toEncoded
     (self : access Inst; options_P : access QtAda6.QtCore.QUrl.ComponentFormattingOption.Inst'Class := null)
      return access QtAda6.QtCore.QByteArray.Inst'Class;
   function toLocalFile (self : access Inst) return str;
   function toPercentEncoding
     (arg_1_P   : str; exclude_P : UNION_QtAda6_QtCore_QByteArray_bytes := null;
      include_P : UNION_QtAda6_QtCore_QByteArray_bytes := null) return access QtAda6.QtCore.QByteArray.Inst'Class;
   function toString
     (self : access Inst; options_P : access QtAda6.QtCore.QUrl.ComponentFormattingOption.Inst'Class := null)
      return str;
   function toStringList
     (uris_P    : SEQUENCE_QtAda6_QtCore_QUrl;
      options_P : access QtAda6.QtCore.QUrl.ComponentFormattingOption.Inst'Class := null) return LIST_str;
   function url
     (self : access Inst; options_P : access QtAda6.QtCore.QUrl.ComponentFormattingOption.Inst'Class := null)
      return str;
   function userInfo
     (self : access Inst; options_P : access QtAda6.QtCore.QUrl.ComponentFormattingOption.Inst'Class := null)
      return str;
   function userName
     (self : access Inst; options_P : access QtAda6.QtCore.QUrl.ComponentFormattingOption.Inst'Class := null)
      return str;
end QtAda6.QtCore.QUrl;
