-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qgraphicsitem-graphicsitemchange.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtWidgets.QGraphicsItem.GraphicsItemChange is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.Enum with null record;
   procedure Finalize (Self : in out Class);
   function ItemPositionChange return Class;-- 0x0
   function ItemVisibleChange return Class;-- 0x2
   function ItemEnabledChange return Class;-- 0x3
   function ItemSelectedChange return Class;-- 0x4
   function ItemParentChange return Class;-- 0x5
   function ItemChildAddedChange return Class;-- 0x6
   function ItemChildRemovedChange return Class;-- 0x7
   function ItemTransformChange return Class;-- 0x8
   function ItemPositionHasChanged return Class;-- 0x9
   function ItemTransformHasChanged return Class;-- 0xa
   function ItemSceneChange return Class;-- 0xb
   function ItemVisibleHasChanged return Class;-- 0xc
   function ItemEnabledHasChanged return Class;-- 0xd
   function ItemSelectedHasChanged return Class;-- 0xe
   function ItemParentHasChanged return Class;-- 0xf
   function ItemSceneHasChanged return Class;-- 0x10
   function ItemCursorChange return Class;-- 0x11
   function ItemCursorHasChanged return Class;-- 0x12
   function ItemToolTipChange return Class;-- 0x13
   function ItemToolTipHasChanged return Class;-- 0x14
   function ItemFlagsChange return Class;-- 0x15
   function ItemFlagsHaveChanged return Class;-- 0x16
   function ItemZValueChange return Class;-- 0x17
   function ItemZValueHasChanged return Class;-- 0x18
   function ItemOpacityChange return Class;-- 0x19
   function ItemOpacityHasChanged return Class;-- 0x1a
   function ItemScenePositionHasChanged return Class;-- 0x1b
   function ItemRotationChange return Class;-- 0x1c
   function ItemRotationHasChanged return Class;-- 0x1d
   function ItemScaleChange return Class;-- 0x1e
   function ItemScaleHasChanged return Class;-- 0x1f
   function ItemTransformOriginPointChange return Class;-- 0x20
   function ItemTransformOriginPointHasChanged return Class;-- 0x21
end QtAda6.QtWidgets.QGraphicsItem.GraphicsItemChange;
