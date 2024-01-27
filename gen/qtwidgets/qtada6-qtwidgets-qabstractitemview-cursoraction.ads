-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qabstractitemview-cursoraction.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtWidgets.QAbstractItemView.CursorAction is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.Enum with null record;
   procedure Finalize (Self : in out Class);
   function MoveUp return Class;-- 0x0
   function MoveDown return Class;-- 0x1
   function MoveLeft return Class;-- 0x2
   function MoveRight return Class;-- 0x3
   function MoveHome return Class;-- 0x4
   function MoveEnd return Class;-- 0x5
   function MovePageUp return Class;-- 0x6
   function MovePageDown return Class;-- 0x7
   function MoveNext return Class;-- 0x8
   function MovePrevious return Class;-- 0x9
end QtAda6.QtWidgets.QAbstractItemView.CursorAction;
