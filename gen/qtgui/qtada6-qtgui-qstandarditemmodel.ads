-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qstandarditemmodel.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QObject;
limited with QtAda6.QtGui.QStandardItem;
limited with QtAda6.QtCore.QModelIndex;
limited with QtAda6.QtCore.QPersistentModelIndex;
limited with QtAda6.QtCore.QMimeData;
limited with QtAda6.QtCore.Qt.DropAction;
limited with QtAda6.QtCore.Qt.MatchFlag;
limited with QtAda6.QtCore.Qt.ItemFlag;
limited with QtAda6.QtCore.Qt.Orientation;
limited with QtAda6.QtCore.QByteArray;
limited with QtAda6.QtCore.Qt.SortOrder;
with QtAda6.QtCore.QAbstractItemModel;
package QtAda6.QtGui.QStandardItemModel is
type ClassVar_Signal is access Any;
type Optional_QtAda6_QtCore_QObject is access Any;
type Sequence_QtAda6_QtGui_QStandardItem is access Any;
type Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex is access Any;
type List_QtAda6_QtGui_QStandardItem is access Any;
type Dict_int_Any is access Any;
type Sequence_QtAda6_QtCore_QModelIndex is access Any;
type List_str is access Any;
type Dict_int_QtAda6_QtCore_QByteArray is access Any;
type Sequence_str is access Any;
type Inst;
type Inst_Access is access all Inst;
type Class is access all Inst'Class;
type Inst is new QtAda6.QtCore.QAbstractItemModel.Inst with null record;
procedure Finalize (Self : in out Class);
itemChanged:ClassVar_Signal;-- itemChanged(QStandardItem*)
function Create(parent_P : Optional_QtAda6_QtCore_QObject) return Class;
function Create(rows_P : int;columns_P : int;parent_P : Optional_QtAda6_QtCore_QObject) return Class;
procedure appendColumn(self : access Inst;items_P : Sequence_QtAda6_QtGui_QStandardItem);
procedure appendRow(self : access Inst;item_P : access QtAda6.QtGui.QStandardItem.Inst'Class);
procedure appendRow(self : access Inst;items_P : Sequence_QtAda6_QtGui_QStandardItem);
procedure clear(self : access Inst);
function clearItemData(self : access Inst;index_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex) return bool;
function columnCount(self : access Inst;parent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex) return int;
function data(self : access Inst;index_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex;role_P : int) return Any;
function dropMimeData(self : access Inst;data_P : access QtAda6.QtCore.QMimeData.Inst'Class;action_P : access QtAda6.QtCore.Qt.DropAction.Inst'Class;row_P : int;column_P : int;parent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex) return bool;
function findItems(self : access Inst;text_P : str;flags_P : access QtAda6.QtCore.Qt.MatchFlag.Inst'Class;column_P : int) return List_QtAda6_QtGui_QStandardItem;
function flags(self : access Inst;index_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex) return access QtAda6.QtCore.Qt.ItemFlag.Inst'Class;
function hasChildren(self : access Inst;parent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex) return bool;
function headerData(self : access Inst;section_P : int;orientation_P : access QtAda6.QtCore.Qt.Orientation.Inst'Class;role_P : int) return Any;
function horizontalHeaderItem(self : access Inst;column_P : int) return access QtAda6.QtGui.QStandardItem.Inst'Class;
function index(self : access Inst;row_P : int;column_P : int;parent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex) return access QtAda6.QtCore.QModelIndex.Inst'Class;
function indexFromItem(self : access Inst;item_P : access QtAda6.QtGui.QStandardItem.Inst'Class) return access QtAda6.QtCore.QModelIndex.Inst'Class;
procedure insertColumn(self : access Inst;column_P : int;items_P : Sequence_QtAda6_QtGui_QStandardItem);
function insertColumn(self : access Inst;column_P : int;parent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex) return bool;
function insertColumns(self : access Inst;column_P : int;count_P : int;parent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex) return bool;
procedure insertRow(self : access Inst;row_P : int;item_P : access QtAda6.QtGui.QStandardItem.Inst'Class);
procedure insertRow(self : access Inst;row_P : int;items_P : Sequence_QtAda6_QtGui_QStandardItem);
function insertRow(self : access Inst;row_P : int;parent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex) return bool;
function insertRows(self : access Inst;row_P : int;count_P : int;parent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex) return bool;
function invisibleRootItem(self : access Inst) return access QtAda6.QtGui.QStandardItem.Inst'Class;
function item(self : access Inst;row_P : int;column_P : int) return access QtAda6.QtGui.QStandardItem.Inst'Class;
function itemData(self : access Inst;index_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex) return Dict_int_Any;
function itemFromIndex(self : access Inst;index_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex) return access QtAda6.QtGui.QStandardItem.Inst'Class;
function itemPrototype(self : access Inst) return access QtAda6.QtGui.QStandardItem.Inst'Class;
function mimeData(self : access Inst;indexes_P : Sequence_QtAda6_QtCore_QModelIndex) return access QtAda6.QtCore.QMimeData.Inst'Class;
function mimeTypes(self : access Inst) return List_str;
function parent(self : access Inst) return access QtAda6.QtCore.QObject.Inst'Class;
function parent(self : access Inst;child_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex) return access QtAda6.QtCore.QModelIndex.Inst'Class;
function removeColumns(self : access Inst;column_P : int;count_P : int;parent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex) return bool;
function removeRows(self : access Inst;row_P : int;count_P : int;parent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex) return bool;
function roleNames(self : access Inst) return Dict_int_QtAda6_QtCore_QByteArray;
function rowCount(self : access Inst;parent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex) return int;
procedure setColumnCount(self : access Inst;columns_P : int);
function setData(self : access Inst;index_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex;value_P : Any;role_P : int) return bool;
function setHeaderData(self : access Inst;section_P : int;orientation_P : access QtAda6.QtCore.Qt.Orientation.Inst'Class;value_P : Any;role_P : int) return bool;
procedure setHorizontalHeaderItem(self : access Inst;column_P : int;item_P : access QtAda6.QtGui.QStandardItem.Inst'Class);
procedure setHorizontalHeaderLabels(self : access Inst;labels_P : Sequence_str);
procedure setItem(self : access Inst;row_P : int;column_P : int;item_P : access QtAda6.QtGui.QStandardItem.Inst'Class);
procedure setItem(self : access Inst;row_P : int;item_P : access QtAda6.QtGui.QStandardItem.Inst'Class);
function setItemData(self : access Inst;index_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex;roles_P : Dict_int_Any) return bool;
procedure setItemPrototype(self : access Inst;item_P : access QtAda6.QtGui.QStandardItem.Inst'Class);
procedure setItemRoleNames(self : access Inst;roleNames_P : Dict_int_QtAda6_QtCore_QByteArray);
procedure setRowCount(self : access Inst;rows_P : int);
procedure setSortRole(self : access Inst;role_P : int);
procedure setVerticalHeaderItem(self : access Inst;row_P : int;item_P : access QtAda6.QtGui.QStandardItem.Inst'Class);
procedure setVerticalHeaderLabels(self : access Inst;labels_P : Sequence_str);
procedure sort(self : access Inst;column_P : int;order_P : access QtAda6.QtCore.Qt.SortOrder.Inst'Class);
function sortRole(self : access Inst) return int;
function supportedDropActions(self : access Inst) return access QtAda6.QtCore.Qt.DropAction.Inst'Class;
function takeColumn(self : access Inst;column_P : int) return List_QtAda6_QtGui_QStandardItem;
function takeHorizontalHeaderItem(self : access Inst;column_P : int) return access QtAda6.QtGui.QStandardItem.Inst'Class;
function takeItem(self : access Inst;row_P : int;column_P : int) return access QtAda6.QtGui.QStandardItem.Inst'Class;
function takeRow(self : access Inst;row_P : int) return List_QtAda6_QtGui_QStandardItem;
function takeVerticalHeaderItem(self : access Inst;row_P : int) return access QtAda6.QtGui.QStandardItem.Inst'Class;
function verticalHeaderItem(self : access Inst;row_P : int) return access QtAda6.QtGui.QStandardItem.Inst'Class;
end QtAda6.QtGui.QStandardItemModel;
