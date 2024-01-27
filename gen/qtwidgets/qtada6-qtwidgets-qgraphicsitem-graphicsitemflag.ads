-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qgraphicsitem-graphicsitemflag.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtWidgets.QGraphicsItem.GraphicsItemFlag is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.Flag with null record;
   procedure Finalize (Self : in out Class);
   function ItemIsMovable return Class;-- 0x1
   function ItemIsSelectable return Class;-- 0x2
   function ItemIsFocusable return Class;-- 0x4
   function ItemClipsToShape return Class;-- 0x8
   function ItemClipsChildrenToShape return Class;-- 0x10
   function ItemIgnoresTransformations return Class;-- 0x20
   function ItemIgnoresParentOpacity return Class;-- 0x40
   function ItemDoesntPropagateOpacityToChildren return Class;-- 0x80
   function ItemStacksBehindParent return Class;-- 0x100
   function ItemUsesExtendedStyleOption return Class;-- 0x200
   function ItemHasNoContents return Class;-- 0x400
   function ItemSendsGeometryChanges return Class;-- 0x800
   function ItemAcceptsInputMethod return Class;-- 0x1000
   function ItemNegativeZStacksBehindParent return Class;-- 0x2000
   function ItemIsPanel return Class;-- 0x4000
   function ItemIsFocusScope return Class;-- 0x8000
   function ItemSendsScenePositionChanges return Class;-- 0x10000
   function ItemStopsClickFocusPropagation return Class;-- 0x20000
   function ItemStopsFocusHandling return Class;-- 0x40000
   function ItemContainsChildrenInShape return Class;-- 0x80000
end QtAda6.QtWidgets.QGraphicsItem.GraphicsItemFlag;
