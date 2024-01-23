-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qicon-mode.adb
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
package body QtAda6.QtGui.QIcon.Mode is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Normal return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QIcon");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Mode");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Normal"));
   end Normal;
   function Disabled return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QIcon");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Mode");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Disabled"));
   end Disabled;
   function Active return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QIcon");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Mode");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Active"));
   end Active;
   function Selected return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QIcon");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Mode");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Selected"));
   end Selected;
end QtAda6.QtGui.QIcon.Mode;
