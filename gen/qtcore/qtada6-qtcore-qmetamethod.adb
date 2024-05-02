-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qmetamethod.adb
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
with QtAda6.QtCore.QMetaMethod.Access_K;
with QtAda6.QtCore.QMetaObject;
with QtAda6.QtCore.SignalInstance;
with QtAda6.QtCore.QObject;
with QtAda6.QtCore.Qt.ConnectionType;
with QtAda6.QtCore.QGenericReturnArgument;
with QtAda6.QtCore.QGenericArgument;
with QtAda6.QtCore.QByteArray;
with QtAda6.QtCore.QMetaMethod.MethodType;
with QtAda6.QtCore.QMetaType;
package body QtAda6.QtCore.QMetaMethod is
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
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaMethod");
      Args  := Tuple_New (0);
      Dict  := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   procedure U_copy_U is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaMethod");
      Method := Object_GetAttrString (Class, "__copy__");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end U_copy_U;
   function access_K_F (self : access Inst) return access QtAda6.QtCore.QMetaMethod.Access_K.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QMetaMethod.Access_K.Class := new QtAda6.QtCore.QMetaMethod.Access_K.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "access");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end access_K_F;
   function enclosingMetaObject (self : access Inst) return access QtAda6.QtCore.QMetaObject.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QMetaObject.Class := new QtAda6.QtCore.QMetaObject.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "enclosingMetaObject");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end enclosingMetaObject;
   function fromSignal
     (signal_P : access QtAda6.QtCore.SignalInstance.Inst'Class) return access QtAda6.QtCore.QMetaMethod.Inst'Class
   is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QMetaMethod.Class := new QtAda6.QtCore.QMetaMethod.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaMethod");
      Method := Object_GetAttrString (Class, "fromSignal");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if signal_P /= null then signal_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fromSignal;
   function invoke
     (self             : access Inst; object_P : access QtAda6.QtCore.QObject.Inst'Class;
      connectionType_P : access QtAda6.QtCore.Qt.ConnectionType.Inst'Class;
      returnValue_P    : access QtAda6.QtCore.QGenericReturnArgument.Inst'Class;
      val0_P           : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val1_P           : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val2_P           : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val3_P           : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val4_P           : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val5_P           : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val6_P           : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val7_P           : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val8_P           : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val9_P           : access QtAda6.QtCore.QGenericArgument.Inst'Class := null) return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "invoke");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if object_P /= null then object_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if connectionType_P /= null then connectionType_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if returnValue_P /= null then returnValue_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if val0_P /= null then
         Dict_SetItemString (Dict, "val0", val0_P.Python_Proxy);
      end if;
      if val1_P /= null then
         Dict_SetItemString (Dict, "val1", val1_P.Python_Proxy);
      end if;
      if val2_P /= null then
         Dict_SetItemString (Dict, "val2", val2_P.Python_Proxy);
      end if;
      if val3_P /= null then
         Dict_SetItemString (Dict, "val3", val3_P.Python_Proxy);
      end if;
      if val4_P /= null then
         Dict_SetItemString (Dict, "val4", val4_P.Python_Proxy);
      end if;
      if val5_P /= null then
         Dict_SetItemString (Dict, "val5", val5_P.Python_Proxy);
      end if;
      if val6_P /= null then
         Dict_SetItemString (Dict, "val6", val6_P.Python_Proxy);
      end if;
      if val7_P /= null then
         Dict_SetItemString (Dict, "val7", val7_P.Python_Proxy);
      end if;
      if val8_P /= null then
         Dict_SetItemString (Dict, "val8", val8_P.Python_Proxy);
      end if;
      if val9_P /= null then
         Dict_SetItemString (Dict, "val9", val9_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end invoke;
   function invoke
     (self             : access Inst; object_P : access QtAda6.QtCore.QObject.Inst'Class;
      connectionType_P : access QtAda6.QtCore.Qt.ConnectionType.Inst'Class;
      val0_P           : access QtAda6.QtCore.QGenericArgument.Inst'Class;
      val1_P           : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val2_P           : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val3_P           : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val4_P           : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val5_P           : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val6_P           : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val7_P           : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val8_P           : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val9_P           : access QtAda6.QtCore.QGenericArgument.Inst'Class := null) return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "invoke");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if object_P /= null then object_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if connectionType_P /= null then connectionType_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if val0_P /= null then val0_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if val1_P /= null then
         Dict_SetItemString (Dict, "val1", val1_P.Python_Proxy);
      end if;
      if val2_P /= null then
         Dict_SetItemString (Dict, "val2", val2_P.Python_Proxy);
      end if;
      if val3_P /= null then
         Dict_SetItemString (Dict, "val3", val3_P.Python_Proxy);
      end if;
      if val4_P /= null then
         Dict_SetItemString (Dict, "val4", val4_P.Python_Proxy);
      end if;
      if val5_P /= null then
         Dict_SetItemString (Dict, "val5", val5_P.Python_Proxy);
      end if;
      if val6_P /= null then
         Dict_SetItemString (Dict, "val6", val6_P.Python_Proxy);
      end if;
      if val7_P /= null then
         Dict_SetItemString (Dict, "val7", val7_P.Python_Proxy);
      end if;
      if val8_P /= null then
         Dict_SetItemString (Dict, "val8", val8_P.Python_Proxy);
      end if;
      if val9_P /= null then
         Dict_SetItemString (Dict, "val9", val9_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end invoke;
   function invoke
     (self          : access Inst; object_P : access QtAda6.QtCore.QObject.Inst'Class;
      returnValue_P : access QtAda6.QtCore.QGenericReturnArgument.Inst'Class;
      val0_P        : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val1_P        : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val2_P        : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val3_P        : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val4_P        : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val5_P        : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val6_P        : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val7_P        : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val8_P        : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val9_P        : access QtAda6.QtCore.QGenericArgument.Inst'Class := null) return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "invoke");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if object_P /= null then object_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if returnValue_P /= null then returnValue_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if val0_P /= null then
         Dict_SetItemString (Dict, "val0", val0_P.Python_Proxy);
      end if;
      if val1_P /= null then
         Dict_SetItemString (Dict, "val1", val1_P.Python_Proxy);
      end if;
      if val2_P /= null then
         Dict_SetItemString (Dict, "val2", val2_P.Python_Proxy);
      end if;
      if val3_P /= null then
         Dict_SetItemString (Dict, "val3", val3_P.Python_Proxy);
      end if;
      if val4_P /= null then
         Dict_SetItemString (Dict, "val4", val4_P.Python_Proxy);
      end if;
      if val5_P /= null then
         Dict_SetItemString (Dict, "val5", val5_P.Python_Proxy);
      end if;
      if val6_P /= null then
         Dict_SetItemString (Dict, "val6", val6_P.Python_Proxy);
      end if;
      if val7_P /= null then
         Dict_SetItemString (Dict, "val7", val7_P.Python_Proxy);
      end if;
      if val8_P /= null then
         Dict_SetItemString (Dict, "val8", val8_P.Python_Proxy);
      end if;
      if val9_P /= null then
         Dict_SetItemString (Dict, "val9", val9_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end invoke;
   function invoke
     (self   : access Inst; object_P : access QtAda6.QtCore.QObject.Inst'Class;
      val0_P : access QtAda6.QtCore.QGenericArgument.Inst'Class;
      val1_P : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val2_P : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val3_P : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val4_P : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val5_P : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val6_P : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val7_P : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val8_P : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val9_P : access QtAda6.QtCore.QGenericArgument.Inst'Class := null) return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "invoke");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if object_P /= null then object_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if val0_P /= null then val0_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if val1_P /= null then
         Dict_SetItemString (Dict, "val1", val1_P.Python_Proxy);
      end if;
      if val2_P /= null then
         Dict_SetItemString (Dict, "val2", val2_P.Python_Proxy);
      end if;
      if val3_P /= null then
         Dict_SetItemString (Dict, "val3", val3_P.Python_Proxy);
      end if;
      if val4_P /= null then
         Dict_SetItemString (Dict, "val4", val4_P.Python_Proxy);
      end if;
      if val5_P /= null then
         Dict_SetItemString (Dict, "val5", val5_P.Python_Proxy);
      end if;
      if val6_P /= null then
         Dict_SetItemString (Dict, "val6", val6_P.Python_Proxy);
      end if;
      if val7_P /= null then
         Dict_SetItemString (Dict, "val7", val7_P.Python_Proxy);
      end if;
      if val8_P /= null then
         Dict_SetItemString (Dict, "val8", val8_P.Python_Proxy);
      end if;
      if val9_P /= null then
         Dict_SetItemString (Dict, "val9", val9_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end invoke;
   function invokeOnGadget
     (self   : access Inst; gadget_P : int; returnValue_P : access QtAda6.QtCore.QGenericReturnArgument.Inst'Class;
      val0_P : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val1_P : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val2_P : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val3_P : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val4_P : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val5_P : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val6_P : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val7_P : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val8_P : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val9_P : access QtAda6.QtCore.QGenericArgument.Inst'Class := null) return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "invokeOnGadget");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (gadget_P));
      Tuple_SetItem (Args, 1, (if returnValue_P /= null then returnValue_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if val0_P /= null then
         Dict_SetItemString (Dict, "val0", val0_P.Python_Proxy);
      end if;
      if val1_P /= null then
         Dict_SetItemString (Dict, "val1", val1_P.Python_Proxy);
      end if;
      if val2_P /= null then
         Dict_SetItemString (Dict, "val2", val2_P.Python_Proxy);
      end if;
      if val3_P /= null then
         Dict_SetItemString (Dict, "val3", val3_P.Python_Proxy);
      end if;
      if val4_P /= null then
         Dict_SetItemString (Dict, "val4", val4_P.Python_Proxy);
      end if;
      if val5_P /= null then
         Dict_SetItemString (Dict, "val5", val5_P.Python_Proxy);
      end if;
      if val6_P /= null then
         Dict_SetItemString (Dict, "val6", val6_P.Python_Proxy);
      end if;
      if val7_P /= null then
         Dict_SetItemString (Dict, "val7", val7_P.Python_Proxy);
      end if;
      if val8_P /= null then
         Dict_SetItemString (Dict, "val8", val8_P.Python_Proxy);
      end if;
      if val9_P /= null then
         Dict_SetItemString (Dict, "val9", val9_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end invokeOnGadget;
   function invokeOnGadget
     (self   : access Inst; gadget_P : int; val0_P : access QtAda6.QtCore.QGenericArgument.Inst'Class;
      val1_P : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val2_P : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val3_P : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val4_P : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val5_P : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val6_P : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val7_P : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val8_P : access QtAda6.QtCore.QGenericArgument.Inst'Class := null;
      val9_P : access QtAda6.QtCore.QGenericArgument.Inst'Class := null) return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "invokeOnGadget");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (gadget_P));
      Tuple_SetItem (Args, 1, (if val0_P /= null then val0_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if val1_P /= null then
         Dict_SetItemString (Dict, "val1", val1_P.Python_Proxy);
      end if;
      if val2_P /= null then
         Dict_SetItemString (Dict, "val2", val2_P.Python_Proxy);
      end if;
      if val3_P /= null then
         Dict_SetItemString (Dict, "val3", val3_P.Python_Proxy);
      end if;
      if val4_P /= null then
         Dict_SetItemString (Dict, "val4", val4_P.Python_Proxy);
      end if;
      if val5_P /= null then
         Dict_SetItemString (Dict, "val5", val5_P.Python_Proxy);
      end if;
      if val6_P /= null then
         Dict_SetItemString (Dict, "val6", val6_P.Python_Proxy);
      end if;
      if val7_P /= null then
         Dict_SetItemString (Dict, "val7", val7_P.Python_Proxy);
      end if;
      if val8_P /= null then
         Dict_SetItemString (Dict, "val8", val8_P.Python_Proxy);
      end if;
      if val9_P /= null then
         Dict_SetItemString (Dict, "val9", val9_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end invokeOnGadget;
   function isConst (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isConst");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isConst;
   function isValid (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isValid");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isValid;
   function methodIndex (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "methodIndex");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end methodIndex;
   function methodSignature (self : access Inst) return access QtAda6.QtCore.QByteArray.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "methodSignature");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end methodSignature;
   function methodType_F (self : access Inst) return access QtAda6.QtCore.QMetaMethod.MethodType.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QMetaMethod.MethodType.Class := new QtAda6.QtCore.QMetaMethod.MethodType.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "methodType");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end methodType_F;
   function name (self : access Inst) return access QtAda6.QtCore.QByteArray.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "name");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end name;
   function parameterCount (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "parameterCount");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end parameterCount;
   function parameterMetaType (self : access Inst; index_P : int) return access QtAda6.QtCore.QMetaType.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QMetaType.Class := new QtAda6.QtCore.QMetaType.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "parameterMetaType");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (index_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end parameterMetaType;
   function parameterNames (self : access Inst) return LIST_QtAda6_QtCore_QByteArray is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "parameterNames");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Ret : LIST_QtAda6_QtCore_QByteArray (1 .. Natural (List_Size (Result))) do
         for Ind in Ret'Range loop
            Ret (Ind).Python_Proxy := List_GetItem (Result, ssize_t (Ind - Ret'First));
         end loop;
      end return;
   end parameterNames;
   function parameterType (self : access Inst; index_P : int) return int is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "parameterType");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (index_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end parameterType;
   function parameterTypeName (self : access Inst; index_P : int) return access QtAda6.QtCore.QByteArray.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "parameterTypeName");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (index_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end parameterTypeName;
   function parameterTypes (self : access Inst) return LIST_QtAda6_QtCore_QByteArray is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "parameterTypes");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Ret : LIST_QtAda6_QtCore_QByteArray (1 .. Natural (List_Size (Result))) do
         for Ind in Ret'Range loop
            Ret (Ind).Python_Proxy := List_GetItem (Result, ssize_t (Ind - Ret'First));
         end loop;
      end return;
   end parameterTypes;
   function relativeMethodIndex (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "relativeMethodIndex");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end relativeMethodIndex;
   function returnMetaType (self : access Inst) return access QtAda6.QtCore.QMetaType.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QMetaType.Class := new QtAda6.QtCore.QMetaType.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "returnMetaType");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end returnMetaType;
   function returnType (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "returnType");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end returnType;
   function revision (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "revision");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end revision;
   function tag (self : access Inst) return bytes is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "tag");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return new Standard.String'(Bytes_AsString (Result));
   end tag;
   function typeName (self : access Inst) return bytes is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "typeName");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return new Standard.String'(Bytes_AsString (Result));
   end typeName;
end QtAda6.QtCore.QMetaMethod;
