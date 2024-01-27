-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qtreewidget.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtWidgets.QWidget;
limited with QtAda6.QtGui.QDropEvent;
limited with QtAda6.QtCore.QMimeData;
limited with QtAda6.QtCore.Qt.DropAction;
limited with QtAda6.QtCore.QEvent;
limited with QtAda6.QtCore.Qt.MatchFlag;
limited with QtAda6.QtCore.QModelIndex;
limited with QtAda6.QtCore.QPoint;
limited with QtAda6.QtCore.QPersistentModelIndex;
limited with QtAda6.QtWidgets.QAbstractItemView.ScrollHint;
limited with QtAda6.QtCore.QItemSelectionModel.SelectionFlag;
limited with QtAda6.QtCore.QAbstractItemModel;
limited with QtAda6.QtCore.QItemSelectionModel;
limited with QtAda6.QtCore.Qt.SortOrder;
limited with QtAda6.QtCore.QRect;
with QtAda6.QtWidgets.QTreeView;
with QtAda6.QtCore.Signal;
with QtAda6.QtWidgets.QTreeWidgetItem;
package QtAda6.QtWidgets.QTreeWidget is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtWidgets.QTreeView.Inst with null record;
   subtype CLASSVAR_Signal is QtAda6.QtCore.Signal.Class;
   subtype SEQUENCE_QtAda6_QtWidgets_QTreeWidgetItem is QtAda6.QtWidgets.QTreeWidgetItem.Class_Array;
   subtype LIST_QtAda6_QtWidgets_QTreeWidgetItem is QtAda6.QtWidgets.QTreeWidgetItem.Class_Array;
   type UNION_QtAda6_QtCore_QModelIndexQtAda6_QtCore_QPersistentModelIndex is new Any;
   type LIST_str is array (Positive range <>) of str;
   type SEQUENCE_str is array (Positive range <>) of str;
   procedure Finalize (Self : in out Class);
   function currentItemChanged
     (self : access Inst) return CLASSVAR_Signal;-- currentItemChanged(QTreeWidgetItem*,QTreeWidgetItem*)
   function itemActivated (self : access Inst) return CLASSVAR_Signal;-- itemActivated(QTreeWidgetItem*,int)
   function itemChanged (self : access Inst) return CLASSVAR_Signal;-- itemChanged(QTreeWidgetItem*,int)
   function itemClicked (self : access Inst) return CLASSVAR_Signal;-- itemClicked(QTreeWidgetItem*,int)
   function itemCollapsed (self : access Inst) return CLASSVAR_Signal;-- itemCollapsed(QTreeWidgetItem*)
   function itemDoubleClicked (self : access Inst) return CLASSVAR_Signal;-- itemDoubleClicked(QTreeWidgetItem*,int)
   function itemEntered (self : access Inst) return CLASSVAR_Signal;-- itemEntered(QTreeWidgetItem*,int)
   function itemExpanded (self : access Inst) return CLASSVAR_Signal;-- itemExpanded(QTreeWidgetItem*)
   function itemPressed (self : access Inst) return CLASSVAR_Signal;-- itemPressed(QTreeWidgetItem*,int)
   function itemSelectionChanged (self : access Inst) return CLASSVAR_Signal;-- itemSelectionChanged()
   function Create (parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null) return Class;
   procedure addTopLevelItem (self : access Inst; item_P : access QtAda6.QtWidgets.QTreeWidgetItem.Inst'Class);
   procedure addTopLevelItems (self : access Inst; items_P : SEQUENCE_QtAda6_QtWidgets_QTreeWidgetItem);
   procedure clear (self : access Inst);
   procedure closePersistentEditor
     (self : access Inst; item_P : access QtAda6.QtWidgets.QTreeWidgetItem.Inst'Class; column_P : int := 0);
   procedure collapseItem (self : access Inst; item_P : access QtAda6.QtWidgets.QTreeWidgetItem.Inst'Class);
   function columnCount (self : access Inst) return int;
   function currentColumn (self : access Inst) return int;
   function currentItem (self : access Inst) return access QtAda6.QtWidgets.QTreeWidgetItem.Inst'Class;
   procedure dropEvent (self : access Inst; event_P : access QtAda6.QtGui.QDropEvent.Inst'Class);
   function dropMimeData
     (self   : access Inst; parent_P : access QtAda6.QtWidgets.QTreeWidgetItem.Inst'Class; index_P : int;
      data_P : access QtAda6.QtCore.QMimeData.Inst'Class; action_P : access QtAda6.QtCore.Qt.DropAction.Inst'Class)
      return bool;
   procedure editItem
     (self : access Inst; item_P : access QtAda6.QtWidgets.QTreeWidgetItem.Inst'Class; column_P : int := 0);
   function event (self : access Inst; e_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   procedure expandItem (self : access Inst; item_P : access QtAda6.QtWidgets.QTreeWidgetItem.Inst'Class);
   function findItems
     (self : access Inst; text_P : str; flags_P : access QtAda6.QtCore.Qt.MatchFlag.Inst'Class; column_P : int := 0)
      return LIST_QtAda6_QtWidgets_QTreeWidgetItem;
   function headerItem (self : access Inst) return access QtAda6.QtWidgets.QTreeWidgetItem.Inst'Class;
   function indexFromItem
     (self : access Inst; item_P : access QtAda6.QtWidgets.QTreeWidgetItem.Inst'Class; column_P : int := 0)
      return access QtAda6.QtCore.QModelIndex.Inst'Class;
   function indexOfTopLevelItem
     (self : access Inst; item_P : access QtAda6.QtWidgets.QTreeWidgetItem.Inst'Class) return int;
   procedure insertTopLevelItem
     (self : access Inst; index_P : int; item_P : access QtAda6.QtWidgets.QTreeWidgetItem.Inst'Class);
   procedure insertTopLevelItems
     (self : access Inst; index_P : int; items_P : SEQUENCE_QtAda6_QtWidgets_QTreeWidgetItem);
   function invisibleRootItem (self : access Inst) return access QtAda6.QtWidgets.QTreeWidgetItem.Inst'Class;
   function isPersistentEditorOpen
     (self : access Inst; item_P : access QtAda6.QtWidgets.QTreeWidgetItem.Inst'Class; column_P : int := 0) return bool;
   function itemAbove
     (self : access Inst; item_P : access QtAda6.QtWidgets.QTreeWidgetItem.Inst'Class)
      return access QtAda6.QtWidgets.QTreeWidgetItem.Inst'Class;
   function itemAt
     (self : access Inst; p_P : access QtAda6.QtCore.QPoint.Inst'Class)
      return access QtAda6.QtWidgets.QTreeWidgetItem.Inst'Class;
   function itemAt (self : access Inst; x_P : int; y_P : int) return access QtAda6.QtWidgets.QTreeWidgetItem.Inst'Class;
   function itemBelow
     (self : access Inst; item_P : access QtAda6.QtWidgets.QTreeWidgetItem.Inst'Class)
      return access QtAda6.QtWidgets.QTreeWidgetItem.Inst'Class;
   function itemFromIndex
     (self : access Inst; index_P : UNION_QtAda6_QtCore_QModelIndexQtAda6_QtCore_QPersistentModelIndex)
      return access QtAda6.QtWidgets.QTreeWidgetItem.Inst'Class;
   function itemWidget
     (self : access Inst; item_P : access QtAda6.QtWidgets.QTreeWidgetItem.Inst'Class; column_P : int)
      return access QtAda6.QtWidgets.QWidget.Inst'Class;
   function mimeData
     (self : access Inst; items_P : SEQUENCE_QtAda6_QtWidgets_QTreeWidgetItem)
      return access QtAda6.QtCore.QMimeData.Inst'Class;
   function mimeTypes (self : access Inst) return LIST_str;
   procedure openPersistentEditor
     (self : access Inst; item_P : access QtAda6.QtWidgets.QTreeWidgetItem.Inst'Class; column_P : int := 0);
   procedure removeItemWidget
     (self : access Inst; item_P : access QtAda6.QtWidgets.QTreeWidgetItem.Inst'Class; column_P : int);
   procedure scrollToItem
     (self   : access Inst; item_P : access QtAda6.QtWidgets.QTreeWidgetItem.Inst'Class;
      hint_P : access QtAda6.QtWidgets.QAbstractItemView.ScrollHint.Inst'Class := null);
   function selectedItems (self : access Inst) return LIST_QtAda6_QtWidgets_QTreeWidgetItem;
   procedure setColumnCount (self : access Inst; columns_P : int);
   procedure setCurrentItem (self : access Inst; item_P : access QtAda6.QtWidgets.QTreeWidgetItem.Inst'Class);
   procedure setCurrentItem
     (self : access Inst; item_P : access QtAda6.QtWidgets.QTreeWidgetItem.Inst'Class; column_P : int);
   procedure setCurrentItem
     (self      : access Inst; item_P : access QtAda6.QtWidgets.QTreeWidgetItem.Inst'Class; column_P : int;
      command_P : access QtAda6.QtCore.QItemSelectionModel.SelectionFlag.Inst'Class);
   procedure setHeaderItem (self : access Inst; item_P : access QtAda6.QtWidgets.QTreeWidgetItem.Inst'Class);
   procedure setHeaderLabel (self : access Inst; label_P : str);
   procedure setHeaderLabels (self : access Inst; labels_P : SEQUENCE_str);
   procedure setItemWidget
     (self     : access Inst; item_P : access QtAda6.QtWidgets.QTreeWidgetItem.Inst'Class; column_P : int;
      widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class);
   procedure setModel (self : access Inst; model_P : access QtAda6.QtCore.QAbstractItemModel.Inst'Class);
   procedure setSelectionModel
     (self : access Inst; selectionModel_P : access QtAda6.QtCore.QItemSelectionModel.Inst'Class);
   function sortColumn (self : access Inst) return int;
   procedure sortItems (self : access Inst; column_P : int; order_P : access QtAda6.QtCore.Qt.SortOrder.Inst'Class);
   function supportedDropActions (self : access Inst) return access QtAda6.QtCore.Qt.DropAction.Inst'Class;
   function takeTopLevelItem
     (self : access Inst; index_P : int) return access QtAda6.QtWidgets.QTreeWidgetItem.Inst'Class;
   function topLevelItem (self : access Inst; index_P : int) return access QtAda6.QtWidgets.QTreeWidgetItem.Inst'Class;
   function topLevelItemCount (self : access Inst) return int;
   function visualItemRect
     (self : access Inst; item_P : access QtAda6.QtWidgets.QTreeWidgetItem.Inst'Class)
      return access QtAda6.QtCore.QRect.Inst'Class;
end QtAda6.QtWidgets.QTreeWidget;
