-------------------------------------------------------------------------------
-- NAME (spec)                  : proxy_class.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Python glue for Ada class derivation from Qt
-- NOTES                        : Ada 2022, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2025
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.chez.com
-------------------------------------------------------------------------------

with UXStrings.Lists;
with QtAda6;
with Py;
with Py.Proxy_Module;

generic
   Element_Name : String;
   type Element_Type is new QtAda6.Shiboken.Object with private;
   type Element_Access is access Element_Type;
package Proxy_Class is

   function Derive_Class
     (Parent_Module_Name, Parent_Class : UXStrings.UXString; Method_List : UXStrings.Lists.UXString_List := []) return Py.Handle;

   procedure Init (Self : Element_Access; Python_Class : Py.Handle; Super_Init : Boolean := False);
   procedure Init (Self : Element_Access; Python_Class : Py.Handle; Arguments : Py.Handle; Super_Init : Boolean := False);
   procedure Init (Self : Element_Access; Python_Class : Py.Handle; Arguments : Py.Handle; Keyed : Py.Handle; Super_Init : Boolean := False);

   procedure Set (Callback : Py.Proxy_Module.Callback_Type);
   function Get_Ada_Self (Keywords : Py.Object) return Element_Access;

end Proxy_Class;
