-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qstyleoptionmenuitem-menuitemtype.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Enum;
package QtAda6.QtWidgets.QStyleOptionMenuItem.MenuItemType is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Enum.Inst with null record;
   procedure Finalize (Self : in out Class);
   Normal      : QStyleOptionMenuItem.MenuItemType.Class;-- 0x0
   DefaultItem : QStyleOptionMenuItem.MenuItemType.Class;-- 0x1
   Separator   : QStyleOptionMenuItem.MenuItemType.Class;-- 0x2
   SubMenu     : QStyleOptionMenuItem.MenuItemType.Class;-- 0x3
   Scroller    : QStyleOptionMenuItem.MenuItemType.Class;-- 0x4
   TearOff     : QStyleOptionMenuItem.MenuItemType.Class;-- 0x5
   Margin      : QStyleOptionMenuItem.MenuItemType.Class;-- 0x6
   EmptyArea   : QStyleOptionMenuItem.MenuItemType.Class;-- 0x7
end QtAda6.QtWidgets.QStyleOptionMenuItem.MenuItemType;
