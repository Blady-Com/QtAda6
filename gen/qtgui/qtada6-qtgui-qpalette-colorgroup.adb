-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qpalette-colorgroup.adb
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
package body QtAda6.QtGui.QPalette.ColorGroup is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Active return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPalette");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Active"));
   end Active;
   function Normal return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPalette");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Normal"));
   end Normal;
   function Disabled return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPalette");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Disabled"));
   end Disabled;
   function Inactive return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPalette");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Inactive"));
   end Inactive;
   function NColorGroups return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPalette");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "NColorGroups"));
   end NColorGroups;
   function Current return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPalette");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Current"));
   end Current;
   function All_K return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPalette");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "All"));
   end All_K;
end QtAda6.QtGui.QPalette.ColorGroup;
