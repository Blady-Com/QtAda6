-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qcbormap.adb
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
with QtAda6.QtCore.QCborValue;
with QtAda6.QtCore.QCborKnownTags;
with QtAda6.QtCore.QCborSimpleType;
with QtAda6.QtCore.QCborTag;
with QtAda6.QtCore.QCborValue.Type_K;
with QtAda6.QtCore.QByteArray;
with QtAda6.QtCore.QCborArray;
with QtAda6.QtCore.QJsonValue;
package body QtAda6.QtCore.QCborMap is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborMap");
      Args  := Tuple_New (0);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (other_P : access QtAda6.QtCore.QCborMap.Inst'Class) return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborMap");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if other_P /= null then other_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   procedure U_copy_U is
      Class, Method, Args, List, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborMap");
      Method := Object_GetAttrString (Class, "__copy__");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end U_copy_U;
   procedure clear (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "clear");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end clear;
   function compare (self : access Inst; other_P : access QtAda6.QtCore.QCborMap.Inst'Class) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "compare");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if other_P /= null then other_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end compare;
   function contains (self : access Inst; key_P : str) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "contains");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (key_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end contains;
   function contains (self : access Inst; key_P : int) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "contains");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (key_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end contains;
   function contains
     (self  : access Inst;
      key_P : UNION_QtAda6_QtCore_QCborValueQtAda6_QtCore_QCborKnownTagsQtAda6_QtCore_QCborSimpleTypeQtAda6_QtCore_QCborTagQtAda6_QtCore_QCborValue_Type_KstrboolQtAda6_QtCore_QByteArrayQtAda6_QtCore_QCborArrayQtAda6_QtCore_QCborMapbytesfloatint)
      return bool
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "contains");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if key_P /= null then key_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end contains;
   function empty (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "empty");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end empty;
   function fromJsonObject (o_P : DICT_strQtAda6_QtCore_QJsonValue) return access QtAda6.QtCore.QCborMap.Inst'Class is
      Class, Method, Args, List, Result : Handle;
      Ret                               : constant QtAda6.QtCore.QCborMap.Class := new QtAda6.QtCore.QCborMap.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborMap");
      Method := Object_GetAttrString (Class, "fromJsonObject");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if o_P /= null then o_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fromJsonObject;
   function fromVariantHash (hash_P : DICT_strAny) return access QtAda6.QtCore.QCborMap.Inst'Class is
      Class, Method, Args, List, Result : Handle;
      Ret                               : constant QtAda6.QtCore.QCborMap.Class := new QtAda6.QtCore.QCborMap.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborMap");
      Method := Object_GetAttrString (Class, "fromVariantHash");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if hash_P /= null then hash_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fromVariantHash;
   function fromVariantMap (map_P : DICT_strAny) return access QtAda6.QtCore.QCborMap.Inst'Class is
      Class, Method, Args, List, Result : Handle;
      Ret                               : constant QtAda6.QtCore.QCborMap.Class := new QtAda6.QtCore.QCborMap.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborMap");
      Method := Object_GetAttrString (Class, "fromVariantMap");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if map_P /= null then map_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fromVariantMap;
   function isEmpty (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isEmpty");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isEmpty;
   function keys (self : access Inst) return LIST_QtAda6_QtCore_QCborValue is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "keys");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return (2 .. 1 => <>);
   end keys;
   procedure remove (self : access Inst; key_P : str) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "remove");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (key_P));
      Result := Object_CallObject (Method, Args, True);
   end remove;
   procedure remove (self : access Inst; key_P : int) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "remove");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (key_P));
      Result := Object_CallObject (Method, Args, True);
   end remove;
   procedure remove
     (self  : access Inst;
      key_P : UNION_QtAda6_QtCore_QCborValueQtAda6_QtCore_QCborKnownTagsQtAda6_QtCore_QCborSimpleTypeQtAda6_QtCore_QCborTagQtAda6_QtCore_QCborValue_Type_KstrboolQtAda6_QtCore_QByteArrayQtAda6_QtCore_QCborArrayQtAda6_QtCore_QCborMapbytesfloatint)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "remove");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if key_P /= null then key_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end remove;
   function size (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "size");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end size;
   procedure swap (self : access Inst; other_P : access QtAda6.QtCore.QCborMap.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "swap");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if other_P /= null then other_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end swap;
   function take (self : access Inst; key_P : str) return access QtAda6.QtCore.QCborValue.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QCborValue.Class := new QtAda6.QtCore.QCborValue.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "take");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (key_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end take;
   function take (self : access Inst; key_P : int) return access QtAda6.QtCore.QCborValue.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QCborValue.Class := new QtAda6.QtCore.QCborValue.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "take");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (key_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end take;
   function take
     (self  : access Inst;
      key_P : UNION_QtAda6_QtCore_QCborValueQtAda6_QtCore_QCborKnownTagsQtAda6_QtCore_QCborSimpleTypeQtAda6_QtCore_QCborTagQtAda6_QtCore_QCborValue_Type_KstrboolQtAda6_QtCore_QByteArrayQtAda6_QtCore_QCborArrayQtAda6_QtCore_QCborMapbytesfloatint)
      return access QtAda6.QtCore.QCborValue.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QCborValue.Class := new QtAda6.QtCore.QCborValue.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "take");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if key_P /= null then key_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end take;
   function toCborValue (self : access Inst) return access QtAda6.QtCore.QCborValue.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QCborValue.Class := new QtAda6.QtCore.QCborValue.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "toCborValue");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end toCborValue;
   function toJsonObject (self : access Inst) return DICT_strQtAda6_QtCore_QJsonValue is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toJsonObject");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end toJsonObject;
   function toVariantHash (self : access Inst) return DICT_strAny is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toVariantHash");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end toVariantHash;
   function toVariantMap (self : access Inst) return DICT_strAny is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toVariantMap");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end toVariantMap;
   function value (self : access Inst; key_P : str) return access QtAda6.QtCore.QCborValue.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QCborValue.Class := new QtAda6.QtCore.QCborValue.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "value");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (key_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end value;
   function value (self : access Inst; key_P : int) return access QtAda6.QtCore.QCborValue.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QCborValue.Class := new QtAda6.QtCore.QCborValue.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "value");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (key_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end value;
   function value
     (self  : access Inst;
      key_P : UNION_QtAda6_QtCore_QCborValueQtAda6_QtCore_QCborKnownTagsQtAda6_QtCore_QCborSimpleTypeQtAda6_QtCore_QCborTagQtAda6_QtCore_QCborValue_Type_KstrboolQtAda6_QtCore_QByteArrayQtAda6_QtCore_QCborArrayQtAda6_QtCore_QCborMapbytesfloatint)
      return access QtAda6.QtCore.QCborValue.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QCborValue.Class := new QtAda6.QtCore.QCborValue.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "value");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if key_P /= null then key_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end value;
end QtAda6.QtCore.QCborMap;
