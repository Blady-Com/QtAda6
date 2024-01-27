-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qlayout-sizeconstraint.adb
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
package body QtAda6.QtWidgets.QLayout.SizeConstraint is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function SetDefaultConstraint return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QLayout");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SizeConstraint");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SetDefaultConstraint"));
   end SetDefaultConstraint;
   function SetNoConstraint return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QLayout");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SizeConstraint");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SetNoConstraint"));
   end SetNoConstraint;
   function SetMinimumSize return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QLayout");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SizeConstraint");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SetMinimumSize"));
   end SetMinimumSize;
   function SetFixedSize return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QLayout");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SizeConstraint");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SetFixedSize"));
   end SetFixedSize;
   function SetMaximumSize return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QLayout");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SizeConstraint");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SetMaximumSize"));
   end SetMaximumSize;
   function SetMinAndMaxSize return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QLayout");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SizeConstraint");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SetMinAndMaxSize"));
   end SetMinAndMaxSize;
end QtAda6.QtWidgets.QLayout.SizeConstraint;
