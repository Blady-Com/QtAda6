-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qgraphicsitem-graphicsitemchange.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Py; use Py;
with Ada.Unchecked_Deallocation;
package body QtAda6.QtWidgets.QGraphicsItem.GraphicsItemChange is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function ItemPositionChange return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QGraphicsItem");
      Enum_Class   := Object_GetAttrString (Parent_Class, "GraphicsItemChange");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ItemPositionChange"));
   end ItemPositionChange;
   function ItemVisibleChange return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QGraphicsItem");
      Enum_Class   := Object_GetAttrString (Parent_Class, "GraphicsItemChange");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ItemVisibleChange"));
   end ItemVisibleChange;
   function ItemEnabledChange return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QGraphicsItem");
      Enum_Class   := Object_GetAttrString (Parent_Class, "GraphicsItemChange");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ItemEnabledChange"));
   end ItemEnabledChange;
   function ItemSelectedChange return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QGraphicsItem");
      Enum_Class   := Object_GetAttrString (Parent_Class, "GraphicsItemChange");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ItemSelectedChange"));
   end ItemSelectedChange;
   function ItemParentChange return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QGraphicsItem");
      Enum_Class   := Object_GetAttrString (Parent_Class, "GraphicsItemChange");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ItemParentChange"));
   end ItemParentChange;
   function ItemChildAddedChange return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QGraphicsItem");
      Enum_Class   := Object_GetAttrString (Parent_Class, "GraphicsItemChange");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ItemChildAddedChange"));
   end ItemChildAddedChange;
   function ItemChildRemovedChange return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QGraphicsItem");
      Enum_Class   := Object_GetAttrString (Parent_Class, "GraphicsItemChange");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ItemChildRemovedChange"));
   end ItemChildRemovedChange;
   function ItemTransformChange return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QGraphicsItem");
      Enum_Class   := Object_GetAttrString (Parent_Class, "GraphicsItemChange");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ItemTransformChange"));
   end ItemTransformChange;
   function ItemPositionHasChanged return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QGraphicsItem");
      Enum_Class   := Object_GetAttrString (Parent_Class, "GraphicsItemChange");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ItemPositionHasChanged"));
   end ItemPositionHasChanged;
   function ItemTransformHasChanged return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QGraphicsItem");
      Enum_Class   := Object_GetAttrString (Parent_Class, "GraphicsItemChange");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ItemTransformHasChanged"));
   end ItemTransformHasChanged;
   function ItemSceneChange return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QGraphicsItem");
      Enum_Class   := Object_GetAttrString (Parent_Class, "GraphicsItemChange");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ItemSceneChange"));
   end ItemSceneChange;
   function ItemVisibleHasChanged return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QGraphicsItem");
      Enum_Class   := Object_GetAttrString (Parent_Class, "GraphicsItemChange");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ItemVisibleHasChanged"));
   end ItemVisibleHasChanged;
   function ItemEnabledHasChanged return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QGraphicsItem");
      Enum_Class   := Object_GetAttrString (Parent_Class, "GraphicsItemChange");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ItemEnabledHasChanged"));
   end ItemEnabledHasChanged;
   function ItemSelectedHasChanged return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QGraphicsItem");
      Enum_Class   := Object_GetAttrString (Parent_Class, "GraphicsItemChange");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ItemSelectedHasChanged"));
   end ItemSelectedHasChanged;
   function ItemParentHasChanged return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QGraphicsItem");
      Enum_Class   := Object_GetAttrString (Parent_Class, "GraphicsItemChange");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ItemParentHasChanged"));
   end ItemParentHasChanged;
   function ItemSceneHasChanged return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QGraphicsItem");
      Enum_Class   := Object_GetAttrString (Parent_Class, "GraphicsItemChange");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ItemSceneHasChanged"));
   end ItemSceneHasChanged;
   function ItemCursorChange return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QGraphicsItem");
      Enum_Class   := Object_GetAttrString (Parent_Class, "GraphicsItemChange");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ItemCursorChange"));
   end ItemCursorChange;
   function ItemCursorHasChanged return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QGraphicsItem");
      Enum_Class   := Object_GetAttrString (Parent_Class, "GraphicsItemChange");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ItemCursorHasChanged"));
   end ItemCursorHasChanged;
   function ItemToolTipChange return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QGraphicsItem");
      Enum_Class   := Object_GetAttrString (Parent_Class, "GraphicsItemChange");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ItemToolTipChange"));
   end ItemToolTipChange;
   function ItemToolTipHasChanged return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QGraphicsItem");
      Enum_Class   := Object_GetAttrString (Parent_Class, "GraphicsItemChange");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ItemToolTipHasChanged"));
   end ItemToolTipHasChanged;
   function ItemFlagsChange return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QGraphicsItem");
      Enum_Class   := Object_GetAttrString (Parent_Class, "GraphicsItemChange");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ItemFlagsChange"));
   end ItemFlagsChange;
   function ItemFlagsHaveChanged return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QGraphicsItem");
      Enum_Class   := Object_GetAttrString (Parent_Class, "GraphicsItemChange");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ItemFlagsHaveChanged"));
   end ItemFlagsHaveChanged;
   function ItemZValueChange return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QGraphicsItem");
      Enum_Class   := Object_GetAttrString (Parent_Class, "GraphicsItemChange");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ItemZValueChange"));
   end ItemZValueChange;
   function ItemZValueHasChanged return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QGraphicsItem");
      Enum_Class   := Object_GetAttrString (Parent_Class, "GraphicsItemChange");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ItemZValueHasChanged"));
   end ItemZValueHasChanged;
   function ItemOpacityChange return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QGraphicsItem");
      Enum_Class   := Object_GetAttrString (Parent_Class, "GraphicsItemChange");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ItemOpacityChange"));
   end ItemOpacityChange;
   function ItemOpacityHasChanged return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QGraphicsItem");
      Enum_Class   := Object_GetAttrString (Parent_Class, "GraphicsItemChange");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ItemOpacityHasChanged"));
   end ItemOpacityHasChanged;
   function ItemScenePositionHasChanged return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QGraphicsItem");
      Enum_Class   := Object_GetAttrString (Parent_Class, "GraphicsItemChange");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ItemScenePositionHasChanged"));
   end ItemScenePositionHasChanged;
   function ItemRotationChange return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QGraphicsItem");
      Enum_Class   := Object_GetAttrString (Parent_Class, "GraphicsItemChange");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ItemRotationChange"));
   end ItemRotationChange;
   function ItemRotationHasChanged return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QGraphicsItem");
      Enum_Class   := Object_GetAttrString (Parent_Class, "GraphicsItemChange");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ItemRotationHasChanged"));
   end ItemRotationHasChanged;
   function ItemScaleChange return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QGraphicsItem");
      Enum_Class   := Object_GetAttrString (Parent_Class, "GraphicsItemChange");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ItemScaleChange"));
   end ItemScaleChange;
   function ItemScaleHasChanged return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QGraphicsItem");
      Enum_Class   := Object_GetAttrString (Parent_Class, "GraphicsItemChange");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ItemScaleHasChanged"));
   end ItemScaleHasChanged;
   function ItemTransformOriginPointChange return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QGraphicsItem");
      Enum_Class   := Object_GetAttrString (Parent_Class, "GraphicsItemChange");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ItemTransformOriginPointChange"));
   end ItemTransformOriginPointChange;
   function ItemTransformOriginPointHasChanged return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QGraphicsItem");
      Enum_Class   := Object_GetAttrString (Parent_Class, "GraphicsItemChange");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ItemTransformOriginPointHasChanged"));
   end ItemTransformOriginPointHasChanged;
end QtAda6.QtWidgets.QGraphicsItem.GraphicsItemChange;
