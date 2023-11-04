-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qabstractspinbox-stepenabledflag.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Flag;
package QtAda6.QtWidgets.QAbstractSpinBox.StepEnabledFlag is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Flag.Inst with null record;
   procedure Finalize (Self : in out Class);
   StepNone        : QAbstractSpinBox.StepEnabledFlag.Class;-- 0x0
   StepUpEnabled   : QAbstractSpinBox.StepEnabledFlag.Class;-- 0x1
   StepDownEnabled : QAbstractSpinBox.StepEnabledFlag.Class;-- 0x2
end QtAda6.QtWidgets.QAbstractSpinBox.StepEnabledFlag;
