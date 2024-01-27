-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qheaderview-resizemode.adb
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
package body QtAda6.QtWidgets.QHeaderView.ResizeMode is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Interactive return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QHeaderView");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ResizeMode");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Interactive"));
   end Interactive;
   function Stretch return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QHeaderView");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ResizeMode");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Stretch"));
   end Stretch;
   function Custom return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QHeaderView");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ResizeMode");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Custom"));
   end Custom;
   function Fixed return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QHeaderView");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ResizeMode");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Fixed"));
   end Fixed;
   function ResizeToContents return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QHeaderView");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ResizeMode");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ResizeToContents"));
   end ResizeToContents;
end QtAda6.QtWidgets.QHeaderView.ResizeMode;
