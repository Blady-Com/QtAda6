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
with QtAda6.QtCore.QRegularExpression.MatchType;
with QtAda6.QtCore.QRegularExpression.MatchOption;
with QtAda6.QtCore.QRegularExpressionMatchIterator;
with QtAda6.QtCore.QRegularExpressionMatch;
package body QtAda6.QtCore.QRegularExpression is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QRegularExpression");
      Args  := Tuple_New (0);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create
     (pattern_P : str; options_P : access QtAda6.QtCore.QRegularExpression.PatternOption.Inst'Class := null)
      return Class
   is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QRegularExpression");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (pattern_P));
      Tuple_SetItem (Args, 1, (if options_P /= null then options_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (re_P : UNION_QtAda6_QtCore_QRegularExpressionstr) return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QRegularExpression");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if re_P /= null then re_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   procedure U_copy_U is
      Class, Method, Args, List, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QRegularExpression");
      Method := Object_GetAttrString (Class, "__copy__");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end U_copy_U;
   function anchoredPattern (expression_P : str) return str is
      Class, Method, Args, List, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QRegularExpression");
      Method := Object_GetAttrString (Class, "anchoredPattern");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (expression_P));
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end anchoredPattern;
   function captureCount (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "captureCount");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end captureCount;
   function errorString (self : access Inst) return str is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "errorString");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end errorString;
   function escape (str_P : str) return str is
      Class, Method, Args, List, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QRegularExpression");
      Method := Object_GetAttrString (Class, "escape");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (str_P));
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end escape;
   function fromWildcard
     (pattern_P : str; cs_P : access QtAda6.QtCore.Qt.CaseSensitivity.Inst'Class := null;
      options_P : access QtAda6.QtCore.QRegularExpression.WildcardConversionOption.Inst'Class := null)
      return access QtAda6.QtCore.QRegularExpression.Inst'Class
   is
      Class, Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtCore.QRegularExpression.Class := new QtAda6.QtCore.QRegularExpression.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QRegularExpression");
      Method := Object_GetAttrString (Class, "fromWildcard");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Unicode_FromString (pattern_P));
      Tuple_SetItem (Args, 1, (if cs_P /= null then cs_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if options_P /= null then options_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fromWildcard;
   function globalMatch
     (self           : access Inst; subject_P : str; offset_P : int := 0;
      matchType_P    : access QtAda6.QtCore.QRegularExpression.MatchType.Inst'Class   := null;
      matchOptions_P : access QtAda6.QtCore.QRegularExpression.MatchOption.Inst'Class := null)
      return access QtAda6.QtCore.QRegularExpressionMatchIterator.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QRegularExpressionMatchIterator.Class :=
        new QtAda6.QtCore.QRegularExpressionMatchIterator.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "globalMatch");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Unicode_FromString (subject_P));
      Tuple_SetItem (Args, 1, Long_FromLong (offset_P));
      Tuple_SetItem (Args, 2, (if matchType_P /= null then matchType_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if matchOptions_P /= null then matchOptions_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end globalMatch;
   function globalMatchView
     (self           : access Inst; subjectView_P : str; offset_P : int := 0;
      matchType_P    : access QtAda6.QtCore.QRegularExpression.MatchType.Inst'Class   := null;
      matchOptions_P : access QtAda6.QtCore.QRegularExpression.MatchOption.Inst'Class := null)
      return access QtAda6.QtCore.QRegularExpressionMatchIterator.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QRegularExpressionMatchIterator.Class :=
        new QtAda6.QtCore.QRegularExpressionMatchIterator.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "globalMatchView");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Unicode_FromString (subjectView_P));
      Tuple_SetItem (Args, 1, Long_FromLong (offset_P));
      Tuple_SetItem (Args, 2, (if matchType_P /= null then matchType_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if matchOptions_P /= null then matchOptions_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end globalMatchView;
   function isValid (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isValid");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isValid;
   function match_F
     (self           : access Inst; subject_P : str; offset_P : int := 0;
      matchType_P    : access QtAda6.QtCore.QRegularExpression.MatchType.Inst'Class   := null;
      matchOptions_P : access QtAda6.QtCore.QRegularExpression.MatchOption.Inst'Class := null)
      return access QtAda6.QtCore.QRegularExpressionMatch.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtCore.QRegularExpressionMatch.Class := new QtAda6.QtCore.QRegularExpressionMatch.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "match");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Unicode_FromString (subject_P));
      Tuple_SetItem (Args, 1, Long_FromLong (offset_P));
      Tuple_SetItem (Args, 2, (if matchType_P /= null then matchType_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if matchOptions_P /= null then matchOptions_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end match_F;
   function matchView
     (self           : access Inst; subjectView_P : str; offset_P : int := 0;
      matchType_P    : access QtAda6.QtCore.QRegularExpression.MatchType.Inst'Class   := null;
      matchOptions_P : access QtAda6.QtCore.QRegularExpression.MatchOption.Inst'Class := null)
      return access QtAda6.QtCore.QRegularExpressionMatch.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtCore.QRegularExpressionMatch.Class := new QtAda6.QtCore.QRegularExpressionMatch.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "matchView");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Unicode_FromString (subjectView_P));
      Tuple_SetItem (Args, 1, Long_FromLong (offset_P));
      Tuple_SetItem (Args, 2, (if matchType_P /= null then matchType_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if matchOptions_P /= null then matchOptions_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end matchView;
   function namedCaptureGroups (self : access Inst) return LIST_str is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "namedCaptureGroups");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return (2 .. 1 => <>);
   end namedCaptureGroups;
   procedure optimize (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "optimize");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end optimize;
   function pattern_F (self : access Inst) return str is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "pattern");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end pattern_F;
   function patternErrorOffset (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "patternErrorOffset");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end patternErrorOffset;
   function patternOptions (self : access Inst) return access QtAda6.QtCore.QRegularExpression.PatternOption.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QRegularExpression.PatternOption.Class :=
        new QtAda6.QtCore.QRegularExpression.PatternOption.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "patternOptions");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end patternOptions;
   procedure setPattern (self : access Inst; pattern_P : str) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPattern");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (pattern_P));
      Result := Object_CallObject (Method, Args, True);
   end setPattern;
   procedure setPatternOptions
     (self : access Inst; options_P : access QtAda6.QtCore.QRegularExpression.PatternOption.Inst'Class)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPatternOptions");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if options_P /= null then options_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setPatternOptions;
   procedure swap (self : access Inst; other_P : UNION_QtAda6_QtCore_QRegularExpressionstr) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "swap");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if other_P /= null then other_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end swap;
   function wildcardToRegularExpression
     (str_P : str; options_P : access QtAda6.QtCore.QRegularExpression.WildcardConversionOption.Inst'Class := null)
      return str
   is
      Class, Method, Args, List, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QRegularExpression");
      Method := Object_GetAttrString (Class, "wildcardToRegularExpression");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (str_P));
      Tuple_SetItem (Args, 1, (if options_P /= null then options_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end wildcardToRegularExpression;
end QtAda6.QtCore.QRegularExpression;
