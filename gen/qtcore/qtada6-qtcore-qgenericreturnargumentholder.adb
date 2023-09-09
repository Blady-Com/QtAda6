-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qgenericreturnargumentholder.adb
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
with QtAda6.QtCore.QMetaType;
with QtAda6.QtCore.QMetaType.Type_K;
with QtAda6.QtCore.QGenericReturnArgument;
package body QtAda6.QtCore.QGenericReturnArgumentHolder is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create (arg_1_P : access QtAda6.QtCore.QGenericReturnArgumentHolder.Inst'Class) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QGenericReturnArgumentHolder");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, arg_1_P.Python_Proxy);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (type_K_P : Union_QtAda6_QtCore_QMetaType_QtAda6_QtCore_QMetaType_Type_K; aData_P : int) return Class
   is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QGenericReturnArgumentHolder");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, No_Value);
      Tuple_SetItem (Args, 1, Long_FromLong (aData_P));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   procedure U_copy_U is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QGenericReturnArgumentHolder");
      Method := Object_GetAttrString (Class, "__copy__");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end U_copy_U;
   function data (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "data");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end data;
   function metaType (self : access Inst) return access QtAda6.QtCore.QMetaType.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QMetaType.Class := new QtAda6.QtCore.QMetaType.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "metaType");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end metaType;
   function toGenericReturnArgument (self : access Inst) return access QtAda6.QtCore.QGenericReturnArgument.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret : constant QtAda6.QtCore.QGenericReturnArgument.Class := new QtAda6.QtCore.QGenericReturnArgument.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "toGenericReturnArgument");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end toGenericReturnArgument;
end QtAda6.QtCore.QGenericReturnArgumentHolder;
