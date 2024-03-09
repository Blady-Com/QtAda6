-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qtablewidget.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.Signal;
limited with QtAda6.QtWidgets.QWidget;
limited with QtAda6.QtWidgets.QTableWidgetItem;
limited with QtAda6.QtGui.QDropEvent;
limited with QtAda6.QtCore.QMimeData;
limited with QtAda6.QtCore.Qt.DropAction;
limited with QtAda6.QtCore.QEvent;
limited with QtAda6.QtCore.Qt.MatchFlag;
limited with QtAda6.QtCore.QModelIndex;
limited with QtAda6.QtCore.QPoint;
limited with QtAda6.QtWidgets.QAbstractItemView.ScrollHint;
limited with QtAda6.QtWidgets.QTableWidgetSelectionRange;
limited with QtAda6.QtCore.QItemSelectionModel.SelectionFlag;
limited with QtAda6.QtCore.QAbstractItemModel;
limited with QtAda6.QtCore.Qt.SortOrder;
limited with QtAda6.QtCore.QRect;
with QtAda6.QtWidgets.QTableView;
package QtAda6.QtWidgets.QTableWidget is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtWidgets.QTableView.Inst with null record;
   subtype LIST_QtAda6_QtWidgets_QTableWidgetItem is QtAda6.QtWidgets.QTableWidgetItem.Class_Array;
   type UNION_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex is new Any;
   subtype SEQUENCE_QtAda6_QtWidgets_QTableWidgetItem is QtAda6.QtWidgets.QTableWidgetItem.Class_Array;
   type LIST_str is array (Positive range <>) of str;
   subtype LIST_QtAda6_QtWidgets_QTableWidgetSelectionRange is QtAda6.QtWidgets.QTableWidgetSelectionRange.Class_Array;
   type SEQUENCE_str is array (Positive range <>) of str;
   procedure Finalize (Self : in out Class);
   function cellActivated (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- cellActivated(int,int)
   function cellChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- cellChanged(int,int)
   function cellClicked (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- cellClicked(int,int)
   function cellDoubleClicked
     (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- cellDoubleClicked(int,int)
   function cellEntered (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- cellEntered(int,int)
   function cellPressed (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- cellPressed(int,int)
   function currentCellChanged
     (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- currentCellChanged(int,int,int,int)
   function currentItemChanged
     (self : access Inst)
      return access QtAda6.QtCore.Signal.Inst'Class;-- currentItemChanged(QTableWidgetItem*,QTableWidgetItem*)
   function itemActivated
     (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- itemActivated(QTableWidgetItem*)
   function itemChanged
     (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- itemChanged(QTableWidgetItem*)
   function itemClicked
     (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- itemClicked(QTableWidgetItem*)
   function itemDoubleClicked
     (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- itemDoubleClicked(QTableWidgetItem*)
   function itemEntered
     (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- itemEntered(QTableWidgetItem*)
   function itemPressed
     (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- itemPressed(QTableWidgetItem*)
   function itemSelectionChanged
     (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- itemSelectionChanged()
   function Create (parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null) return Class;
   function Create
     (rows_P : int; columns_P : int; parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null) return Class;
   function cellWidget
     (self : access Inst; row_P : int; column_P : int) return access QtAda6.QtWidgets.QWidget.Inst'Class;
   procedure clear (self : access Inst);
   procedure clearContents (self : access Inst);
   procedure closePersistentEditor (self : access Inst; item_P : access QtAda6.QtWidgets.QTableWidgetItem.Inst'Class);
   function column (self : access Inst; item_P : access QtAda6.QtWidgets.QTableWidgetItem.Inst'Class) return int;
   function columnCount (self : access Inst) return int;
   function currentColumn (self : access Inst) return int;
   function currentItem (self : access Inst) return access QtAda6.QtWidgets.QTableWidgetItem.Inst'Class;
   function currentRow (self : access Inst) return int;
   procedure dropEvent (self : access Inst; event_P : access QtAda6.QtGui.QDropEvent.Inst'Class);
   function dropMimeData
     (self     : access Inst; row_P : int; column_P : int; data_P : access QtAda6.QtCore.QMimeData.Inst'Class;
      action_P : access QtAda6.QtCore.Qt.DropAction.Inst'Class) return bool;
   procedure editItem (self : access Inst; item_P : access QtAda6.QtWidgets.QTableWidgetItem.Inst'Class);
   function event (self : access Inst; e_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   function findItems
     (self : access Inst; text_P : str; flags_P : access QtAda6.QtCore.Qt.MatchFlag.Inst'Class)
      return LIST_QtAda6_QtWidgets_QTableWidgetItem;
   function horizontalHeaderItem
     (self : access Inst; column_P : int) return access QtAda6.QtWidgets.QTableWidgetItem.Inst'Class;
   function indexFromItem
     (self : access Inst; item_P : access QtAda6.QtWidgets.QTableWidgetItem.Inst'Class)
      return access QtAda6.QtCore.QModelIndex.Inst'Class;
   procedure insertColumn (self : access Inst; column_P : int);
   procedure insertRow (self : access Inst; row_P : int);
   function isPersistentEditorOpen
     (self : access Inst; item_P : access QtAda6.QtWidgets.QTableWidgetItem.Inst'Class) return bool;
   function isSortingEnabled (self : access Inst) return bool;
   function item
     (self : access Inst; row_P : int; column_P : int) return access QtAda6.QtWidgets.QTableWidgetItem.Inst'Class;
   function itemAt
     (self : access Inst; p_P : access QtAda6.QtCore.QPoint.Inst'Class)
      return access QtAda6.QtWidgets.QTableWidgetItem.Inst'Class;
   function itemAt
     (self : access Inst; x_P : int; y_P : int) return access QtAda6.QtWidgets.QTableWidgetItem.Inst'Class;
   function itemFromIndex
     (self : access Inst; index_P : UNION_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex)
      return access QtAda6.QtWidgets.QTableWidgetItem.Inst'Class;
   function itemPrototype (self : access Inst) return access QtAda6.QtWidgets.QTableWidgetItem.Inst'Class;
   function items
     (self : access Inst; data_P : access QtAda6.QtCore.QMimeData.Inst'Class)
      return LIST_QtAda6_QtWidgets_QTableWidgetItem;
   function mimeData
     (self : access Inst; items_P : SEQUENCE_QtAda6_QtWidgets_QTableWidgetItem)
      return access QtAda6.QtCore.QMimeData.Inst'Class;
   function mimeTypes (self : access Inst) return LIST_str;
   procedure openPersistentEditor (self : access Inst; item_P : access QtAda6.QtWidgets.QTableWidgetItem.Inst'Class);
   procedure removeCellWidget (self : access Inst; row_P : int; column_P : int);
   procedure removeColumn (self : access Inst; column_P : int);
   procedure removeRow (self : access Inst; row_P : int);
   function row (self : access Inst; item_P : access QtAda6.QtWidgets.QTableWidgetItem.Inst'Class) return int;
   function rowCount (self : access Inst) return int;
   procedure scrollToItem
     (self   : access Inst; item_P : access QtAda6.QtWidgets.QTableWidgetItem.Inst'Class;
      hint_P : access QtAda6.QtWidgets.QAbstractItemView.ScrollHint.Inst'Class := null);
   function selectedItems (self : access Inst) return LIST_QtAda6_QtWidgets_QTableWidgetItem;
   function selectedRanges (self : access Inst) return LIST_QtAda6_QtWidgets_QTableWidgetSelectionRange;
   procedure setCellWidget
     (self : access Inst; row_P : int; column_P : int; widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class);
   procedure setColumnCount (self : access Inst; columns_P : int);
   procedure setCurrentCell (self : access Inst; row_P : int; column_P : int);
   procedure setCurrentCell
     (self      : access Inst; row_P : int; column_P : int;
      command_P : access QtAda6.QtCore.QItemSelectionModel.SelectionFlag.Inst'Class);
   procedure setCurrentItem (self : access Inst; item_P : access QtAda6.QtWidgets.QTableWidgetItem.Inst'Class);
   procedure setCurrentItem
     (self      : access Inst; item_P : access QtAda6.QtWidgets.QTableWidgetItem.Inst'Class;
      command_P : access QtAda6.QtCore.QItemSelectionModel.SelectionFlag.Inst'Class);
   procedure setHorizontalHeaderItem
     (self : access Inst; column_P : int; item_P : access QtAda6.QtWidgets.QTableWidgetItem.Inst'Class);
   procedure setHorizontalHeaderLabels (self : access Inst; labels_P : SEQUENCE_str);
   procedure setItem
     (self : access Inst; row_P : int; column_P : int; item_P : access QtAda6.QtWidgets.QTableWidgetItem.Inst'Class);
   procedure setItemPrototype (self : access Inst; item_P : access QtAda6.QtWidgets.QTableWidgetItem.Inst'Class);
   procedure setModel (self : access Inst; model_P : access QtAda6.QtCore.QAbstractItemModel.Inst'Class);
   procedure setRangeSelected
     (self : access Inst; range_K_P : access QtAda6.QtWidgets.QTableWidgetSelectionRange.Inst'Class; select_K_P : bool);
   procedure setRowCount (self : access Inst; rows_P : int);
   procedure setSortingEnabled (self : access Inst; enable_P : bool);
   procedure setVerticalHeaderItem
     (self : access Inst; row_P : int; item_P : access QtAda6.QtWidgets.QTableWidgetItem.Inst'Class);
   procedure setVerticalHeaderLabels (self : access Inst; labels_P : SEQUENCE_str);
   procedure sortItems
     (self : access Inst; column_P : int; order_P : access QtAda6.QtCore.Qt.SortOrder.Inst'Class := null);
   function supportedDropActions (self : access Inst) return access QtAda6.QtCore.Qt.DropAction.Inst'Class;
   function takeHorizontalHeaderItem
     (self : access Inst; column_P : int) return access QtAda6.QtWidgets.QTableWidgetItem.Inst'Class;
   function takeItem
     (self : access Inst; row_P : int; column_P : int) return access QtAda6.QtWidgets.QTableWidgetItem.Inst'Class;
   function takeVerticalHeaderItem
     (self : access Inst; row_P : int) return access QtAda6.QtWidgets.QTableWidgetItem.Inst'Class;
   function verticalHeaderItem
     (self : access Inst; row_P : int) return access QtAda6.QtWidgets.QTableWidgetItem.Inst'Class;
   function visualColumn (self : access Inst; logicalColumn_P : int) return int;
   function visualItemRect
     (self : access Inst; item_P : access QtAda6.QtWidgets.QTableWidgetItem.Inst'Class)
      return access QtAda6.QtCore.QRect.Inst'Class;
   function visualRow (self : access Inst; logicalRow_P : int) return int;
end QtAda6.QtWidgets.QTableWidget;
