-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qstyleoptionmenuitem-menuitemtype.adb
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
package body QtAda6.QtWidgets.QStyleOptionMenuItem.MenuItemType is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Normal return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyleOptionMenuItem");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Normal"));
   end Normal;
   function DefaultItem return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyleOptionMenuItem");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "DefaultItem"));
   end DefaultItem;
   function Separator return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyleOptionMenuItem");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Separator"));
   end Separator;
   function SubMenu return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyleOptionMenuItem");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SubMenu"));
   end SubMenu;
   function Scroller return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyleOptionMenuItem");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Scroller"));
   end Scroller;
   function TearOff return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyleOptionMenuItem");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "TearOff"));
   end TearOff;
   function Margin return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyleOptionMenuItem");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Margin"));
   end Margin;
   function EmptyArea return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyleOptionMenuItem");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "EmptyArea"));
   end EmptyArea;
end QtAda6.QtWidgets.QStyleOptionMenuItem.MenuItemType;
