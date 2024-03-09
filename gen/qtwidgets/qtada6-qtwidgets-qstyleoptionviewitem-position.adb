-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qstyleoptionviewitem-position.adb
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
package body QtAda6.QtWidgets.QStyleOptionViewItem.Position is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Left return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyleOptionViewItem");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Left"));
   end Left;
   function Right return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyleOptionViewItem");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Right"));
   end Right;
   function Top return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyleOptionViewItem");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Top"));
   end Top;
   function Bottom return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyleOptionViewItem");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Bottom"));
   end Bottom;
end QtAda6.QtWidgets.QStyleOptionViewItem.Position;
