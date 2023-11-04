-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qgraphicsanchorlayout.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtWidgets.QGraphicsLayoutItem;
limited with QtAda6.QtCore.Qt.AnchorPoint;
limited with QtAda6.QtWidgets.QGraphicsAnchor;
limited with QtAda6.QtCore.Qt.Orientation;
limited with QtAda6.QtCore.Qt.Corner;
limited with QtAda6.QtCore.QRectF;
limited with QtAda6.QtCore.QRect;
limited with QtAda6.QtCore.Qt.SizeHint;
limited with QtAda6.QtCore.QSizeF;
limited with QtAda6.QtCore.QSize;
with QtAda6.QtWidgets.QGraphicsLayout;
package QtAda6.QtWidgets.QGraphicsAnchorLayout is
   type Optional_QtAda6_QtWidgets_QGraphicsLayoutItem is access Any;
   type Union_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect is access Any;
   type Union_QtAda6_QtCore_QSizeF_QtAda6_QtCore_QSize is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new QtAda6.QtWidgets.QGraphicsLayout.Inst with null record;
   procedure Finalize (Self : in out Class);
   function Create (parent_P : Optional_QtAda6_QtWidgets_QGraphicsLayoutItem) return Class;
   function addAnchor
     (self         : access Inst; firstItem_P : access QtAda6.QtWidgets.QGraphicsLayoutItem.Inst'Class;
      firstEdge_P  : access QtAda6.QtCore.Qt.AnchorPoint.Inst'Class;
      secondItem_P : access QtAda6.QtWidgets.QGraphicsLayoutItem.Inst'Class;
      secondEdge_P : access QtAda6.QtCore.Qt.AnchorPoint.Inst'Class)
      return access QtAda6.QtWidgets.QGraphicsAnchor.Inst'Class;
   procedure addAnchors
     (self           : access Inst; firstItem_P : access QtAda6.QtWidgets.QGraphicsLayoutItem.Inst'Class;
      secondItem_P   : access QtAda6.QtWidgets.QGraphicsLayoutItem.Inst'Class;
      orientations_P : access QtAda6.QtCore.Qt.Orientation.Inst'Class);
   procedure addCornerAnchors
     (self           : access Inst; firstItem_P : access QtAda6.QtWidgets.QGraphicsLayoutItem.Inst'Class;
      firstCorner_P  : access QtAda6.QtCore.Qt.Corner.Inst'Class;
      secondItem_P   : access QtAda6.QtWidgets.QGraphicsLayoutItem.Inst'Class;
      secondCorner_P : access QtAda6.QtCore.Qt.Corner.Inst'Class);
   function anchor
     (self         : access Inst; firstItem_P : access QtAda6.QtWidgets.QGraphicsLayoutItem.Inst'Class;
      firstEdge_P  : access QtAda6.QtCore.Qt.AnchorPoint.Inst'Class;
      secondItem_P : access QtAda6.QtWidgets.QGraphicsLayoutItem.Inst'Class;
      secondEdge_P : access QtAda6.QtCore.Qt.AnchorPoint.Inst'Class)
      return access QtAda6.QtWidgets.QGraphicsAnchor.Inst'Class;
   function count (self : access Inst) return int;
   function horizontalSpacing (self : access Inst) return float;
   procedure invalidate (self : access Inst);
   function itemAt (self : access Inst; index_P : int) return access QtAda6.QtWidgets.QGraphicsLayoutItem.Inst'Class;
   procedure removeAt (self : access Inst; index_P : int);
   procedure setGeometry (self : access Inst; rect_P : Union_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect);
   procedure setHorizontalSpacing (self : access Inst; spacing_P : float);
   procedure setSpacing (self : access Inst; spacing_P : float);
   procedure setVerticalSpacing (self : access Inst; spacing_P : float);
   function sizeHint
     (self         : access Inst; which_P : access QtAda6.QtCore.Qt.SizeHint.Inst'Class;
      constraint_P : Union_QtAda6_QtCore_QSizeF_QtAda6_QtCore_QSize) return access QtAda6.QtCore.QSizeF.Inst'Class;
   function verticalSpacing (self : access Inst) return float;
end QtAda6.QtWidgets.QGraphicsAnchorLayout;
