-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qidentityproxymodel.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QObject;
limited with QtAda6.QtCore.QModelIndex;
limited with QtAda6.QtCore.QPersistentModelIndex;
limited with QtAda6.QtCore.QMimeData;
limited with QtAda6.QtCore.Qt.DropAction;
limited with QtAda6.QtCore.Qt.Orientation;
limited with QtAda6.QtCore.QItemSelection;
limited with QtAda6.QtCore.Qt.MatchFlag;
limited with QtAda6.QtCore.QAbstractItemModel;
with QtAda6.QtCore.QAbstractProxyModel;
package QtAda6.QtCore.QIdentityProxyModel is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtCore.QAbstractProxyModel.Inst with null record;
   subtype LIST_QtAda6_QtCore_QModelIndex is QtAda6.QtCore.QModelIndex.Class_Array;
   procedure Finalize (Self : in out Class);
   function Create (parent_P : access QtAda6.QtCore.QObject.Inst'Class := null) return Class;
   function columnCount (self : access Inst; parent_P : access QtAda6.QtCore.QModelIndex.Inst'Class := null) return int;
   function columnCount
     (self : access Inst; parent_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class := null) return int;
   function dropMimeData
     (self     : access Inst; data_P : access QtAda6.QtCore.QMimeData.Inst'Class;
      action_P : access QtAda6.QtCore.Qt.DropAction.Inst'Class; row_P : int; column_P : int;
      parent_P : access QtAda6.QtCore.QModelIndex.Inst'Class) return bool;
   function dropMimeData
     (self     : access Inst; data_P : access QtAda6.QtCore.QMimeData.Inst'Class;
      action_P : access QtAda6.QtCore.Qt.DropAction.Inst'Class; row_P : int; column_P : int;
      parent_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class) return bool;
   function headerData
     (self   : access Inst; section_P : int; orientation_P : access QtAda6.QtCore.Qt.Orientation.Inst'Class;
      role_P : int := 0) return Any;
   function index
     (self : access Inst; row_P : int; column_P : int; parent_P : access QtAda6.QtCore.QModelIndex.Inst'Class := null)
      return access QtAda6.QtCore.QModelIndex.Inst'Class;
   function index
     (self     : access Inst; row_P : int; column_P : int;
      parent_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class := null)
      return access QtAda6.QtCore.QModelIndex.Inst'Class;
   function insertColumns
     (self : access Inst; column_P : int; count_P : int; parent_P : access QtAda6.QtCore.QModelIndex.Inst'Class := null)
      return bool;
   function insertColumns
     (self     : access Inst; column_P : int; count_P : int;
      parent_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class := null) return bool;
   function insertRows
     (self : access Inst; row_P : int; count_P : int; parent_P : access QtAda6.QtCore.QModelIndex.Inst'Class := null)
      return bool;
   function insertRows
     (self     : access Inst; row_P : int; count_P : int;
      parent_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class := null) return bool;
   function mapFromSource
     (self : access Inst; sourceIndex_P : access QtAda6.QtCore.QModelIndex.Inst'Class)
      return access QtAda6.QtCore.QModelIndex.Inst'Class;
   function mapFromSource
     (self : access Inst; sourceIndex_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class)
      return access QtAda6.QtCore.QModelIndex.Inst'Class;
   function mapSelectionFromSource
     (self : access Inst; selection_P : access QtAda6.QtCore.QItemSelection.Inst'Class)
      return access QtAda6.QtCore.QItemSelection.Inst'Class;
   function mapSelectionToSource
     (self : access Inst; selection_P : access QtAda6.QtCore.QItemSelection.Inst'Class)
      return access QtAda6.QtCore.QItemSelection.Inst'Class;
   function mapToSource
     (self : access Inst; proxyIndex_P : access QtAda6.QtCore.QModelIndex.Inst'Class)
      return access QtAda6.QtCore.QModelIndex.Inst'Class;
   function mapToSource
     (self : access Inst; proxyIndex_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class)
      return access QtAda6.QtCore.QModelIndex.Inst'Class;
   function match
     (self   : access Inst; start_P : access QtAda6.QtCore.QModelIndex.Inst'Class; role_P : int; value_P : Any;
      hits_P : int := 0; flags_P : access QtAda6.QtCore.Qt.MatchFlag.Inst'Class := null)
      return LIST_QtAda6_QtCore_QModelIndex;
   function match
     (self : access Inst; start_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class; role_P : int; value_P : Any;
      hits_P : int := 0; flags_P : access QtAda6.QtCore.Qt.MatchFlag.Inst'Class := null)
      return LIST_QtAda6_QtCore_QModelIndex;
   function moveColumns
     (self    : access Inst; sourceParent_P : access QtAda6.QtCore.QModelIndex.Inst'Class; sourceColumn_P : int;
      count_P : int; destinationParent_P : access QtAda6.QtCore.QModelIndex.Inst'Class; destinationChild_P : int)
      return bool;
   function moveColumns
     (self : access Inst; sourceParent_P : access QtAda6.QtCore.QModelIndex.Inst'Class; sourceColumn_P : int;
      count_P            : int; destinationParent_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class;
      destinationChild_P : int) return bool;
   function moveColumns
     (self : access Inst; sourceParent_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class; sourceColumn_P : int;
      count_P : int; destinationParent_P : access QtAda6.QtCore.QModelIndex.Inst'Class; destinationChild_P : int)
      return bool;
   function moveColumns
     (self : access Inst; sourceParent_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class; sourceColumn_P : int;
      count_P            : int; destinationParent_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class;
      destinationChild_P : int) return bool;
   function moveRows
     (self    : access Inst; sourceParent_P : access QtAda6.QtCore.QModelIndex.Inst'Class; sourceRow_P : int;
      count_P : int; destinationParent_P : access QtAda6.QtCore.QModelIndex.Inst'Class; destinationChild_P : int)
      return bool;
   function moveRows
     (self               : access Inst; sourceParent_P : access QtAda6.QtCore.QModelIndex.Inst'Class; sourceRow_P : int;
      count_P            : int; destinationParent_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class;
      destinationChild_P : int) return bool;
   function moveRows
     (self    : access Inst; sourceParent_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class; sourceRow_P : int;
      count_P : int; destinationParent_P : access QtAda6.QtCore.QModelIndex.Inst'Class; destinationChild_P : int)
      return bool;
   function moveRows
     (self : access Inst; sourceParent_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class; sourceRow_P : int;
      count_P            : int; destinationParent_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class;
      destinationChild_P : int) return bool;
   function parent (self : access Inst) return access QtAda6.QtCore.QObject.Inst'Class;
   function parent
     (self : access Inst; child_P : access QtAda6.QtCore.QModelIndex.Inst'Class)
      return access QtAda6.QtCore.QModelIndex.Inst'Class;
   function parent
     (self : access Inst; child_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class)
      return access QtAda6.QtCore.QModelIndex.Inst'Class;
   function removeColumns
     (self : access Inst; column_P : int; count_P : int; parent_P : access QtAda6.QtCore.QModelIndex.Inst'Class := null)
      return bool;
   function removeColumns
     (self     : access Inst; column_P : int; count_P : int;
      parent_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class := null) return bool;
   function removeRows
     (self : access Inst; row_P : int; count_P : int; parent_P : access QtAda6.QtCore.QModelIndex.Inst'Class := null)
      return bool;
   function removeRows
     (self     : access Inst; row_P : int; count_P : int;
      parent_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class := null) return bool;
   function rowCount (self : access Inst; parent_P : access QtAda6.QtCore.QModelIndex.Inst'Class := null) return int;
   function rowCount
     (self : access Inst; parent_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class := null) return int;
   procedure setSourceModel (self : access Inst; sourceModel_P : access QtAda6.QtCore.QAbstractItemModel.Inst'Class);
   function sibling
     (self : access Inst; row_P : int; column_P : int; idx_P : access QtAda6.QtCore.QModelIndex.Inst'Class)
      return access QtAda6.QtCore.QModelIndex.Inst'Class;
   function sibling
     (self : access Inst; row_P : int; column_P : int; idx_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class)
      return access QtAda6.QtCore.QModelIndex.Inst'Class;
end QtAda6.QtCore.QIdentityProxyModel;
