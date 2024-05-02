-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qtreeview.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtWidgets.QWidget;
limited with QtAda6.QtCore.QEvent;
limited with QtAda6.QtCore.QModelIndex;
limited with QtAda6.QtCore.QPersistentModelIndex;
limited with QtAda6.QtGui.QDragMoveEvent;
limited with QtAda6.QtGui.QPainter;
limited with QtAda6.QtCore.QRect;
limited with QtAda6.QtWidgets.QStyleOptionViewItem;
limited with QtAda6.QtGui.QRegion;
limited with QtAda6.QtGui.QBitmap;
limited with QtAda6.QtGui.QPolygon;
limited with QtAda6.QtWidgets.QHeaderView;
limited with QtAda6.QtCore.QPoint;
limited with QtAda6.QtGui.QKeyEvent;
limited with QtAda6.QtGui.QMouseEvent;
limited with QtAda6.QtWidgets.QAbstractItemView.CursorAction;
limited with QtAda6.QtCore.Qt.KeyboardModifier;
limited with QtAda6.QtGui.QPaintEvent;
limited with QtAda6.QtWidgets.QAbstractItemView.ScrollHint;
limited with QtAda6.QtCore.QItemSelection;
limited with QtAda6.QtCore.QAbstractItemModel;
limited with QtAda6.QtCore.QItemSelectionModel.SelectionFlag;
limited with QtAda6.QtCore.QItemSelectionModel;
limited with QtAda6.QtCore.Qt.SortOrder;
limited with QtAda6.QtCore.QTimerEvent;
limited with QtAda6.QtCore.QSize;
with QtAda6.QtWidgets.QAbstractItemView;
with QtAda6.QtCore.Signal;
package QtAda6.QtWidgets.QTreeView is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtWidgets.QAbstractItemView.Inst with null record;
   type SEQUENCE_int is array (Positive range <>) of int;
   subtype LIST_QtAda6_QtCore_QModelIndex is QtAda6.QtCore.QModelIndex.Class_Array;
   procedure Finalize (Self : in out Class);
   function collapsed (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- collapsed(QModelIndex)
   function expanded (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- expanded(QModelIndex)
   function Create (parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null) return Class;
   function allColumnsShowFocus (self : access Inst) return bool;
   function autoExpandDelay (self : access Inst) return int;
   procedure changeEvent (self : access Inst; event_P : access QtAda6.QtCore.QEvent.Inst'Class);
   procedure collapse (self : access Inst; index_P : access QtAda6.QtCore.QModelIndex.Inst'Class);
   procedure collapse (self : access Inst; index_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class);
   procedure collapseAll (self : access Inst);
   function columnAt (self : access Inst; x_P : int) return int;
   procedure columnCountChanged (self : access Inst; oldCount_P : int; newCount_P : int);
   procedure columnMoved (self : access Inst);
   procedure columnResized (self : access Inst; column_P : int; oldSize_P : int; newSize_P : int);
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
   procedure dataChanged
     (self          : access Inst; topLeft_P : access QtAda6.QtCore.QModelIndex.Inst'Class;
      bottomRight_P : access QtAda6.QtCore.QModelIndex.Inst'Class; roles_P : SEQUENCE_int);
   procedure dataChanged
     (self          : access Inst; topLeft_P : access QtAda6.QtCore.QModelIndex.Inst'Class;
      bottomRight_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class; roles_P : SEQUENCE_int);
   procedure dataChanged
     (self          : access Inst; topLeft_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class;
      bottomRight_P : access QtAda6.QtCore.QModelIndex.Inst'Class; roles_P : SEQUENCE_int);
   procedure dataChanged
     (self          : access Inst; topLeft_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class;
      bottomRight_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class; roles_P : SEQUENCE_int);
   procedure doItemsLayout (self : access Inst);
   procedure dragMoveEvent (self : access Inst; event_P : access QtAda6.QtGui.QDragMoveEvent.Inst'Class);
   procedure drawBranches
     (self   : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      rect_P : access QtAda6.QtCore.QRect.Inst'Class; index_P : access QtAda6.QtCore.QModelIndex.Inst'Class);
   procedure drawBranches
     (self   : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      rect_P : access QtAda6.QtCore.QRect.Inst'Class; index_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class);
   procedure drawRow
     (self      : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      options_P : access QtAda6.QtWidgets.QStyleOptionViewItem.Inst'Class;
      index_P   : access QtAda6.QtCore.QModelIndex.Inst'Class);
   procedure drawRow
     (self      : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      options_P : access QtAda6.QtWidgets.QStyleOptionViewItem.Inst'Class;
      index_P   : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class);
   procedure drawTree
     (self     : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      region_P : access QtAda6.QtGui.QRegion.Inst'Class);
   procedure drawTree
     (self     : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      region_P : access QtAda6.QtGui.QBitmap.Inst'Class);
   procedure drawTree
     (self     : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      region_P : access QtAda6.QtGui.QPolygon.Inst'Class);
   procedure drawTree
     (self     : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      region_P : access QtAda6.QtCore.QRect.Inst'Class);
   procedure expand (self : access Inst; index_P : access QtAda6.QtCore.QModelIndex.Inst'Class);
   procedure expand (self : access Inst; index_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class);
   procedure expandAll (self : access Inst);
   procedure expandRecursively
     (self : access Inst; index_P : access QtAda6.QtCore.QModelIndex.Inst'Class; depth_P : int := 0);
   procedure expandRecursively
     (self : access Inst; index_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class; depth_P : int := 0);
   procedure expandToDepth (self : access Inst; depth_P : int);
   function expandsOnDoubleClick (self : access Inst) return bool;
   function header (self : access Inst) return access QtAda6.QtWidgets.QHeaderView.Inst'Class;
   procedure hideColumn (self : access Inst; column_P : int);
   function horizontalOffset (self : access Inst) return int;
   procedure horizontalScrollbarAction (self : access Inst; action_P : int);
   function indentation (self : access Inst) return int;
   function indexAbove
     (self : access Inst; index_P : access QtAda6.QtCore.QModelIndex.Inst'Class)
      return access QtAda6.QtCore.QModelIndex.Inst'Class;
   function indexAbove
     (self : access Inst; index_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class)
      return access QtAda6.QtCore.QModelIndex.Inst'Class;
   function indexAt
     (self : access Inst; p_P : access QtAda6.QtCore.QPoint.Inst'Class)
      return access QtAda6.QtCore.QModelIndex.Inst'Class;
   function indexBelow
     (self : access Inst; index_P : access QtAda6.QtCore.QModelIndex.Inst'Class)
      return access QtAda6.QtCore.QModelIndex.Inst'Class;
   function indexBelow
     (self : access Inst; index_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class)
      return access QtAda6.QtCore.QModelIndex.Inst'Class;
   function indexRowSizeHint (self : access Inst; index_P : access QtAda6.QtCore.QModelIndex.Inst'Class) return int;
   function indexRowSizeHint
     (self : access Inst; index_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class) return int;
   function isAnimated (self : access Inst) return bool;
   function isColumnHidden (self : access Inst; column_P : int) return bool;
   function isExpanded (self : access Inst; index_P : access QtAda6.QtCore.QModelIndex.Inst'Class) return bool;
   function isExpanded
     (self : access Inst; index_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class) return bool;
   function isFirstColumnSpanned
     (self : access Inst; row_P : int; parent_P : access QtAda6.QtCore.QModelIndex.Inst'Class) return bool;
   function isFirstColumnSpanned
     (self : access Inst; row_P : int; parent_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class) return bool;
   function isHeaderHidden (self : access Inst) return bool;
   function isIndexHidden (self : access Inst; index_P : access QtAda6.QtCore.QModelIndex.Inst'Class) return bool;
   function isIndexHidden
     (self : access Inst; index_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class) return bool;
   function isRowHidden
     (self : access Inst; row_P : int; parent_P : access QtAda6.QtCore.QModelIndex.Inst'Class) return bool;
   function isRowHidden
     (self : access Inst; row_P : int; parent_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class) return bool;
   function isSortingEnabled (self : access Inst) return bool;
   function itemsExpandable (self : access Inst) return bool;
   procedure keyPressEvent (self : access Inst; event_P : access QtAda6.QtGui.QKeyEvent.Inst'Class);
   procedure keyboardSearch (self : access Inst; search_P : str);
   procedure mouseDoubleClickEvent (self : access Inst; event_P : access QtAda6.QtGui.QMouseEvent.Inst'Class);
   procedure mouseMoveEvent (self : access Inst; event_P : access QtAda6.QtGui.QMouseEvent.Inst'Class);
   procedure mousePressEvent (self : access Inst; event_P : access QtAda6.QtGui.QMouseEvent.Inst'Class);
   procedure mouseReleaseEvent (self : access Inst; event_P : access QtAda6.QtGui.QMouseEvent.Inst'Class);
   function moveCursor
     (self        : access Inst; cursorAction_P : access QtAda6.QtWidgets.QAbstractItemView.CursorAction.Inst'Class;
      modifiers_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class)
      return access QtAda6.QtCore.QModelIndex.Inst'Class;
   procedure paintEvent (self : access Inst; event_P : access QtAda6.QtGui.QPaintEvent.Inst'Class);
   procedure reexpand (self : access Inst);
   procedure reset (self : access Inst);
   procedure resetIndentation (self : access Inst);
   procedure resizeColumnToContents (self : access Inst; column_P : int);
   function rootIsDecorated (self : access Inst) return bool;
   function rowHeight (self : access Inst; index_P : access QtAda6.QtCore.QModelIndex.Inst'Class) return int;
   function rowHeight (self : access Inst; index_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class) return int;
   procedure rowsAboutToBeRemoved
     (self : access Inst; parent_P : access QtAda6.QtCore.QModelIndex.Inst'Class; start_P : int; end_K_P : int);
   procedure rowsAboutToBeRemoved
     (self    : access Inst; parent_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class; start_P : int;
      end_K_P : int);
   procedure rowsInserted
     (self : access Inst; parent_P : access QtAda6.QtCore.QModelIndex.Inst'Class; start_P : int; end_K_P : int);
   procedure rowsInserted
     (self    : access Inst; parent_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class; start_P : int;
      end_K_P : int);
   procedure rowsRemoved
     (self : access Inst; parent_P : access QtAda6.QtCore.QModelIndex.Inst'Class; first_P : int; last_P : int);
   procedure rowsRemoved
     (self   : access Inst; parent_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class; first_P : int;
      last_P : int);
   procedure scrollContentsBy (self : access Inst; dx_P : int; dy_P : int);
   procedure scrollTo
     (self   : access Inst; index_P : access QtAda6.QtCore.QModelIndex.Inst'Class;
      hint_P : access QtAda6.QtWidgets.QAbstractItemView.ScrollHint.Inst'Class := null);
   procedure scrollTo
     (self   : access Inst; index_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class;
      hint_P : access QtAda6.QtWidgets.QAbstractItemView.ScrollHint.Inst'Class := null);
   procedure selectAll (self : access Inst);
   function selectedIndexes (self : access Inst) return LIST_QtAda6_QtCore_QModelIndex;
   procedure selectionChanged
     (self         : access Inst; selected_P : access QtAda6.QtCore.QItemSelection.Inst'Class;
      deselected_P : access QtAda6.QtCore.QItemSelection.Inst'Class);
   procedure setAllColumnsShowFocus (self : access Inst; enable_P : bool);
   procedure setAnimated (self : access Inst; enable_P : bool);
   procedure setAutoExpandDelay (self : access Inst; delay_K_P : int);
   procedure setColumnHidden (self : access Inst; column_P : int; hide_P : bool);
   procedure setColumnWidth (self : access Inst; column_P : int; width_P : int);
   procedure setExpanded (self : access Inst; index_P : access QtAda6.QtCore.QModelIndex.Inst'Class; expand_P : bool);
   procedure setExpanded
     (self : access Inst; index_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class; expand_P : bool);
   procedure setExpandsOnDoubleClick (self : access Inst; enable_P : bool);
   procedure setFirstColumnSpanned
     (self : access Inst; row_P : int; parent_P : access QtAda6.QtCore.QModelIndex.Inst'Class; span_P : bool);
   procedure setFirstColumnSpanned
     (self : access Inst; row_P : int; parent_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class; span_P : bool);
   procedure setHeader (self : access Inst; header_P : access QtAda6.QtWidgets.QHeaderView.Inst'Class);
   procedure setHeaderHidden (self : access Inst; hide_P : bool);
   procedure setIndentation (self : access Inst; i_P : int);
   procedure setItemsExpandable (self : access Inst; enable_P : bool);
   procedure setModel (self : access Inst; model_P : access QtAda6.QtCore.QAbstractItemModel.Inst'Class);
   procedure setRootIndex (self : access Inst; index_P : access QtAda6.QtCore.QModelIndex.Inst'Class);
   procedure setRootIndex (self : access Inst; index_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class);
   procedure setRootIsDecorated (self : access Inst; show_P : bool);
   procedure setRowHidden
     (self : access Inst; row_P : int; parent_P : access QtAda6.QtCore.QModelIndex.Inst'Class; hide_P : bool);
   procedure setRowHidden
     (self : access Inst; row_P : int; parent_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class; hide_P : bool);
   procedure setSelection
     (self      : access Inst; rect_P : access QtAda6.QtCore.QRect.Inst'Class;
      command_P : access QtAda6.QtCore.QItemSelectionModel.SelectionFlag.Inst'Class);
   procedure setSelectionModel
     (self : access Inst; selectionModel_P : access QtAda6.QtCore.QItemSelectionModel.Inst'Class);
   procedure setSortingEnabled (self : access Inst; enable_P : bool);
   procedure setTreePosition (self : access Inst; logicalIndex_P : int);
   procedure setUniformRowHeights (self : access Inst; uniform_P : bool);
   procedure setWordWrap (self : access Inst; on_P : bool);
   procedure showColumn (self : access Inst; column_P : int);
   function sizeHintForColumn (self : access Inst; column_P : int) return int;
   procedure sortByColumn (self : access Inst; column_P : int; order_P : access QtAda6.QtCore.Qt.SortOrder.Inst'Class);
   procedure timerEvent (self : access Inst; event_P : access QtAda6.QtCore.QTimerEvent.Inst'Class);
   function treePosition (self : access Inst) return int;
   function uniformRowHeights (self : access Inst) return bool;
   procedure updateGeometries (self : access Inst);
   function verticalOffset (self : access Inst) return int;
   procedure verticalScrollbarValueChanged (self : access Inst; value_P : int);
   function viewportEvent (self : access Inst; event_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
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
end QtAda6.QtWidgets.QTreeView;
