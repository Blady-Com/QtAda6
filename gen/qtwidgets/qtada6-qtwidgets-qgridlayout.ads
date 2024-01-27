-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qgridlayout.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtWidgets.QWidget;
limited with QtAda6.QtWidgets.QLayoutItem;
limited with QtAda6.QtCore.Qt.AlignmentFlag;
limited with QtAda6.QtCore.QRect;
limited with QtAda6.QtCore.Qt.Orientation;
limited with QtAda6.QtCore.QSize;
limited with QtAda6.QtCore.Qt.Corner;
with QtAda6.QtWidgets.QLayout;
package QtAda6.QtWidgets.QGridLayout is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtWidgets.QLayout.Inst with null record;
   procedure Finalize (Self : in out Class);
   function Create (parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null) return Class;
   procedure addItem (self : access Inst; arg_1_P : access QtAda6.QtWidgets.QLayoutItem.Inst'Class);
   procedure addItem
     (self        : access Inst; item_P : access QtAda6.QtWidgets.QLayoutItem.Inst'Class; row_P : int; column_P : int;
      rowSpan_P   : int                                              := 0; columnSpan_P : int := 0;
      alignment_P : access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class := null);
   procedure addLayout
     (self        : access Inst; arg_1_P : access QtAda6.QtWidgets.QLayout.Inst'Class; row_P : int; column_P : int;
      alignment_P : access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class := null);
   procedure addLayout
     (self      : access Inst; arg_1_P : access QtAda6.QtWidgets.QLayout.Inst'Class; row_P : int; column_P : int;
      rowSpan_P : int; columnSpan_P : int; alignment_P : access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class := null);
   procedure addWidget
     (self        : access Inst; arg_1_P : access QtAda6.QtWidgets.QWidget.Inst'Class; row_P : int; column_P : int;
      alignment_P : access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class := null);
   procedure addWidget
     (self      : access Inst; arg_1_P : access QtAda6.QtWidgets.QWidget.Inst'Class; row_P : int; column_P : int;
      rowSpan_P : int; columnSpan_P : int; alignment_P : access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class := null);
   procedure addWidget (self : access Inst; w_P : access QtAda6.QtWidgets.QWidget.Inst'Class);
   function cellRect (self : access Inst; row_P : int; column_P : int) return access QtAda6.QtCore.QRect.Inst'Class;
   function columnCount (self : access Inst) return int;
   function columnMinimumWidth (self : access Inst; column_P : int) return int;
   function columnStretch (self : access Inst; column_P : int) return int;
   function count (self : access Inst) return int;
   function expandingDirections (self : access Inst) return access QtAda6.QtCore.Qt.Orientation.Inst'Class;
   function getItemPosition (self : access Inst; idx_P : int) return access Object'Class;
   function hasHeightForWidth (self : access Inst) return bool;
   function heightForWidth (self : access Inst; arg_1_P : int) return int;
   function horizontalSpacing (self : access Inst) return int;
   procedure invalidate (self : access Inst);
   function itemAt (self : access Inst; index_P : int) return access QtAda6.QtWidgets.QLayoutItem.Inst'Class;
   function itemAtPosition
     (self : access Inst; row_P : int; column_P : int) return access QtAda6.QtWidgets.QLayoutItem.Inst'Class;
   function maximumSize (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   function minimumHeightForWidth (self : access Inst; arg_1_P : int) return int;
   function minimumSize (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   function originCorner (self : access Inst) return access QtAda6.QtCore.Qt.Corner.Inst'Class;
   function rowCount (self : access Inst) return int;
   function rowMinimumHeight (self : access Inst; row_P : int) return int;
   function rowStretch (self : access Inst; row_P : int) return int;
   procedure setColumnMinimumWidth (self : access Inst; column_P : int; minSize_P : int);
   procedure setColumnStretch (self : access Inst; column_P : int; stretch_P : int);
   procedure setDefaultPositioning
     (self : access Inst; n_P : int; orient_P : access QtAda6.QtCore.Qt.Orientation.Inst'Class);
   procedure setGeometry (self : access Inst; arg_1_P : access QtAda6.QtCore.QRect.Inst'Class);
   procedure setHorizontalSpacing (self : access Inst; spacing_P : int);
   procedure setOriginCorner (self : access Inst; arg_1_P : access QtAda6.QtCore.Qt.Corner.Inst'Class);
   procedure setRowMinimumHeight (self : access Inst; row_P : int; minSize_P : int);
   procedure setRowStretch (self : access Inst; row_P : int; stretch_P : int);
   procedure setSpacing (self : access Inst; spacing_P : int);
   procedure setVerticalSpacing (self : access Inst; spacing_P : int);
   function sizeHint (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   function spacing (self : access Inst) return int;
   function takeAt (self : access Inst; index_P : int) return access QtAda6.QtWidgets.QLayoutItem.Inst'Class;
   function verticalSpacing (self : access Inst) return int;
end QtAda6.QtWidgets.QGridLayout;
