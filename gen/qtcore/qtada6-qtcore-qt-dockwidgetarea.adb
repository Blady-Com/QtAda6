-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qt-dockwidgetarea.adb
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
package body QtAda6.QtCore.Qt.DockWidgetArea is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function NoDockWidgetArea return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "DockWidgetArea");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "NoDockWidgetArea"));
   end NoDockWidgetArea;
   function LeftDockWidgetArea return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "DockWidgetArea");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "LeftDockWidgetArea"));
   end LeftDockWidgetArea;
   function RightDockWidgetArea return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "DockWidgetArea");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "RightDockWidgetArea"));
   end RightDockWidgetArea;
   function TopDockWidgetArea return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "DockWidgetArea");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "TopDockWidgetArea"));
   end TopDockWidgetArea;
   function BottomDockWidgetArea return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "DockWidgetArea");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "BottomDockWidgetArea"));
   end BottomDockWidgetArea;
   function AllDockWidgetAreas return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "DockWidgetArea");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "AllDockWidgetAreas"));
   end AllDockWidgetAreas;
   function DockWidgetArea_Mask return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "DockWidgetArea");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "DockWidgetArea_Mask"));
   end DockWidgetArea_Mask;
end QtAda6.QtCore.Qt.DockWidgetArea;
