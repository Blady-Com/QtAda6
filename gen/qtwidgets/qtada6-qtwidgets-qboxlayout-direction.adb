-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qboxlayout-direction.adb
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
package body QtAda6.QtWidgets.QBoxLayout.Direction is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function LeftToRight return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QBoxLayout");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Direction");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "LeftToRight"));
   end LeftToRight;
   function RightToLeft return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QBoxLayout");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Direction");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "RightToLeft"));
   end RightToLeft;
   function Down return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QBoxLayout");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Direction");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Down"));
   end Down;
   function TopToBottom return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QBoxLayout");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Direction");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "TopToBottom"));
   end TopToBottom;
   function BottomToTop return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QBoxLayout");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Direction");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "BottomToTop"));
   end BottomToTop;
   function Up return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QBoxLayout");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Direction");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Up"));
   end Up;
end QtAda6.QtWidgets.QBoxLayout.Direction;
