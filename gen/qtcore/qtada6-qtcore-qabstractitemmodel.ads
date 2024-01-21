-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qabstractitemmodel.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
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
with QtAda6.QtCore.Signal;
with QtAda6.QtCore.QModelIndex;
package QtAda6.QtCore.QAbstractItemModel is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtCore.QObject.Inst with null record;
   subtype CLASSVAR_Signal is QtAda6.QtCore.Signal.Class;
   type UNION_QtAda6_QtCore_QModelIndexQtAda6_QtCore_QPersistentModelIndex is new Any;
   subtype SEQUENCE_QtAda6_QtCore_QModelIndex is QtAda6.QtCore.QModelIndex.Class_Array;
   type DICT_intAny is new Any;
   subtype LIST_QtAda6_QtCore_QModelIndex is QtAda6.QtCore.QModelIndex.Class_Array;
   type LIST_str is array (Positive range <>) of str;
   type DICT_intQtAda6_QtCore_QByteArray is new Any;
   procedure Finalize (Self : in out Class);
   function columnsAboutToBeInserted
     (self : access Inst) return CLASSVAR_Signal;-- columnsAboutToBeInserted(QModelIndex,int,int)
   function columnsAboutToBeMoved
     (self : access Inst) return CLASSVAR_Signal;-- columnsAboutToBeMoved(QModelIndex,int,int,QModelIndex,int)
   function columnsAboutToBeRemoved
     (self : access Inst) return CLASSVAR_Signal;-- columnsAboutToBeRemoved(QModelIndex,int,int)
   function columnsInserted (self : access Inst) return CLASSVAR_Signal;-- columnsInserted(QModelIndex,int,int)
   function columnsMoved
     (self : access Inst) return CLASSVAR_Signal;-- columnsMoved(QModelIndex,int,int,QModelIndex,int)
   function columnsRemoved (self : access Inst) return CLASSVAR_Signal;-- columnsRemoved(QModelIndex,int,int)
   function dataChanged (self : access Inst) return CLASSVAR_Signal;-- dataChanged(QModelIndex,QModelIndex,QList<int>)
   function headerDataChanged (self : access Inst) return CLASSVAR_Signal;-- headerDataChanged(Qt::Orientation,int,int)
   function layoutAboutToBeChanged (self : access Inst) return CLASSVAR_Signal;-- layoutAboutToBeChanged()
   function layoutChanged (self : access Inst) return CLASSVAR_Signal;-- layoutChanged()
   function modelAboutToBeReset (self : access Inst) return CLASSVAR_Signal;-- modelAboutToBeReset()
   function modelReset (self : access Inst) return CLASSVAR_Signal;-- modelReset()
   function rowsAboutToBeInserted
     (self : access Inst) return CLASSVAR_Signal;-- rowsAboutToBeInserted(QModelIndex,int,int)
   function rowsAboutToBeMoved
     (self : access Inst) return CLASSVAR_Signal;-- rowsAboutToBeMoved(QModelIndex,int,int,QModelIndex,int)
   function rowsAboutToBeRemoved
     (self : access Inst) return CLASSVAR_Signal;-- rowsAboutToBeRemoved(QModelIndex,int,int)
   function rowsInserted (self : access Inst) return CLASSVAR_Signal;-- rowsInserted(QModelIndex,int,int)
   function rowsMoved (self : access Inst) return CLASSVAR_Signal;-- rowsMoved(QModelIndex,int,int,QModelIndex,int)
   function rowsRemoved (self : access Inst) return CLASSVAR_Signal;-- rowsRemoved(QModelIndex,int,int)
   function Create (parent_P : access QtAda6.QtCore.QObject.Inst'Class := null) return Class;
   procedure beginInsertColumns
     (self : access Inst; parent_P : UNION_QtAda6_QtCore_QModelIndexQtAda6_QtCore_QPersistentModelIndex; first_P : int;
      last_P : int);
   procedure beginInsertRows
     (self : access Inst; parent_P : UNION_QtAda6_QtCore_QModelIndexQtAda6_QtCore_QPersistentModelIndex; first_P : int;
      last_P : int);
   function beginMoveColumns
     (self : access Inst; sourceParent_P : UNION_QtAda6_QtCore_QModelIndexQtAda6_QtCore_QPersistentModelIndex;
      sourceFirst_P       : int; sourceLast_P : int;
      destinationParent_P : UNION_QtAda6_QtCore_QModelIndexQtAda6_QtCore_QPersistentModelIndex;
      destinationColumn_P : int) return bool;
   function beginMoveRows
     (self : access Inst; sourceParent_P : UNION_QtAda6_QtCore_QModelIndexQtAda6_QtCore_QPersistentModelIndex;
      sourceFirst_P       : int; sourceLast_P : int;
      destinationParent_P : UNION_QtAda6_QtCore_QModelIndexQtAda6_QtCore_QPersistentModelIndex; destinationRow_P : int)
      return bool;
   procedure beginRemoveColumns
     (self : access Inst; parent_P : UNION_QtAda6_QtCore_QModelIndexQtAda6_QtCore_QPersistentModelIndex; first_P : int;
      last_P : int);
   procedure beginRemoveRows
     (self : access Inst; parent_P : UNION_QtAda6_QtCore_QModelIndexQtAda6_QtCore_QPersistentModelIndex; first_P : int;
      last_P : int);
   procedure beginResetModel (self : access Inst);
   function buddy
     (self : access Inst; index_P : UNION_QtAda6_QtCore_QModelIndexQtAda6_QtCore_QPersistentModelIndex)
      return access QtAda6.QtCore.QModelIndex.Inst'Class;
   function canDropMimeData
     (self     : access Inst; data_P : access QtAda6.QtCore.QMimeData.Inst'Class;
      action_P : access QtAda6.QtCore.Qt.DropAction.Inst'Class; row_P : int; column_P : int;
      parent_P : UNION_QtAda6_QtCore_QModelIndexQtAda6_QtCore_QPersistentModelIndex) return bool;
   function canFetchMore
     (self : access Inst; parent_P : UNION_QtAda6_QtCore_QModelIndexQtAda6_QtCore_QPersistentModelIndex) return bool;
   procedure changePersistentIndex
     (self : access Inst; from_U_P : UNION_QtAda6_QtCore_QModelIndexQtAda6_QtCore_QPersistentModelIndex;
      to_P : UNION_QtAda6_QtCore_QModelIndexQtAda6_QtCore_QPersistentModelIndex);
   procedure changePersistentIndexList
     (self : access Inst; from_U_P : SEQUENCE_QtAda6_QtCore_QModelIndex; to_P : SEQUENCE_QtAda6_QtCore_QModelIndex);
   function checkIndex_F
     (self      : access Inst; index_P : UNION_QtAda6_QtCore_QModelIndexQtAda6_QtCore_QPersistentModelIndex;
      options_P : access QtAda6.QtCore.QAbstractItemModel.CheckIndexOption.Inst'Class := null) return bool;
   function clearItemData
     (self : access Inst; index_P : UNION_QtAda6_QtCore_QModelIndexQtAda6_QtCore_QPersistentModelIndex) return bool;
   function columnCount
     (self : access Inst; parent_P : UNION_QtAda6_QtCore_QModelIndexQtAda6_QtCore_QPersistentModelIndex := null)
      return int;
   function createIndex
     (self : access Inst; row_P : int; column_P : int; id_P : int := 0)
      return access QtAda6.QtCore.QModelIndex.Inst'Class;
   function createIndex
     (self : access Inst; row_P : int; column_P : int; ptr_P : access Object'Class)
      return access QtAda6.QtCore.QModelIndex.Inst'Class;
   function data
     (self   : access Inst; index_P : UNION_QtAda6_QtCore_QModelIndexQtAda6_QtCore_QPersistentModelIndex;
      role_P : int := 0) return Any;
   function decodeData
     (self     : access Inst; row_P : int; column_P : int;
      parent_P : UNION_QtAda6_QtCore_QModelIndexQtAda6_QtCore_QPersistentModelIndex;
      stream_P : access QtAda6.QtCore.QDataStream.Inst'Class) return bool;
   function dropMimeData
     (self     : access Inst; data_P : access QtAda6.QtCore.QMimeData.Inst'Class;
      action_P : access QtAda6.QtCore.Qt.DropAction.Inst'Class; row_P : int; column_P : int;
      parent_P : UNION_QtAda6_QtCore_QModelIndexQtAda6_QtCore_QPersistentModelIndex) return bool;
   procedure encodeData
     (self     : access Inst; indexes_P : SEQUENCE_QtAda6_QtCore_QModelIndex;
      stream_P : access QtAda6.QtCore.QDataStream.Inst'Class);
   procedure endInsertColumns (self : access Inst);
   procedure endInsertRows (self : access Inst);
   procedure endMoveColumns (self : access Inst);
   procedure endMoveRows (self : access Inst);
   procedure endRemoveColumns (self : access Inst);
   procedure endRemoveRows (self : access Inst);
   procedure endResetModel (self : access Inst);
   procedure fetchMore
     (self : access Inst; parent_P : UNION_QtAda6_QtCore_QModelIndexQtAda6_QtCore_QPersistentModelIndex);
   function flags
     (self : access Inst; index_P : UNION_QtAda6_QtCore_QModelIndexQtAda6_QtCore_QPersistentModelIndex)
      return access QtAda6.QtCore.Qt.ItemFlag.Inst'Class;
   function hasChildren
     (self : access Inst; parent_P : UNION_QtAda6_QtCore_QModelIndexQtAda6_QtCore_QPersistentModelIndex := null)
      return bool;
   function hasIndex
     (self     : access Inst; row_P : int; column_P : int;
      parent_P : UNION_QtAda6_QtCore_QModelIndexQtAda6_QtCore_QPersistentModelIndex := null) return bool;
   function headerData
     (self   : access Inst; section_P : int; orientation_P : access QtAda6.QtCore.Qt.Orientation.Inst'Class;
      role_P : int := 0) return Any;
   function index_F
     (self     : access Inst; row_P : int; column_P : int;
      parent_P : UNION_QtAda6_QtCore_QModelIndexQtAda6_QtCore_QPersistentModelIndex := null)
      return access QtAda6.QtCore.QModelIndex.Inst'Class;
   function insertColumn
     (self     : access Inst; column_P : int;
      parent_P : UNION_QtAda6_QtCore_QModelIndexQtAda6_QtCore_QPersistentModelIndex := null) return bool;
   function insertColumns
     (self     : access Inst; column_P : int; count_P : int;
      parent_P : UNION_QtAda6_QtCore_QModelIndexQtAda6_QtCore_QPersistentModelIndex := null) return bool;
   function insertRow
     (self     : access Inst; row_P : int;
      parent_P : UNION_QtAda6_QtCore_QModelIndexQtAda6_QtCore_QPersistentModelIndex := null) return bool;
   function insertRows
     (self     : access Inst; row_P : int; count_P : int;
      parent_P : UNION_QtAda6_QtCore_QModelIndexQtAda6_QtCore_QPersistentModelIndex := null) return bool;
   function itemData
     (self : access Inst; index_P : UNION_QtAda6_QtCore_QModelIndexQtAda6_QtCore_QPersistentModelIndex)
      return DICT_intAny;
   function match
     (self    : access Inst; start_P : UNION_QtAda6_QtCore_QModelIndexQtAda6_QtCore_QPersistentModelIndex; role_P : int;
      value_P : Any; hits_P : int := 0; flags_P : access QtAda6.QtCore.Qt.MatchFlag.Inst'Class := null)
      return LIST_QtAda6_QtCore_QModelIndex;
   function mimeData
     (self : access Inst; indexes_P : SEQUENCE_QtAda6_QtCore_QModelIndex)
      return access QtAda6.QtCore.QMimeData.Inst'Class;
   function mimeTypes (self : access Inst) return LIST_str;
   function moveColumn
     (self : access Inst; sourceParent_P : UNION_QtAda6_QtCore_QModelIndexQtAda6_QtCore_QPersistentModelIndex;
      sourceColumn_P : int; destinationParent_P : UNION_QtAda6_QtCore_QModelIndexQtAda6_QtCore_QPersistentModelIndex;
      destinationChild_P : int) return bool;
   function moveColumns
     (self : access Inst; sourceParent_P : UNION_QtAda6_QtCore_QModelIndexQtAda6_QtCore_QPersistentModelIndex;
      sourceColumn_P      : int; count_P : int;
      destinationParent_P : UNION_QtAda6_QtCore_QModelIndexQtAda6_QtCore_QPersistentModelIndex;
      destinationChild_P  : int) return bool;
   function moveRow
     (self : access Inst; sourceParent_P : UNION_QtAda6_QtCore_QModelIndexQtAda6_QtCore_QPersistentModelIndex;
      sourceRow_P : int; destinationParent_P : UNION_QtAda6_QtCore_QModelIndexQtAda6_QtCore_QPersistentModelIndex;
      destinationChild_P : int) return bool;
   function moveRows
     (self : access Inst; sourceParent_P : UNION_QtAda6_QtCore_QModelIndexQtAda6_QtCore_QPersistentModelIndex;
      sourceRow_P         : int; count_P : int;
      destinationParent_P : UNION_QtAda6_QtCore_QModelIndexQtAda6_QtCore_QPersistentModelIndex;
      destinationChild_P  : int) return bool;
   function parent (self : access Inst) return access QtAda6.QtCore.QObject.Inst'Class;
   function parent
     (self : access Inst; child_P : UNION_QtAda6_QtCore_QModelIndexQtAda6_QtCore_QPersistentModelIndex)
      return access QtAda6.QtCore.QModelIndex.Inst'Class;
   function persistentIndexList (self : access Inst) return LIST_QtAda6_QtCore_QModelIndex;
   function removeColumn
     (self     : access Inst; column_P : int;
      parent_P : UNION_QtAda6_QtCore_QModelIndexQtAda6_QtCore_QPersistentModelIndex := null) return bool;
   function removeColumns
     (self     : access Inst; column_P : int; count_P : int;
      parent_P : UNION_QtAda6_QtCore_QModelIndexQtAda6_QtCore_QPersistentModelIndex := null) return bool;
   function removeRow
     (self     : access Inst; row_P : int;
      parent_P : UNION_QtAda6_QtCore_QModelIndexQtAda6_QtCore_QPersistentModelIndex := null) return bool;
   function removeRows
     (self     : access Inst; row_P : int; count_P : int;
      parent_P : UNION_QtAda6_QtCore_QModelIndexQtAda6_QtCore_QPersistentModelIndex := null) return bool;
   procedure resetInternalData (self : access Inst);
   procedure revert (self : access Inst);
   function roleNames (self : access Inst) return DICT_intQtAda6_QtCore_QByteArray;
   function rowCount
     (self : access Inst; parent_P : UNION_QtAda6_QtCore_QModelIndexQtAda6_QtCore_QPersistentModelIndex := null)
      return int;
   function setData
     (self   : access Inst; index_P : UNION_QtAda6_QtCore_QModelIndexQtAda6_QtCore_QPersistentModelIndex; value_P : Any;
      role_P : int := 0) return bool;
   function setHeaderData
     (self    : access Inst; section_P : int; orientation_P : access QtAda6.QtCore.Qt.Orientation.Inst'Class;
      value_P : Any; role_P : int := 0) return bool;
   function setItemData
     (self    : access Inst; index_P : UNION_QtAda6_QtCore_QModelIndexQtAda6_QtCore_QPersistentModelIndex;
      roles_P : DICT_intAny) return bool;
   function sibling
     (self  : access Inst; row_P : int; column_P : int;
      idx_P : UNION_QtAda6_QtCore_QModelIndexQtAda6_QtCore_QPersistentModelIndex)
      return access QtAda6.QtCore.QModelIndex.Inst'Class;
   procedure sort (self : access Inst; column_P : int; order_P : access QtAda6.QtCore.Qt.SortOrder.Inst'Class := null);
   function span
     (self : access Inst; index_P : UNION_QtAda6_QtCore_QModelIndexQtAda6_QtCore_QPersistentModelIndex)
      return access QtAda6.QtCore.QSize.Inst'Class;
   function submit (self : access Inst) return bool;
   function supportedDragActions (self : access Inst) return access QtAda6.QtCore.Qt.DropAction.Inst'Class;
   function supportedDropActions (self : access Inst) return access QtAda6.QtCore.Qt.DropAction.Inst'Class;
end QtAda6.QtCore.QAbstractItemModel;
