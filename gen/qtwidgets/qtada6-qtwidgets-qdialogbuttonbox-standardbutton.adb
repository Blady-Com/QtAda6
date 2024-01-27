-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qdialogbuttonbox-standardbutton.adb
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
package body QtAda6.QtWidgets.QDialogButtonBox.StandardButton is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function NoButton return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QDialogButtonBox");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardButton");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "NoButton"));
   end NoButton;
   function FirstButton return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QDialogButtonBox");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardButton");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "FirstButton"));
   end FirstButton;
   function Ok return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QDialogButtonBox");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardButton");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Ok"));
   end Ok;
   function Save return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QDialogButtonBox");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardButton");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Save"));
   end Save;
   function SaveAll return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QDialogButtonBox");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardButton");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SaveAll"));
   end SaveAll;
   function Open return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QDialogButtonBox");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardButton");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Open"));
   end Open;
   function Yes return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QDialogButtonBox");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardButton");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Yes"));
   end Yes;
   function YesToAll return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QDialogButtonBox");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardButton");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "YesToAll"));
   end YesToAll;
   function No return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QDialogButtonBox");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardButton");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "No"));
   end No;
   function NoToAll return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QDialogButtonBox");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardButton");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "NoToAll"));
   end NoToAll;
   function Abort_K return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QDialogButtonBox");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardButton");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Abort"));
   end Abort_K;
   function Retry return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QDialogButtonBox");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardButton");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Retry"));
   end Retry;
   function Ignore return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QDialogButtonBox");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardButton");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Ignore"));
   end Ignore;
   function Close return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QDialogButtonBox");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardButton");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Close"));
   end Close;
   function Cancel return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QDialogButtonBox");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardButton");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Cancel"));
   end Cancel;
   function Discard return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QDialogButtonBox");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardButton");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Discard"));
   end Discard;
   function Help return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QDialogButtonBox");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardButton");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Help"));
   end Help;
   function Apply return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QDialogButtonBox");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardButton");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Apply"));
   end Apply;
   function Reset return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QDialogButtonBox");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardButton");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Reset"));
   end Reset;
   function LastButton return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QDialogButtonBox");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardButton");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "LastButton"));
   end LastButton;
   function RestoreDefaults return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QDialogButtonBox");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardButton");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "RestoreDefaults"));
   end RestoreDefaults;
end QtAda6.QtWidgets.QDialogButtonBox.StandardButton;
