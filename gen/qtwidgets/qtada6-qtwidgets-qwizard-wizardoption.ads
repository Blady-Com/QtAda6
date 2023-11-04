-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qwizard-wizardoption.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Flag;
package QtAda6.QtWidgets.QWizard.WizardOption is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Flag.Inst with null record;
   procedure Finalize (Self : in out Class);
   IndependentPages             : QWizard.WizardOption.Class;-- 0x1
   IgnoreSubTitles              : QWizard.WizardOption.Class;-- 0x2
   ExtendedWatermarkPixmap      : QWizard.WizardOption.Class;-- 0x4
   NoDefaultButton              : QWizard.WizardOption.Class;-- 0x8
   NoBackButtonOnStartPage      : QWizard.WizardOption.Class;-- 0x10
   NoBackButtonOnLastPage       : QWizard.WizardOption.Class;-- 0x20
   DisabledBackButtonOnLastPage : QWizard.WizardOption.Class;-- 0x40
   HaveNextButtonOnLastPage     : QWizard.WizardOption.Class;-- 0x80
   HaveFinishButtonOnEarlyPages : QWizard.WizardOption.Class;-- 0x100
   NoCancelButton               : QWizard.WizardOption.Class;-- 0x200
   CancelButtonOnLeft           : QWizard.WizardOption.Class;-- 0x400
   HaveHelpButton               : QWizard.WizardOption.Class;-- 0x800
   HelpButtonOnRight            : QWizard.WizardOption.Class;-- 0x1000
   HaveCustomButton1            : QWizard.WizardOption.Class;-- 0x2000
   HaveCustomButton2            : QWizard.WizardOption.Class;-- 0x4000
   HaveCustomButton3            : QWizard.WizardOption.Class;-- 0x8000
   NoCancelButtonOnLastPage     : QWizard.WizardOption.Class;-- 0x10000
end QtAda6.QtWidgets.QWizard.WizardOption;
