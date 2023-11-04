-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qgraphicsitem-graphicsitemflag.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Flag;
package QtAda6.QtWidgets.QGraphicsItem.GraphicsItemFlag is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Flag.Inst with null record;
   procedure Finalize (Self : in out Class);
   ItemIsMovable                        : QGraphicsItem.GraphicsItemFlag.Class;-- 0x1
   ItemIsSelectable                     : QGraphicsItem.GraphicsItemFlag.Class;-- 0x2
   ItemIsFocusable                      : QGraphicsItem.GraphicsItemFlag.Class;-- 0x4
   ItemClipsToShape                     : QGraphicsItem.GraphicsItemFlag.Class;-- 0x8
   ItemClipsChildrenToShape             : QGraphicsItem.GraphicsItemFlag.Class;-- 0x10
   ItemIgnoresTransformations           : QGraphicsItem.GraphicsItemFlag.Class;-- 0x20
   ItemIgnoresParentOpacity             : QGraphicsItem.GraphicsItemFlag.Class;-- 0x40
   ItemDoesntPropagateOpacityToChildren : QGraphicsItem.GraphicsItemFlag.Class;-- 0x80
   ItemStacksBehindParent               : QGraphicsItem.GraphicsItemFlag.Class;-- 0x100
   ItemUsesExtendedStyleOption          : QGraphicsItem.GraphicsItemFlag.Class;-- 0x200
   ItemHasNoContents                    : QGraphicsItem.GraphicsItemFlag.Class;-- 0x400
   ItemSendsGeometryChanges             : QGraphicsItem.GraphicsItemFlag.Class;-- 0x800
   ItemAcceptsInputMethod               : QGraphicsItem.GraphicsItemFlag.Class;-- 0x1000
   ItemNegativeZStacksBehindParent      : QGraphicsItem.GraphicsItemFlag.Class;-- 0x2000
   ItemIsPanel                          : QGraphicsItem.GraphicsItemFlag.Class;-- 0x4000
   ItemIsFocusScope                     : QGraphicsItem.GraphicsItemFlag.Class;-- 0x8000
   ItemSendsScenePositionChanges        : QGraphicsItem.GraphicsItemFlag.Class;-- 0x10000
   ItemStopsClickFocusPropagation       : QGraphicsItem.GraphicsItemFlag.Class;-- 0x20000
   ItemStopsFocusHandling               : QGraphicsItem.GraphicsItemFlag.Class;-- 0x40000
   ItemContainsChildrenInShape          : QGraphicsItem.GraphicsItemFlag.Class;-- 0x80000
end QtAda6.QtWidgets.QGraphicsItem.GraphicsItemFlag;
