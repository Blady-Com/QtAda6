-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qabstractitemview-cursoraction.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Enum;
package QtAda6.QtWidgets.QAbstractItemView.CursorAction is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Enum.Inst with null record;
   procedure Finalize (Self : in out Class);
   MoveUp       : QAbstractItemView.CursorAction.Class;-- 0x0
   MoveDown     : QAbstractItemView.CursorAction.Class;-- 0x1
   MoveLeft     : QAbstractItemView.CursorAction.Class;-- 0x2
   MoveRight    : QAbstractItemView.CursorAction.Class;-- 0x3
   MoveHome     : QAbstractItemView.CursorAction.Class;-- 0x4
   MoveEnd      : QAbstractItemView.CursorAction.Class;-- 0x5
   MovePageUp   : QAbstractItemView.CursorAction.Class;-- 0x6
   MovePageDown : QAbstractItemView.CursorAction.Class;-- 0x7
   MoveNext     : QAbstractItemView.CursorAction.Class;-- 0x8
   MovePrevious : QAbstractItemView.CursorAction.Class;-- 0x9
end QtAda6.QtWidgets.QAbstractItemView.CursorAction;
