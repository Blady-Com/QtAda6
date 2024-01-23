-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qactiongroup-exclusionpolicy.adb
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
package body QtAda6.QtGui.QActionGroup.ExclusionPolicy is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function None_U return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QActionGroup");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ExclusionPolicy");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "None_"));
   end None_U;
   function Exclusive return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QActionGroup");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ExclusionPolicy");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Exclusive"));
   end Exclusive;
   function ExclusiveOptional return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QActionGroup");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ExclusionPolicy");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ExclusiveOptional"));
   end ExclusiveOptional;
end QtAda6.QtGui.QActionGroup.ExclusionPolicy;
