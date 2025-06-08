-------------------------------------------------------------------------------
-- NAME (spec)                  : py-proxy_module.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Python glue for Ada callback
-- NOTES                        : Ada 2025, Simple Components
--
-- COPYRIGHT                    : (c) Pascal Pignard 2025
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.chez.com
-------------------------------------------------------------------------------

package Py.Proxy_Module is

   procedure Create;

   type Callback_Type is access function (Self : Object; Args : Object; Keywords : Object) return Object;
   pragma Convention (C, Callback_Type);

   procedure Set (Name : String; Callback : Callback_Type);

   Meth_Key_Name : constant String;
   function Get_Class_Name (Keywords : Object) return String;
   function Get_Method_Name (Keywords : Object) return String;

   -- Extra functions from py.ads with Object type instead of Handle
   function Tuple_GetItem (Tuple : Object; Position : ssize_t) return Handle;
   function Dict_GetItemString (Dictionary : Object; Key : String) return Handle;
   function No_Value return Object;
   function Get_Object (Item : Handle) return Object;
   procedure Inc_Ref (Object : in out Handle);

private

   Meth_Key_Name : constant String := "qtadameth";
   -- Dispatching parameter of the form: class@method
   -- Example:
   --  from proxy_module import method_proxy
   --  class Test:
   --    def __init__(self):
   --      self.ada_self = None
   --    def magic(self, *args, **kwargs):
   --      return method_proxy (*args, **kwargs, qtadaself = self.ada_self, qtadameth = "Test@magic")

end Py.Proxy_Module;
