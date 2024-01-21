-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qt-textinteractionflag.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Py; use Py;
with Ada.Unchecked_Deallocation;
package body QtAda6.QtCore.Qt.TextInteractionFlag is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function NoTextInteraction return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "TextInteractionFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "NoTextInteraction"));
   end NoTextInteraction;
   function TextSelectableByMouse return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "TextInteractionFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "TextSelectableByMouse"));
   end TextSelectableByMouse;
   function TextSelectableByKeyboard return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "TextInteractionFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "TextSelectableByKeyboard"));
   end TextSelectableByKeyboard;
   function LinksAccessibleByMouse return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "TextInteractionFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "LinksAccessibleByMouse"));
   end LinksAccessibleByMouse;
   function LinksAccessibleByKeyboard return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "TextInteractionFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "LinksAccessibleByKeyboard"));
   end LinksAccessibleByKeyboard;
   function TextBrowserInteraction return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "TextInteractionFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "TextBrowserInteraction"));
   end TextBrowserInteraction;
   function TextEditable return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "TextInteractionFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "TextEditable"));
   end TextEditable;
   function TextEditorInteraction return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "TextInteractionFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "TextEditorInteraction"));
   end TextEditorInteraction;
end QtAda6.QtCore.Qt.TextInteractionFlag;
