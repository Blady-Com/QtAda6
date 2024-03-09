-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qtabbar-shape.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Py; use Py;
with Ada.Unchecked_Deallocation;
package body QtAda6.QtWidgets.QTabBar.Shape is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function RoundedNorth return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QTabBar");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "RoundedNorth"));
   end RoundedNorth;
   function RoundedSouth return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QTabBar");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "RoundedSouth"));
   end RoundedSouth;
   function RoundedWest return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QTabBar");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "RoundedWest"));
   end RoundedWest;
   function RoundedEast return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QTabBar");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "RoundedEast"));
   end RoundedEast;
   function TriangularNorth return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QTabBar");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "TriangularNorth"));
   end TriangularNorth;
   function TriangularSouth return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QTabBar");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "TriangularSouth"));
   end TriangularSouth;
   function TriangularWest return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QTabBar");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "TriangularWest"));
   end TriangularWest;
   function TriangularEast return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QTabBar");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "TriangularEast"));
   end TriangularEast;
end QtAda6.QtWidgets.QTabBar.Shape;
