-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qregularexpressionmatch.adb
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
with QtAda6.QtCore.QRegularExpression.MatchOption;
with QtAda6.QtCore.QRegularExpression.MatchType;
with QtAda6.QtCore.QRegularExpression;
package body QtAda6.QtCore.QRegularExpressionMatch is
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
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QRegularExpressionMatch");
      Args  := Tuple_New (0);
      Dict  := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (match_P : access QtAda6.QtCore.QRegularExpressionMatch.Inst'Class) return Class is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QRegularExpressionMatch");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if match_P /= null then match_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   procedure U_copy_U is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QRegularExpressionMatch");
      Method := Object_GetAttrString (Class, "__copy__");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end U_copy_U;
   function captured (self : access Inst; name_P : str) return str is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "captured");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (name_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end captured;
   function captured (self : access Inst; nth_P : int := 0) return str is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "captured");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      if nth_P /= 0 then
         Dict_SetItemString (Dict, "nth", Long_FromLong (nth_P));
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end captured;
   function capturedEnd (self : access Inst; name_P : str) return int is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "capturedEnd");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (name_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end capturedEnd;
   function capturedEnd (self : access Inst; nth_P : int := 0) return int is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "capturedEnd");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      if nth_P /= 0 then
         Dict_SetItemString (Dict, "nth", Long_FromLong (nth_P));
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end capturedEnd;
   function capturedLength (self : access Inst; name_P : str) return int is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "capturedLength");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (name_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end capturedLength;
   function capturedLength (self : access Inst; nth_P : int := 0) return int is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "capturedLength");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      if nth_P /= 0 then
         Dict_SetItemString (Dict, "nth", Long_FromLong (nth_P));
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end capturedLength;
   function capturedStart (self : access Inst; name_P : str) return int is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "capturedStart");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (name_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end capturedStart;
   function capturedStart (self : access Inst; nth_P : int := 0) return int is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "capturedStart");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      if nth_P /= 0 then
         Dict_SetItemString (Dict, "nth", Long_FromLong (nth_P));
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end capturedStart;
   function capturedTexts (self : access Inst) return LIST_str is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "capturedTexts");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Ret : LIST_str (1 .. Natural (List_Size (Result))) do
         for Ind in Ret'Range loop
            Ret (Ind) := As_String (List_GetItem (Result, ssize_t (Ind - Ret'First)));
         end loop;
      end return;
   end capturedTexts;
   function capturedView (self : access Inst; name_P : str) return str is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "capturedView");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (name_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end capturedView;
   function capturedView (self : access Inst; nth_P : int := 0) return str is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "capturedView");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      if nth_P /= 0 then
         Dict_SetItemString (Dict, "nth", Long_FromLong (nth_P));
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end capturedView;
   function hasCaptured (self : access Inst; name_P : str) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hasCaptured");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (name_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end hasCaptured;
   function hasCaptured (self : access Inst; nth_P : int) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hasCaptured");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (nth_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end hasCaptured;
   function hasMatch (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hasMatch");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end hasMatch;
   function hasPartialMatch (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hasPartialMatch");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end hasPartialMatch;
   function isValid (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isValid");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isValid;
   function lastCapturedIndex (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "lastCapturedIndex");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end lastCapturedIndex;
   function matchOptions (self : access Inst) return access QtAda6.QtCore.QRegularExpression.MatchOption.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret                                          : constant QtAda6.QtCore.QRegularExpression.MatchOption.Class :=
        new QtAda6.QtCore.QRegularExpression.MatchOption.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "matchOptions");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end matchOptions;
   function matchType (self : access Inst) return access QtAda6.QtCore.QRegularExpression.MatchType.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret                                          : constant QtAda6.QtCore.QRegularExpression.MatchType.Class :=
        new QtAda6.QtCore.QRegularExpression.MatchType.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "matchType");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end matchType;
   function regularExpression (self : access Inst) return access QtAda6.QtCore.QRegularExpression.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QRegularExpression.Class := new QtAda6.QtCore.QRegularExpression.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "regularExpression");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end regularExpression;
   procedure swap (self : access Inst; other_P : access QtAda6.QtCore.QRegularExpressionMatch.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "swap");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if other_P /= null then other_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end swap;
end QtAda6.QtCore.QRegularExpressionMatch;
