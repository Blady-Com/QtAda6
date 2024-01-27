-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qwizard-wizardoption.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtWidgets.QWizard.WizardOption is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.Flag with null record;
   procedure Finalize (Self : in out Class);
   function IndependentPages return Class;-- 0x1
   function IgnoreSubTitles return Class;-- 0x2
   function ExtendedWatermarkPixmap return Class;-- 0x4
   function NoDefaultButton return Class;-- 0x8
   function NoBackButtonOnStartPage return Class;-- 0x10
   function NoBackButtonOnLastPage return Class;-- 0x20
   function DisabledBackButtonOnLastPage return Class;-- 0x40
   function HaveNextButtonOnLastPage return Class;-- 0x80
   function HaveFinishButtonOnEarlyPages return Class;-- 0x100
   function NoCancelButton return Class;-- 0x200
   function CancelButtonOnLeft return Class;-- 0x400
   function HaveHelpButton return Class;-- 0x800
   function HelpButtonOnRight return Class;-- 0x1000
   function HaveCustomButton1 return Class;-- 0x2000
   function HaveCustomButton2 return Class;-- 0x4000
   function HaveCustomButton3 return Class;-- 0x8000
   function NoCancelButtonOnLastPage return Class;-- 0x10000
end QtAda6.QtWidgets.QWizard.WizardOption;
