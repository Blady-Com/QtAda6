-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qaccessible-text.adb
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
package body QtAda6.QtGui.QAccessible.Text is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Name return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Text");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Name"));
   end Name;
   function Description return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Text");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Description"));
   end Description;
   function Value return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Text");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Value"));
   end Value;
   function Help return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Text");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Help"));
   end Help;
   function Accelerator return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Text");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Accelerator"));
   end Accelerator;
   function DebugDescription return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Text");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "DebugDescription"));
   end DebugDescription;
   function UserText return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Text");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "UserText"));
   end UserText;
end QtAda6.QtGui.QAccessible.Text;
