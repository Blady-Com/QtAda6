-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qsizepolicy-policy.adb
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
package body QtAda6.QtWidgets.QSizePolicy.Policy is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Fixed return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QSizePolicy");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Policy");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Fixed"));
   end Fixed;
   function Minimum return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QSizePolicy");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Policy");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Minimum"));
   end Minimum;
   function MinimumExpanding return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QSizePolicy");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Policy");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "MinimumExpanding"));
   end MinimumExpanding;
   function Maximum return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QSizePolicy");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Policy");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Maximum"));
   end Maximum;
   function Preferred return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QSizePolicy");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Policy");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Preferred"));
   end Preferred;
   function Expanding return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QSizePolicy");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Policy");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Expanding"));
   end Expanding;
   function Ignored return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QSizePolicy");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Policy");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Ignored"));
   end Ignored;
end QtAda6.QtWidgets.QSizePolicy.Policy;
