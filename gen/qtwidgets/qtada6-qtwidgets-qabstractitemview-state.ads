-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qabstractitemview-state.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Enum;
package QtAda6.QtWidgets.QAbstractItemView.State is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Enum.Inst with null record;
   procedure Finalize (Self : in out Class);
   NoState            : QAbstractItemView.State.Class;-- 0x0
   DraggingState      : QAbstractItemView.State.Class;-- 0x1
   DragSelectingState : QAbstractItemView.State.Class;-- 0x2
   EditingState       : QAbstractItemView.State.Class;-- 0x3
   ExpandingState     : QAbstractItemView.State.Class;-- 0x4
   CollapsingState    : QAbstractItemView.State.Class;-- 0x5
   AnimatingState     : QAbstractItemView.State.Class;-- 0x6
end QtAda6.QtWidgets.QAbstractItemView.State;
