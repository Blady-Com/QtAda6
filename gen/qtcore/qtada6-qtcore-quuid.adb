-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-quuid.adb
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
with QtAda6.QtCore.QUuid;
with QtAda6.QtCore.QUuid.StringFormat;
with QtAda6.QtCore.QByteArray;
with QtAda6.QtCore.QUuid.Variant;
with QtAda6.QtCore.QUuid.Version;
package body QtAda6.QtCore.QUuid is
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
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QUuid");
      Args  := Tuple_New (0);
      Dict  := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (l_P  : int; w1_P : int; w2_P : int; b1_P : int; b2_P : int; b3_P : int; b4_P : int; b5_P : int; b6_P : int;
      b7_P : int; b8_P : int) return Class
   is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QUuid");
      Args  := Tuple_New (11);
      Tuple_SetItem (Args, 0, Long_FromLong (l_P));
      Tuple_SetItem (Args, 1, Long_FromLong (w1_P));
      Tuple_SetItem (Args, 2, Long_FromLong (w2_P));
      Tuple_SetItem (Args, 3, Long_FromLong (b1_P));
      Tuple_SetItem (Args, 4, Long_FromLong (b2_P));
      Tuple_SetItem (Args, 5, Long_FromLong (b3_P));
      Tuple_SetItem (Args, 6, Long_FromLong (b4_P));
      Tuple_SetItem (Args, 7, Long_FromLong (b5_P));
      Tuple_SetItem (Args, 8, Long_FromLong (b6_P));
      Tuple_SetItem (Args, 9, Long_FromLong (b7_P));
      Tuple_SetItem (Args, 10, Long_FromLong (b8_P));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (string_P : str) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QUuid");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (string_P));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   procedure U_copy_U is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QUuid");
      Method := Object_GetAttrString (Class, "__copy__");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end U_copy_U;
   function U_reduce_U (self : access Inst) return access Object'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__reduce__");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return null;
   end U_reduce_U;
   function U_repr_U (self : access Inst) return access Object'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__repr__");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return null;
   end U_repr_U;
   function createUuid return access QtAda6.QtCore.QUuid.Inst'Class is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QUuid.Class := new QtAda6.QtCore.QUuid.Inst;
   begin
      Class            := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QUuid");
      Method           := Object_GetAttrString (Class, "createUuid");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end createUuid;
   function createUuidV3
     (ns_P : access QtAda6.QtCore.QUuid.Inst'Class; baseData_P : str) return access QtAda6.QtCore.QUuid.Inst'Class
   is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QUuid.Class := new QtAda6.QtCore.QUuid.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QUuid");
      Method := Object_GetAttrString (Class, "createUuidV3");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if ns_P /= null then ns_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Unicode_FromString (baseData_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end createUuidV3;
   function createUuidV3
     (ns_P : access QtAda6.QtCore.QUuid.Inst'Class; baseData_P : UNION_QtAda6_QtCore_QByteArray_bytes)
      return access QtAda6.QtCore.QUuid.Inst'Class
   is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QUuid.Class := new QtAda6.QtCore.QUuid.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QUuid");
      Method := Object_GetAttrString (Class, "createUuidV3");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if ns_P /= null then ns_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if baseData_P /= null then baseData_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end createUuidV3;
   function createUuidV5
     (ns_P : access QtAda6.QtCore.QUuid.Inst'Class; baseData_P : str) return access QtAda6.QtCore.QUuid.Inst'Class
   is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QUuid.Class := new QtAda6.QtCore.QUuid.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QUuid");
      Method := Object_GetAttrString (Class, "createUuidV5");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if ns_P /= null then ns_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Unicode_FromString (baseData_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end createUuidV5;
   function createUuidV5
     (ns_P : access QtAda6.QtCore.QUuid.Inst'Class; baseData_P : UNION_QtAda6_QtCore_QByteArray_bytes)
      return access QtAda6.QtCore.QUuid.Inst'Class
   is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QUuid.Class := new QtAda6.QtCore.QUuid.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QUuid");
      Method := Object_GetAttrString (Class, "createUuidV5");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if ns_P /= null then ns_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if baseData_P /= null then baseData_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end createUuidV5;
   function fromRfc4122 (arg_1_P : UNION_QtAda6_QtCore_QByteArray_bytes) return access QtAda6.QtCore.QUuid.Inst'Class is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QUuid.Class := new QtAda6.QtCore.QUuid.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QUuid");
      Method := Object_GetAttrString (Class, "fromRfc4122");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fromRfc4122;
   function fromString (string_P : str) return access QtAda6.QtCore.QUuid.Inst'Class is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QUuid.Class := new QtAda6.QtCore.QUuid.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QUuid");
      Method := Object_GetAttrString (Class, "fromString");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (string_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fromString;
   function isNull (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isNull");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isNull;
   function toByteArray
     (self : access Inst; mode_P : access QtAda6.QtCore.QUuid.StringFormat.Inst'Class := null)
      return access QtAda6.QtCore.QByteArray.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toByteArray");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      if mode_P /= null then
         Dict_SetItemString (Dict, "mode", mode_P.Python_Proxy);
      end if;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end toByteArray;
   function toRfc4122 (self : access Inst) return access QtAda6.QtCore.QByteArray.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "toRfc4122");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end toRfc4122;
   function toString
     (self : access Inst; mode_P : access QtAda6.QtCore.QUuid.StringFormat.Inst'Class := null) return str
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toString");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      if mode_P /= null then
         Dict_SetItemString (Dict, "mode", mode_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end toString;
   function variant_F (self : access Inst) return access QtAda6.QtCore.QUuid.Variant.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QUuid.Variant.Class := new QtAda6.QtCore.QUuid.Variant.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "variant");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end variant_F;
   function version_F (self : access Inst) return access QtAda6.QtCore.QUuid.Version.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QUuid.Version.Class := new QtAda6.QtCore.QUuid.Version.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "version");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end version_F;
end QtAda6.QtCore.QUuid;
