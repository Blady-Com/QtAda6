-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qabstractitemmodel.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QModelIndex;
limited with QtAda6.QtCore.QPersistentModelIndex;
limited with QtAda6.QtCore.QMimeData;
limited with QtAda6.QtCore.Qt.DropAction;
limited with QtAda6.QtCore.QAbstractItemModel.CheckIndexOption;
limited with QtAda6.QtCore.QDataStream;
limited with QtAda6.QtCore.Qt.ItemFlag;
limited with QtAda6.QtCore.Qt.Orientation;
limited with QtAda6.QtCore.Qt.MatchFlag;
limited with QtAda6.QtCore.QByteArray;
limited with QtAda6.QtCore.Qt.SortOrder;
limited with QtAda6.QtCore.QSize;
with QtAda6.QtCore.QObject;
package QtAda6.QtCore.QAbstractItemModel is
   type ClassVar_Signal is access Any;
   type Optional_QtAda6_QtCore_QObject is access Any;
   type Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex is access Any;
   type Sequence_QtAda6_QtCore_QModelIndex is access Any;
   type Dict_int_Any is access Any;
   type List_QtAda6_QtCore_QModelIndex is access Any;
   type List_str is access Any;
   type Dict_int_QtAda6_QtCore_QByteArray is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new QtAda6.QtCore.QObject.Inst with null record;
   procedure Finalize (Self : in out Class);
   columnsAboutToBeInserted : ClassVar_Signal;-- columnsAboutToBeInserted(QModelIndex,int,int)
   columnsAboutToBeMoved    : ClassVar_Signal;-- columnsAboutToBeMoved(QModelIndex,int,int,QModelIndex,int)
   columnsAboutToBeRemoved  : ClassVar_Signal;-- columnsAboutToBeRemoved(QModelIndex,int,int)
   columnsInserted          : ClassVar_Signal;-- columnsInserted(QModelIndex,int,int)
   columnsMoved             : ClassVar_Signal;-- columnsMoved(QModelIndex,int,int,QModelIndex,int)
   columnsRemoved           : ClassVar_Signal;-- columnsRemoved(QModelIndex,int,int)
   dataChanged              : ClassVar_Signal;-- dataChanged(QModelIndex,QModelIndex,QList<int>)
   headerDataChanged        : ClassVar_Signal;-- headerDataChanged(Qt::Orientation,int,int)
   layoutAboutToBeChanged   : ClassVar_Signal;-- layoutAboutToBeChanged()
   layoutChanged            : ClassVar_Signal;-- layoutChanged()
   modelAboutToBeReset      : ClassVar_Signal;-- modelAboutToBeReset()
   modelReset               : ClassVar_Signal;-- modelReset()
   rowsAboutToBeInserted    : ClassVar_Signal;-- rowsAboutToBeInserted(QModelIndex,int,int)
   rowsAboutToBeMoved       : ClassVar_Signal;-- rowsAboutToBeMoved(QModelIndex,int,int,QModelIndex,int)
   rowsAboutToBeRemoved     : ClassVar_Signal;-- rowsAboutToBeRemoved(QModelIndex,int,int)
   rowsInserted             : ClassVar_Signal;-- rowsInserted(QModelIndex,int,int)
   rowsMoved                : ClassVar_Signal;-- rowsMoved(QModelIndex,int,int,QModelIndex,int)
   rowsRemoved              : ClassVar_Signal;-- rowsRemoved(QModelIndex,int,int)
   function Create (parent_P : Optional_QtAda6_QtCore_QObject) return Class;
   procedure beginInsertColumns
     (self : access Inst; parent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex; first_P : int;
      last_P : int);
   procedure beginInsertRows
     (self : access Inst; parent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex; first_P : int;
      last_P : int);
   function beginMoveColumns
     (self : access Inst; sourceParent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex;
      sourceFirst_P       : int; sourceLast_P : int;
      destinationParent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex;
      destinationColumn_P : int) return bool;
   function beginMoveRows
     (self : access Inst; sourceParent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex;
      sourceFirst_P       : int; sourceLast_P : int;
      destinationParent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex; destinationRow_P : int)
      return bool;
   procedure beginRemoveColumns
     (self : access Inst; parent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex; first_P : int;
      last_P : int);
   procedure beginRemoveRows
     (self : access Inst; parent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex; first_P : int;
      last_P : int);
   procedure beginResetModel (self : access Inst);
   function buddy
     (self : access Inst; index_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex)
      return access QtAda6.QtCore.QModelIndex.Inst'Class;
   function canDropMimeData
     (self     : access Inst; data_P : access QtAda6.QtCore.QMimeData.Inst'Class;
      action_P : access QtAda6.QtCore.Qt.DropAction.Inst'Class; row_P : int; column_P : int;
      parent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex) return bool;
   function canFetchMore
     (self : access Inst; parent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex) return bool;
   procedure changePersistentIndex
     (self : access Inst; from_U_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex;
      to_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex);
   procedure changePersistentIndexList
     (self : access Inst; from_U_P : Sequence_QtAda6_QtCore_QModelIndex; to_P : Sequence_QtAda6_QtCore_QModelIndex);
   function checkIndex_F
     (self      : access Inst; index_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex;
      options_P : access QtAda6.QtCore.QAbstractItemModel.CheckIndexOption.Inst'Class) return bool;
   function clearItemData
     (self : access Inst; index_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex) return bool;
   function columnCount
     (self : access Inst; parent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex) return int;
   function createIndex
     (self : access Inst; row_P : int; column_P : int; id_P : int) return access QtAda6.QtCore.QModelIndex.Inst'Class;
   function createIndex
     (self : access Inst; row_P : int; column_P : int; ptr_P : Object)
      return access QtAda6.QtCore.QModelIndex.Inst'Class;
   function data
     (self : access Inst; index_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex; role_P : int)
      return Any;
   function decodeData
     (self     : access Inst; row_P : int; column_P : int;
      parent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex;
      stream_P : access QtAda6.QtCore.QDataStream.Inst'Class) return bool;
   function dropMimeData
     (self     : access Inst; data_P : access QtAda6.QtCore.QMimeData.Inst'Class;
      action_P : access QtAda6.QtCore.Qt.DropAction.Inst'Class; row_P : int; column_P : int;
      parent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex) return bool;
   procedure encodeData
     (self     : access Inst; indexes_P : Sequence_QtAda6_QtCore_QModelIndex;
      stream_P : access QtAda6.QtCore.QDataStream.Inst'Class);
   procedure endInsertColumns (self : access Inst);
   procedure endInsertRows (self : access Inst);
   procedure endMoveColumns (self : access Inst);
   procedure endMoveRows (self : access Inst);
   procedure endRemoveColumns (self : access Inst);
   procedure endRemoveRows (self : access Inst);
   procedure endResetModel (self : access Inst);
   procedure fetchMore
     (self : access Inst; parent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex);
   function flags
     (self : access Inst; index_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex)
      return access QtAda6.QtCore.Qt.ItemFlag.Inst'Class;
   function hasChildren
     (self : access Inst; parent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex) return bool;
   function hasIndex
     (self     : access Inst; row_P : int; column_P : int;
      parent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex) return bool;
   function headerData
     (self : access Inst; section_P : int; orientation_P : access QtAda6.QtCore.Qt.Orientation.Inst'Class; role_P : int)
      return Any;
   function index_F
     (self     : access Inst; row_P : int; column_P : int;
      parent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex)
      return access QtAda6.QtCore.QModelIndex.Inst'Class;
   function insertColumn
     (self     : access Inst; column_P : int;
      parent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex) return bool;
   function insertColumns
     (self     : access Inst; column_P : int; count_P : int;
      parent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex) return bool;
   function insertRow
     (self : access Inst; row_P : int; parent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex)
      return bool;
   function insertRows
     (self     : access Inst; row_P : int; count_P : int;
      parent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex) return bool;
   function itemData
     (self : access Inst; index_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex)
      return Dict_int_Any;
   function match
     (self : access Inst; start_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex; role_P : int;
      value_P : Any; hits_P : int; flags_P : access QtAda6.QtCore.Qt.MatchFlag.Inst'Class)
      return List_QtAda6_QtCore_QModelIndex;
   function mimeData
     (self : access Inst; indexes_P : Sequence_QtAda6_QtCore_QModelIndex)
      return access QtAda6.QtCore.QMimeData.Inst'Class;
   function mimeTypes (self : access Inst) return List_str;
   function moveColumn
     (self : access Inst; sourceParent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex;
      sourceColumn_P : int; destinationParent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex;
      destinationChild_P : int) return bool;
   function moveColumns
     (self : access Inst; sourceParent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex;
      sourceColumn_P      : int; count_P : int;
      destinationParent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex;
      destinationChild_P  : int) return bool;
   function moveRow
     (self : access Inst; sourceParent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex;
      sourceRow_P : int; destinationParent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex;
      destinationChild_P : int) return bool;
   function moveRows
     (self : access Inst; sourceParent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex;
      sourceRow_P         : int; count_P : int;
      destinationParent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex;
      destinationChild_P  : int) return bool;
   function parent (self : access Inst) return access QtAda6.QtCore.QObject.Inst'Class;
   function parent
     (self : access Inst; child_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex)
      return access QtAda6.QtCore.QModelIndex.Inst'Class;
   function persistentIndexList (self : access Inst) return List_QtAda6_QtCore_QModelIndex;
   function removeColumn
     (self     : access Inst; column_P : int;
      parent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex) return bool;
   function removeColumns
     (self     : access Inst; column_P : int; count_P : int;
      parent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex) return bool;
   function removeRow
     (self : access Inst; row_P : int; parent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex)
      return bool;
   function removeRows
     (self     : access Inst; row_P : int; count_P : int;
      parent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex) return bool;
   procedure resetInternalData (self : access Inst);
   procedure revert (self : access Inst);
   function roleNames (self : access Inst) return Dict_int_QtAda6_QtCore_QByteArray;
   function rowCount
     (self : access Inst; parent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex) return int;
   function setData
     (self : access Inst; index_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex; value_P : Any;
      role_P : int) return bool;
   function setHeaderData
     (self    : access Inst; section_P : int; orientation_P : access QtAda6.QtCore.Qt.Orientation.Inst'Class;
      value_P : Any; role_P : int) return bool;
   function setItemData
     (self    : access Inst; index_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex;
      roles_P : Dict_int_Any) return bool;
   function sibling
     (self  : access Inst; row_P : int; column_P : int;
      idx_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex)
      return access QtAda6.QtCore.QModelIndex.Inst'Class;
   procedure sort (self : access Inst; column_P : int; order_P : access QtAda6.QtCore.Qt.SortOrder.Inst'Class);
   function span
     (self : access Inst; index_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex)
      return access QtAda6.QtCore.QSize.Inst'Class;
   function submit (self : access Inst) return bool;
   function supportedDragActions (self : access Inst) return access QtAda6.QtCore.Qt.DropAction.Inst'Class;
   function supportedDropActions (self : access Inst) return access QtAda6.QtCore.Qt.DropAction.Inst'Class;
end QtAda6.QtCore.QAbstractItemModel;
