-------------------------------------------------------------------------------
-- NAME (body)                  : py-proxy_module.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Python glue for Ada callback
-- NOTES                        : Ada 2025, Simple Components
--
-- COPYRIGHT                    : (c) Pascal Pignard 2025
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.chez.com
-------------------------------------------------------------------------------

with Ada.Containers.Indefinite_Ordered_Maps;
with Ada.Strings.Fixed;

package body Py.Proxy_Module is

   package Methods_Map is new Ada.Containers.Indefinite_Ordered_Maps (String, CFunctionWithKeywords);

   Method_Map : Methods_Map.Map;

   -- Module creation inspired from Simple Components Python examples

   Module_Name : aliased char_array := "proxy_module" & nul;
   Module_Doc  : aliased char_array := "Proxy Python module" & nul;

   Operation_Name : aliased char_array := "method_proxy" & nul;
   Operation_Doc  : aliased char_array := "Method proxy" & nul;

   procedure Set (Name : String; Callback : Callback_Type) is
   begin
      Method_Map.Insert (Name, CFunctionWithKeywords (Callback));
   end Set;

   function Get_Class_Name (Keywords : Object) return String is
      Python_Name : constant String := As_String (Links.Dict_GetItemString (Keywords, To_C (Meth_Key_Name)));
   begin
      return Python_Name (Python_Name'First .. Ada.Strings.Fixed.Index (Python_Name, "@") - 1);
   end Get_Class_Name;
   function Get_Method_Name (Keywords : Object) return String is
      Python_Name : constant String := As_String (Links.Dict_GetItemString (Keywords, To_C (Meth_Key_Name)));
   begin
      return Python_Name (Ada.Strings.Fixed.Index (Python_Name, "@") + 1 .. Python_Name'Last);
   end Get_Method_Name;

   function Method_Proxy (Self : Object; Args : Object; Keywords : Object) return Object;
   pragma Convention (C, Method_Proxy);

   function Method_Proxy (Self : Object; Args : Object; Keywords : Object) return Object is
   begin
      return Method_Map.Element (Get_Class_Name (Keywords)) (Self, Args, Keywords);
   exception
      when Python_Error =>
         return Null_Object;
      when Error : others =>
         Throw_SystemError (Error);
         return Null_Object;
   end Method_Proxy;

   Methods : array (1 .. 2) of aliased MethodDef :=
     ((Name  => To_Chars_Ptr (Operation_Name'Access), Meth => (True, Method_Proxy'Access),
       Flags => METH_VARARGS + METH_KEYWORDS, Doc => To_Chars_Ptr (Operation_Doc'Access)),
      End_Method);

   ModuleDef_HEAD_INIT : constant ModuleDef_Base :=
     (Base => (1, Null_Object), Init => null, Index => 0, Copy => Null_Object);

   Module : constant ModuleDef :=
     (Base => ModuleDef_HEAD_INIT, Name => To_Chars_Ptr (Module_Name'Access), Doc => To_Chars_Ptr (Module_Doc'Access),
      Size => -1, Methods => Methods (1)'Access, Slots => null, Traverse => null, Clear => null, Free => null);

   function Module_Init return Object;
   pragma Convention (C, Module_Init);

   function Module_Init return Object is
   begin
      return Module_Create (Module);
   end Module_Init;

   procedure Create is
   begin
      if 0 > Import_AppendInittab (Module_Name, Module_Init'Access) then
         Raise_Exception (Python_Error'Identity, "Cannot append proxy module");
      end if;
   end Create;

   function Tuple_GetItem (Tuple : Object; Position : ssize_t) return Handle is
      Result : Handle;
   begin
      Result.Ptr := Links.Tuple_GetItem (Tuple, Position);
      if Result.Ptr = Null_Object then
         Check_Error;
      else
         Links.IncRef (Result.Ptr); -- Borrowed reference
      end if;
      return Result;
   end Tuple_GetItem;

   function Dict_GetItemString (Dictionary : Object; Key : String) return Handle is
      Result : Handle;
   begin
      Result.Ptr := Links.Dict_GetItemString (Dictionary, To_C (Key));
      if Result.Ptr /= Null_Object then -- Borrowed reference
         Links.IncRef (Result.Ptr);
      end if;
      return Result;
   end Dict_GetItemString;

   function No_Value return Object is
      Result : Object;
   begin
      Result := Links.None;
      Links.IncRef (Result);
      return Result;
   end No_Value;

   function Get_Object (Item : Handle) return Object is (Item.Ptr);

   procedure Inc_Ref (Object : in out Handle) is
   begin
      Links.IncRef (Object.Ptr);
   end;

end Py.Proxy_Module;
