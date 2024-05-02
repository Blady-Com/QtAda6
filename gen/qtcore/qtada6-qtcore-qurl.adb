-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qurl.adb
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
with QtAda6.QtCore.QUrl.ParsingMode;
with QtAda6.QtCore.QUrl.ComponentFormattingOption;
with QtAda6.QtCore.QByteArray;
with QtAda6.QtCore.QUrl.AceProcessingOption;
with QtAda6.QtCore.QUrl.UserInputResolutionOption;
with QtAda6.QtCore.QUrlQuery;
package body QtAda6.QtCore.QUrl is
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
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QUrl");
      Args  := Tuple_New (0);
      Dict  := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (copy_P : access QtAda6.QtCore.QUrl.Inst'Class) return Class is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QUrl");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if copy_P /= null then copy_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (copy_P : str) return Class is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QUrl");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (copy_P));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (url_P : str; mode_P : access QtAda6.QtCore.QUrl.ParsingMode.Inst'Class := null) return Class is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QUrl");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (url_P));
      Dict := Dict_New;
      if mode_P /= null then
         Dict_SetItemString (Dict, "mode", mode_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   procedure U_copy_U is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QUrl");
      Method := Object_GetAttrString (Class, "__copy__");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end U_copy_U;
   function U_reduce_U (self : access Inst) return access Object'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__reduce__");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return null;
   end U_reduce_U;
   function U_repr_U (self : access Inst) return access Object'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__repr__");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return null;
   end U_repr_U;
   function adjusted
     (self : access Inst; options_P : access QtAda6.QtCore.QUrl.ComponentFormattingOption.Inst'Class)
      return access QtAda6.QtCore.QUrl.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret                                          : constant QtAda6.QtCore.QUrl.Class := new QtAda6.QtCore.QUrl.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "adjusted");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if options_P /= null then options_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end adjusted;
   function authority
     (self : access Inst; options_P : access QtAda6.QtCore.QUrl.ComponentFormattingOption.Inst'Class := null) return str
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "authority");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      if options_P /= null then
         Dict_SetItemString (Dict, "options", options_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end authority;
   procedure clear (self : access Inst) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "clear");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end clear;
   function errorString (self : access Inst) return str is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "errorString");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end errorString;
   function fileName
     (self : access Inst; options_P : access QtAda6.QtCore.QUrl.ComponentFormattingOption.Inst'Class := null) return str
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "fileName");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      if options_P /= null then
         Dict_SetItemString (Dict, "options", options_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end fileName;
   function fragment
     (self : access Inst; options_P : access QtAda6.QtCore.QUrl.ComponentFormattingOption.Inst'Class := null) return str
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "fragment");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      if options_P /= null then
         Dict_SetItemString (Dict, "options", options_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end fragment;
   function fromAce
     (domain_P  : access QtAda6.QtCore.QByteArray.Inst'Class;
      options_P : access QtAda6.QtCore.QUrl.AceProcessingOption.Inst'Class := null) return str
   is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QUrl");
      Method := Object_GetAttrString (Class, "fromAce");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if domain_P /= null then domain_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if options_P /= null then
         Dict_SetItemString (Dict, "options", options_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end fromAce;
   function fromAce
     (domain_P : bytes; options_P : access QtAda6.QtCore.QUrl.AceProcessingOption.Inst'Class := null) return str
   is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QUrl");
      Method := Object_GetAttrString (Class, "fromAce");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Bytes_FromString (Standard.String (domain_P.all)));
      Dict := Dict_New;
      if options_P /= null then
         Dict_SetItemString (Dict, "options", options_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end fromAce;
   function fromEncoded
     (url_P  : access QtAda6.QtCore.QByteArray.Inst'Class;
      mode_P : access QtAda6.QtCore.QUrl.ParsingMode.Inst'Class := null) return access QtAda6.QtCore.QUrl.Inst'Class
   is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QUrl.Class := new QtAda6.QtCore.QUrl.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QUrl");
      Method := Object_GetAttrString (Class, "fromEncoded");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if url_P /= null then url_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if mode_P /= null then
         Dict_SetItemString (Dict, "mode", mode_P.Python_Proxy);
      end if;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fromEncoded;
   function fromEncoded
     (url_P : bytes; mode_P : access QtAda6.QtCore.QUrl.ParsingMode.Inst'Class := null)
      return access QtAda6.QtCore.QUrl.Inst'Class
   is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QUrl.Class := new QtAda6.QtCore.QUrl.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QUrl");
      Method := Object_GetAttrString (Class, "fromEncoded");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Bytes_FromString (Standard.String (url_P.all)));
      Dict := Dict_New;
      if mode_P /= null then
         Dict_SetItemString (Dict, "mode", mode_P.Python_Proxy);
      end if;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fromEncoded;
   function fromLocalFile (localfile_P : str) return access QtAda6.QtCore.QUrl.Inst'Class is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QUrl.Class := new QtAda6.QtCore.QUrl.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QUrl");
      Method := Object_GetAttrString (Class, "fromLocalFile");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (localfile_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fromLocalFile;
   function fromLocalFile (localfile_P : bytes) return access QtAda6.QtCore.QUrl.Inst'Class is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QUrl.Class := new QtAda6.QtCore.QUrl.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QUrl");
      Method := Object_GetAttrString (Class, "fromLocalFile");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Bytes_FromString (Standard.String (localfile_P.all)));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fromLocalFile;
   function fromLocalFile (localfile_P : OS.PathLike) return access QtAda6.QtCore.QUrl.Inst'Class is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QUrl.Class := new QtAda6.QtCore.QUrl.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QUrl");
      Method := Object_GetAttrString (Class, "fromLocalFile");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, OS.PathLike_conv_A2P_is_not_supported);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fromLocalFile;
   function fromPercentEncoding (arg_1_P : access QtAda6.QtCore.QByteArray.Inst'Class) return str is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QUrl");
      Method := Object_GetAttrString (Class, "fromPercentEncoding");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end fromPercentEncoding;
   function fromPercentEncoding (arg_1_P : bytes) return str is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QUrl");
      Method := Object_GetAttrString (Class, "fromPercentEncoding");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Bytes_FromString (Standard.String (arg_1_P.all)));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end fromPercentEncoding;
   function fromStringList
     (uris_P : SEQUENCE_str; mode_P : access QtAda6.QtCore.QUrl.ParsingMode.Inst'Class := null)
      return LIST_QtAda6_QtCore_QUrl
   is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QUrl");
      Method := Object_GetAttrString (Class, "fromStringList");
      Args   := Tuple_New (1);
      List   := List_New (uris_P'Length);
      for ind in uris_P'Range loop
         List_SetItem (List, ssize_t (ind - uris_P'First), Unicode_FromString (uris_P (ind)));
      end loop;
      Tuple_SetItem (Args, 0, List);
      Dict := Dict_New;
      if mode_P /= null then
         Dict_SetItemString (Dict, "mode", mode_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return Ret : LIST_QtAda6_QtCore_QUrl (1 .. Natural (List_Size (Result))) do
         for Ind in Ret'Range loop
            Ret (Ind).Python_Proxy := List_GetItem (Result, ssize_t (Ind - Ret'First));
         end loop;
      end return;
   end fromStringList;
   function fromUserInput
     (userInput_P : str; workingDirectory_P : str := "";
      options_P   : access QtAda6.QtCore.QUrl.UserInputResolutionOption.Inst'Class := null)
      return access QtAda6.QtCore.QUrl.Inst'Class
   is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QUrl.Class := new QtAda6.QtCore.QUrl.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QUrl");
      Method := Object_GetAttrString (Class, "fromUserInput");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (userInput_P));
      Dict := Dict_New;
      if workingDirectory_P /= "" then
         Dict_SetItemString (Dict, "workingDirectory", Unicode_FromString (workingDirectory_P));
      end if;
      if options_P /= null then
         Dict_SetItemString (Dict, "options", options_P.Python_Proxy);
      end if;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fromUserInput;
   function hasFragment (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hasFragment");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end hasFragment;
   function hasQuery (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hasQuery");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end hasQuery;
   function host
     (self : access Inst; arg_1_P : access QtAda6.QtCore.QUrl.ComponentFormattingOption.Inst'Class := null) return str
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "host");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      if arg_1_P /= null then
         Dict_SetItemString (Dict, "arg__1", arg_1_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end host;
   function idnWhitelist return LIST_str is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QUrl");
      Method := Object_GetAttrString (Class, "idnWhitelist");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Ret : LIST_str (1 .. Natural (List_Size (Result))) do
         for Ind in Ret'Range loop
            Ret (Ind) := As_String (List_GetItem (Result, ssize_t (Ind - Ret'First)));
         end loop;
      end return;
   end idnWhitelist;
   function isEmpty (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isEmpty");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isEmpty;
   function isLocalFile (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isLocalFile");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isLocalFile;
   function isParentOf (self : access Inst; url_P : access QtAda6.QtCore.QUrl.Inst'Class) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isParentOf");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if url_P /= null then url_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isParentOf;
   function isParentOf (self : access Inst; url_P : str) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isParentOf");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (url_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isParentOf;
   function isRelative (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isRelative");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isRelative;
   function isValid (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isValid");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isValid;
   function matches
     (self      : access Inst; url_P : access QtAda6.QtCore.QUrl.Inst'Class;
      options_P : access QtAda6.QtCore.QUrl.ComponentFormattingOption.Inst'Class) return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "matches");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if url_P /= null then url_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if options_P /= null then options_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end matches;
   function matches
     (self : access Inst; url_P : str; options_P : access QtAda6.QtCore.QUrl.ComponentFormattingOption.Inst'Class)
      return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "matches");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (url_P));
      Tuple_SetItem (Args, 1, (if options_P /= null then options_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end matches;
   function password
     (self : access Inst; arg_1_P : access QtAda6.QtCore.QUrl.ComponentFormattingOption.Inst'Class := null) return str
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "password");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      if arg_1_P /= null then
         Dict_SetItemString (Dict, "arg__1", arg_1_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end password;
   function path
     (self : access Inst; options_P : access QtAda6.QtCore.QUrl.ComponentFormattingOption.Inst'Class := null) return str
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "path");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      if options_P /= null then
         Dict_SetItemString (Dict, "options", options_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end path;
   function port (self : access Inst; defaultPort_P : int := 0) return int is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "port");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      if defaultPort_P /= 0 then
         Dict_SetItemString (Dict, "defaultPort", Long_FromLong (defaultPort_P));
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end port;
   function query
     (self : access Inst; arg_1_P : access QtAda6.QtCore.QUrl.ComponentFormattingOption.Inst'Class := null) return str
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "query");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      if arg_1_P /= null then
         Dict_SetItemString (Dict, "arg__1", arg_1_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end query;
   function resolved
     (self : access Inst; relative_P : access QtAda6.QtCore.QUrl.Inst'Class) return access QtAda6.QtCore.QUrl.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret                                          : constant QtAda6.QtCore.QUrl.Class := new QtAda6.QtCore.QUrl.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "resolved");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if relative_P /= null then relative_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end resolved;
   function resolved (self : access Inst; relative_P : str) return access QtAda6.QtCore.QUrl.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret                                          : constant QtAda6.QtCore.QUrl.Class := new QtAda6.QtCore.QUrl.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "resolved");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (relative_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end resolved;
   function scheme (self : access Inst) return str is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "scheme");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end scheme;
   procedure setAuthority
     (self : access Inst; authority_P : str; mode_P : access QtAda6.QtCore.QUrl.ParsingMode.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setAuthority");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (authority_P));
      Dict := Dict_New;
      if mode_P /= null then
         Dict_SetItemString (Dict, "mode", mode_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end setAuthority;
   procedure setFragment
     (self : access Inst; fragment_P : str; mode_P : access QtAda6.QtCore.QUrl.ParsingMode.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFragment");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (fragment_P));
      Dict := Dict_New;
      if mode_P /= null then
         Dict_SetItemString (Dict, "mode", mode_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end setFragment;
   procedure setHost
     (self : access Inst; host_P : str; mode_P : access QtAda6.QtCore.QUrl.ParsingMode.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setHost");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (host_P));
      Dict := Dict_New;
      if mode_P /= null then
         Dict_SetItemString (Dict, "mode", mode_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end setHost;
   procedure setIdnWhitelist (arg_1_P : SEQUENCE_str) is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QUrl");
      Method := Object_GetAttrString (Class, "setIdnWhitelist");
      Args   := Tuple_New (1);
      List   := List_New (arg_1_P'Length);
      for ind in arg_1_P'Range loop
         List_SetItem (List, ssize_t (ind - arg_1_P'First), Unicode_FromString (arg_1_P (ind)));
      end loop;
      Tuple_SetItem (Args, 0, List);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setIdnWhitelist;
   procedure setPassword
     (self : access Inst; password_P : str; mode_P : access QtAda6.QtCore.QUrl.ParsingMode.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPassword");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (password_P));
      Dict := Dict_New;
      if mode_P /= null then
         Dict_SetItemString (Dict, "mode", mode_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end setPassword;
   procedure setPath
     (self : access Inst; path_P : str; mode_P : access QtAda6.QtCore.QUrl.ParsingMode.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPath");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (path_P));
      Dict := Dict_New;
      if mode_P /= null then
         Dict_SetItemString (Dict, "mode", mode_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end setPath;
   procedure setPort (self : access Inst; port_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPort");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (port_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPort;
   procedure setQuery (self : access Inst; query_P : access QtAda6.QtCore.QUrlQuery.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setQuery");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if query_P /= null then query_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setQuery;
   procedure setQuery
     (self : access Inst; query_P : str; mode_P : access QtAda6.QtCore.QUrl.ParsingMode.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setQuery");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (query_P));
      Dict := Dict_New;
      if mode_P /= null then
         Dict_SetItemString (Dict, "mode", mode_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end setQuery;
   procedure setScheme (self : access Inst; scheme_P : str) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setScheme");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (scheme_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setScheme;
   procedure setUrl (self : access Inst; url_P : str; mode_P : access QtAda6.QtCore.QUrl.ParsingMode.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setUrl");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (url_P));
      Dict := Dict_New;
      if mode_P /= null then
         Dict_SetItemString (Dict, "mode", mode_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end setUrl;
   procedure setUserInfo
     (self : access Inst; userInfo_P : str; mode_P : access QtAda6.QtCore.QUrl.ParsingMode.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setUserInfo");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (userInfo_P));
      Dict := Dict_New;
      if mode_P /= null then
         Dict_SetItemString (Dict, "mode", mode_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end setUserInfo;
   procedure setUserName
     (self : access Inst; userName_P : str; mode_P : access QtAda6.QtCore.QUrl.ParsingMode.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setUserName");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (userName_P));
      Dict := Dict_New;
      if mode_P /= null then
         Dict_SetItemString (Dict, "mode", mode_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end setUserName;
   procedure swap (self : access Inst; other_P : access QtAda6.QtCore.QUrl.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "swap");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if other_P /= null then other_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end swap;
   procedure swap (self : access Inst; other_P : str) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "swap");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (other_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end swap;
   function toAce
     (domain_P : str; options_P : access QtAda6.QtCore.QUrl.AceProcessingOption.Inst'Class := null)
      return access QtAda6.QtCore.QByteArray.Inst'Class
   is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QUrl");
      Method := Object_GetAttrString (Class, "toAce");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (domain_P));
      Dict := Dict_New;
      if options_P /= null then
         Dict_SetItemString (Dict, "options", options_P.Python_Proxy);
      end if;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end toAce;
   function toDisplayString
     (self : access Inst; options_P : access QtAda6.QtCore.QUrl.ComponentFormattingOption.Inst'Class := null) return str
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toDisplayString");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      if options_P /= null then
         Dict_SetItemString (Dict, "options", options_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end toDisplayString;
   function toEncoded
     (self : access Inst; options_P : access QtAda6.QtCore.QUrl.ComponentFormattingOption.Inst'Class := null)
      return access QtAda6.QtCore.QByteArray.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toEncoded");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      if options_P /= null then
         Dict_SetItemString (Dict, "options", options_P.Python_Proxy);
      end if;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end toEncoded;
   function toLocalFile (self : access Inst) return str is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toLocalFile");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end toLocalFile;
   function toPercentEncoding
     (arg_1_P   : str; exclude_P : access QtAda6.QtCore.QByteArray.Inst'Class := null;
      include_P : access QtAda6.QtCore.QByteArray.Inst'Class := null) return access QtAda6.QtCore.QByteArray.Inst'Class
   is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QUrl");
      Method := Object_GetAttrString (Class, "toPercentEncoding");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (arg_1_P));
      Dict := Dict_New;
      if exclude_P /= null then
         Dict_SetItemString (Dict, "exclude", exclude_P.Python_Proxy);
      end if;
      if include_P /= null then
         Dict_SetItemString (Dict, "include", include_P.Python_Proxy);
      end if;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end toPercentEncoding;
   function toPercentEncoding
     (arg_1_P : str; exclude_P : access QtAda6.QtCore.QByteArray.Inst'Class := null; include_P : bytes := null)
      return access QtAda6.QtCore.QByteArray.Inst'Class
   is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QUrl");
      Method := Object_GetAttrString (Class, "toPercentEncoding");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (arg_1_P));
      Dict := Dict_New;
      if exclude_P /= null then
         Dict_SetItemString (Dict, "exclude", exclude_P.Python_Proxy);
      end if;
      if include_P /= null then
         Dict_SetItemString (Dict, "include", Bytes_FromString (Standard.String (include_P.all)));
      end if;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end toPercentEncoding;
   function toPercentEncoding
     (arg_1_P : str; exclude_P : bytes := null; include_P : access QtAda6.QtCore.QByteArray.Inst'Class := null)
      return access QtAda6.QtCore.QByteArray.Inst'Class
   is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QUrl");
      Method := Object_GetAttrString (Class, "toPercentEncoding");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (arg_1_P));
      Dict := Dict_New;
      if exclude_P /= null then
         Dict_SetItemString (Dict, "exclude", Bytes_FromString (Standard.String (exclude_P.all)));
      end if;
      if include_P /= null then
         Dict_SetItemString (Dict, "include", include_P.Python_Proxy);
      end if;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end toPercentEncoding;
   function toPercentEncoding
     (arg_1_P : str; exclude_P : bytes := null; include_P : bytes := null)
      return access QtAda6.QtCore.QByteArray.Inst'Class
   is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QUrl");
      Method := Object_GetAttrString (Class, "toPercentEncoding");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (arg_1_P));
      Dict := Dict_New;
      if exclude_P /= null then
         Dict_SetItemString (Dict, "exclude", Bytes_FromString (Standard.String (exclude_P.all)));
      end if;
      if include_P /= null then
         Dict_SetItemString (Dict, "include", Bytes_FromString (Standard.String (include_P.all)));
      end if;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end toPercentEncoding;
   function toString
     (self : access Inst; options_P : access QtAda6.QtCore.QUrl.ComponentFormattingOption.Inst'Class := null) return str
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toString");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      if options_P /= null then
         Dict_SetItemString (Dict, "options", options_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end toString;
   function toStringList
     (uris_P    : SEQUENCE_QtAda6_QtCore_QUrl;
      options_P : access QtAda6.QtCore.QUrl.ComponentFormattingOption.Inst'Class := null) return LIST_str
   is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QUrl");
      Method := Object_GetAttrString (Class, "toStringList");
      Args   := Tuple_New (1);
      List   := List_New (uris_P'Length);
      for ind in uris_P'Range loop
         List_SetItem
           (List, ssize_t (ind - uris_P'First), (if uris_P (ind) /= null then uris_P (ind).Python_Proxy else No_Value));
      end loop;
      Tuple_SetItem (Args, 0, List);
      Dict := Dict_New;
      if options_P /= null then
         Dict_SetItemString (Dict, "options", options_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return Ret : LIST_str (1 .. Natural (List_Size (Result))) do
         for Ind in Ret'Range loop
            Ret (Ind) := As_String (List_GetItem (Result, ssize_t (Ind - Ret'First)));
         end loop;
      end return;
   end toStringList;
   function url
     (self : access Inst; options_P : access QtAda6.QtCore.QUrl.ComponentFormattingOption.Inst'Class := null) return str
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "url");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      if options_P /= null then
         Dict_SetItemString (Dict, "options", options_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end url;
   function userInfo
     (self : access Inst; options_P : access QtAda6.QtCore.QUrl.ComponentFormattingOption.Inst'Class := null) return str
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "userInfo");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      if options_P /= null then
         Dict_SetItemString (Dict, "options", options_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end userInfo;
   function userName
     (self : access Inst; options_P : access QtAda6.QtCore.QUrl.ComponentFormattingOption.Inst'Class := null) return str
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "userName");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      if options_P /= null then
         Dict_SetItemString (Dict, "options", options_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end userName;
end QtAda6.QtCore.QUrl;
