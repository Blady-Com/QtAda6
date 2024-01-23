-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qaction-menurole.adb
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
package body QtAda6.QtGui.QAction.MenuRole is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function NoRole return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAction");
      Enum_Class   := Object_GetAttrString (Parent_Class, "MenuRole");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "NoRole"));
   end NoRole;
   function TextHeuristicRole return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAction");
      Enum_Class   := Object_GetAttrString (Parent_Class, "MenuRole");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "TextHeuristicRole"));
   end TextHeuristicRole;
   function ApplicationSpecificRole return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAction");
      Enum_Class   := Object_GetAttrString (Parent_Class, "MenuRole");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ApplicationSpecificRole"));
   end ApplicationSpecificRole;
   function AboutQtRole return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAction");
      Enum_Class   := Object_GetAttrString (Parent_Class, "MenuRole");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "AboutQtRole"));
   end AboutQtRole;
   function AboutRole return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAction");
      Enum_Class   := Object_GetAttrString (Parent_Class, "MenuRole");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "AboutRole"));
   end AboutRole;
   function PreferencesRole return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAction");
      Enum_Class   := Object_GetAttrString (Parent_Class, "MenuRole");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PreferencesRole"));
   end PreferencesRole;
   function QuitRole return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAction");
      Enum_Class   := Object_GetAttrString (Parent_Class, "MenuRole");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "QuitRole"));
   end QuitRole;
end QtAda6.QtGui.QAction.MenuRole;
