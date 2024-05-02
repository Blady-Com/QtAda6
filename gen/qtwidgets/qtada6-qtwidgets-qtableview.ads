-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qtableview.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtWidgets.QWidget;
limited with QtAda6.QtCore.QModelIndex;
limited with QtAda6.QtCore.QPersistentModelIndex;
limited with QtAda6.QtCore.Qt.PenStyle;
limited with QtAda6.QtWidgets.QHeaderView;
limited with QtAda6.QtCore.QPoint;
limited with QtAda6.QtWidgets.QStyleOptionViewItem;
limited with QtAda6.QtWidgets.QAbstractItemView.CursorAction;
limited with QtAda6.QtCore.Qt.KeyboardModifier;
limited with QtAda6.QtGui.QPaintEvent;
limited with QtAda6.QtWidgets.QAbstractItemView.ScrollHint;
limited with QtAda6.QtCore.QItemSelection;
limited with QtAda6.QtCore.QAbstractItemModel;
limited with QtAda6.QtCore.QRect;
limited with QtAda6.QtCore.QItemSelectionModel.SelectionFlag;
limited with QtAda6.QtCore.QItemSelectionModel;
limited with QtAda6.QtCore.Qt.SortOrder;
limited with QtAda6.QtCore.QTimerEvent;
limited with QtAda6.QtCore.QSize;
limited with QtAda6.QtGui.QRegion;
with QtAda6.QtWidgets.QAbstractItemView;
package QtAda6.QtWidgets.QTableView is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtWidgets.QAbstractItemView.Inst with null record;
   subtype LIST_QtAda6_QtCore_QModelIndex is QtAda6.QtCore.QModelIndex.Class_Array;
   procedure Finalize (Self : in out Class);
   function Create (parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null) return Class;
   procedure clearSpans (self : access Inst);
   function columnAt (self : access Inst; x_P : int) return int;
   procedure columnCountChanged (self : access Inst; oldCount_P : int; newCount_P : int);
   procedure columnMoved (self : access Inst; column_P : int; oldIndex_P : int; newIndex_P : int);
   procedure columnResized (self : access Inst; column_P : int; oldWidth_P : int; newWidth_P : int);
   function columnSpan (self : access Inst; row_P : int; column_P : int) return int;
   function columnViewportPosition (self : access Inst; column_P : int) return int;
   function columnWidth (self : access Inst; column_P : int) return int;
   procedure currentChanged
     (self       : access Inst; current_P : access QtAda6.QtCore.QModelIndex.Inst'Class;
      previous_P : access QtAda6.QtCore.QModelIndex.Inst'Class);
   procedure currentChanged
     (self       : access Inst; current_P : access QtAda6.QtCore.QModelIndex.Inst'Class;
      previous_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class);
   procedure currentChanged
     (self       : access Inst; current_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class;
      previous_P : access QtAda6.QtCore.QModelIndex.Inst'Class);
   procedure currentChanged
     (self       : access Inst; current_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class;
      previous_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class);
   procedure doItemsLayout (self : access Inst);
   function gridStyle (self : access Inst) return access QtAda6.QtCore.Qt.PenStyle.Inst'Class;
   procedure hideColumn (self : access Inst; column_P : int);
   procedure hideRow (self : access Inst; row_P : int);
   function horizontalHeader (self : access Inst) return access QtAda6.QtWidgets.QHeaderView.Inst'Class;
   function horizontalOffset (self : access Inst) return int;
   procedure horizontalScrollbarAction (self : access Inst; action_P : int);
   function indexAt
     (self : access Inst; p_P : access QtAda6.QtCore.QPoint.Inst'Class)
      return access QtAda6.QtCore.QModelIndex.Inst'Class;
   procedure initViewItemOption
     (self : access Inst; option_P : access QtAda6.QtWidgets.QStyleOptionViewItem.Inst'Class);
   function isColumnHidden (self : access Inst; column_P : int) return bool;
   function isCornerButtonEnabled (self : access Inst) return bool;
   function isIndexHidden (self : access Inst; index_P : access QtAda6.QtCore.QModelIndex.Inst'Class) return bool;
   function isIndexHidden
     (self : access Inst; index_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class) return bool;
   function isRowHidden (self : access Inst; row_P : int) return bool;
   function isSortingEnabled (self : access Inst) return bool;
   function moveCursor
     (self        : access Inst; cursorAction_P : access QtAda6.QtWidgets.QAbstractItemView.CursorAction.Inst'Class;
      modifiers_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class)
      return access QtAda6.QtCore.QModelIndex.Inst'Class;
   procedure paintEvent (self : access Inst; e_P : access QtAda6.QtGui.QPaintEvent.Inst'Class);
   procedure resizeColumnToContents (self : access Inst; column_P : int);
   procedure resizeColumnsToContents (self : access Inst);
   procedure resizeRowToContents (self : access Inst; row_P : int);
   procedure resizeRowsToContents (self : access Inst);
   function rowAt (self : access Inst; y_P : int) return int;
   procedure rowCountChanged (self : access Inst; oldCount_P : int; newCount_P : int);
   function rowHeight (self : access Inst; row_P : int) return int;
   procedure rowMoved (self : access Inst; row_P : int; oldIndex_P : int; newIndex_P : int);
   procedure rowResized (self : access Inst; row_P : int; oldHeight_P : int; newHeight_P : int);
   function rowSpan (self : access Inst; row_P : int; column_P : int) return int;
   function rowViewportPosition (self : access Inst; row_P : int) return int;
   procedure scrollContentsBy (self : access Inst; dx_P : int; dy_P : int);
   procedure scrollTo
     (self   : access Inst; index_P : access QtAda6.QtCore.QModelIndex.Inst'Class;
      hint_P : access QtAda6.QtWidgets.QAbstractItemView.ScrollHint.Inst'Class := null);
   procedure scrollTo
     (self   : access Inst; index_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class;
      hint_P : access QtAda6.QtWidgets.QAbstractItemView.ScrollHint.Inst'Class := null);
   procedure selectColumn (self : access Inst; column_P : int);
   procedure selectRow (self : access Inst; row_P : int);
   function selectedIndexes (self : access Inst) return LIST_QtAda6_QtCore_QModelIndex;
   procedure selectionChanged
     (self         : access Inst; selected_P : access QtAda6.QtCore.QItemSelection.Inst'Class;
      deselected_P : access QtAda6.QtCore.QItemSelection.Inst'Class);
   procedure setColumnHidden (self : access Inst; column_P : int; hide_P : bool);
   procedure setColumnWidth (self : access Inst; column_P : int; width_P : int);
   procedure setCornerButtonEnabled (self : access Inst; enable_P : bool);
   procedure setGridStyle (self : access Inst; style_P : access QtAda6.QtCore.Qt.PenStyle.Inst'Class);
   procedure setHorizontalHeader (self : access Inst; header_P : access QtAda6.QtWidgets.QHeaderView.Inst'Class);
   procedure setModel (self : access Inst; model_P : access QtAda6.QtCore.QAbstractItemModel.Inst'Class);
   procedure setRootIndex (self : access Inst; index_P : access QtAda6.QtCore.QModelIndex.Inst'Class);
   procedure setRootIndex (self : access Inst; index_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class);
   procedure setRowHeight (self : access Inst; row_P : int; height_P : int);
   procedure setRowHidden (self : access Inst; row_P : int; hide_P : bool);
   procedure setSelection
     (self      : access Inst; rect_P : access QtAda6.QtCore.QRect.Inst'Class;
      command_P : access QtAda6.QtCore.QItemSelectionModel.SelectionFlag.Inst'Class);
   procedure setSelectionModel
     (self : access Inst; selectionModel_P : access QtAda6.QtCore.QItemSelectionModel.Inst'Class);
   procedure setShowGrid (self : access Inst; show_P : bool);
   procedure setSortingEnabled (self : access Inst; enable_P : bool);
   procedure setSpan (self : access Inst; row_P : int; column_P : int; rowSpan_P : int; columnSpan_P : int);
   procedure setVerticalHeader (self : access Inst; header_P : access QtAda6.QtWidgets.QHeaderView.Inst'Class);
   procedure setWordWrap (self : access Inst; on_P : bool);
   procedure showColumn (self : access Inst; column_P : int);
   function showGrid (self : access Inst) return bool;
   procedure showRow (self : access Inst; row_P : int);
   function sizeHintForColumn (self : access Inst; column_P : int) return int;
   function sizeHintForRow (self : access Inst; row_P : int) return int;
   procedure sortByColumn (self : access Inst; column_P : int; order_P : access QtAda6.QtCore.Qt.SortOrder.Inst'Class);
   procedure timerEvent (self : access Inst; event_P : access QtAda6.QtCore.QTimerEvent.Inst'Class);
   procedure updateGeometries (self : access Inst);
   function verticalHeader (self : access Inst) return access QtAda6.QtWidgets.QHeaderView.Inst'Class;
   function verticalOffset (self : access Inst) return int;
   procedure verticalScrollbarAction (self : access Inst; action_P : int);
   function viewportSizeHint (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   function visualRect
     (self : access Inst; index_P : access QtAda6.QtCore.QModelIndex.Inst'Class)
      return access QtAda6.QtCore.QRect.Inst'Class;
   function visualRect
     (self : access Inst; index_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class)
      return access QtAda6.QtCore.QRect.Inst'Class;
   function visualRegionForSelection
     (self : access Inst; selection_P : access QtAda6.QtCore.QItemSelection.Inst'Class)
      return access QtAda6.QtGui.QRegion.Inst'Class;
   function wordWrap (self : access Inst) return bool;
end QtAda6.QtWidgets.QTableView;
