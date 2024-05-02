-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qjsondocument.adb
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
with QtAda6.QtCore.QJsonArray;
with QtAda6.QtCore.QJsonValue;
with QtAda6.QtCore.QByteArray;
with QtAda6.QtCore.QJsonParseError;
with QtAda6.QtCore.QJsonDocument.JsonFormat;
package body QtAda6.QtCore.QJsonDocument is
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
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QJsonDocument");
      Args  := Tuple_New (0);
      Dict  := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (array_K_P : access QtAda6.QtCore.QJsonArray.Inst'Class) return Class is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QJsonDocument");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if array_K_P /= null then array_K_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (object_P : DICT_str_QtAda6_QtCore_QJsonValue) return Class is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QJsonDocument");
      Args  := Tuple_New (1);
      Tuple := Tuple_New (2);
      Tuple_SetItem (Tuple, 0, Unicode_FromString (object_P.C0));
      Tuple_SetItem (Tuple, 1, (if object_P.C1 /= null then object_P.C1.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 0, Tuple);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (other_P : access QtAda6.QtCore.QJsonDocument.Inst'Class) return Class is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QJsonDocument");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if other_P /= null then other_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   procedure U_copy_U is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QJsonDocument");
      Method := Object_GetAttrString (Class, "__copy__");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end U_copy_U;
   function array_K (self : access Inst) return access QtAda6.QtCore.QJsonArray.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QJsonArray.Class := new QtAda6.QtCore.QJsonArray.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "array");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end array_K;
   function fromJson
     (json_P  : access QtAda6.QtCore.QByteArray.Inst'Class;
      error_P : access QtAda6.QtCore.QJsonParseError.Inst'Class := null)
      return access QtAda6.QtCore.QJsonDocument.Inst'Class
   is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QJsonDocument.Class := new QtAda6.QtCore.QJsonDocument.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QJsonDocument");
      Method := Object_GetAttrString (Class, "fromJson");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if json_P /= null then json_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if error_P /= null then
         Dict_SetItemString (Dict, "error", error_P.Python_Proxy);
      end if;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fromJson;
   function fromJson
     (json_P : bytes; error_P : access QtAda6.QtCore.QJsonParseError.Inst'Class := null)
      return access QtAda6.QtCore.QJsonDocument.Inst'Class
   is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QJsonDocument.Class := new QtAda6.QtCore.QJsonDocument.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QJsonDocument");
      Method := Object_GetAttrString (Class, "fromJson");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Bytes_FromString (Standard.String (json_P.all)));
      Dict := Dict_New;
      if error_P /= null then
         Dict_SetItemString (Dict, "error", error_P.Python_Proxy);
      end if;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fromJson;
   function fromVariant (variant_P : Any) return access QtAda6.QtCore.QJsonDocument.Inst'Class is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QJsonDocument.Class := new QtAda6.QtCore.QJsonDocument.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QJsonDocument");
      Method := Object_GetAttrString (Class, "fromVariant");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if variant_P /= null then variant_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fromVariant;
   function isArray (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isArray");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isArray;
   function isEmpty (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isEmpty");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isEmpty;
   function isNull (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isNull");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isNull;
   function isObject (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isObject");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isObject;
   function object (self : access Inst) return DICT_str_QtAda6_QtCore_QJsonValue is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "object");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Ret : DICT_str_QtAda6_QtCore_QJsonValue do
         Ret.C0              := As_String (Tuple_GetItem (Result, 0));
         Ret.C1.Python_Proxy := Tuple_GetItem (Result, 1);
      end return;
   end object;
   procedure setArray (self : access Inst; array_K_P : access QtAda6.QtCore.QJsonArray.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setArray");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if array_K_P /= null then array_K_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setArray;
   procedure setObject (self : access Inst; object_P : DICT_str_QtAda6_QtCore_QJsonValue) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setObject");
      Args   := Tuple_New (1);
      Tuple  := Tuple_New (2);
      Tuple_SetItem (Tuple, 0, Unicode_FromString (object_P.C0));
      Tuple_SetItem (Tuple, 1, (if object_P.C1 /= null then object_P.C1.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 0, Tuple);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setObject;
   procedure swap (self : access Inst; other_P : access QtAda6.QtCore.QJsonDocument.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "swap");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if other_P /= null then other_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end swap;
   function toJson
     (self : access Inst; format_P : access QtAda6.QtCore.QJsonDocument.JsonFormat.Inst'Class := null)
      return access QtAda6.QtCore.QByteArray.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toJson");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      if format_P /= null then
         Dict_SetItemString (Dict, "format", format_P.Python_Proxy);
      end if;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end toJson;
   function toVariant (self : access Inst) return Any is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toVariant");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return null;
   end toVariant;
end QtAda6.QtCore.QJsonDocument;
