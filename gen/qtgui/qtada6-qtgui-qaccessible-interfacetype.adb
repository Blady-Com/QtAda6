-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qaccessible-interfacetype.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Py; use Py;
with Ada.Unchecked_Deallocation;
package body QtAda6.QtGui.QAccessible.InterfaceType is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function TextInterface return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "TextInterface"));
   end TextInterface;
   function EditableTextInterface return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "EditableTextInterface"));
   end EditableTextInterface;
   function ValueInterface return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ValueInterface"));
   end ValueInterface;
   function ActionInterface return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ActionInterface"));
   end ActionInterface;
   function ImageInterface return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ImageInterface"));
   end ImageInterface;
   function TableInterface return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "TableInterface"));
   end TableInterface;
   function TableCellInterface return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "TableCellInterface"));
   end TableCellInterface;
   function HyperlinkInterface return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "HyperlinkInterface"));
   end HyperlinkInterface;
   function SelectionInterface return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SelectionInterface"));
   end SelectionInterface;
end QtAda6.QtGui.QAccessible.InterfaceType;
