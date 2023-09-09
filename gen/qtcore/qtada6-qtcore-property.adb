-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-property.adb
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
package body QtAda6.QtCore.Property is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create
     (type_K_P : type_K_T; fget_P : Optional_Callable; fset_P : Optional_Callable; freset_P : Optional_Callable;
      fdel_P   : Optional_Callable; doc_P : str; notify_P : Optional_Callable; designable_P : bool; scriptable_P : bool;
      stored_P : bool; user_P : bool; constant_K_P : bool; final_P : bool) return Class
   is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Property");
      Args  := Tuple_New (13);
      Tuple_SetItem (Args, 0, type_K_T_conv_A2P_is_not_supported);
      Tuple_SetItem (Args, 1, No_Value);
      Tuple_SetItem (Args, 2, No_Value);
      Tuple_SetItem (Args, 3, No_Value);
      Tuple_SetItem (Args, 4, No_Value);
      Tuple_SetItem (Args, 5, Unicode_FromString (doc_P));
      Tuple_SetItem (Args, 6, No_Value);
      Tuple_SetItem (Args, 7, To_Python (designable_P));
      Tuple_SetItem (Args, 8, To_Python (scriptable_P));
      Tuple_SetItem (Args, 9, To_Python (stored_P));
      Tuple_SetItem (Args, 10, To_Python (user_P));
      Tuple_SetItem (Args, 11, To_Python (constant_K_P));
      Tuple_SetItem (Args, 12, To_Python (final_P));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function deleter (self : access Inst; fdel_P : Callable) return access QtAda6.QtCore.Property.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.Property.Class := new QtAda6.QtCore.Property.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "deleter");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Callable_conv_A2P_is_not_supported);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end deleter;
   function getter (self : access Inst; fget_P : Callable) return access QtAda6.QtCore.Property.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.Property.Class := new QtAda6.QtCore.Property.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "getter");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Callable_conv_A2P_is_not_supported);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end getter;
   function read (self : access Inst; fget_P : Callable) return access QtAda6.QtCore.Property.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.Property.Class := new QtAda6.QtCore.Property.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "read");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Callable_conv_A2P_is_not_supported);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end read;
   function setter (self : access Inst; fset_P : Callable) return access QtAda6.QtCore.Property.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.Property.Class := new QtAda6.QtCore.Property.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setter");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Callable_conv_A2P_is_not_supported);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end setter;
   function write (self : access Inst; fset_P : Callable) return access QtAda6.QtCore.Property.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.Property.Class := new QtAda6.QtCore.Property.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "write");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Callable_conv_A2P_is_not_supported);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end write;
end QtAda6.QtCore.Property;
