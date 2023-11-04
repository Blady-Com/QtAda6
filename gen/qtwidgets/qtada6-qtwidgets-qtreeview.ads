-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qtreeview.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
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
package QtAda6.QtWidgets.QTreeView is
   type ClassVar_Signal is access Any;
   type Optional_QtAda6_QtWidgets_QWidget is access Any;
   type Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex is access Any;
   type Sequence_int is access Any;
   type Union_QtAda6_QtGui_QRegion_QtAda6_QtGui_QBitmap_QtAda6_QtGui_QPolygon_QtAda6_QtCore_QRect is access Any;
   type List_QtAda6_QtCore_QModelIndex is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new QtAda6.QtWidgets.QAbstractItemView.Inst with null record;
   procedure Finalize (Self : in out Class);
   collapsed : ClassVar_Signal;-- collapsed(QModelIndex)
   expanded  : ClassVar_Signal;-- expanded(QModelIndex)
   function Create (parent_P : Optional_QtAda6_QtWidgets_QWidget) return Class;
   function allColumnsShowFocus (self : access Inst) return bool;
   function autoExpandDelay (self : access Inst) return int;
   procedure changeEvent (self : access Inst; event_P : access QtAda6.QtCore.QEvent.Inst'Class);
   procedure collapse
     (self : access Inst; index_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex);
   procedure collapseAll (self : access Inst);
   function columnAt (self : access Inst; x_P : int) return int;
   procedure columnCountChanged (self : access Inst; oldCount_P : int; newCount_P : int);
   procedure columnMoved (self : access Inst);
   procedure columnResized (self : access Inst; column_P : int; oldSize_P : int; newSize_P : int);
   function columnViewportPosition (self : access Inst; column_P : int) return int;
   function columnWidth (self : access Inst; column_P : int) return int;
   procedure currentChanged
     (self       : access Inst; current_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex;
      previous_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex);
   procedure dataChanged
     (self          : access Inst; topLeft_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex;
      bottomRight_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex; roles_P : Sequence_int);
   procedure doItemsLayout (self : access Inst);
   procedure dragMoveEvent (self : access Inst; event_P : access QtAda6.QtGui.QDragMoveEvent.Inst'Class);
   procedure drawBranches
     (self    : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      rect_P  : access QtAda6.QtCore.QRect.Inst'Class;
      index_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex);
   procedure drawRow
     (self      : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      options_P : access QtAda6.QtWidgets.QStyleOptionViewItem.Inst'Class;
      index_P   : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex);
   procedure drawTree
     (self     : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      region_P : Union_QtAda6_QtGui_QRegion_QtAda6_QtGui_QBitmap_QtAda6_QtGui_QPolygon_QtAda6_QtCore_QRect);
   procedure expand (self : access Inst; index_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex);
   procedure expandAll (self : access Inst);
   procedure expandRecursively
     (self : access Inst; index_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex; depth_P : int);
   procedure expandToDepth (self : access Inst; depth_P : int);
   function expandsOnDoubleClick (self : access Inst) return bool;
   function header (self : access Inst) return access QtAda6.QtWidgets.QHeaderView.Inst'Class;
   procedure hideColumn (self : access Inst; column_P : int);
   function horizontalOffset (self : access Inst) return int;
   procedure horizontalScrollbarAction (self : access Inst; action_P : int);
   function indentation (self : access Inst) return int;
   function indexAbove
     (self : access Inst; index_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex)
      return access QtAda6.QtCore.QModelIndex.Inst'Class;
   function indexAt
     (self : access Inst; p_P : access QtAda6.QtCore.QPoint.Inst'Class)
      return access QtAda6.QtCore.QModelIndex.Inst'Class;
   function indexBelow
     (self : access Inst; index_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex)
      return access QtAda6.QtCore.QModelIndex.Inst'Class;
   function indexRowSizeHint
     (self : access Inst; index_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex) return int;
   function isAnimated (self : access Inst) return bool;
   function isColumnHidden (self : access Inst; column_P : int) return bool;
   function isExpanded
     (self : access Inst; index_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex) return bool;
   function isFirstColumnSpanned
     (self : access Inst; row_P : int; parent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex)
      return bool;
   function isHeaderHidden (self : access Inst) return bool;
   function isIndexHidden
     (self : access Inst; index_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex) return bool;
   function isRowHidden
     (self : access Inst; row_P : int; parent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex)
      return bool;
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
   function rowHeight
     (self : access Inst; index_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex) return int;
   procedure rowsAboutToBeRemoved
     (self : access Inst; parent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex; start_P : int;
      end_K_P : int);
   procedure rowsInserted
     (self : access Inst; parent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex; start_P : int;
      end_K_P : int);
   procedure rowsRemoved
     (self : access Inst; parent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex; first_P : int;
      last_P : int);
   procedure scrollContentsBy (self : access Inst; dx_P : int; dy_P : int);
   procedure scrollTo
     (self   : access Inst; index_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex;
      hint_P : access QtAda6.QtWidgets.QAbstractItemView.ScrollHint.Inst'Class);
   procedure selectAll (self : access Inst);
   function selectedIndexes (self : access Inst) return List_QtAda6_QtCore_QModelIndex;
   procedure selectionChanged
     (self         : access Inst; selected_P : access QtAda6.QtCore.QItemSelection.Inst'Class;
      deselected_P : access QtAda6.QtCore.QItemSelection.Inst'Class);
   procedure setAllColumnsShowFocus (self : access Inst; enable_P : bool);
   procedure setAnimated (self : access Inst; enable_P : bool);
   procedure setAutoExpandDelay (self : access Inst; delay_K_P : int);
   procedure setColumnHidden (self : access Inst; column_P : int; hide_P : bool);
   procedure setColumnWidth (self : access Inst; column_P : int; width_P : int);
   procedure setExpanded
     (self     : access Inst; index_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex;
      expand_P : bool);
   procedure setExpandsOnDoubleClick (self : access Inst; enable_P : bool);
   procedure setFirstColumnSpanned
     (self   : access Inst; row_P : int; parent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex;
      span_P : bool);
   procedure setHeader (self : access Inst; header_P : access QtAda6.QtWidgets.QHeaderView.Inst'Class);
   procedure setHeaderHidden (self : access Inst; hide_P : bool);
   procedure setIndentation (self : access Inst; i_P : int);
   procedure setItemsExpandable (self : access Inst; enable_P : bool);
   procedure setModel (self : access Inst; model_P : access QtAda6.QtCore.QAbstractItemModel.Inst'Class);
   procedure setRootIndex
     (self : access Inst; index_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex);
   procedure setRootIsDecorated (self : access Inst; show_P : bool);
   procedure setRowHidden
     (self   : access Inst; row_P : int; parent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex;
      hide_P : bool);
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
     (self : access Inst; index_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex)
      return access QtAda6.QtCore.QRect.Inst'Class;
   function visualRegionForSelection
     (self : access Inst; selection_P : access QtAda6.QtCore.QItemSelection.Inst'Class)
      return access QtAda6.QtGui.QRegion.Inst'Class;
   function wordWrap (self : access Inst) return bool;
end QtAda6.QtWidgets.QTreeView;
