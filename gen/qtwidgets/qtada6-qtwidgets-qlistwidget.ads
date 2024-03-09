-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qlistwidget.ads
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
limited with QtAda6.QtWidgets.QListWidgetItem;
limited with QtAda6.QtGui.QDropEvent;
limited with QtAda6.QtCore.QMimeData;
limited with QtAda6.QtCore.Qt.DropAction;
limited with QtAda6.QtCore.QEvent;
limited with QtAda6.QtCore.Qt.MatchFlag;
limited with QtAda6.QtCore.QModelIndex;
limited with QtAda6.QtCore.QPoint;
limited with QtAda6.QtWidgets.QAbstractItemView.ScrollHint;
limited with QtAda6.QtCore.QItemSelectionModel.SelectionFlag;
limited with QtAda6.QtCore.QAbstractItemModel;
limited with QtAda6.QtCore.QItemSelectionModel;
limited with QtAda6.QtCore.Qt.SortOrder;
limited with QtAda6.QtCore.QRect;
with QtAda6.QtWidgets.QListView;
package QtAda6.QtWidgets.QListWidget is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtWidgets.QListView.Inst with null record;
   type SEQUENCE_str is array (Positive range <>) of str;
   subtype LIST_QtAda6_QtWidgets_QListWidgetItem is QtAda6.QtWidgets.QListWidgetItem.Class_Array;
   type UNION_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex is new Any;
   subtype SEQUENCE_QtAda6_QtWidgets_QListWidgetItem is QtAda6.QtWidgets.QListWidgetItem.Class_Array;
   type LIST_str is array (Positive range <>) of str;
   procedure Finalize (Self : in out Class);
   function currentItemChanged
     (self : access Inst)
      return access QtAda6.QtCore.Signal.Inst'Class;-- currentItemChanged(QListWidgetItem*,QListWidgetItem*)
   function currentRowChanged
     (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- currentRowChanged(int)
   function currentTextChanged
     (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- currentTextChanged(QString)
   function itemActivated
     (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- itemActivated(QListWidgetItem*)
   function itemChanged
     (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- itemChanged(QListWidgetItem*)
   function itemClicked
     (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- itemClicked(QListWidgetItem*)
   function itemDoubleClicked
     (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- itemDoubleClicked(QListWidgetItem*)
   function itemEntered
     (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- itemEntered(QListWidgetItem*)
   function itemPressed
     (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- itemPressed(QListWidgetItem*)
   function itemSelectionChanged
     (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- itemSelectionChanged()
   function Create (parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null) return Class;
   procedure addItem (self : access Inst; item_P : access QtAda6.QtWidgets.QListWidgetItem.Inst'Class);
   procedure addItem (self : access Inst; label_P : str);
   procedure addItems (self : access Inst; labels_P : SEQUENCE_str);
   procedure clear (self : access Inst);
   procedure closePersistentEditor (self : access Inst; item_P : access QtAda6.QtWidgets.QListWidgetItem.Inst'Class);
   function count (self : access Inst) return int;
   function currentItem (self : access Inst) return access QtAda6.QtWidgets.QListWidgetItem.Inst'Class;
   function currentRow (self : access Inst) return int;
   procedure dropEvent (self : access Inst; event_P : access QtAda6.QtGui.QDropEvent.Inst'Class);
   function dropMimeData
     (self     : access Inst; index_P : int; data_P : access QtAda6.QtCore.QMimeData.Inst'Class;
      action_P : access QtAda6.QtCore.Qt.DropAction.Inst'Class) return bool;
   procedure editItem (self : access Inst; item_P : access QtAda6.QtWidgets.QListWidgetItem.Inst'Class);
   function event (self : access Inst; e_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   function findItems
     (self : access Inst; text_P : str; flags_P : access QtAda6.QtCore.Qt.MatchFlag.Inst'Class)
      return LIST_QtAda6_QtWidgets_QListWidgetItem;
   function indexFromItem
     (self : access Inst; item_P : access QtAda6.QtWidgets.QListWidgetItem.Inst'Class)
      return access QtAda6.QtCore.QModelIndex.Inst'Class;
   procedure insertItem (self : access Inst; row_P : int; item_P : access QtAda6.QtWidgets.QListWidgetItem.Inst'Class);
   procedure insertItem (self : access Inst; row_P : int; label_P : str);
   procedure insertItems (self : access Inst; row_P : int; labels_P : SEQUENCE_str);
   function isPersistentEditorOpen
     (self : access Inst; item_P : access QtAda6.QtWidgets.QListWidgetItem.Inst'Class) return bool;
   function isSortingEnabled (self : access Inst) return bool;
   function item (self : access Inst; row_P : int) return access QtAda6.QtWidgets.QListWidgetItem.Inst'Class;
   function itemAt
     (self : access Inst; p_P : access QtAda6.QtCore.QPoint.Inst'Class)
      return access QtAda6.QtWidgets.QListWidgetItem.Inst'Class;
   function itemAt (self : access Inst; x_P : int; y_P : int) return access QtAda6.QtWidgets.QListWidgetItem.Inst'Class;
   function itemFromIndex
     (self : access Inst; index_P : UNION_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex)
      return access QtAda6.QtWidgets.QListWidgetItem.Inst'Class;
   function itemWidget
     (self : access Inst; item_P : access QtAda6.QtWidgets.QListWidgetItem.Inst'Class)
      return access QtAda6.QtWidgets.QWidget.Inst'Class;
   function items
     (self : access Inst; data_P : access QtAda6.QtCore.QMimeData.Inst'Class)
      return LIST_QtAda6_QtWidgets_QListWidgetItem;
   function mimeData
     (self : access Inst; items_P : SEQUENCE_QtAda6_QtWidgets_QListWidgetItem)
      return access QtAda6.QtCore.QMimeData.Inst'Class;
   function mimeTypes (self : access Inst) return LIST_str;
   procedure openPersistentEditor (self : access Inst; item_P : access QtAda6.QtWidgets.QListWidgetItem.Inst'Class);
   procedure removeItemWidget (self : access Inst; item_P : access QtAda6.QtWidgets.QListWidgetItem.Inst'Class);
   function row (self : access Inst; item_P : access QtAda6.QtWidgets.QListWidgetItem.Inst'Class) return int;
   procedure scrollToItem
     (self   : access Inst; item_P : access QtAda6.QtWidgets.QListWidgetItem.Inst'Class;
      hint_P : access QtAda6.QtWidgets.QAbstractItemView.ScrollHint.Inst'Class := null);
   function selectedItems (self : access Inst) return LIST_QtAda6_QtWidgets_QListWidgetItem;
   procedure setCurrentItem (self : access Inst; item_P : access QtAda6.QtWidgets.QListWidgetItem.Inst'Class);
   procedure setCurrentItem
     (self      : access Inst; item_P : access QtAda6.QtWidgets.QListWidgetItem.Inst'Class;
      command_P : access QtAda6.QtCore.QItemSelectionModel.SelectionFlag.Inst'Class);
   procedure setCurrentRow (self : access Inst; row_P : int);
   procedure setCurrentRow
     (self : access Inst; row_P : int; command_P : access QtAda6.QtCore.QItemSelectionModel.SelectionFlag.Inst'Class);
   procedure setItemWidget
     (self     : access Inst; item_P : access QtAda6.QtWidgets.QListWidgetItem.Inst'Class;
      widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class);
   procedure setModel (self : access Inst; model_P : access QtAda6.QtCore.QAbstractItemModel.Inst'Class);
   procedure setSelectionModel
     (self : access Inst; selectionModel_P : access QtAda6.QtCore.QItemSelectionModel.Inst'Class);
   procedure setSortingEnabled (self : access Inst; enable_P : bool);
   procedure sortItems (self : access Inst; order_P : access QtAda6.QtCore.Qt.SortOrder.Inst'Class := null);
   function supportedDropActions (self : access Inst) return access QtAda6.QtCore.Qt.DropAction.Inst'Class;
   function takeItem (self : access Inst; row_P : int) return access QtAda6.QtWidgets.QListWidgetItem.Inst'Class;
   function visualItemRect
     (self : access Inst; item_P : access QtAda6.QtWidgets.QListWidgetItem.Inst'Class)
      return access QtAda6.QtCore.QRect.Inst'Class;
end QtAda6.QtWidgets.QListWidget;
