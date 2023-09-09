-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qcollator.adb
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
with QtAda6.QtCore.QLocale;
with QtAda6.QtCore.QLocale.Language;
with QtAda6.QtCore.Qt.CaseSensitivity;
with QtAda6.QtCore.QCollatorSortKey;
package body QtAda6.QtCore.QCollator is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCollator");
      Args  := Tuple_New (0);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (arg_1_P : access QtAda6.QtCore.QCollator.Inst'Class) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCollator");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, arg_1_P.Python_Proxy);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (locale_P : Union_QtAda6_QtCore_QLocale_QtAda6_QtCore_QLocale_Language) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCollator");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function U_call_U (self : access Inst; s1_P : str; s2_P : str) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__call__");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (s1_P));
      Tuple_SetItem (Args, 1, Unicode_FromString (s2_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end U_call_U;
   function caseSensitivity (self : access Inst) return access QtAda6.QtCore.Qt.CaseSensitivity.Inst'Class is
      Method, Args, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.CaseSensitivity.Class := new QtAda6.QtCore.Qt.CaseSensitivity.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "caseSensitivity");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end caseSensitivity;
   function compare (self : access Inst; s1_P : bytes; len1_P : int; s2_P : bytes; len2_P : int) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "compare");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Bytes_FromString (String (s1_P)));
      Tuple_SetItem (Args, 1, Long_FromLong (len1_P));
      Tuple_SetItem (Args, 2, Bytes_FromString (String (s2_P)));
      Tuple_SetItem (Args, 3, Long_FromLong (len2_P));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end compare;
   function compare (self : access Inst; s1_P : str; s2_P : str) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "compare");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (s1_P));
      Tuple_SetItem (Args, 1, Unicode_FromString (s2_P));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end compare;
   function defaultCompare (s1_P : str; s2_P : str) return int is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCollator");
      Method := Object_GetAttrString (Class, "defaultCompare");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (s1_P));
      Tuple_SetItem (Args, 1, Unicode_FromString (s2_P));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end defaultCompare;
   function defaultSortKey (key_P : str) return access QtAda6.QtCore.QCollatorSortKey.Inst'Class is
      Class, Method, Args, Result : Handle;
      Ret : constant QtAda6.QtCore.QCollatorSortKey.Class := new QtAda6.QtCore.QCollatorSortKey.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCollator");
      Method := Object_GetAttrString (Class, "defaultSortKey");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (key_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end defaultSortKey;
   function ignorePunctuation (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "ignorePunctuation");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end ignorePunctuation;
   function locale (self : access Inst) return access QtAda6.QtCore.QLocale.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QLocale.Class := new QtAda6.QtCore.QLocale.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "locale");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end locale;
   function numericMode (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "numericMode");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end numericMode;
   procedure setCaseSensitivity (self : access Inst; cs_P : access QtAda6.QtCore.Qt.CaseSensitivity.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setCaseSensitivity");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, cs_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setCaseSensitivity;
   procedure setIgnorePunctuation (self : access Inst; on_P : bool) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setIgnorePunctuation");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (on_P));
      Result := Object_CallObject (Method, Args, True);
   end setIgnorePunctuation;
   procedure setLocale (self : access Inst; locale_P : Union_QtAda6_QtCore_QLocale_QtAda6_QtCore_QLocale_Language) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setLocale");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end setLocale;
   procedure setNumericMode (self : access Inst; on_P : bool) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setNumericMode");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (on_P));
      Result := Object_CallObject (Method, Args, True);
   end setNumericMode;
   function sortKey (self : access Inst; string_P : str) return access QtAda6.QtCore.QCollatorSortKey.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QCollatorSortKey.Class := new QtAda6.QtCore.QCollatorSortKey.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "sortKey");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (string_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end sortKey;
   procedure swap (self : access Inst; other_P : access QtAda6.QtCore.QCollator.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "swap");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, other_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end swap;
end QtAda6.QtCore.QCollator;
