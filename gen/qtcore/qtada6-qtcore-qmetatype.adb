-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qmetatype.adb
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
with QtAda6.QtCore.QMetaType.Type_K;
with QtAda6.QtCore.QMetaType.TypeFlag;
with QtAda6.QtCore.QByteArray;
with QtAda6.QtCore.QDataStream;
with QtAda6.QtCore.QMetaObject;
package body QtAda6.QtCore.QMetaType is
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
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      Args  := Tuple_New (0);
      Dict  := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (arg_1_P : access QtAda6.QtCore.QMetaType.Type_K.Inst'Class) return Class is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (arg_1_P : Type_K_T) return Class is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (type_K_P : int) return Class is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (type_K_P));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   procedure U_copy_U is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      Method := Object_GetAttrString (Class, "__copy__");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end U_copy_U;
   function alignOf (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "alignOf");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end alignOf;
   function canConvert
     (fromType_P : access QtAda6.QtCore.QMetaType.Inst'Class; toType_P : access QtAda6.QtCore.QMetaType.Inst'Class)
      return bool
   is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      Method := Object_GetAttrString (Class, "canConvert");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if fromType_P /= null then fromType_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if toType_P /= null then toType_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end canConvert;
   function canConvert
     (fromType_P : access QtAda6.QtCore.QMetaType.Inst'Class;
      toType_P   : access QtAda6.QtCore.QMetaType.Type_K.Inst'Class) return bool
   is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      Method := Object_GetAttrString (Class, "canConvert");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if fromType_P /= null then fromType_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if toType_P /= null then toType_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end canConvert;
   function canConvert
     (fromType_P : access QtAda6.QtCore.QMetaType.Type_K.Inst'Class;
      toType_P   : access QtAda6.QtCore.QMetaType.Inst'Class) return bool
   is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      Method := Object_GetAttrString (Class, "canConvert");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if fromType_P /= null then fromType_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if toType_P /= null then toType_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end canConvert;
   function canConvert
     (fromType_P : access QtAda6.QtCore.QMetaType.Type_K.Inst'Class;
      toType_P   : access QtAda6.QtCore.QMetaType.Type_K.Inst'Class) return bool
   is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      Method := Object_GetAttrString (Class, "canConvert");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if fromType_P /= null then fromType_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if toType_P /= null then toType_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end canConvert;
   function canView
     (fromType_P : access QtAda6.QtCore.QMetaType.Inst'Class; toType_P : access QtAda6.QtCore.QMetaType.Inst'Class)
      return bool
   is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      Method := Object_GetAttrString (Class, "canView");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if fromType_P /= null then fromType_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if toType_P /= null then toType_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end canView;
   function canView
     (fromType_P : access QtAda6.QtCore.QMetaType.Inst'Class;
      toType_P   : access QtAda6.QtCore.QMetaType.Type_K.Inst'Class) return bool
   is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      Method := Object_GetAttrString (Class, "canView");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if fromType_P /= null then fromType_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if toType_P /= null then toType_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end canView;
   function canView
     (fromType_P : access QtAda6.QtCore.QMetaType.Type_K.Inst'Class;
      toType_P   : access QtAda6.QtCore.QMetaType.Inst'Class) return bool
   is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      Method := Object_GetAttrString (Class, "canView");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if fromType_P /= null then fromType_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if toType_P /= null then toType_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end canView;
   function canView
     (fromType_P : access QtAda6.QtCore.QMetaType.Type_K.Inst'Class;
      toType_P   : access QtAda6.QtCore.QMetaType.Type_K.Inst'Class) return bool
   is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      Method := Object_GetAttrString (Class, "canView");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if fromType_P /= null then fromType_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if toType_P /= null then toType_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end canView;
   function compare (lhs_P : int; rhs_P : int; typeId_P : int) return TUPLE_bool_int is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      Method := Object_GetAttrString (Class, "compare");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (lhs_P));
      Tuple_SetItem (Args, 1, Long_FromLong (rhs_P));
      Tuple_SetItem (Args, 2, Long_FromLong (typeId_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Ret : TUPLE_bool_int do
         Ret.C0 := To_Ada (Tuple_GetItem (Result, 0));
         Ret.C1 := Long_AsLong (Tuple_GetItem (Result, 1));
      end return;
   end compare;
   function construct (self : access Inst; where_P : int; copy_P : int := 0) return int is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "construct");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (where_P));
      Dict := Dict_New;
      if copy_P /= 0 then
         Dict_SetItemString (Dict, "copy", Long_FromLong (copy_P));
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end construct;
   function construct (type_K_P : int; where_P : int; copy_P : int) return int is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      Method := Object_GetAttrString (Class, "construct");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (type_K_P));
      Tuple_SetItem (Args, 1, Long_FromLong (where_P));
      Tuple_SetItem (Args, 2, Long_FromLong (copy_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end construct;
   function convert (from_U_P : int; fromTypeId_P : int; to_P : int; toTypeId_P : int) return bool is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      Method := Object_GetAttrString (Class, "convert");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Long_FromLong (from_U_P));
      Tuple_SetItem (Args, 1, Long_FromLong (fromTypeId_P));
      Tuple_SetItem (Args, 2, Long_FromLong (to_P));
      Tuple_SetItem (Args, 3, Long_FromLong (toTypeId_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end convert;
   function convert
     (fromType_P : access QtAda6.QtCore.QMetaType.Inst'Class; from_U_P : int;
      toType_P   : access QtAda6.QtCore.QMetaType.Inst'Class; to_P : int) return bool
   is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      Method := Object_GetAttrString (Class, "convert");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if fromType_P /= null then fromType_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (from_U_P));
      Tuple_SetItem (Args, 2, (if toType_P /= null then toType_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, Long_FromLong (to_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end convert;
   function convert
     (fromType_P : access QtAda6.QtCore.QMetaType.Inst'Class; from_U_P : int;
      toType_P   : access QtAda6.QtCore.QMetaType.Type_K.Inst'Class; to_P : int) return bool
   is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      Method := Object_GetAttrString (Class, "convert");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if fromType_P /= null then fromType_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (from_U_P));
      Tuple_SetItem (Args, 2, (if toType_P /= null then toType_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, Long_FromLong (to_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end convert;
   function convert
     (fromType_P : access QtAda6.QtCore.QMetaType.Type_K.Inst'Class; from_U_P : int;
      toType_P   : access QtAda6.QtCore.QMetaType.Inst'Class; to_P : int) return bool
   is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      Method := Object_GetAttrString (Class, "convert");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if fromType_P /= null then fromType_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (from_U_P));
      Tuple_SetItem (Args, 2, (if toType_P /= null then toType_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, Long_FromLong (to_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end convert;
   function convert
     (fromType_P : access QtAda6.QtCore.QMetaType.Type_K.Inst'Class; from_U_P : int;
      toType_P   : access QtAda6.QtCore.QMetaType.Type_K.Inst'Class; to_P : int) return bool
   is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      Method := Object_GetAttrString (Class, "convert");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if fromType_P /= null then fromType_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (from_U_P));
      Tuple_SetItem (Args, 2, (if toType_P /= null then toType_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, Long_FromLong (to_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end convert;
   function create (self : access Inst; copy_P : int := 0) return int is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "create");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      if copy_P /= 0 then
         Dict_SetItemString (Dict, "copy", Long_FromLong (copy_P));
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end create;
   function create (type_K_P : int; copy_P : int := 0) return int is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      Method := Object_GetAttrString (Class, "create");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (type_K_P));
      Dict := Dict_New;
      if copy_P /= 0 then
         Dict_SetItemString (Dict, "copy", Long_FromLong (copy_P));
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end create;
   procedure destroy (self : access Inst; data_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "destroy");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (data_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end destroy;
   procedure destroy (type_K_P : int; data_P : int) is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      Method := Object_GetAttrString (Class, "destroy");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (type_K_P));
      Tuple_SetItem (Args, 1, Long_FromLong (data_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end destroy;
   procedure destruct (self : access Inst; data_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "destruct");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (data_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end destruct;
   procedure destruct (type_K_P : int; where_P : int) is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      Method := Object_GetAttrString (Class, "destruct");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (type_K_P));
      Tuple_SetItem (Args, 1, Long_FromLong (where_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end destruct;
   function equals (lhs_P : int; rhs_P : int; typeId_P : int) return TUPLE_bool_int is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      Method := Object_GetAttrString (Class, "equals");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (lhs_P));
      Tuple_SetItem (Args, 1, Long_FromLong (rhs_P));
      Tuple_SetItem (Args, 2, Long_FromLong (typeId_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Ret : TUPLE_bool_int do
         Ret.C0 := To_Ada (Tuple_GetItem (Result, 0));
         Ret.C1 := Long_AsLong (Tuple_GetItem (Result, 1));
      end return;
   end equals;
   function equals (self : access Inst; lhs_P : int; rhs_P : int) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "equals");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (lhs_P));
      Tuple_SetItem (Args, 1, Long_FromLong (rhs_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end equals;
   function flags (self : access Inst) return access QtAda6.QtCore.QMetaType.TypeFlag.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QMetaType.TypeFlag.Class := new QtAda6.QtCore.QMetaType.TypeFlag.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "flags");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end flags;
   function fromName
     (name_P : access QtAda6.QtCore.QByteArray.Inst'Class) return access QtAda6.QtCore.QMetaType.Inst'Class
   is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QMetaType.Class := new QtAda6.QtCore.QMetaType.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      Method := Object_GetAttrString (Class, "fromName");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if name_P /= null then name_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fromName;
   function fromName (name_P : bytes) return access QtAda6.QtCore.QMetaType.Inst'Class is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QMetaType.Class := new QtAda6.QtCore.QMetaType.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      Method := Object_GetAttrString (Class, "fromName");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Bytes_FromString (Standard.String (name_P.all)));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fromName;
   function hasRegisteredConverterFunction
     (fromType_P : access QtAda6.QtCore.QMetaType.Inst'Class; toType_P : access QtAda6.QtCore.QMetaType.Inst'Class)
      return bool
   is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      Method := Object_GetAttrString (Class, "hasRegisteredConverterFunction");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if fromType_P /= null then fromType_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if toType_P /= null then toType_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end hasRegisteredConverterFunction;
   function hasRegisteredConverterFunction
     (fromType_P : access QtAda6.QtCore.QMetaType.Inst'Class;
      toType_P   : access QtAda6.QtCore.QMetaType.Type_K.Inst'Class) return bool
   is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      Method := Object_GetAttrString (Class, "hasRegisteredConverterFunction");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if fromType_P /= null then fromType_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if toType_P /= null then toType_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end hasRegisteredConverterFunction;
   function hasRegisteredConverterFunction
     (fromType_P : access QtAda6.QtCore.QMetaType.Type_K.Inst'Class;
      toType_P   : access QtAda6.QtCore.QMetaType.Inst'Class) return bool
   is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      Method := Object_GetAttrString (Class, "hasRegisteredConverterFunction");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if fromType_P /= null then fromType_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if toType_P /= null then toType_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end hasRegisteredConverterFunction;
   function hasRegisteredConverterFunction
     (fromType_P : access QtAda6.QtCore.QMetaType.Type_K.Inst'Class;
      toType_P   : access QtAda6.QtCore.QMetaType.Type_K.Inst'Class) return bool
   is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      Method := Object_GetAttrString (Class, "hasRegisteredConverterFunction");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if fromType_P /= null then fromType_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if toType_P /= null then toType_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end hasRegisteredConverterFunction;
   function hasRegisteredDataStreamOperators (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hasRegisteredDataStreamOperators");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end hasRegisteredDataStreamOperators;
   function hasRegisteredDebugStreamOperator (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hasRegisteredDebugStreamOperator");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end hasRegisteredDebugStreamOperator;
   function hasRegisteredDebugStreamOperator (typeId_P : int) return bool is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      Method := Object_GetAttrString (Class, "hasRegisteredDebugStreamOperator");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (typeId_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end hasRegisteredDebugStreamOperator;
   function hasRegisteredMutableViewFunction
     (fromType_P : access QtAda6.QtCore.QMetaType.Inst'Class; toType_P : access QtAda6.QtCore.QMetaType.Inst'Class)
      return bool
   is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      Method := Object_GetAttrString (Class, "hasRegisteredMutableViewFunction");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if fromType_P /= null then fromType_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if toType_P /= null then toType_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end hasRegisteredMutableViewFunction;
   function hasRegisteredMutableViewFunction
     (fromType_P : access QtAda6.QtCore.QMetaType.Inst'Class;
      toType_P   : access QtAda6.QtCore.QMetaType.Type_K.Inst'Class) return bool
   is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      Method := Object_GetAttrString (Class, "hasRegisteredMutableViewFunction");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if fromType_P /= null then fromType_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if toType_P /= null then toType_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end hasRegisteredMutableViewFunction;
   function hasRegisteredMutableViewFunction
     (fromType_P : access QtAda6.QtCore.QMetaType.Type_K.Inst'Class;
      toType_P   : access QtAda6.QtCore.QMetaType.Inst'Class) return bool
   is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      Method := Object_GetAttrString (Class, "hasRegisteredMutableViewFunction");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if fromType_P /= null then fromType_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if toType_P /= null then toType_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end hasRegisteredMutableViewFunction;
   function hasRegisteredMutableViewFunction
     (fromType_P : access QtAda6.QtCore.QMetaType.Type_K.Inst'Class;
      toType_P   : access QtAda6.QtCore.QMetaType.Type_K.Inst'Class) return bool
   is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      Method := Object_GetAttrString (Class, "hasRegisteredMutableViewFunction");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if fromType_P /= null then fromType_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if toType_P /= null then toType_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end hasRegisteredMutableViewFunction;
   function id (self : access Inst; arg_1_P : int := 0) return int is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "id");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      if arg_1_P /= 0 then
         Dict_SetItemString (Dict, "arg__1", Long_FromLong (arg_1_P));
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end id;
   function isCopyConstructible (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isCopyConstructible");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isCopyConstructible;
   function isDefaultConstructible (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isDefaultConstructible");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isDefaultConstructible;
   function isDestructible (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isDestructible");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isDestructible;
   function isEqualityComparable (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isEqualityComparable");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isEqualityComparable;
   function isMoveConstructible (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isMoveConstructible");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isMoveConstructible;
   function isOrdered (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isOrdered");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isOrdered;
   function isRegistered (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isRegistered");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isRegistered;
   function isRegistered (type_K_P : int) return bool is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      Method := Object_GetAttrString (Class, "isRegistered");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (type_K_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isRegistered;
   function isValid (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isValid");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isValid;
   function load (self : access Inst; stream_P : access QtAda6.QtCore.QDataStream.Inst'Class; data_P : int) return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "load");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if stream_P /= null then stream_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (data_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end load;
   function load (stream_P : access QtAda6.QtCore.QDataStream.Inst'Class; type_K_P : int; data_P : int) return bool is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      Method := Object_GetAttrString (Class, "load");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if stream_P /= null then stream_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (type_K_P));
      Tuple_SetItem (Args, 2, Long_FromLong (data_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end load;
   function metaObjectForType (type_K_P : int) return access QtAda6.QtCore.QMetaObject.Inst'Class is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QMetaObject.Class := new QtAda6.QtCore.QMetaObject.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      Method := Object_GetAttrString (Class, "metaObjectForType");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (type_K_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end metaObjectForType;
   function name (self : access Inst) return bytes is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "name");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return new Standard.String'(Bytes_AsString (Result));
   end name;
   procedure registerType (self : access Inst) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "registerType");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end registerType;
   function save (self : access Inst; stream_P : access QtAda6.QtCore.QDataStream.Inst'Class; data_P : int) return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "save");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if stream_P /= null then stream_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (data_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end save;
   function save (stream_P : access QtAda6.QtCore.QDataStream.Inst'Class; type_K_P : int; data_P : int) return bool is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      Method := Object_GetAttrString (Class, "save");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if stream_P /= null then stream_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (type_K_P));
      Tuple_SetItem (Args, 2, Long_FromLong (data_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end save;
   function sizeOf (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "sizeOf");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end sizeOf;
   function sizeOf (type_K_P : int) return int is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      Method := Object_GetAttrString (Class, "sizeOf");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (type_K_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end sizeOf;
   function type_K_F (typeName_P : bytes) return int is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      Method := Object_GetAttrString (Class, "type");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Bytes_FromString (Standard.String (typeName_P.all)));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end type_K_F;
   function typeFlags (type_K_P : int) return access QtAda6.QtCore.QMetaType.TypeFlag.Inst'Class is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QMetaType.TypeFlag.Class := new QtAda6.QtCore.QMetaType.TypeFlag.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      Method := Object_GetAttrString (Class, "typeFlags");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (type_K_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end typeFlags;
   function typeName (type_K_P : int) return bytes is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      Method := Object_GetAttrString (Class, "typeName");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (type_K_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return new Standard.String'(Bytes_AsString (Result));
   end typeName;
   procedure unregisterConverterFunction
     (from_U_P : access QtAda6.QtCore.QMetaType.Inst'Class; to_P : access QtAda6.QtCore.QMetaType.Inst'Class)
   is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      Method := Object_GetAttrString (Class, "unregisterConverterFunction");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if from_U_P /= null then from_U_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if to_P /= null then to_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end unregisterConverterFunction;
   procedure unregisterConverterFunction
     (from_U_P : access QtAda6.QtCore.QMetaType.Inst'Class; to_P : access QtAda6.QtCore.QMetaType.Type_K.Inst'Class)
   is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      Method := Object_GetAttrString (Class, "unregisterConverterFunction");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if from_U_P /= null then from_U_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if to_P /= null then to_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end unregisterConverterFunction;
   procedure unregisterConverterFunction
     (from_U_P : access QtAda6.QtCore.QMetaType.Type_K.Inst'Class; to_P : access QtAda6.QtCore.QMetaType.Inst'Class)
   is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      Method := Object_GetAttrString (Class, "unregisterConverterFunction");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if from_U_P /= null then from_U_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if to_P /= null then to_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end unregisterConverterFunction;
   procedure unregisterConverterFunction
     (from_U_P : access QtAda6.QtCore.QMetaType.Type_K.Inst'Class;
      to_P     : access QtAda6.QtCore.QMetaType.Type_K.Inst'Class)
   is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      Method := Object_GetAttrString (Class, "unregisterConverterFunction");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if from_U_P /= null then from_U_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if to_P /= null then to_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end unregisterConverterFunction;
   procedure unregisterMetaType (type_K_P : access QtAda6.QtCore.QMetaType.Inst'Class) is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      Method := Object_GetAttrString (Class, "unregisterMetaType");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if type_K_P /= null then type_K_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end unregisterMetaType;
   procedure unregisterMetaType (type_K_P : access QtAda6.QtCore.QMetaType.Type_K.Inst'Class) is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      Method := Object_GetAttrString (Class, "unregisterMetaType");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if type_K_P /= null then type_K_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end unregisterMetaType;
   procedure unregisterMutableViewFunction
     (from_U_P : access QtAda6.QtCore.QMetaType.Inst'Class; to_P : access QtAda6.QtCore.QMetaType.Inst'Class)
   is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      Method := Object_GetAttrString (Class, "unregisterMutableViewFunction");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if from_U_P /= null then from_U_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if to_P /= null then to_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end unregisterMutableViewFunction;
   procedure unregisterMutableViewFunction
     (from_U_P : access QtAda6.QtCore.QMetaType.Inst'Class; to_P : access QtAda6.QtCore.QMetaType.Type_K.Inst'Class)
   is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      Method := Object_GetAttrString (Class, "unregisterMutableViewFunction");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if from_U_P /= null then from_U_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if to_P /= null then to_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end unregisterMutableViewFunction;
   procedure unregisterMutableViewFunction
     (from_U_P : access QtAda6.QtCore.QMetaType.Type_K.Inst'Class; to_P : access QtAda6.QtCore.QMetaType.Inst'Class)
   is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      Method := Object_GetAttrString (Class, "unregisterMutableViewFunction");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if from_U_P /= null then from_U_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if to_P /= null then to_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end unregisterMutableViewFunction;
   procedure unregisterMutableViewFunction
     (from_U_P : access QtAda6.QtCore.QMetaType.Type_K.Inst'Class;
      to_P     : access QtAda6.QtCore.QMetaType.Type_K.Inst'Class)
   is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      Method := Object_GetAttrString (Class, "unregisterMutableViewFunction");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if from_U_P /= null then from_U_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if to_P /= null then to_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end unregisterMutableViewFunction;
   function view
     (fromType_P : access QtAda6.QtCore.QMetaType.Inst'Class; from_U_P : int;
      toType_P   : access QtAda6.QtCore.QMetaType.Inst'Class; to_P : int) return bool
   is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      Method := Object_GetAttrString (Class, "view");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if fromType_P /= null then fromType_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (from_U_P));
      Tuple_SetItem (Args, 2, (if toType_P /= null then toType_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, Long_FromLong (to_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end view;
   function view
     (fromType_P : access QtAda6.QtCore.QMetaType.Inst'Class; from_U_P : int;
      toType_P   : access QtAda6.QtCore.QMetaType.Type_K.Inst'Class; to_P : int) return bool
   is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      Method := Object_GetAttrString (Class, "view");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if fromType_P /= null then fromType_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (from_U_P));
      Tuple_SetItem (Args, 2, (if toType_P /= null then toType_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, Long_FromLong (to_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end view;
   function view
     (fromType_P : access QtAda6.QtCore.QMetaType.Type_K.Inst'Class; from_U_P : int;
      toType_P   : access QtAda6.QtCore.QMetaType.Inst'Class; to_P : int) return bool
   is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      Method := Object_GetAttrString (Class, "view");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if fromType_P /= null then fromType_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (from_U_P));
      Tuple_SetItem (Args, 2, (if toType_P /= null then toType_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, Long_FromLong (to_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end view;
   function view
     (fromType_P : access QtAda6.QtCore.QMetaType.Type_K.Inst'Class; from_U_P : int;
      toType_P   : access QtAda6.QtCore.QMetaType.Type_K.Inst'Class; to_P : int) return bool
   is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaType");
      Method := Object_GetAttrString (Class, "view");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if fromType_P /= null then fromType_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (from_U_P));
      Tuple_SetItem (Args, 2, (if toType_P /= null then toType_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, Long_FromLong (to_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end view;
end QtAda6.QtCore.QMetaType;
