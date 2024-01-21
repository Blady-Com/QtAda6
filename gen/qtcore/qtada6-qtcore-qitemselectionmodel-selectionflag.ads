-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qitemselectionmodel-selectionflag.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtCore.QItemSelectionModel.SelectionFlag is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.Flag with null record;
   procedure Finalize (Self : in out Class);
   function NoUpdate return Class;-- 0x0
   function Clear return Class;-- 0x1
   function Select_K return Class;-- 0x2
   function ClearAndSelect return Class;-- 0x3
   function Deselect return Class;-- 0x4
   function Toggle return Class;-- 0x8
   function Current return Class;-- 0x10
   function SelectCurrent return Class;-- 0x12
   function ToggleCurrent return Class;-- 0x18
   function Rows return Class;-- 0x20
   function Columns return Class;-- 0x40
end QtAda6.QtCore.QItemSelectionModel.SelectionFlag;
