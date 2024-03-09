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
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function ItemIsMovable return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QGraphicsItem");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ItemIsMovable"));
   end ItemIsMovable;
   function ItemIsSelectable return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QGraphicsItem");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ItemIsSelectable"));
   end ItemIsSelectable;
   function ItemIsFocusable return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QGraphicsItem");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ItemIsFocusable"));
   end ItemIsFocusable;
   function ItemClipsToShape return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QGraphicsItem");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ItemClipsToShape"));
   end ItemClipsToShape;
   function ItemClipsChildrenToShape return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QGraphicsItem");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ItemClipsChildrenToShape"));
   end ItemClipsChildrenToShape;
   function ItemIgnoresTransformations return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QGraphicsItem");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ItemIgnoresTransformations"));
   end ItemIgnoresTransformations;
   function ItemIgnoresParentOpacity return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QGraphicsItem");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ItemIgnoresParentOpacity"));
   end ItemIgnoresParentOpacity;
   function ItemDoesntPropagateOpacityToChildren return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QGraphicsItem");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ItemDoesntPropagateOpacityToChildren"));
   end ItemDoesntPropagateOpacityToChildren;
   function ItemStacksBehindParent return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QGraphicsItem");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ItemStacksBehindParent"));
   end ItemStacksBehindParent;
   function ItemUsesExtendedStyleOption return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QGraphicsItem");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ItemUsesExtendedStyleOption"));
   end ItemUsesExtendedStyleOption;
   function ItemHasNoContents return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QGraphicsItem");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ItemHasNoContents"));
   end ItemHasNoContents;
   function ItemSendsGeometryChanges return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QGraphicsItem");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ItemSendsGeometryChanges"));
   end ItemSendsGeometryChanges;
   function ItemAcceptsInputMethod return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QGraphicsItem");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ItemAcceptsInputMethod"));
   end ItemAcceptsInputMethod;
   function ItemNegativeZStacksBehindParent return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QGraphicsItem");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ItemNegativeZStacksBehindParent"));
   end ItemNegativeZStacksBehindParent;
   function ItemIsPanel return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QGraphicsItem");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ItemIsPanel"));
   end ItemIsPanel;
   function ItemIsFocusScope return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QGraphicsItem");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ItemIsFocusScope"));
   end ItemIsFocusScope;
   function ItemSendsScenePositionChanges return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QGraphicsItem");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ItemSendsScenePositionChanges"));
   end ItemSendsScenePositionChanges;
   function ItemStopsClickFocusPropagation return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QGraphicsItem");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ItemStopsClickFocusPropagation"));
   end ItemStopsClickFocusPropagation;
   function ItemStopsFocusHandling return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QGraphicsItem");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ItemStopsFocusHandling"));
   end ItemStopsFocusHandling;
   function ItemContainsChildrenInShape return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QGraphicsItem");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ItemContainsChildrenInShape"));
   end ItemContainsChildrenInShape;
end QtAda6.QtWidgets.QGraphicsItem.GraphicsItemFlag;
