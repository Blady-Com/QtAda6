-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qabstractitemview-state.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtWidgets.QAbstractItemView.State is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.Enum with null record;
   procedure Finalize (Self : in out Class);
   function NoState return Class;-- 0x0
   function DraggingState return Class;-- 0x1
   function DragSelectingState return Class;-- 0x2
   function EditingState return Class;-- 0x3
   function ExpandingState return Class;-- 0x4
   function CollapsingState return Class;-- 0x5
   function AnimatingState return Class;-- 0x6
end QtAda6.QtWidgets.QAbstractItemView.State;
