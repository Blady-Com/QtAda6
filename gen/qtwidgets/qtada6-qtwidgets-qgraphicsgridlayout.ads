-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qgraphicsgridlayout.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtWidgets.QGraphicsLayoutItem;
limited with QtAda6.QtCore.Qt.AlignmentFlag;
limited with QtAda6.QtCore.Qt.SizeHint;
limited with QtAda6.QtCore.QSizeF;
with QtAda6.QtWidgets.QGraphicsLayout;
package QtAda6.QtWidgets.QGraphicsGridLayout is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtWidgets.QGraphicsLayout.Inst with null record;
   type UNION_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect is new Any;
   type UNION_QtAda6_QtCore_QSizeF_QtAda6_QtCore_QSize is new Any;
   procedure Finalize (Self : in out Class);
   function Create (parent_P : access QtAda6.QtWidgets.QGraphicsLayoutItem.Inst'Class := null) return Class;
   procedure addItem
     (self : access Inst; item_P : access QtAda6.QtWidgets.QGraphicsLayoutItem.Inst'Class; row_P : int; column_P : int;
      alignment_P : access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class := null);
   procedure addItem
     (self : access Inst; item_P : access QtAda6.QtWidgets.QGraphicsLayoutItem.Inst'Class; row_P : int; column_P : int;
      rowSpan_P : int; columnSpan_P : int; alignment_P : access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class := null);
   function alignment
     (self : access Inst; item_P : access QtAda6.QtWidgets.QGraphicsLayoutItem.Inst'Class)
      return access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class;
   function columnAlignment
     (self : access Inst; column_P : int) return access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class;
   function columnCount (self : access Inst) return int;
   function columnMaximumWidth (self : access Inst; column_P : int) return float;
   function columnMinimumWidth (self : access Inst; column_P : int) return float;
   function columnPreferredWidth (self : access Inst; column_P : int) return float;
   function columnSpacing (self : access Inst; column_P : int) return float;
   function columnStretchFactor (self : access Inst; column_P : int) return int;
   function count (self : access Inst) return int;
   function horizontalSpacing (self : access Inst) return float;
   procedure invalidate (self : access Inst);
   function itemAt (self : access Inst; index_P : int) return access QtAda6.QtWidgets.QGraphicsLayoutItem.Inst'Class;
   function itemAt
     (self : access Inst; row_P : int; column_P : int) return access QtAda6.QtWidgets.QGraphicsLayoutItem.Inst'Class;
   procedure removeAt (self : access Inst; index_P : int);
   procedure removeItem (self : access Inst; item_P : access QtAda6.QtWidgets.QGraphicsLayoutItem.Inst'Class);
   function rowAlignment (self : access Inst; row_P : int) return access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class;
   function rowCount (self : access Inst) return int;
   function rowMaximumHeight (self : access Inst; row_P : int) return float;
   function rowMinimumHeight (self : access Inst; row_P : int) return float;
   function rowPreferredHeight (self : access Inst; row_P : int) return float;
   function rowSpacing (self : access Inst; row_P : int) return float;
   function rowStretchFactor (self : access Inst; row_P : int) return int;
   procedure setAlignment
     (self        : access Inst; item_P : access QtAda6.QtWidgets.QGraphicsLayoutItem.Inst'Class;
      alignment_P : access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class);
   procedure setColumnAlignment
     (self : access Inst; column_P : int; alignment_P : access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class);
   procedure setColumnFixedWidth (self : access Inst; column_P : int; width_P : float);
   procedure setColumnMaximumWidth (self : access Inst; column_P : int; width_P : float);
   procedure setColumnMinimumWidth (self : access Inst; column_P : int; width_P : float);
   procedure setColumnPreferredWidth (self : access Inst; column_P : int; width_P : float);
   procedure setColumnSpacing (self : access Inst; column_P : int; spacing_P : float);
   procedure setColumnStretchFactor (self : access Inst; column_P : int; stretch_P : int);
   procedure setGeometry (self : access Inst; rect_P : UNION_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect);
   procedure setHorizontalSpacing (self : access Inst; spacing_P : float);
   procedure setRowAlignment
     (self : access Inst; row_P : int; alignment_P : access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class);
   procedure setRowFixedHeight (self : access Inst; row_P : int; height_P : float);
   procedure setRowMaximumHeight (self : access Inst; row_P : int; height_P : float);
   procedure setRowMinimumHeight (self : access Inst; row_P : int; height_P : float);
   procedure setRowPreferredHeight (self : access Inst; row_P : int; height_P : float);
   procedure setRowSpacing (self : access Inst; row_P : int; spacing_P : float);
   procedure setRowStretchFactor (self : access Inst; row_P : int; stretch_P : int);
   procedure setSpacing (self : access Inst; spacing_P : float);
   procedure setVerticalSpacing (self : access Inst; spacing_P : float);
   function sizeHint
     (self         : access Inst; which_P : access QtAda6.QtCore.Qt.SizeHint.Inst'Class;
      constraint_P : UNION_QtAda6_QtCore_QSizeF_QtAda6_QtCore_QSize := null)
      return access QtAda6.QtCore.QSizeF.Inst'Class;
   function verticalSpacing (self : access Inst) return float;
end QtAda6.QtWidgets.QGraphicsGridLayout;
