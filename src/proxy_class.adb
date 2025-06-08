-------------------------------------------------------------------------------
-- NAME (body)                  : proxy_class.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Python glue for Ada class derivation from Qt
-- NOTES                        : Ada 2022, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2025
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.chez.com
-------------------------------------------------------------------------------

with Ada.Characters.Wide_Wide_Latin_1;
with Py.Python_Helper;

package body Proxy_Class is
   use Py;

   Self_Key_Name : constant UXStrings.UXString := "qtadaself";

   package Element_Access_Capsule is new Generic_Capsule (Element_Access);

   function Derive_Class
     (Parent_Module_Name, Parent_Class : UXStrings.UXString; Method_List : UXStrings.Lists.UXString_List := []) return Handle
   is
      use type UXStrings.UXString;
      Code : UXStrings.Lists.UXString_List;
      --        Code : UXStrings.Lists.UXString_List := ["from proxy_module import method_proxy",
      --          "from " &  Parent_Module_Name & " import " & Parent_Class,
      --            "class " & Parent_Class & "_Proxy(" & Parent_Class & "):",
      --              "  def __init__(self):",
      --                "    self.ada_self = None"];
      --    Error with GNAT FSF < 15
      Module, Result : Handle;
   begin
      if not Method_List.Is_Empty then
         Code.Append ("from proxy_module import method_proxy");
      end if;
      if Parent_Class /= UXStrings.Null_UXString then
         Code.Append ("from " & Parent_Module_Name & " import " & Parent_Class);
      end if;
      Code.Append (UXStrings.From_UTF_8 ("class " & Element_Name & "_Proxy(") & Parent_Class & "):");
      Code.Append ("  def __init__(self):");
      Code.Append ("    self.ada_self = None");
      for Method of Method_List loop
         Code.Append ("  def " & Method & "(self, *args, **kwargs):");
         Code.Append
           ("    return method_proxy (*args, **kwargs, " & Self_Key_Name & " = self.ada_self, " &
            UXStrings.From_UTF_8 (Py.Proxy_Module.Meth_Key_Name & " = """ & Element_Name & '@') & Method & """)");
      end loop;
      Module :=
        Py.Python_Helper.Compile
          (Code.Join (Ada.Characters.Wide_Wide_Latin_1.LF).To_UTF_8, Element_Name & "_Proxy.py",
           Element_Name & "_Proxy_Module");
      return Object_GetAttrString (Module, Element_Name & "_Proxy");
   end Derive_Class;

   procedure Init (Self : Element_Access; Python_Class : Handle; Super_Init : Boolean := False) is
      Result       : Handle;
      Self_Capsule : constant Handle := Element_Access_Capsule.Create (Self);
   begin
      Self.Python_Proxy := Object_CallNoArgs (Python_Class, True);
      if Super_Init then
         Result := Object_CallNoArgs (Object_Super (Self.Python_Proxy, "__init__"), True);
      end if;
      Object_SetAttrString (Self.Python_Proxy, "ada_self", Self_Capsule);
   end Init;

   procedure Init (Self : Element_Access; Python_Class : Handle; Arguments : Handle; Super_Init : Boolean := False) is
      Result       : Handle;
      Self_Capsule : constant Handle := Element_Access_Capsule.Create (Self);
   begin
      Self.Python_Proxy := Object_CallObject (Python_Class, Arguments, True);
      if Super_Init then
         Result := Object_CallObject (Object_Super (Self.Python_Proxy, "__init__"), Arguments, True);
      end if;
      Object_SetAttrString (Self.Python_Proxy, "ada_self", Self_Capsule);
   end Init;

   procedure Init
     (Self : Element_Access; Python_Class : Handle; Arguments : Handle; Keyed : Handle; Super_Init : Boolean := False)
   is
      Result       : Handle;
      Self_Capsule : constant Handle := Element_Access_Capsule.Create (Self);
   begin
      Self.Python_Proxy := Object_Call (Python_Class, Arguments, Keyed, True);
      if Super_Init then
         Result := Object_Call (Object_Super (Self.Python_Proxy, "__init__"), Arguments, Keyed, True);
      end if;
      Object_SetAttrString (Self.Python_Proxy, "ada_self", Self_Capsule);
   end Init;

   procedure Set (Callback : Py.Proxy_Module.Callback_Type) is
   begin
      Py.Proxy_Module.Set (Element_Name, Callback);
   end Set;

   function Get_Ada_Self (Keywords : Object) return Element_Access is
   begin
      return Element_Access_Capsule.Get
          (Py.Proxy_Module.Dict_GetItemString (Keywords, UXStrings.To_UTF_8 (Self_Key_Name))).all;
   end Get_Ada_Self;

end Proxy_Class;
