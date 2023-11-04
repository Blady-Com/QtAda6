-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qgraphicsitem-graphicsitemchange.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Enum;
package QtAda6.QtWidgets.QGraphicsItem.GraphicsItemChange is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Enum.Inst with null record;
   procedure Finalize (Self : in out Class);
   ItemPositionChange                 : QGraphicsItem.GraphicsItemChange.Class;-- 0x0
   ItemVisibleChange                  : QGraphicsItem.GraphicsItemChange.Class;-- 0x2
   ItemEnabledChange                  : QGraphicsItem.GraphicsItemChange.Class;-- 0x3
   ItemSelectedChange                 : QGraphicsItem.GraphicsItemChange.Class;-- 0x4
   ItemParentChange                   : QGraphicsItem.GraphicsItemChange.Class;-- 0x5
   ItemChildAddedChange               : QGraphicsItem.GraphicsItemChange.Class;-- 0x6
   ItemChildRemovedChange             : QGraphicsItem.GraphicsItemChange.Class;-- 0x7
   ItemTransformChange                : QGraphicsItem.GraphicsItemChange.Class;-- 0x8
   ItemPositionHasChanged             : QGraphicsItem.GraphicsItemChange.Class;-- 0x9
   ItemTransformHasChanged            : QGraphicsItem.GraphicsItemChange.Class;-- 0xa
   ItemSceneChange                    : QGraphicsItem.GraphicsItemChange.Class;-- 0xb
   ItemVisibleHasChanged              : QGraphicsItem.GraphicsItemChange.Class;-- 0xc
   ItemEnabledHasChanged              : QGraphicsItem.GraphicsItemChange.Class;-- 0xd
   ItemSelectedHasChanged             : QGraphicsItem.GraphicsItemChange.Class;-- 0xe
   ItemParentHasChanged               : QGraphicsItem.GraphicsItemChange.Class;-- 0xf
   ItemSceneHasChanged                : QGraphicsItem.GraphicsItemChange.Class;-- 0x10
   ItemCursorChange                   : QGraphicsItem.GraphicsItemChange.Class;-- 0x11
   ItemCursorHasChanged               : QGraphicsItem.GraphicsItemChange.Class;-- 0x12
   ItemToolTipChange                  : QGraphicsItem.GraphicsItemChange.Class;-- 0x13
   ItemToolTipHasChanged              : QGraphicsItem.GraphicsItemChange.Class;-- 0x14
   ItemFlagsChange                    : QGraphicsItem.GraphicsItemChange.Class;-- 0x15
   ItemFlagsHaveChanged               : QGraphicsItem.GraphicsItemChange.Class;-- 0x16
   ItemZValueChange                   : QGraphicsItem.GraphicsItemChange.Class;-- 0x17
   ItemZValueHasChanged               : QGraphicsItem.GraphicsItemChange.Class;-- 0x18
   ItemOpacityChange                  : QGraphicsItem.GraphicsItemChange.Class;-- 0x19
   ItemOpacityHasChanged              : QGraphicsItem.GraphicsItemChange.Class;-- 0x1a
   ItemScenePositionHasChanged        : QGraphicsItem.GraphicsItemChange.Class;-- 0x1b
   ItemRotationChange                 : QGraphicsItem.GraphicsItemChange.Class;-- 0x1c
   ItemRotationHasChanged             : QGraphicsItem.GraphicsItemChange.Class;-- 0x1d
   ItemScaleChange                    : QGraphicsItem.GraphicsItemChange.Class;-- 0x1e
   ItemScaleHasChanged                : QGraphicsItem.GraphicsItemChange.Class;-- 0x1f
   ItemTransformOriginPointChange     : QGraphicsItem.GraphicsItemChange.Class;-- 0x20
   ItemTransformOriginPointHasChanged : QGraphicsItem.GraphicsItemChange.Class;-- 0x21
end QtAda6.QtWidgets.QGraphicsItem.GraphicsItemChange;
