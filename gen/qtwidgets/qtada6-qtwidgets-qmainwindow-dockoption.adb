-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qmainwindow-dockoption.adb
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
package body QtAda6.QtWidgets.QMainWindow.DockOption is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function AnimatedDocks return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QMainWindow");
      Enum_Class   := Object_GetAttrString (Parent_Class, "DockOption");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "AnimatedDocks"));
   end AnimatedDocks;
   function AllowNestedDocks return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QMainWindow");
      Enum_Class   := Object_GetAttrString (Parent_Class, "DockOption");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "AllowNestedDocks"));
   end AllowNestedDocks;
   function AllowTabbedDocks return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QMainWindow");
      Enum_Class   := Object_GetAttrString (Parent_Class, "DockOption");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "AllowTabbedDocks"));
   end AllowTabbedDocks;
   function ForceTabbedDocks return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QMainWindow");
      Enum_Class   := Object_GetAttrString (Parent_Class, "DockOption");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ForceTabbedDocks"));
   end ForceTabbedDocks;
   function VerticalTabs return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QMainWindow");
      Enum_Class   := Object_GetAttrString (Parent_Class, "DockOption");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "VerticalTabs"));
   end VerticalTabs;
   function GroupedDragging return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QMainWindow");
      Enum_Class   := Object_GetAttrString (Parent_Class, "DockOption");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "GroupedDragging"));
   end GroupedDragging;
end QtAda6.QtWidgets.QMainWindow.DockOption;
