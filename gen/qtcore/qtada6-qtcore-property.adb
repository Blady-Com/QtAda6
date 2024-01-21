-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-property.adb
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
package body QtAda6.QtCore.Property is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create
     (type_K_P     : Type_K_T; fget_P : CALLABLE := null; fset_P : CALLABLE := null; freset_P : CALLABLE := null;
      fdel_P       : CALLABLE := null; doc_P : str := ""; notify_P : CALLABLE := null; designable_P : bool := False;
      scriptable_P : bool     := False; stored_P : bool := False; user_P : bool := False; constant_K_P : bool := False;
      final_P      : bool     := False) return Class
   is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Property");
      Args  := Tuple_New (13);
      Tuple_SetItem (Args, 0, (if type_K_P /= null then type_K_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if fget_P /= null then fget_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if fset_P /= null then fset_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if freset_P /= null then freset_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, (if fdel_P /= null then fdel_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 5, Unicode_FromString (doc_P));
      Tuple_SetItem (Args, 6, (if notify_P /= null then notify_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 7, To_Python (designable_P));
      Tuple_SetItem (Args, 8, To_Python (scriptable_P));
      Tuple_SetItem (Args, 9, To_Python (stored_P));
      Tuple_SetItem (Args, 10, To_Python (user_P));
      Tuple_SetItem (Args, 11, To_Python (constant_K_P));
      Tuple_SetItem (Args, 12, To_Python (final_P));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function deleter (self : access Inst; fdel_P : CALLABLE) return access QtAda6.QtCore.Property.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.Property.Class := new QtAda6.QtCore.Property.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "deleter");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if fdel_P /= null then fdel_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end deleter;
   function getter (self : access Inst; fget_P : CALLABLE) return access QtAda6.QtCore.Property.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.Property.Class := new QtAda6.QtCore.Property.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "getter");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if fget_P /= null then fget_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end getter;
   function read (self : access Inst; fget_P : CALLABLE) return access QtAda6.QtCore.Property.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.Property.Class := new QtAda6.QtCore.Property.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "read");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if fget_P /= null then fget_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end read;
   function setter (self : access Inst; fset_P : CALLABLE) return access QtAda6.QtCore.Property.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.Property.Class := new QtAda6.QtCore.Property.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setter");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if fset_P /= null then fset_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end setter;
   function write (self : access Inst; fset_P : CALLABLE) return access QtAda6.QtCore.Property.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.Property.Class := new QtAda6.QtCore.Property.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "write");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if fset_P /= null then fset_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end write;
end QtAda6.QtCore.Property;
