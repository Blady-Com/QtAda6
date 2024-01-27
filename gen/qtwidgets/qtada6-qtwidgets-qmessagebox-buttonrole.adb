-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qmessagebox-buttonrole.adb
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
package body QtAda6.QtWidgets.QMessageBox.ButtonRole is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function InvalidRole return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QMessageBox");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ButtonRole");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "InvalidRole"));
   end InvalidRole;
   function AcceptRole return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QMessageBox");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ButtonRole");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "AcceptRole"));
   end AcceptRole;
   function RejectRole return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QMessageBox");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ButtonRole");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "RejectRole"));
   end RejectRole;
   function DestructiveRole return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QMessageBox");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ButtonRole");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "DestructiveRole"));
   end DestructiveRole;
   function ActionRole return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QMessageBox");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ButtonRole");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ActionRole"));
   end ActionRole;
   function HelpRole return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QMessageBox");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ButtonRole");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "HelpRole"));
   end HelpRole;
   function YesRole return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QMessageBox");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ButtonRole");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "YesRole"));
   end YesRole;
   function NoRole return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QMessageBox");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ButtonRole");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "NoRole"));
   end NoRole;
   function ResetRole return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QMessageBox");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ButtonRole");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ResetRole"));
   end ResetRole;
   function ApplyRole return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QMessageBox");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ButtonRole");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ApplyRole"));
   end ApplyRole;
   function NRoles return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QMessageBox");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ButtonRole");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "NRoles"));
   end NRoles;
end QtAda6.QtWidgets.QMessageBox.ButtonRole;
