-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qregularexpression.adb
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
with QtAda6.QtCore.QRegularExpression.PatternOption;
with QtAda6.QtCore.Qt.CaseSensitivity;
with QtAda6.QtCore.QRegularExpression.WildcardConversionOption;
with QtAda6.QtCore.QRegularExpression;
with QtAda6.QtCore.QRegularExpression.MatchType;
with QtAda6.QtCore.QRegularExpression.MatchOption;
with QtAda6.QtCore.QRegularExpressionMatchIterator;
with QtAda6.QtCore.QRegularExpressionMatch;
package body QtAda6.QtCore.QRegularExpression is
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
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QRegularExpression");
      Args  := Tuple_New (0);
      Dict  := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (pattern_P : str; options_P : access QtAda6.QtCore.QRegularExpression.PatternOption.Inst'Class := null)
      return Class
   is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QRegularExpression");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (pattern_P));
      Dict := Dict_New;
      if options_P /= null then
         Dict_SetItemString (Dict, "options", options_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (re_P : UNION_QtAda6_QtCore_QRegularExpression_str) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QRegularExpression");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if re_P /= null then re_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   procedure U_copy_U is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QRegularExpression");
      Method := Object_GetAttrString (Class, "__copy__");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end U_copy_U;
   function anchoredPattern (expression_P : str) return str is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QRegularExpression");
      Method := Object_GetAttrString (Class, "anchoredPattern");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (expression_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end anchoredPattern;
   function captureCount (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "captureCount");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end captureCount;
   function errorString (self : access Inst) return str is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "errorString");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end errorString;
   function escape (str_P : str) return str is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QRegularExpression");
      Method := Object_GetAttrString (Class, "escape");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (str_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end escape;
   function fromWildcard
     (pattern_P : str; cs_P : access QtAda6.QtCore.Qt.CaseSensitivity.Inst'Class := null;
      options_P : access QtAda6.QtCore.QRegularExpression.WildcardConversionOption.Inst'Class := null)
      return access QtAda6.QtCore.QRegularExpression.Inst'Class
   is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QRegularExpression.Class := new QtAda6.QtCore.QRegularExpression.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QRegularExpression");
      Method := Object_GetAttrString (Class, "fromWildcard");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (pattern_P));
      Dict := Dict_New;
      if cs_P /= null then
         Dict_SetItemString (Dict, "cs", cs_P.Python_Proxy);
      end if;
      if options_P /= null then
         Dict_SetItemString (Dict, "options", options_P.Python_Proxy);
      end if;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fromWildcard;
   function globalMatch
     (self           : access Inst; subject_P : str; offset_P : int := 0;
      matchType_P    : access QtAda6.QtCore.QRegularExpression.MatchType.Inst'Class   := null;
      matchOptions_P : access QtAda6.QtCore.QRegularExpression.MatchOption.Inst'Class := null)
      return access QtAda6.QtCore.QRegularExpressionMatchIterator.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QRegularExpressionMatchIterator.Class :=
        new QtAda6.QtCore.QRegularExpressionMatchIterator.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "globalMatch");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (subject_P));
      Dict := Dict_New;
      if offset_P /= 0 then
         Dict_SetItemString (Dict, "offset", Long_FromLong (offset_P));
      end if;
      if matchType_P /= null then
         Dict_SetItemString (Dict, "matchType", matchType_P.Python_Proxy);
      end if;
      if matchOptions_P /= null then
         Dict_SetItemString (Dict, "matchOptions", matchOptions_P.Python_Proxy);
      end if;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end globalMatch;
   function globalMatchView
     (self           : access Inst; subjectView_P : str; offset_P : int := 0;
      matchType_P    : access QtAda6.QtCore.QRegularExpression.MatchType.Inst'Class   := null;
      matchOptions_P : access QtAda6.QtCore.QRegularExpression.MatchOption.Inst'Class := null)
      return access QtAda6.QtCore.QRegularExpressionMatchIterator.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QRegularExpressionMatchIterator.Class :=
        new QtAda6.QtCore.QRegularExpressionMatchIterator.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "globalMatchView");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (subjectView_P));
      Dict := Dict_New;
      if offset_P /= 0 then
         Dict_SetItemString (Dict, "offset", Long_FromLong (offset_P));
      end if;
      if matchType_P /= null then
         Dict_SetItemString (Dict, "matchType", matchType_P.Python_Proxy);
      end if;
      if matchOptions_P /= null then
         Dict_SetItemString (Dict, "matchOptions", matchOptions_P.Python_Proxy);
      end if;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end globalMatchView;
   function isValid (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isValid");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isValid;
   function match
     (self           : access Inst; subject_P : str; offset_P : int := 0;
      matchType_P    : access QtAda6.QtCore.QRegularExpression.MatchType.Inst'Class   := null;
      matchOptions_P : access QtAda6.QtCore.QRegularExpression.MatchOption.Inst'Class := null)
      return access QtAda6.QtCore.QRegularExpressionMatch.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QRegularExpressionMatch.Class := new QtAda6.QtCore.QRegularExpressionMatch.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "match");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (subject_P));
      Dict := Dict_New;
      if offset_P /= 0 then
         Dict_SetItemString (Dict, "offset", Long_FromLong (offset_P));
      end if;
      if matchType_P /= null then
         Dict_SetItemString (Dict, "matchType", matchType_P.Python_Proxy);
      end if;
      if matchOptions_P /= null then
         Dict_SetItemString (Dict, "matchOptions", matchOptions_P.Python_Proxy);
      end if;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end match;
   function matchView
     (self           : access Inst; subjectView_P : str; offset_P : int := 0;
      matchType_P    : access QtAda6.QtCore.QRegularExpression.MatchType.Inst'Class   := null;
      matchOptions_P : access QtAda6.QtCore.QRegularExpression.MatchOption.Inst'Class := null)
      return access QtAda6.QtCore.QRegularExpressionMatch.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QRegularExpressionMatch.Class := new QtAda6.QtCore.QRegularExpressionMatch.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "matchView");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (subjectView_P));
      Dict := Dict_New;
      if offset_P /= 0 then
         Dict_SetItemString (Dict, "offset", Long_FromLong (offset_P));
      end if;
      if matchType_P /= null then
         Dict_SetItemString (Dict, "matchType", matchType_P.Python_Proxy);
      end if;
      if matchOptions_P /= null then
         Dict_SetItemString (Dict, "matchOptions", matchOptions_P.Python_Proxy);
      end if;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end matchView;
   function namedCaptureGroups (self : access Inst) return LIST_str is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "namedCaptureGroups");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return (2 .. 1 => <>);
   end namedCaptureGroups;
   procedure optimize (self : access Inst) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "optimize");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end optimize;
   function pattern (self : access Inst) return str is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "pattern");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end pattern;
   function patternErrorOffset (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "patternErrorOffset");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end patternErrorOffset;
   function patternOptions (self : access Inst) return access QtAda6.QtCore.QRegularExpression.PatternOption.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QRegularExpression.PatternOption.Class :=
        new QtAda6.QtCore.QRegularExpression.PatternOption.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "patternOptions");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end patternOptions;
   procedure setPattern (self : access Inst; pattern_P : str) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPattern");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (pattern_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPattern;
   procedure setPatternOptions
     (self : access Inst; options_P : access QtAda6.QtCore.QRegularExpression.PatternOption.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPatternOptions");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if options_P /= null then options_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPatternOptions;
   procedure swap (self : access Inst; other_P : UNION_QtAda6_QtCore_QRegularExpression_str) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "swap");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if other_P /= null then other_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end swap;
   function wildcardToRegularExpression
     (str_P : str; options_P : access QtAda6.QtCore.QRegularExpression.WildcardConversionOption.Inst'Class := null)
      return str
   is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QRegularExpression");
      Method := Object_GetAttrString (Class, "wildcardToRegularExpression");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (str_P));
      Dict := Dict_New;
      if options_P /= null then
         Dict_SetItemString (Dict, "options", options_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end wildcardToRegularExpression;
end QtAda6.QtCore.QRegularExpression;
