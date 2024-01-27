-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qgraphicslinearlayout.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.Qt.Orientation;
limited with QtAda6.QtWidgets.QGraphicsLayoutItem;
limited with QtAda6.QtCore.Qt.AlignmentFlag;
limited with QtAda6.QtCore.QRectF;
limited with QtAda6.QtCore.QRect;
limited with QtAda6.QtCore.Qt.SizeHint;
limited with QtAda6.QtCore.QSizeF;
limited with QtAda6.QtCore.QSize;
with QtAda6.QtWidgets.QGraphicsLayout;
package QtAda6.QtWidgets.QGraphicsLinearLayout is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtWidgets.QGraphicsLayout.Inst with null record;
   type UNION_QtAda6_QtCore_QRectFQtAda6_QtCore_QRect is new Any;
   type UNION_QtAda6_QtCore_QSizeFQtAda6_QtCore_QSize is new Any;
   procedure Finalize (Self : in out Class);
   function Create
     (orientation_P : access QtAda6.QtCore.Qt.Orientation.Inst'Class;
      parent_P      : access QtAda6.QtWidgets.QGraphicsLayoutItem.Inst'Class := null) return Class;
   function Create (parent_P : access QtAda6.QtWidgets.QGraphicsLayoutItem.Inst'Class := null) return Class;
   procedure addItem (self : access Inst; item_P : access QtAda6.QtWidgets.QGraphicsLayoutItem.Inst'Class);
   procedure addStretch (self : access Inst; stretch_P : int := 0);
   function alignment
     (self : access Inst; item_P : access QtAda6.QtWidgets.QGraphicsLayoutItem.Inst'Class)
      return access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class;
   function count (self : access Inst) return int;
   procedure dump (self : access Inst; indent_P : int := 0);
   procedure insertItem
     (self : access Inst; index_P : int; item_P : access QtAda6.QtWidgets.QGraphicsLayoutItem.Inst'Class);
   procedure insertStretch (self : access Inst; index_P : int; stretch_P : int := 0);
   procedure invalidate (self : access Inst);
   function itemAt (self : access Inst; index_P : int) return access QtAda6.QtWidgets.QGraphicsLayoutItem.Inst'Class;
   function itemSpacing (self : access Inst; index_P : int) return float;
   function orientation (self : access Inst) return access QtAda6.QtCore.Qt.Orientation.Inst'Class;
   procedure removeAt (self : access Inst; index_P : int);
   procedure removeItem (self : access Inst; item_P : access QtAda6.QtWidgets.QGraphicsLayoutItem.Inst'Class);
   procedure setAlignment
     (self        : access Inst; item_P : access QtAda6.QtWidgets.QGraphicsLayoutItem.Inst'Class;
      alignment_P : access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class);
   procedure setGeometry (self : access Inst; rect_P : UNION_QtAda6_QtCore_QRectFQtAda6_QtCore_QRect);
   procedure setItemSpacing (self : access Inst; index_P : int; spacing_P : float);
   procedure setOrientation (self : access Inst; orientation_P : access QtAda6.QtCore.Qt.Orientation.Inst'Class);
   procedure setSpacing (self : access Inst; spacing_P : float);
   procedure setStretchFactor
     (self : access Inst; item_P : access QtAda6.QtWidgets.QGraphicsLayoutItem.Inst'Class; stretch_P : int);
   function sizeHint
     (self         : access Inst; which_P : access QtAda6.QtCore.Qt.SizeHint.Inst'Class;
      constraint_P : UNION_QtAda6_QtCore_QSizeFQtAda6_QtCore_QSize := null)
      return access QtAda6.QtCore.QSizeF.Inst'Class;
   function spacing (self : access Inst) return float;
   function stretchFactor
     (self : access Inst; item_P : access QtAda6.QtWidgets.QGraphicsLayoutItem.Inst'Class) return int;
end QtAda6.QtWidgets.QGraphicsLinearLayout;
