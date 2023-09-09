-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qbytearraymatcher.adb
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
with QtAda6.QtCore.QByteArray;
package body QtAda6.QtCore.QByteArrayMatcher is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QByteArrayMatcher");
      Args  := Tuple_New (0);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (other_P : Union_QtAda6_QtCore_QByteArrayMatcher_bytes) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QByteArrayMatcher");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (pattern_P : bytes; length_P : int) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QByteArrayMatcher");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, Bytes_FromString (String (pattern_P)));
      Tuple_SetItem (Args, 1, Long_FromLong (length_P));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (pattern_P : Union_QtAda6_QtCore_QByteArray_bytes) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QByteArrayMatcher");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   procedure U_copy_U is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QByteArrayMatcher");
      Method := Object_GetAttrString (Class, "__copy__");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end U_copy_U;
   function indexIn (self : access Inst; data_P : Union_QtAda6_QtCore_QByteArray_bytes; from_U_P : int) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "indexIn");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, No_Value);
      Tuple_SetItem (Args, 1, Long_FromLong (from_U_P));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end indexIn;
   function indexIn (self : access Inst; str_P : bytes; len_P : int; from_U_P : int) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "indexIn");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Bytes_FromString (String (str_P)));
      Tuple_SetItem (Args, 1, Long_FromLong (len_P));
      Tuple_SetItem (Args, 2, Long_FromLong (from_U_P));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end indexIn;
   function pattern (self : access Inst) return access QtAda6.QtCore.QByteArray.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "pattern");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end pattern;
   procedure setPattern (self : access Inst; pattern_P : Union_QtAda6_QtCore_QByteArray_bytes) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPattern");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end setPattern;
end QtAda6.QtCore.QByteArrayMatcher;
