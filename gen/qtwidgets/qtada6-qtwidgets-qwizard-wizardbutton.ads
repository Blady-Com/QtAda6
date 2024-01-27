-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qwizard-wizardbutton.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtWidgets.QWizard.WizardButton is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.Enum with null record;
   procedure Finalize (Self : in out Class);
   function NoButton return Class;-- -0x1
   function BackButton return Class;-- 0x0
   function NextButton return Class;-- 0x1
   function CommitButton return Class;-- 0x2
   function FinishButton return Class;-- 0x3
   function CancelButton return Class;-- 0x4
   function HelpButton return Class;-- 0x5
   function CustomButton1 return Class;-- 0x6
   function NStandardButtons return Class;-- 0x6
   function CustomButton2 return Class;-- 0x7
   function CustomButton3 return Class;-- 0x8
   function NButtons return Class;-- 0x9
   function Stretch return Class;-- 0x9
end QtAda6.QtWidgets.QWizard.WizardButton;
