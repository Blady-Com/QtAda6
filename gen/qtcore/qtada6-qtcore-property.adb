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
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
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
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Property");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if type_K_P /= null then type_K_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if fget_P /= null then
         Dict_SetItemString (Dict, "fget", fget_P.Python_Proxy);
      end if;
      if fset_P /= null then
         Dict_SetItemString (Dict, "fset", fset_P.Python_Proxy);
      end if;
      if freset_P /= null then
         Dict_SetItemString (Dict, "freset", freset_P.Python_Proxy);
      end if;
      if fdel_P /= null then
         Dict_SetItemString (Dict, "fdel", fdel_P.Python_Proxy);
      end if;
      if doc_P /= "" then
         Dict_SetItemString (Dict, "doc", Unicode_FromString (doc_P));
      end if;
      if notify_P /= null then
         Dict_SetItemString (Dict, "notify", notify_P.Python_Proxy);
      end if;
      if designable_P /= False then
         Dict_SetItemString (Dict, "designable", To_Python (designable_P));
      end if;
      if scriptable_P /= False then
         Dict_SetItemString (Dict, "scriptable", To_Python (scriptable_P));
      end if;
      if stored_P /= False then
         Dict_SetItemString (Dict, "stored", To_Python (stored_P));
      end if;
      if user_P /= False then
         Dict_SetItemString (Dict, "user", To_Python (user_P));
      end if;
      if constant_K_P /= False then
         Dict_SetItemString (Dict, "constant", To_Python (constant_K_P));
      end if;
      if final_P /= False then
         Dict_SetItemString (Dict, "final", To_Python (final_P));
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function deleter (self : access Inst; fdel_P : CALLABLE) return access QtAda6.QtCore.Property.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.Property.Class := new QtAda6.QtCore.Property.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "deleter");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if fdel_P /= null then fdel_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end deleter;
   function getter (self : access Inst; fget_P : CALLABLE) return access QtAda6.QtCore.Property.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.Property.Class := new QtAda6.QtCore.Property.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "getter");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if fget_P /= null then fget_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end getter;
   function read (self : access Inst; fget_P : CALLABLE) return access QtAda6.QtCore.Property.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.Property.Class := new QtAda6.QtCore.Property.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "read");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if fget_P /= null then fget_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end read;
   function setter (self : access Inst; fset_P : CALLABLE) return access QtAda6.QtCore.Property.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.Property.Class := new QtAda6.QtCore.Property.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setter");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if fset_P /= null then fset_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end setter;
   function write (self : access Inst; fset_P : CALLABLE) return access QtAda6.QtCore.Property.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.Property.Class := new QtAda6.QtCore.Property.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "write");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if fset_P /= null then fset_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end write;
end QtAda6.QtCore.Property;
