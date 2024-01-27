-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qwizard-wizardoption.adb
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
package body QtAda6.QtWidgets.QWizard.WizardOption is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function IndependentPages return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QWizard");
      Enum_Class   := Object_GetAttrString (Parent_Class, "WizardOption");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "IndependentPages"));
   end IndependentPages;
   function IgnoreSubTitles return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QWizard");
      Enum_Class   := Object_GetAttrString (Parent_Class, "WizardOption");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "IgnoreSubTitles"));
   end IgnoreSubTitles;
   function ExtendedWatermarkPixmap return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QWizard");
      Enum_Class   := Object_GetAttrString (Parent_Class, "WizardOption");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ExtendedWatermarkPixmap"));
   end ExtendedWatermarkPixmap;
   function NoDefaultButton return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QWizard");
      Enum_Class   := Object_GetAttrString (Parent_Class, "WizardOption");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "NoDefaultButton"));
   end NoDefaultButton;
   function NoBackButtonOnStartPage return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QWizard");
      Enum_Class   := Object_GetAttrString (Parent_Class, "WizardOption");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "NoBackButtonOnStartPage"));
   end NoBackButtonOnStartPage;
   function NoBackButtonOnLastPage return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QWizard");
      Enum_Class   := Object_GetAttrString (Parent_Class, "WizardOption");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "NoBackButtonOnLastPage"));
   end NoBackButtonOnLastPage;
   function DisabledBackButtonOnLastPage return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QWizard");
      Enum_Class   := Object_GetAttrString (Parent_Class, "WizardOption");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "DisabledBackButtonOnLastPage"));
   end DisabledBackButtonOnLastPage;
   function HaveNextButtonOnLastPage return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QWizard");
      Enum_Class   := Object_GetAttrString (Parent_Class, "WizardOption");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "HaveNextButtonOnLastPage"));
   end HaveNextButtonOnLastPage;
   function HaveFinishButtonOnEarlyPages return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QWizard");
      Enum_Class   := Object_GetAttrString (Parent_Class, "WizardOption");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "HaveFinishButtonOnEarlyPages"));
   end HaveFinishButtonOnEarlyPages;
   function NoCancelButton return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QWizard");
      Enum_Class   := Object_GetAttrString (Parent_Class, "WizardOption");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "NoCancelButton"));
   end NoCancelButton;
   function CancelButtonOnLeft return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QWizard");
      Enum_Class   := Object_GetAttrString (Parent_Class, "WizardOption");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "CancelButtonOnLeft"));
   end CancelButtonOnLeft;
   function HaveHelpButton return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QWizard");
      Enum_Class   := Object_GetAttrString (Parent_Class, "WizardOption");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "HaveHelpButton"));
   end HaveHelpButton;
   function HelpButtonOnRight return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QWizard");
      Enum_Class   := Object_GetAttrString (Parent_Class, "WizardOption");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "HelpButtonOnRight"));
   end HelpButtonOnRight;
   function HaveCustomButton1 return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QWizard");
      Enum_Class   := Object_GetAttrString (Parent_Class, "WizardOption");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "HaveCustomButton1"));
   end HaveCustomButton1;
   function HaveCustomButton2 return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QWizard");
      Enum_Class   := Object_GetAttrString (Parent_Class, "WizardOption");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "HaveCustomButton2"));
   end HaveCustomButton2;
   function HaveCustomButton3 return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QWizard");
      Enum_Class   := Object_GetAttrString (Parent_Class, "WizardOption");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "HaveCustomButton3"));
   end HaveCustomButton3;
   function NoCancelButtonOnLastPage return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QWizard");
      Enum_Class   := Object_GetAttrString (Parent_Class, "WizardOption");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "NoCancelButtonOnLastPage"));
   end NoCancelButtonOnLastPage;
end QtAda6.QtWidgets.QWizard.WizardOption;
