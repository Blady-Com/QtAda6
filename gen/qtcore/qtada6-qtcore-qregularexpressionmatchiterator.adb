-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qregularexpressionmatchiterator.adb
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
with QtAda6.QtCore.QRegularExpressionMatch;
with QtAda6.QtCore.QRegularExpression;
package body QtAda6.QtCore.QRegularExpressionMatchIterator is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QRegularExpressionMatchIterator");
      Args  := Tuple_New (0);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (iterator_P : access QtAda6.QtCore.QRegularExpressionMatchIterator.Inst'Class) return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QRegularExpressionMatchIterator");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if iterator_P /= null then iterator_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   procedure U_copy_U is
      Class, Method, Args, List, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QRegularExpressionMatchIterator");
      Method := Object_GetAttrString (Class, "__copy__");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end U_copy_U;
   function hasNext (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hasNext");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end hasNext;
   function isValid (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isValid");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isValid;
   function matchOptions (self : access Inst) return access QtAda6.QtCore.QRegularExpression.MatchOption.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QRegularExpression.MatchOption.Class :=
        new QtAda6.QtCore.QRegularExpression.MatchOption.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "matchOptions");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end matchOptions;
   function matchType (self : access Inst) return access QtAda6.QtCore.QRegularExpression.MatchType.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QRegularExpression.MatchType.Class :=
        new QtAda6.QtCore.QRegularExpression.MatchType.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "matchType");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end matchType;
   function next (self : access Inst) return access QtAda6.QtCore.QRegularExpressionMatch.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtCore.QRegularExpressionMatch.Class := new QtAda6.QtCore.QRegularExpressionMatch.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "next");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end next;
   function peekNext (self : access Inst) return access QtAda6.QtCore.QRegularExpressionMatch.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtCore.QRegularExpressionMatch.Class := new QtAda6.QtCore.QRegularExpressionMatch.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "peekNext");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end peekNext;
   function regularExpression (self : access Inst) return access QtAda6.QtCore.QRegularExpression.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtCore.QRegularExpression.Class := new QtAda6.QtCore.QRegularExpression.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "regularExpression");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end regularExpression;
   procedure swap (self : access Inst; other_P : access QtAda6.QtCore.QRegularExpressionMatchIterator.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "swap");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if other_P /= null then other_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end swap;
end QtAda6.QtCore.QRegularExpressionMatchIterator;
