-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qwizard-wizardbutton.adb
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
package body QtAda6.QtWidgets.QWizard.WizardButton is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function NoButton return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QWizard");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "NoButton"));
   end NoButton;
   function BackButton return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QWizard");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "BackButton"));
   end BackButton;
   function NextButton return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QWizard");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "NextButton"));
   end NextButton;
   function CommitButton return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QWizard");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "CommitButton"));
   end CommitButton;
   function FinishButton return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QWizard");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "FinishButton"));
   end FinishButton;
   function CancelButton return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QWizard");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "CancelButton"));
   end CancelButton;
   function HelpButton return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QWizard");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "HelpButton"));
   end HelpButton;
   function CustomButton1 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QWizard");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "CustomButton1"));
   end CustomButton1;
   function NStandardButtons return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QWizard");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "NStandardButtons"));
   end NStandardButtons;
   function CustomButton2 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QWizard");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "CustomButton2"));
   end CustomButton2;
   function CustomButton3 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QWizard");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "CustomButton3"));
   end CustomButton3;
   function NButtons return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QWizard");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "NButtons"));
   end NButtons;
   function Stretch return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QWizard");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Stretch"));
   end Stretch;
end QtAda6.QtWidgets.QWizard.WizardButton;
