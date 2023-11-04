-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qwizard-wizardbutton.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Enum;
package QtAda6.QtWidgets.QWizard.WizardButton is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Enum.Inst with null record;
   procedure Finalize (Self : in out Class);
   NoButton         : QWizard.WizardButton.Class;-- -0x1
   BackButton       : QWizard.WizardButton.Class;-- 0x0
   NextButton       : QWizard.WizardButton.Class;-- 0x1
   CommitButton     : QWizard.WizardButton.Class;-- 0x2
   FinishButton     : QWizard.WizardButton.Class;-- 0x3
   CancelButton     : QWizard.WizardButton.Class;-- 0x4
   HelpButton       : QWizard.WizardButton.Class;-- 0x5
   CustomButton1    : QWizard.WizardButton.Class;-- 0x6
   NStandardButtons : QWizard.WizardButton.Class;-- 0x6
   CustomButton2    : QWizard.WizardButton.Class;-- 0x7
   CustomButton3    : QWizard.WizardButton.Class;-- 0x8
   NButtons         : QWizard.WizardButton.Class;-- 0x9
   Stretch          : QWizard.WizardButton.Class;-- 0x9
end QtAda6.QtWidgets.QWizard.WizardButton;
