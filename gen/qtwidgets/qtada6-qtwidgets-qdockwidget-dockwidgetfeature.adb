-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qdockwidget-dockwidgetfeature.adb
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
package body QtAda6.QtWidgets.QDockWidget.DockWidgetFeature is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function NoDockWidgetFeatures return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QDockWidget");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "NoDockWidgetFeatures"));
   end NoDockWidgetFeatures;
   function DockWidgetClosable return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QDockWidget");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "DockWidgetClosable"));
   end DockWidgetClosable;
   function DockWidgetMovable return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QDockWidget");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "DockWidgetMovable"));
   end DockWidgetMovable;
   function DockWidgetFloatable return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QDockWidget");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "DockWidgetFloatable"));
   end DockWidgetFloatable;
   function DockWidgetVerticalTitleBar return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QDockWidget");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "DockWidgetVerticalTitleBar"));
   end DockWidgetVerticalTitleBar;
   function DockWidgetFeatureMask return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QDockWidget");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "DockWidgetFeatureMask"));
   end DockWidgetFeatureMask;
   function Reserved return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QDockWidget");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Reserved"));
   end Reserved;
end QtAda6.QtWidgets.QDockWidget.DockWidgetFeature;
