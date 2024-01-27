-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qabstractitemview.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtWidgets.QWidget;
limited with QtAda6.QtWidgets.QAbstractItemDelegate.EndEditHint;
limited with QtAda6.QtCore.QPersistentModelIndex;
limited with QtAda6.QtCore.Qt.DropAction;
limited with QtAda6.QtCore.QPoint;
limited with QtAda6.QtWidgets.QAbstractItemView.DragDropMode;
limited with QtAda6.QtGui.QDragEnterEvent;
limited with QtAda6.QtGui.QDragLeaveEvent;
limited with QtAda6.QtGui.QDragMoveEvent;
limited with QtAda6.QtGui.QDropEvent;
limited with QtAda6.QtWidgets.QAbstractItemView.DropIndicatorPosition;
limited with QtAda6.QtWidgets.QAbstractItemView.EditTrigger;
limited with QtAda6.QtCore.QEvent;
limited with QtAda6.QtCore.QObject;
limited with QtAda6.QtGui.QFocusEvent;
limited with QtAda6.QtWidgets.QAbstractItemView.ScrollMode;
limited with QtAda6.QtCore.QSize;
limited with QtAda6.QtWidgets.QStyleOptionViewItem;
limited with QtAda6.QtGui.QInputMethodEvent;
limited with QtAda6.QtCore.Qt.InputMethodQuery;
limited with QtAda6.QtWidgets.QAbstractItemDelegate;
limited with QtAda6.QtGui.QKeyEvent;
limited with QtAda6.QtCore.QAbstractItemModel;
limited with QtAda6.QtGui.QMouseEvent;
limited with QtAda6.QtWidgets.QAbstractItemView.CursorAction;
limited with QtAda6.QtCore.Qt.KeyboardModifier;
limited with QtAda6.QtGui.QResizeEvent;
limited with QtAda6.QtWidgets.QAbstractItemView.ScrollHint;
limited with QtAda6.QtWidgets.QAbstractItemView.SelectionBehavior;
limited with QtAda6.QtCore.QItemSelection;
limited with QtAda6.QtCore.QItemSelectionModel.SelectionFlag;
limited with QtAda6.QtWidgets.QAbstractItemView.SelectionMode;
limited with QtAda6.QtCore.QItemSelectionModel;
limited with QtAda6.QtGui.QRegion;
limited with QtAda6.QtGui.QBitmap;
limited with QtAda6.QtGui.QPolygon;
limited with QtAda6.QtCore.QRect;
limited with QtAda6.QtWidgets.QAbstractItemView.State;
limited with QtAda6.QtCore.Qt.TextElideMode;
limited with QtAda6.QtCore.QTimerEvent;
with QtAda6.QtWidgets.QAbstractScrollArea;
with QtAda6.QtCore.Signal;
with QtAda6.QtCore.QModelIndex;
package QtAda6.QtWidgets.QAbstractItemView is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtWidgets.QAbstractScrollArea.Inst with null record;
   subtype CLASSVAR_Signal is QtAda6.QtCore.Signal.Class;
   type UNION_QtAda6_QtCore_QModelIndexQtAda6_QtCore_QPersistentModelIndex is new Any;
   type SEQUENCE_int is array (Positive range <>) of int;
   subtype LIST_QtAda6_QtCore_QModelIndex is QtAda6.QtCore.QModelIndex.Class_Array;
   type UNION_QtAda6_QtGui_QRegionQtAda6_QtGui_QBitmapQtAda6_QtGui_QPolygonQtAda6_QtCore_QRect is new Any;
   procedure Finalize (Self : in out Class);
   function activated (self : access Inst) return CLASSVAR_Signal;-- activated(QModelIndex)
   function clicked (self : access Inst) return CLASSVAR_Signal;-- clicked(QModelIndex)
   function doubleClicked (self : access Inst) return CLASSVAR_Signal;-- doubleClicked(QModelIndex)
   function entered (self : access Inst) return CLASSVAR_Signal;-- entered(QModelIndex)
   function iconSizeChanged (self : access Inst) return CLASSVAR_Signal;-- iconSizeChanged(QSize)
   function pressed (self : access Inst) return CLASSVAR_Signal;-- pressed(QModelIndex)
   function viewportEntered (self : access Inst) return CLASSVAR_Signal;-- viewportEntered()
   function Create (parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null) return Class;
   function alternatingRowColors (self : access Inst) return bool;
   function autoScrollMargin (self : access Inst) return int;
   procedure clearSelection (self : access Inst);
   procedure closeEditor
     (self   : access Inst; editor_P : access QtAda6.QtWidgets.QWidget.Inst'Class;
      hint_P : access QtAda6.QtWidgets.QAbstractItemDelegate.EndEditHint.Inst'Class);
   procedure closePersistentEditor
     (self : access Inst; index_P : UNION_QtAda6_QtCore_QModelIndexQtAda6_QtCore_QPersistentModelIndex);
   procedure commitData (self : access Inst; editor_P : access QtAda6.QtWidgets.QWidget.Inst'Class);
   procedure currentChanged
     (self       : access Inst; current_P : UNION_QtAda6_QtCore_QModelIndexQtAda6_QtCore_QPersistentModelIndex;
      previous_P : UNION_QtAda6_QtCore_QModelIndexQtAda6_QtCore_QPersistentModelIndex);
   function currentIndex (self : access Inst) return access QtAda6.QtCore.QModelIndex.Inst'Class;
   procedure dataChanged
     (self          : access Inst; topLeft_P : UNION_QtAda6_QtCore_QModelIndexQtAda6_QtCore_QPersistentModelIndex;
      bottomRight_P : UNION_QtAda6_QtCore_QModelIndexQtAda6_QtCore_QPersistentModelIndex;
      roles_P       : SEQUENCE_int := (2 .. 1 => <>));
   function defaultDropAction (self : access Inst) return access QtAda6.QtCore.Qt.DropAction.Inst'Class;
   function dirtyRegionOffset (self : access Inst) return access QtAda6.QtCore.QPoint.Inst'Class;
   procedure doAutoScroll (self : access Inst);
   procedure doItemsLayout (self : access Inst);
   function dragDropMode_F
     (self : access Inst) return access QtAda6.QtWidgets.QAbstractItemView.DragDropMode.Inst'Class;
   function dragDropOverwriteMode (self : access Inst) return bool;
   function dragEnabled (self : access Inst) return bool;
   procedure dragEnterEvent (self : access Inst; event_P : access QtAda6.QtGui.QDragEnterEvent.Inst'Class);
   procedure dragLeaveEvent (self : access Inst; event_P : access QtAda6.QtGui.QDragLeaveEvent.Inst'Class);
   procedure dragMoveEvent (self : access Inst; event_P : access QtAda6.QtGui.QDragMoveEvent.Inst'Class);
   procedure dropEvent (self : access Inst; event_P : access QtAda6.QtGui.QDropEvent.Inst'Class);
   function dropIndicatorPosition_F
     (self : access Inst) return access QtAda6.QtWidgets.QAbstractItemView.DropIndicatorPosition.Inst'Class;
   procedure edit_F (self : access Inst; index_P : UNION_QtAda6_QtCore_QModelIndexQtAda6_QtCore_QPersistentModelIndex);
   function edit_F
     (self      : access Inst; index_P : UNION_QtAda6_QtCore_QModelIndexQtAda6_QtCore_QPersistentModelIndex;
      trigger_P : access QtAda6.QtWidgets.QAbstractItemView.EditTrigger.Inst'Class;
      event_P   : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   function editTriggers (self : access Inst) return access QtAda6.QtWidgets.QAbstractItemView.EditTrigger.Inst'Class;
   procedure editorDestroyed (self : access Inst; editor_P : access QtAda6.QtCore.QObject.Inst'Class);
   function event (self : access Inst; event_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   function eventFilter
     (self    : access Inst; object_P : access QtAda6.QtCore.QObject.Inst'Class;
      event_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   procedure executeDelayedItemsLayout (self : access Inst);
   procedure focusInEvent (self : access Inst; event_P : access QtAda6.QtGui.QFocusEvent.Inst'Class);
   function focusNextPrevChild (self : access Inst; next_P : bool) return bool;
   procedure focusOutEvent (self : access Inst; event_P : access QtAda6.QtGui.QFocusEvent.Inst'Class);
   function hasAutoScroll (self : access Inst) return bool;
   function horizontalOffset (self : access Inst) return int;
   function horizontalScrollMode
     (self : access Inst) return access QtAda6.QtWidgets.QAbstractItemView.ScrollMode.Inst'Class;
   procedure horizontalScrollbarAction (self : access Inst; action_P : int);
   procedure horizontalScrollbarValueChanged (self : access Inst; value_P : int);
   function iconSize (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   function indexAt
     (self : access Inst; point_P : access QtAda6.QtCore.QPoint.Inst'Class)
      return access QtAda6.QtCore.QModelIndex.Inst'Class;
   function indexWidget
     (self : access Inst; index_P : UNION_QtAda6_QtCore_QModelIndexQtAda6_QtCore_QPersistentModelIndex)
      return access QtAda6.QtWidgets.QWidget.Inst'Class;
   procedure initViewItemOption
     (self : access Inst; option_P : access QtAda6.QtWidgets.QStyleOptionViewItem.Inst'Class);
   procedure inputMethodEvent (self : access Inst; event_P : access QtAda6.QtGui.QInputMethodEvent.Inst'Class);
   function inputMethodQuery
     (self : access Inst; query_P : access QtAda6.QtCore.Qt.InputMethodQuery.Inst'Class) return Any;
   function isIndexHidden
     (self : access Inst; index_P : UNION_QtAda6_QtCore_QModelIndexQtAda6_QtCore_QPersistentModelIndex) return bool;
   function isPersistentEditorOpen
     (self : access Inst; index_P : UNION_QtAda6_QtCore_QModelIndexQtAda6_QtCore_QPersistentModelIndex) return bool;
   function itemDelegate (self : access Inst) return access QtAda6.QtWidgets.QAbstractItemDelegate.Inst'Class;
   function itemDelegate
     (self : access Inst; index_P : UNION_QtAda6_QtCore_QModelIndexQtAda6_QtCore_QPersistentModelIndex)
      return access QtAda6.QtWidgets.QAbstractItemDelegate.Inst'Class;
   function itemDelegateForColumn
     (self : access Inst; column_P : int) return access QtAda6.QtWidgets.QAbstractItemDelegate.Inst'Class;
   function itemDelegateForIndex
     (self : access Inst; index_P : UNION_QtAda6_QtCore_QModelIndexQtAda6_QtCore_QPersistentModelIndex)
      return access QtAda6.QtWidgets.QAbstractItemDelegate.Inst'Class;
   function itemDelegateForRow
     (self : access Inst; row_P : int) return access QtAda6.QtWidgets.QAbstractItemDelegate.Inst'Class;
   procedure keyPressEvent (self : access Inst; event_P : access QtAda6.QtGui.QKeyEvent.Inst'Class);
   procedure keyboardSearch (self : access Inst; search_P : str);
   function model (self : access Inst) return access QtAda6.QtCore.QAbstractItemModel.Inst'Class;
   procedure mouseDoubleClickEvent (self : access Inst; event_P : access QtAda6.QtGui.QMouseEvent.Inst'Class);
   procedure mouseMoveEvent (self : access Inst; event_P : access QtAda6.QtGui.QMouseEvent.Inst'Class);
   procedure mousePressEvent (self : access Inst; event_P : access QtAda6.QtGui.QMouseEvent.Inst'Class);
   procedure mouseReleaseEvent (self : access Inst; event_P : access QtAda6.QtGui.QMouseEvent.Inst'Class);
   function moveCursor
     (self        : access Inst; cursorAction_P : access QtAda6.QtWidgets.QAbstractItemView.CursorAction.Inst'Class;
      modifiers_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class)
      return access QtAda6.QtCore.QModelIndex.Inst'Class;
   procedure openPersistentEditor
     (self : access Inst; index_P : UNION_QtAda6_QtCore_QModelIndexQtAda6_QtCore_QPersistentModelIndex);
   procedure reset (self : access Inst);
   procedure resetHorizontalScrollMode (self : access Inst);
   procedure resetVerticalScrollMode (self : access Inst);
   procedure resizeEvent (self : access Inst; event_P : access QtAda6.QtGui.QResizeEvent.Inst'Class);
   function rootIndex (self : access Inst) return access QtAda6.QtCore.QModelIndex.Inst'Class;
   procedure rowsAboutToBeRemoved
     (self : access Inst; parent_P : UNION_QtAda6_QtCore_QModelIndexQtAda6_QtCore_QPersistentModelIndex; start_P : int;
      end_K_P : int);
   procedure rowsInserted
     (self : access Inst; parent_P : UNION_QtAda6_QtCore_QModelIndexQtAda6_QtCore_QPersistentModelIndex; start_P : int;
      end_K_P : int);
   procedure scheduleDelayedItemsLayout (self : access Inst);
   procedure scrollDirtyRegion (self : access Inst; dx_P : int; dy_P : int);
   procedure scrollTo
     (self   : access Inst; index_P : UNION_QtAda6_QtCore_QModelIndexQtAda6_QtCore_QPersistentModelIndex;
      hint_P : access QtAda6.QtWidgets.QAbstractItemView.ScrollHint.Inst'Class := null);
   procedure scrollToBottom (self : access Inst);
   procedure scrollToTop (self : access Inst);
   procedure selectAll (self : access Inst);
   function selectedIndexes (self : access Inst) return LIST_QtAda6_QtCore_QModelIndex;
   function selectionBehavior_F
     (self : access Inst) return access QtAda6.QtWidgets.QAbstractItemView.SelectionBehavior.Inst'Class;
   procedure selectionChanged
     (self         : access Inst; selected_P : access QtAda6.QtCore.QItemSelection.Inst'Class;
      deselected_P : access QtAda6.QtCore.QItemSelection.Inst'Class);
   function selectionCommand
     (self    : access Inst; index_P : UNION_QtAda6_QtCore_QModelIndexQtAda6_QtCore_QPersistentModelIndex;
      event_P : access QtAda6.QtCore.QEvent.Inst'Class := null)
      return access QtAda6.QtCore.QItemSelectionModel.SelectionFlag.Inst'Class;
   function selectionMode_F
     (self : access Inst) return access QtAda6.QtWidgets.QAbstractItemView.SelectionMode.Inst'Class;
   function selectionModel (self : access Inst) return access QtAda6.QtCore.QItemSelectionModel.Inst'Class;
   procedure setAlternatingRowColors (self : access Inst; enable_P : bool);
   procedure setAutoScroll (self : access Inst; enable_P : bool);
   procedure setAutoScrollMargin (self : access Inst; margin_P : int);
   procedure setCurrentIndex
     (self : access Inst; index_P : UNION_QtAda6_QtCore_QModelIndexQtAda6_QtCore_QPersistentModelIndex);
   procedure setDefaultDropAction (self : access Inst; dropAction_P : access QtAda6.QtCore.Qt.DropAction.Inst'Class);
   procedure setDirtyRegion
     (self     : access Inst;
      region_P : UNION_QtAda6_QtGui_QRegionQtAda6_QtGui_QBitmapQtAda6_QtGui_QPolygonQtAda6_QtCore_QRect);
   procedure setDragDropMode
     (self : access Inst; behavior_P : access QtAda6.QtWidgets.QAbstractItemView.DragDropMode.Inst'Class);
   procedure setDragDropOverwriteMode (self : access Inst; overwrite_P : bool);
   procedure setDragEnabled (self : access Inst; enable_P : bool);
   procedure setDropIndicatorShown (self : access Inst; enable_P : bool);
   procedure setEditTriggers
     (self : access Inst; triggers_P : access QtAda6.QtWidgets.QAbstractItemView.EditTrigger.Inst'Class);
   procedure setHorizontalScrollMode
     (self : access Inst; mode_P : access QtAda6.QtWidgets.QAbstractItemView.ScrollMode.Inst'Class);
   procedure setIconSize (self : access Inst; size_P : access QtAda6.QtCore.QSize.Inst'Class);
   procedure setIndexWidget
     (self     : access Inst; index_P : UNION_QtAda6_QtCore_QModelIndexQtAda6_QtCore_QPersistentModelIndex;
      widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class);
   procedure setItemDelegate
     (self : access Inst; delegate_P : access QtAda6.QtWidgets.QAbstractItemDelegate.Inst'Class);
   procedure setItemDelegateForColumn
     (self : access Inst; column_P : int; delegate_P : access QtAda6.QtWidgets.QAbstractItemDelegate.Inst'Class);
   procedure setItemDelegateForRow
     (self : access Inst; row_P : int; delegate_P : access QtAda6.QtWidgets.QAbstractItemDelegate.Inst'Class);
   procedure setModel (self : access Inst; model_P : access QtAda6.QtCore.QAbstractItemModel.Inst'Class);
   procedure setRootIndex
     (self : access Inst; index_P : UNION_QtAda6_QtCore_QModelIndexQtAda6_QtCore_QPersistentModelIndex);
   procedure setSelection
     (self      : access Inst; rect_P : access QtAda6.QtCore.QRect.Inst'Class;
      command_P : access QtAda6.QtCore.QItemSelectionModel.SelectionFlag.Inst'Class);
   procedure setSelectionBehavior
     (self : access Inst; behavior_P : access QtAda6.QtWidgets.QAbstractItemView.SelectionBehavior.Inst'Class);
   procedure setSelectionMode
     (self : access Inst; mode_P : access QtAda6.QtWidgets.QAbstractItemView.SelectionMode.Inst'Class);
   procedure setSelectionModel
     (self : access Inst; selectionModel_P : access QtAda6.QtCore.QItemSelectionModel.Inst'Class);
   procedure setState (self : access Inst; state_P : access QtAda6.QtWidgets.QAbstractItemView.State.Inst'Class);
   procedure setTabKeyNavigation (self : access Inst; enable_P : bool);
   procedure setTextElideMode (self : access Inst; mode_P : access QtAda6.QtCore.Qt.TextElideMode.Inst'Class);
   procedure setVerticalScrollMode
     (self : access Inst; mode_P : access QtAda6.QtWidgets.QAbstractItemView.ScrollMode.Inst'Class);
   function showDropIndicator (self : access Inst) return bool;
   function sizeHintForColumn (self : access Inst; column_P : int) return int;
   function sizeHintForIndex
     (self : access Inst; index_P : UNION_QtAda6_QtCore_QModelIndexQtAda6_QtCore_QPersistentModelIndex)
      return access QtAda6.QtCore.QSize.Inst'Class;
   function sizeHintForRow (self : access Inst; row_P : int) return int;
   procedure startAutoScroll (self : access Inst);
   procedure startDrag (self : access Inst; supportedActions_P : access QtAda6.QtCore.Qt.DropAction.Inst'Class);
   function state_F (self : access Inst) return access QtAda6.QtWidgets.QAbstractItemView.State.Inst'Class;
   procedure stopAutoScroll (self : access Inst);
   function tabKeyNavigation (self : access Inst) return bool;
   function textElideMode (self : access Inst) return access QtAda6.QtCore.Qt.TextElideMode.Inst'Class;
   procedure timerEvent (self : access Inst; event_P : access QtAda6.QtCore.QTimerEvent.Inst'Class);
   procedure update (self : access Inst; index_P : UNION_QtAda6_QtCore_QModelIndexQtAda6_QtCore_QPersistentModelIndex);
   procedure updateEditorData (self : access Inst);
   procedure updateEditorGeometries (self : access Inst);
   procedure updateGeometries (self : access Inst);
   function verticalOffset (self : access Inst) return int;
   function verticalScrollMode
     (self : access Inst) return access QtAda6.QtWidgets.QAbstractItemView.ScrollMode.Inst'Class;
   procedure verticalScrollbarAction (self : access Inst; action_P : int);
   procedure verticalScrollbarValueChanged (self : access Inst; value_P : int);
   function viewportEvent (self : access Inst; event_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   function viewportSizeHint (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   function visualRect
     (self : access Inst; index_P : UNION_QtAda6_QtCore_QModelIndexQtAda6_QtCore_QPersistentModelIndex)
      return access QtAda6.QtCore.QRect.Inst'Class;
   function visualRegionForSelection
     (self : access Inst; selection_P : access QtAda6.QtCore.QItemSelection.Inst'Class)
      return access QtAda6.QtGui.QRegion.Inst'Class;
end QtAda6.QtWidgets.QAbstractItemView;
