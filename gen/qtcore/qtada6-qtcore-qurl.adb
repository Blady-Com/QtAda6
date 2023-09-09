-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qurl.adb
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
with QtAda6.QtCore.QUrl.ParsingMode;
with QtAda6.QtCore.QUrl.ComponentFormattingOption;
with QtAda6.QtCore.QByteArray;
with QtAda6.QtCore.QUrl.AceProcessingOption;
with OS.PathLike;
with QtAda6.QtCore.QUrl.UserInputResolutionOption;
with QtAda6.QtCore.QUrlQuery;
package body QtAda6.QtCore.QUrl is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QUrl");
      Args  := Tuple_New (0);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (copy_P : Union_QtAda6_QtCore_QUrl_str) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QUrl");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (url_P : str; mode_P : access QtAda6.QtCore.QUrl.ParsingMode.Inst'Class) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QUrl");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (url_P));
      Tuple_SetItem (Args, 1, mode_P.Python_Proxy);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   procedure U_copy_U is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QUrl");
      Method := Object_GetAttrString (Class, "__copy__");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end U_copy_U;
   function U_reduce_U (self : access Inst) return Object is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__reduce__");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return (Python_Proxy => Result);
   end U_reduce_U;
   function U_repr_U (self : access Inst) return Object is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__repr__");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return (Python_Proxy => Result);
   end U_repr_U;
   function adjusted
     (self : access Inst; options_P : access QtAda6.QtCore.QUrl.ComponentFormattingOption.Inst'Class)
      return access QtAda6.QtCore.QUrl.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QUrl.Class := new QtAda6.QtCore.QUrl.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "adjusted");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, options_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end adjusted;
   function authority
     (self : access Inst; options_P : access QtAda6.QtCore.QUrl.ComponentFormattingOption.Inst'Class) return str
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "authority");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, options_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end authority;
   procedure clear (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "clear");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end clear;
   function errorString (self : access Inst) return str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "errorString");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end errorString;
   function fileName
     (self : access Inst; options_P : access QtAda6.QtCore.QUrl.ComponentFormattingOption.Inst'Class) return str
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "fileName");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, options_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end fileName;
   function fragment
     (self : access Inst; options_P : access QtAda6.QtCore.QUrl.ComponentFormattingOption.Inst'Class) return str
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "fragment");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, options_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end fragment;
   function fromAce
     (domain_P  : Union_QtAda6_QtCore_QByteArray_bytes;
      options_P : access QtAda6.QtCore.QUrl.AceProcessingOption.Inst'Class) return str
   is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QUrl");
      Method := Object_GetAttrString (Class, "fromAce");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, No_Value);
      Tuple_SetItem (Args, 1, options_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end fromAce;
   function fromEncoded
     (url_P : Union_QtAda6_QtCore_QByteArray_bytes; mode_P : access QtAda6.QtCore.QUrl.ParsingMode.Inst'Class)
      return access QtAda6.QtCore.QUrl.Inst'Class
   is
      Class, Method, Args, Result : Handle;
      Ret                         : constant QtAda6.QtCore.QUrl.Class := new QtAda6.QtCore.QUrl.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QUrl");
      Method := Object_GetAttrString (Class, "fromEncoded");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, No_Value);
      Tuple_SetItem (Args, 1, mode_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fromEncoded;
   function fromLocalFile (localfile_P : Union_str_bytes_os_PathLike) return access QtAda6.QtCore.QUrl.Inst'Class is
      Class, Method, Args, Result : Handle;
      Ret                         : constant QtAda6.QtCore.QUrl.Class := new QtAda6.QtCore.QUrl.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QUrl");
      Method := Object_GetAttrString (Class, "fromLocalFile");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fromLocalFile;
   function fromPercentEncoding (arg_1_P : Union_QtAda6_QtCore_QByteArray_bytes) return str is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QUrl");
      Method := Object_GetAttrString (Class, "fromPercentEncoding");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end fromPercentEncoding;
   function fromStringList
     (uris_P : Sequence_str; mode_P : access QtAda6.QtCore.QUrl.ParsingMode.Inst'Class) return List_QtAda6_QtCore_QUrl
   is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QUrl");
      Method := Object_GetAttrString (Class, "fromStringList");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, No_Value);
      Tuple_SetItem (Args, 1, mode_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end fromStringList;
   function fromUserInput
     (userInput_P : str; workingDirectory_P : str;
      options_P   : access QtAda6.QtCore.QUrl.UserInputResolutionOption.Inst'Class)
      return access QtAda6.QtCore.QUrl.Inst'Class
   is
      Class, Method, Args, Result : Handle;
      Ret                         : constant QtAda6.QtCore.QUrl.Class := new QtAda6.QtCore.QUrl.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QUrl");
      Method := Object_GetAttrString (Class, "fromUserInput");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Unicode_FromString (userInput_P));
      Tuple_SetItem (Args, 1, Unicode_FromString (workingDirectory_P));
      Tuple_SetItem (Args, 2, options_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fromUserInput;
   function hasFragment (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hasFragment");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end hasFragment;
   function hasQuery (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hasQuery");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end hasQuery;
   function host
     (self : access Inst; arg_1_P : access QtAda6.QtCore.QUrl.ComponentFormattingOption.Inst'Class) return str
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "host");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, arg_1_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end host;
   function idnWhitelist return List_str is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QUrl");
      Method := Object_GetAttrString (Class, "idnWhitelist");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end idnWhitelist;
   function isEmpty (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isEmpty");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isEmpty;
   function isLocalFile (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isLocalFile");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isLocalFile;
   function isParentOf (self : access Inst; url_P : Union_QtAda6_QtCore_QUrl_str) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isParentOf");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isParentOf;
   function isRelative (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isRelative");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isRelative;
   function isValid (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isValid");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isValid;
   function matches
     (self      : access Inst; url_P : Union_QtAda6_QtCore_QUrl_str;
      options_P : access QtAda6.QtCore.QUrl.ComponentFormattingOption.Inst'Class) return bool
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "matches");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, No_Value);
      Tuple_SetItem (Args, 1, options_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end matches;
   function password
     (self : access Inst; arg_1_P : access QtAda6.QtCore.QUrl.ComponentFormattingOption.Inst'Class) return str
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "password");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, arg_1_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end password;
   function path
     (self : access Inst; options_P : access QtAda6.QtCore.QUrl.ComponentFormattingOption.Inst'Class) return str
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "path");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, options_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end path;
   function port (self : access Inst; defaultPort_P : int) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "port");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (defaultPort_P));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end port;
   function query
     (self : access Inst; arg_1_P : access QtAda6.QtCore.QUrl.ComponentFormattingOption.Inst'Class) return str
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "query");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, arg_1_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end query;
   function resolved
     (self : access Inst; relative_P : Union_QtAda6_QtCore_QUrl_str) return access QtAda6.QtCore.QUrl.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QUrl.Class := new QtAda6.QtCore.QUrl.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "resolved");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end resolved;
   function scheme (self : access Inst) return str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "scheme");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end scheme;
   procedure setAuthority
     (self : access Inst; authority_P : str; mode_P : access QtAda6.QtCore.QUrl.ParsingMode.Inst'Class)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setAuthority");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (authority_P));
      Tuple_SetItem (Args, 1, mode_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setAuthority;
   procedure setFragment
     (self : access Inst; fragment_P : str; mode_P : access QtAda6.QtCore.QUrl.ParsingMode.Inst'Class)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFragment");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (fragment_P));
      Tuple_SetItem (Args, 1, mode_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setFragment;
   procedure setHost (self : access Inst; host_P : str; mode_P : access QtAda6.QtCore.QUrl.ParsingMode.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setHost");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (host_P));
      Tuple_SetItem (Args, 1, mode_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setHost;
   procedure setIdnWhitelist (arg_1_P : Sequence_str) is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QUrl");
      Method := Object_GetAttrString (Class, "setIdnWhitelist");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end setIdnWhitelist;
   procedure setPassword
     (self : access Inst; password_P : str; mode_P : access QtAda6.QtCore.QUrl.ParsingMode.Inst'Class)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPassword");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (password_P));
      Tuple_SetItem (Args, 1, mode_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setPassword;
   procedure setPath (self : access Inst; path_P : str; mode_P : access QtAda6.QtCore.QUrl.ParsingMode.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPath");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (path_P));
      Tuple_SetItem (Args, 1, mode_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setPath;
   procedure setPort (self : access Inst; port_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPort");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (port_P));
      Result := Object_CallObject (Method, Args, True);
   end setPort;
   procedure setQuery (self : access Inst; query_P : access QtAda6.QtCore.QUrlQuery.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setQuery");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, query_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setQuery;
   procedure setQuery (self : access Inst; query_P : str; mode_P : access QtAda6.QtCore.QUrl.ParsingMode.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setQuery");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (query_P));
      Tuple_SetItem (Args, 1, mode_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setQuery;
   procedure setScheme (self : access Inst; scheme_P : str) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setScheme");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (scheme_P));
      Result := Object_CallObject (Method, Args, True);
   end setScheme;
   procedure setUrl (self : access Inst; url_P : str; mode_P : access QtAda6.QtCore.QUrl.ParsingMode.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setUrl");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (url_P));
      Tuple_SetItem (Args, 1, mode_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setUrl;
   procedure setUserInfo
     (self : access Inst; userInfo_P : str; mode_P : access QtAda6.QtCore.QUrl.ParsingMode.Inst'Class)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setUserInfo");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (userInfo_P));
      Tuple_SetItem (Args, 1, mode_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setUserInfo;
   procedure setUserName
     (self : access Inst; userName_P : str; mode_P : access QtAda6.QtCore.QUrl.ParsingMode.Inst'Class)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setUserName");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (userName_P));
      Tuple_SetItem (Args, 1, mode_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setUserName;
   procedure swap (self : access Inst; other_P : Union_QtAda6_QtCore_QUrl_str) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "swap");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end swap;
   function toAce
     (domain_P : str; options_P : access QtAda6.QtCore.QUrl.AceProcessingOption.Inst'Class)
      return access QtAda6.QtCore.QByteArray.Inst'Class
   is
      Class, Method, Args, Result : Handle;
      Ret                         : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QUrl");
      Method := Object_GetAttrString (Class, "toAce");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (domain_P));
      Tuple_SetItem (Args, 1, options_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end toAce;
   function toDisplayString
     (self : access Inst; options_P : access QtAda6.QtCore.QUrl.ComponentFormattingOption.Inst'Class) return str
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toDisplayString");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, options_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end toDisplayString;
   function toEncoded
     (self : access Inst; options_P : access QtAda6.QtCore.QUrl.ComponentFormattingOption.Inst'Class)
      return access QtAda6.QtCore.QByteArray.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toEncoded");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, options_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end toEncoded;
   function toLocalFile (self : access Inst) return str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toLocalFile");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end toLocalFile;
   function toPercentEncoding
     (arg_1_P : str; exclude_P : Union_QtAda6_QtCore_QByteArray_bytes; include_P : Union_QtAda6_QtCore_QByteArray_bytes)
      return access QtAda6.QtCore.QByteArray.Inst'Class
   is
      Class, Method, Args, Result : Handle;
      Ret                         : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QUrl");
      Method := Object_GetAttrString (Class, "toPercentEncoding");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Unicode_FromString (arg_1_P));
      Tuple_SetItem (Args, 1, No_Value);
      Tuple_SetItem (Args, 2, No_Value);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end toPercentEncoding;
   function toString
     (self : access Inst; options_P : access QtAda6.QtCore.QUrl.ComponentFormattingOption.Inst'Class) return str
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toString");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, options_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end toString;
   function toStringList
     (uris_P : Sequence_QtAda6_QtCore_QUrl; options_P : access QtAda6.QtCore.QUrl.ComponentFormattingOption.Inst'Class)
      return List_str
   is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QUrl");
      Method := Object_GetAttrString (Class, "toStringList");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, No_Value);
      Tuple_SetItem (Args, 1, options_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end toStringList;
   function url_F
     (self : access Inst; options_P : access QtAda6.QtCore.QUrl.ComponentFormattingOption.Inst'Class) return str
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "url");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, options_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end url_F;
   function userInfo
     (self : access Inst; options_P : access QtAda6.QtCore.QUrl.ComponentFormattingOption.Inst'Class) return str
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "userInfo");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, options_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end userInfo;
   function userName
     (self : access Inst; options_P : access QtAda6.QtCore.QUrl.ComponentFormattingOption.Inst'Class) return str
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "userName");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, options_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end userName;
end QtAda6.QtCore.QUrl;
