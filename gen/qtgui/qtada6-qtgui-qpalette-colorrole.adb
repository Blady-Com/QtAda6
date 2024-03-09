-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qpalette-colorrole.adb
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
package body QtAda6.QtGui.QPalette.ColorRole is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function WindowText return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPalette");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WindowText"));
   end WindowText;
   function Button return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPalette");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Button"));
   end Button;
   function Light return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPalette");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Light"));
   end Light;
   function Midlight return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPalette");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Midlight"));
   end Midlight;
   function Dark return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPalette");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Dark"));
   end Dark;
   function Mid return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPalette");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Mid"));
   end Mid;
   function Text return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPalette");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Text"));
   end Text;
   function BrightText return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPalette");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "BrightText"));
   end BrightText;
   function ButtonText return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPalette");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ButtonText"));
   end ButtonText;
   function Base return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPalette");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Base"));
   end Base;
   function Window return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPalette");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Window"));
   end Window;
   function Shadow return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPalette");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Shadow"));
   end Shadow;
   function Highlight return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPalette");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Highlight"));
   end Highlight;
   function HighlightedText return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPalette");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "HighlightedText"));
   end HighlightedText;
   function Link return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPalette");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Link"));
   end Link;
   function LinkVisited return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPalette");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "LinkVisited"));
   end LinkVisited;
   function AlternateBase return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPalette");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "AlternateBase"));
   end AlternateBase;
   function NoRole return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPalette");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "NoRole"));
   end NoRole;
   function ToolTipBase return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPalette");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ToolTipBase"));
   end ToolTipBase;
   function ToolTipText return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPalette");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ToolTipText"));
   end ToolTipText;
   function PlaceholderText return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPalette");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PlaceholderText"));
   end PlaceholderText;
   function NColorRoles return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPalette");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "NColorRoles"));
   end NColorRoles;
end QtAda6.QtGui.QPalette.ColorRole;
