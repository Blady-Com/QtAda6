-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qstyle-stateflag.adb
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
package body QtAda6.QtWidgets.QStyle.StateFlag is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function State_None return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "State_None"));
   end State_None;
   function State_Enabled return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "State_Enabled"));
   end State_Enabled;
   function State_Raised return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "State_Raised"));
   end State_Raised;
   function State_Sunken return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "State_Sunken"));
   end State_Sunken;
   function State_Off return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "State_Off"));
   end State_Off;
   function State_NoChange return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "State_NoChange"));
   end State_NoChange;
   function State_On return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "State_On"));
   end State_On;
   function State_DownArrow return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "State_DownArrow"));
   end State_DownArrow;
   function State_Horizontal return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "State_Horizontal"));
   end State_Horizontal;
   function State_HasFocus return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "State_HasFocus"));
   end State_HasFocus;
   function State_Top return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "State_Top"));
   end State_Top;
   function State_Bottom return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "State_Bottom"));
   end State_Bottom;
   function State_FocusAtBorder return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "State_FocusAtBorder"));
   end State_FocusAtBorder;
   function State_AutoRaise return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "State_AutoRaise"));
   end State_AutoRaise;
   function State_MouseOver return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "State_MouseOver"));
   end State_MouseOver;
   function State_UpArrow return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "State_UpArrow"));
   end State_UpArrow;
   function State_Selected return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "State_Selected"));
   end State_Selected;
   function State_Active return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "State_Active"));
   end State_Active;
   function State_Window return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "State_Window"));
   end State_Window;
   function State_Open return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "State_Open"));
   end State_Open;
   function State_Children return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "State_Children"));
   end State_Children;
   function State_Item return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "State_Item"));
   end State_Item;
   function State_Sibling return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "State_Sibling"));
   end State_Sibling;
   function State_Editing return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "State_Editing"));
   end State_Editing;
   function State_KeyboardFocusChange return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "State_KeyboardFocusChange"));
   end State_KeyboardFocusChange;
   function State_ReadOnly return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "State_ReadOnly"));
   end State_ReadOnly;
   function State_Small return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "State_Small"));
   end State_Small;
   function State_Mini return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "State_Mini"));
   end State_Mini;
end QtAda6.QtWidgets.QStyle.StateFlag;
