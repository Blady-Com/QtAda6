-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qgraphicsitem-graphicsitemflag.adb
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
package body QtAda6.QtWidgets.QGraphicsItem.GraphicsItemFlag is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function ItemIsMovable return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QGraphicsItem");
      Enum_Class   := Object_GetAttrString (Parent_Class, "GraphicsItemFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ItemIsMovable"));
   end ItemIsMovable;
   function ItemIsSelectable return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QGraphicsItem");
      Enum_Class   := Object_GetAttrString (Parent_Class, "GraphicsItemFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ItemIsSelectable"));
   end ItemIsSelectable;
   function ItemIsFocusable return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QGraphicsItem");
      Enum_Class   := Object_GetAttrString (Parent_Class, "GraphicsItemFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ItemIsFocusable"));
   end ItemIsFocusable;
   function ItemClipsToShape return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QGraphicsItem");
      Enum_Class   := Object_GetAttrString (Parent_Class, "GraphicsItemFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ItemClipsToShape"));
   end ItemClipsToShape;
   function ItemClipsChildrenToShape return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QGraphicsItem");
      Enum_Class   := Object_GetAttrString (Parent_Class, "GraphicsItemFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ItemClipsChildrenToShape"));
   end ItemClipsChildrenToShape;
   function ItemIgnoresTransformations return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QGraphicsItem");
      Enum_Class   := Object_GetAttrString (Parent_Class, "GraphicsItemFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ItemIgnoresTransformations"));
   end ItemIgnoresTransformations;
   function ItemIgnoresParentOpacity return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QGraphicsItem");
      Enum_Class   := Object_GetAttrString (Parent_Class, "GraphicsItemFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ItemIgnoresParentOpacity"));
   end ItemIgnoresParentOpacity;
   function ItemDoesntPropagateOpacityToChildren return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QGraphicsItem");
      Enum_Class   := Object_GetAttrString (Parent_Class, "GraphicsItemFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ItemDoesntPropagateOpacityToChildren"));
   end ItemDoesntPropagateOpacityToChildren;
   function ItemStacksBehindParent return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QGraphicsItem");
      Enum_Class   := Object_GetAttrString (Parent_Class, "GraphicsItemFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ItemStacksBehindParent"));
   end ItemStacksBehindParent;
   function ItemUsesExtendedStyleOption return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QGraphicsItem");
      Enum_Class   := Object_GetAttrString (Parent_Class, "GraphicsItemFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ItemUsesExtendedStyleOption"));
   end ItemUsesExtendedStyleOption;
   function ItemHasNoContents return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QGraphicsItem");
      Enum_Class   := Object_GetAttrString (Parent_Class, "GraphicsItemFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ItemHasNoContents"));
   end ItemHasNoContents;
   function ItemSendsGeometryChanges return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QGraphicsItem");
      Enum_Class   := Object_GetAttrString (Parent_Class, "GraphicsItemFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ItemSendsGeometryChanges"));
   end ItemSendsGeometryChanges;
   function ItemAcceptsInputMethod return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QGraphicsItem");
      Enum_Class   := Object_GetAttrString (Parent_Class, "GraphicsItemFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ItemAcceptsInputMethod"));
   end ItemAcceptsInputMethod;
   function ItemNegativeZStacksBehindParent return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QGraphicsItem");
      Enum_Class   := Object_GetAttrString (Parent_Class, "GraphicsItemFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ItemNegativeZStacksBehindParent"));
   end ItemNegativeZStacksBehindParent;
   function ItemIsPanel return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QGraphicsItem");
      Enum_Class   := Object_GetAttrString (Parent_Class, "GraphicsItemFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ItemIsPanel"));
   end ItemIsPanel;
   function ItemIsFocusScope return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QGraphicsItem");
      Enum_Class   := Object_GetAttrString (Parent_Class, "GraphicsItemFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ItemIsFocusScope"));
   end ItemIsFocusScope;
   function ItemSendsScenePositionChanges return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QGraphicsItem");
      Enum_Class   := Object_GetAttrString (Parent_Class, "GraphicsItemFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ItemSendsScenePositionChanges"));
   end ItemSendsScenePositionChanges;
   function ItemStopsClickFocusPropagation return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QGraphicsItem");
      Enum_Class   := Object_GetAttrString (Parent_Class, "GraphicsItemFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ItemStopsClickFocusPropagation"));
   end ItemStopsClickFocusPropagation;
   function ItemStopsFocusHandling return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QGraphicsItem");
      Enum_Class   := Object_GetAttrString (Parent_Class, "GraphicsItemFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ItemStopsFocusHandling"));
   end ItemStopsFocusHandling;
   function ItemContainsChildrenInShape return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QGraphicsItem");
      Enum_Class   := Object_GetAttrString (Parent_Class, "GraphicsItemFlag");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ItemContainsChildrenInShape"));
   end ItemContainsChildrenInShape;
end QtAda6.QtWidgets.QGraphicsItem.GraphicsItemFlag;
