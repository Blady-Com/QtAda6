-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qlistview.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtWidgets.QWidget;
limited with QtAda6.QtCore.QSize;
limited with QtAda6.QtCore.QModelIndex;
limited with QtAda6.QtCore.QPersistentModelIndex;
limited with QtAda6.QtGui.QDragLeaveEvent;
limited with QtAda6.QtGui.QDragMoveEvent;
limited with QtAda6.QtGui.QDropEvent;
limited with QtAda6.QtCore.QEvent;
limited with QtAda6.QtWidgets.QListView.Flow;
limited with QtAda6.QtCore.QPoint;
limited with QtAda6.QtWidgets.QStyleOptionViewItem;
limited with QtAda6.QtCore.Qt.AlignmentFlag;
limited with QtAda6.QtWidgets.QListView.LayoutMode;
limited with QtAda6.QtGui.QMouseEvent;
limited with QtAda6.QtWidgets.QAbstractItemView.CursorAction;
limited with QtAda6.QtCore.Qt.KeyboardModifier;
limited with QtAda6.QtWidgets.QListView.Movement;
limited with QtAda6.QtGui.QPaintEvent;
limited with QtAda6.QtCore.QRect;
limited with QtAda6.QtGui.QResizeEvent;
limited with QtAda6.QtWidgets.QListView.ResizeMode;
limited with QtAda6.QtWidgets.QAbstractItemView.ScrollHint;
limited with QtAda6.QtCore.QItemSelection;
limited with QtAda6.QtCore.QItemSelectionModel.SelectionFlag;
limited with QtAda6.QtWidgets.QListView.ViewMode;
limited with QtAda6.QtCore.Qt.DropAction;
limited with QtAda6.QtCore.QTimerEvent;
limited with QtAda6.QtGui.QRegion;
limited with QtAda6.QtGui.QWheelEvent;
with QtAda6.QtWidgets.QAbstractItemView;
package QtAda6.QtWidgets.QListView is
   type ClassVar_Signal is access Any;
   type Optional_QtAda6_QtWidgets_QWidget is access Any;
   type Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex is access Any;
   type Sequence_int is access Any;
   type List_QtAda6_QtCore_QModelIndex is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new QtAda6.QtWidgets.QAbstractItemView.Inst with null record;
   procedure Finalize (Self : in out Class);
   indexesMoved : ClassVar_Signal;-- indexesMoved(QModelIndexList)
   function Create (parent_P : Optional_QtAda6_QtWidgets_QWidget) return Class;
   function batchSize (self : access Inst) return int;
   procedure clearPropertyFlags (self : access Inst);
   function contentsSize (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   procedure currentChanged
     (self       : access Inst; current_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex;
      previous_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex);
   procedure dataChanged
     (self          : access Inst; topLeft_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex;
      bottomRight_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex; roles_P : Sequence_int);
   procedure doItemsLayout (self : access Inst);
   procedure dragLeaveEvent (self : access Inst; e_P : access QtAda6.QtGui.QDragLeaveEvent.Inst'Class);
   procedure dragMoveEvent (self : access Inst; e_P : access QtAda6.QtGui.QDragMoveEvent.Inst'Class);
   procedure dropEvent (self : access Inst; e_P : access QtAda6.QtGui.QDropEvent.Inst'Class);
   function event (self : access Inst; e_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   function flow_F (self : access Inst) return access QtAda6.QtWidgets.QListView.Flow.Inst'Class;
   function gridSize (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   function horizontalOffset (self : access Inst) return int;
   function indexAt
     (self : access Inst; p_P : access QtAda6.QtCore.QPoint.Inst'Class)
      return access QtAda6.QtCore.QModelIndex.Inst'Class;
   procedure initViewItemOption
     (self : access Inst; option_P : access QtAda6.QtWidgets.QStyleOptionViewItem.Inst'Class);
   function isIndexHidden
     (self : access Inst; index_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex) return bool;
   function isRowHidden (self : access Inst; row_P : int) return bool;
   function isSelectionRectVisible (self : access Inst) return bool;
   function isWrapping (self : access Inst) return bool;
   function itemAlignment (self : access Inst) return access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class;
   function layoutMode_F (self : access Inst) return access QtAda6.QtWidgets.QListView.LayoutMode.Inst'Class;
   function modelColumn (self : access Inst) return int;
   procedure mouseMoveEvent (self : access Inst; e_P : access QtAda6.QtGui.QMouseEvent.Inst'Class);
   procedure mouseReleaseEvent (self : access Inst; e_P : access QtAda6.QtGui.QMouseEvent.Inst'Class);
   function moveCursor
     (self        : access Inst; cursorAction_P : access QtAda6.QtWidgets.QAbstractItemView.CursorAction.Inst'Class;
      modifiers_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class)
      return access QtAda6.QtCore.QModelIndex.Inst'Class;
   function movement_F (self : access Inst) return access QtAda6.QtWidgets.QListView.Movement.Inst'Class;
   procedure paintEvent (self : access Inst; e_P : access QtAda6.QtGui.QPaintEvent.Inst'Class);
   function rectForIndex
     (self : access Inst; index_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex)
      return access QtAda6.QtCore.QRect.Inst'Class;
   procedure reset (self : access Inst);
   procedure resizeContents (self : access Inst; width_P : int; height_P : int);
   procedure resizeEvent (self : access Inst; e_P : access QtAda6.QtGui.QResizeEvent.Inst'Class);
   function resizeMode_F (self : access Inst) return access QtAda6.QtWidgets.QListView.ResizeMode.Inst'Class;
   procedure rowsAboutToBeRemoved
     (self : access Inst; parent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex; start_P : int;
      end_K_P : int);
   procedure rowsInserted
     (self : access Inst; parent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex; start_P : int;
      end_K_P : int);
   procedure scrollContentsBy (self : access Inst; dx_P : int; dy_P : int);
   procedure scrollTo
     (self   : access Inst; index_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex;
      hint_P : access QtAda6.QtWidgets.QAbstractItemView.ScrollHint.Inst'Class);
   function selectedIndexes (self : access Inst) return List_QtAda6_QtCore_QModelIndex;
   procedure selectionChanged
     (self         : access Inst; selected_P : access QtAda6.QtCore.QItemSelection.Inst'Class;
      deselected_P : access QtAda6.QtCore.QItemSelection.Inst'Class);
   procedure setBatchSize (self : access Inst; batchSize_P : int);
   procedure setFlow (self : access Inst; flow_P : access QtAda6.QtWidgets.QListView.Flow.Inst'Class);
   procedure setGridSize (self : access Inst; size_P : access QtAda6.QtCore.QSize.Inst'Class);
   procedure setItemAlignment (self : access Inst; alignment_P : access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class);
   procedure setLayoutMode (self : access Inst; mode_P : access QtAda6.QtWidgets.QListView.LayoutMode.Inst'Class);
   procedure setModelColumn (self : access Inst; column_P : int);
   procedure setMovement (self : access Inst; movement_P : access QtAda6.QtWidgets.QListView.Movement.Inst'Class);
   procedure setPositionForIndex
     (self    : access Inst; position_P : access QtAda6.QtCore.QPoint.Inst'Class;
      index_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex);
   procedure setResizeMode (self : access Inst; mode_P : access QtAda6.QtWidgets.QListView.ResizeMode.Inst'Class);
   procedure setRootIndex
     (self : access Inst; index_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex);
   procedure setRowHidden (self : access Inst; row_P : int; hide_P : bool);
   procedure setSelection
     (self      : access Inst; rect_P : access QtAda6.QtCore.QRect.Inst'Class;
      command_P : access QtAda6.QtCore.QItemSelectionModel.SelectionFlag.Inst'Class);
   procedure setSelectionRectVisible (self : access Inst; show_P : bool);
   procedure setSpacing (self : access Inst; space_P : int);
   procedure setUniformItemSizes (self : access Inst; enable_P : bool);
   procedure setViewMode (self : access Inst; mode_P : access QtAda6.QtWidgets.QListView.ViewMode.Inst'Class);
   procedure setWordWrap (self : access Inst; on_P : bool);
   procedure setWrapping (self : access Inst; enable_P : bool);
   function spacing (self : access Inst) return int;
   procedure startDrag (self : access Inst; supportedActions_P : access QtAda6.QtCore.Qt.DropAction.Inst'Class);
   procedure timerEvent (self : access Inst; e_P : access QtAda6.QtCore.QTimerEvent.Inst'Class);
   function uniformItemSizes (self : access Inst) return bool;
   procedure updateGeometries (self : access Inst);
   function verticalOffset (self : access Inst) return int;
   function viewMode_F (self : access Inst) return access QtAda6.QtWidgets.QListView.ViewMode.Inst'Class;
   function viewportSizeHint (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   function visualRect
     (self : access Inst; index_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex)
      return access QtAda6.QtCore.QRect.Inst'Class;
   function visualRegionForSelection
     (self : access Inst; selection_P : access QtAda6.QtCore.QItemSelection.Inst'Class)
      return access QtAda6.QtGui.QRegion.Inst'Class;
   procedure wheelEvent (self : access Inst; e_P : access QtAda6.QtGui.QWheelEvent.Inst'Class);
   function wordWrap (self : access Inst) return bool;
end QtAda6.QtWidgets.QListView;
