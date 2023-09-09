-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qitemselectionmodel-selectionflag.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Flag;
package QtAda6.QtCore.QItemSelectionModel.SelectionFlag is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Flag.Inst with null record;
   procedure Finalize (Self : in out Class);
   NoUpdate       : QItemSelectionModel.SelectionFlag.Class;-- 0x0
   Clear          : QItemSelectionModel.SelectionFlag.Class;-- 0x1
   Select_K       : QItemSelectionModel.SelectionFlag.Class;-- 0x2
   ClearAndSelect : QItemSelectionModel.SelectionFlag.Class;-- 0x3
   Deselect       : QItemSelectionModel.SelectionFlag.Class;-- 0x4
   Toggle         : QItemSelectionModel.SelectionFlag.Class;-- 0x8
   Current        : QItemSelectionModel.SelectionFlag.Class;-- 0x10
   SelectCurrent  : QItemSelectionModel.SelectionFlag.Class;-- 0x12
   ToggleCurrent  : QItemSelectionModel.SelectionFlag.Class;-- 0x18
   Rows           : QItemSelectionModel.SelectionFlag.Class;-- 0x20
   Columns        : QItemSelectionModel.SelectionFlag.Class;-- 0x40
end QtAda6.QtCore.QItemSelectionModel.SelectionFlag;
