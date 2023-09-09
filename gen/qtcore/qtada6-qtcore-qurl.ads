-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qurl.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QUrl.ParsingMode;
limited with QtAda6.QtCore.QUrl.ComponentFormattingOption;
limited with QtAda6.QtCore.QByteArray;
limited with QtAda6.QtCore.QUrl.AceProcessingOption;
limited with OS.PathLike;
limited with QtAda6.QtCore.QUrl.UserInputResolutionOption;
limited with QtAda6.QtCore.QUrlQuery;
package QtAda6.QtCore.QUrl is
   type Union_QtAda6_QtCore_QUrl_str is access Any;
   type Union_QtAda6_QtCore_QByteArray_bytes is access Any;
   type Union_str_bytes_os_PathLike is access Any;
   type Sequence_str is access Any;
   type List_QtAda6_QtCore_QUrl is access Any;
   type List_str is access Any;
   type Sequence_QtAda6_QtCore_QUrl is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (copy_P : Union_QtAda6_QtCore_QUrl_str) return Class;
   function Create (url_P : str; mode_P : access QtAda6.QtCore.QUrl.ParsingMode.Inst'Class) return Class;
   procedure U_copy_U;
   function U_reduce_U (self : access Inst) return Object;
   function U_repr_U (self : access Inst) return Object;
   function adjusted
     (self : access Inst; options_P : access QtAda6.QtCore.QUrl.ComponentFormattingOption.Inst'Class)
      return access QtAda6.QtCore.QUrl.Inst'Class;
   function authority
     (self : access Inst; options_P : access QtAda6.QtCore.QUrl.ComponentFormattingOption.Inst'Class) return str;
   procedure clear (self : access Inst);
   function errorString (self : access Inst) return str;
   function fileName
     (self : access Inst; options_P : access QtAda6.QtCore.QUrl.ComponentFormattingOption.Inst'Class) return str;
   function fragment
     (self : access Inst; options_P : access QtAda6.QtCore.QUrl.ComponentFormattingOption.Inst'Class) return str;
   function fromAce
     (domain_P  : Union_QtAda6_QtCore_QByteArray_bytes;
      options_P : access QtAda6.QtCore.QUrl.AceProcessingOption.Inst'Class) return str;
   function fromEncoded
     (url_P : Union_QtAda6_QtCore_QByteArray_bytes; mode_P : access QtAda6.QtCore.QUrl.ParsingMode.Inst'Class)
      return access QtAda6.QtCore.QUrl.Inst'Class;
   function fromLocalFile (localfile_P : Union_str_bytes_os_PathLike) return access QtAda6.QtCore.QUrl.Inst'Class;
   function fromPercentEncoding (arg_1_P : Union_QtAda6_QtCore_QByteArray_bytes) return str;
   function fromStringList
     (uris_P : Sequence_str; mode_P : access QtAda6.QtCore.QUrl.ParsingMode.Inst'Class) return List_QtAda6_QtCore_QUrl;
   function fromUserInput
     (userInput_P : str; workingDirectory_P : str;
      options_P   : access QtAda6.QtCore.QUrl.UserInputResolutionOption.Inst'Class)
      return access QtAda6.QtCore.QUrl.Inst'Class;
   function hasFragment (self : access Inst) return bool;
   function hasQuery (self : access Inst) return bool;
   function host
     (self : access Inst; arg_1_P : access QtAda6.QtCore.QUrl.ComponentFormattingOption.Inst'Class) return str;
   function idnWhitelist return List_str;
   function isEmpty (self : access Inst) return bool;
   function isLocalFile (self : access Inst) return bool;
   function isParentOf (self : access Inst; url_P : Union_QtAda6_QtCore_QUrl_str) return bool;
   function isRelative (self : access Inst) return bool;
   function isValid (self : access Inst) return bool;
   function matches
     (self      : access Inst; url_P : Union_QtAda6_QtCore_QUrl_str;
      options_P : access QtAda6.QtCore.QUrl.ComponentFormattingOption.Inst'Class) return bool;
   function password
     (self : access Inst; arg_1_P : access QtAda6.QtCore.QUrl.ComponentFormattingOption.Inst'Class) return str;
   function path
     (self : access Inst; options_P : access QtAda6.QtCore.QUrl.ComponentFormattingOption.Inst'Class) return str;
   function port (self : access Inst; defaultPort_P : int) return int;
   function query
     (self : access Inst; arg_1_P : access QtAda6.QtCore.QUrl.ComponentFormattingOption.Inst'Class) return str;
   function resolved
     (self : access Inst; relative_P : Union_QtAda6_QtCore_QUrl_str) return access QtAda6.QtCore.QUrl.Inst'Class;
   function scheme (self : access Inst) return str;
   procedure setAuthority
     (self : access Inst; authority_P : str; mode_P : access QtAda6.QtCore.QUrl.ParsingMode.Inst'Class);
   procedure setFragment
     (self : access Inst; fragment_P : str; mode_P : access QtAda6.QtCore.QUrl.ParsingMode.Inst'Class);
   procedure setHost (self : access Inst; host_P : str; mode_P : access QtAda6.QtCore.QUrl.ParsingMode.Inst'Class);
   procedure setIdnWhitelist (arg_1_P : Sequence_str);
   procedure setPassword
     (self : access Inst; password_P : str; mode_P : access QtAda6.QtCore.QUrl.ParsingMode.Inst'Class);
   procedure setPath (self : access Inst; path_P : str; mode_P : access QtAda6.QtCore.QUrl.ParsingMode.Inst'Class);
   procedure setPort (self : access Inst; port_P : int);
   procedure setQuery (self : access Inst; query_P : access QtAda6.QtCore.QUrlQuery.Inst'Class);
   procedure setQuery (self : access Inst; query_P : str; mode_P : access QtAda6.QtCore.QUrl.ParsingMode.Inst'Class);
   procedure setScheme (self : access Inst; scheme_P : str);
   procedure setUrl (self : access Inst; url_P : str; mode_P : access QtAda6.QtCore.QUrl.ParsingMode.Inst'Class);
   procedure setUserInfo
     (self : access Inst; userInfo_P : str; mode_P : access QtAda6.QtCore.QUrl.ParsingMode.Inst'Class);
   procedure setUserName
     (self : access Inst; userName_P : str; mode_P : access QtAda6.QtCore.QUrl.ParsingMode.Inst'Class);
   procedure swap (self : access Inst; other_P : Union_QtAda6_QtCore_QUrl_str);
   function toAce
     (domain_P : str; options_P : access QtAda6.QtCore.QUrl.AceProcessingOption.Inst'Class)
      return access QtAda6.QtCore.QByteArray.Inst'Class;
   function toDisplayString
     (self : access Inst; options_P : access QtAda6.QtCore.QUrl.ComponentFormattingOption.Inst'Class) return str;
   function toEncoded
     (self : access Inst; options_P : access QtAda6.QtCore.QUrl.ComponentFormattingOption.Inst'Class)
      return access QtAda6.QtCore.QByteArray.Inst'Class;
   function toLocalFile (self : access Inst) return str;
   function toPercentEncoding
     (arg_1_P : str; exclude_P : Union_QtAda6_QtCore_QByteArray_bytes; include_P : Union_QtAda6_QtCore_QByteArray_bytes)
      return access QtAda6.QtCore.QByteArray.Inst'Class;
   function toString
     (self : access Inst; options_P : access QtAda6.QtCore.QUrl.ComponentFormattingOption.Inst'Class) return str;
   function toStringList
     (uris_P : Sequence_QtAda6_QtCore_QUrl; options_P : access QtAda6.QtCore.QUrl.ComponentFormattingOption.Inst'Class)
      return List_str;
   function url_F
     (self : access Inst; options_P : access QtAda6.QtCore.QUrl.ComponentFormattingOption.Inst'Class) return str;
   function userInfo
     (self : access Inst; options_P : access QtAda6.QtCore.QUrl.ComponentFormattingOption.Inst'Class) return str;
   function userName
     (self : access Inst; options_P : access QtAda6.QtCore.QUrl.ComponentFormattingOption.Inst'Class) return str;
end QtAda6.QtCore.QUrl;
