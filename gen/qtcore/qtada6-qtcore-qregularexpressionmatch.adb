-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qregularexpressionmatch.adb
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
with QtAda6.QtCore.QRegularExpression.MatchOption;
with QtAda6.QtCore.QRegularExpression.MatchType;
with QtAda6.QtCore.QRegularExpression;
package body QtAda6.QtCore.QRegularExpressionMatch is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QRegularExpressionMatch");
      Args  := Tuple_New (0);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (match_P : access QtAda6.QtCore.QRegularExpressionMatch.Inst'Class) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QRegularExpressionMatch");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, match_P.Python_Proxy);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   procedure U_copy_U is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QRegularExpressionMatch");
      Method := Object_GetAttrString (Class, "__copy__");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end U_copy_U;
   function captured (self : access Inst; name_P : str) return str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "captured");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (name_P));
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end captured;
   function captured (self : access Inst; nth_P : int) return str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "captured");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (nth_P));
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end captured;
   function capturedEnd (self : access Inst; name_P : str) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "capturedEnd");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (name_P));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end capturedEnd;
   function capturedEnd (self : access Inst; nth_P : int) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "capturedEnd");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (nth_P));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end capturedEnd;
   function capturedLength (self : access Inst; name_P : str) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "capturedLength");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (name_P));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end capturedLength;
   function capturedLength (self : access Inst; nth_P : int) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "capturedLength");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (nth_P));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end capturedLength;
   function capturedStart (self : access Inst; name_P : str) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "capturedStart");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (name_P));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end capturedStart;
   function capturedStart (self : access Inst; nth_P : int) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "capturedStart");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (nth_P));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end capturedStart;
   function capturedTexts (self : access Inst) return List_str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "capturedTexts");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end capturedTexts;
   function capturedView (self : access Inst; name_P : str) return str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "capturedView");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (name_P));
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end capturedView;
   function capturedView (self : access Inst; nth_P : int) return str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "capturedView");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (nth_P));
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end capturedView;
   function hasCaptured (self : access Inst; name_P : str) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hasCaptured");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (name_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end hasCaptured;
   function hasCaptured (self : access Inst; nth_P : int) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hasCaptured");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (nth_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end hasCaptured;
   function hasMatch (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hasMatch");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end hasMatch;
   function hasPartialMatch (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hasPartialMatch");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end hasPartialMatch;
   function isValid (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isValid");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isValid;
   function lastCapturedIndex (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "lastCapturedIndex");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end lastCapturedIndex;
   function matchOptions (self : access Inst) return access QtAda6.QtCore.QRegularExpression.MatchOption.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QRegularExpression.MatchOption.Class :=
        new QtAda6.QtCore.QRegularExpression.MatchOption.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "matchOptions");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end matchOptions;
   function matchType (self : access Inst) return access QtAda6.QtCore.QRegularExpression.MatchType.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QRegularExpression.MatchType.Class :=
        new QtAda6.QtCore.QRegularExpression.MatchType.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "matchType");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end matchType;
   function regularExpression (self : access Inst) return access QtAda6.QtCore.QRegularExpression.Inst'Class is
      Method, Args, Result : Handle;
      Ret : constant QtAda6.QtCore.QRegularExpression.Class := new QtAda6.QtCore.QRegularExpression.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "regularExpression");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end regularExpression;
   procedure swap (self : access Inst; other_P : access QtAda6.QtCore.QRegularExpressionMatch.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "swap");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, other_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end swap;
end QtAda6.QtCore.QRegularExpressionMatch;
