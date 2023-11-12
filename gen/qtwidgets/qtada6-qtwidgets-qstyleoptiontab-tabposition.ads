-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qstyleoptiontab-tabposition.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Enum;
package QtAda6.QtWidgets.QStyleOptionTab.TabPosition is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Enum.Inst with null record;
   procedure Finalize (Self : in out Class);
   Beginning  : QStyleOptionTab.TabPosition.Class;-- 0x0
   Middle     : QStyleOptionTab.TabPosition.Class;-- 0x1
   End_K      : QStyleOptionTab.TabPosition.Class;-- 0x2
   OnlyOneTab : QStyleOptionTab.TabPosition.Class;-- 0x3
end QtAda6.QtWidgets.QStyleOptionTab.TabPosition;