-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qsortfilterproxymodel.ads
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
limited with QtAda6.QtCore.Qt.CaseSensitivity;
limited with QtAda6.QtCore.QRegularExpression;
limited with QtAda6.QtCore.Qt.ItemFlag;
limited with QtAda6.QtCore.Qt.Orientation;
limited with QtAda6.QtCore.QItemSelection;
limited with QtAda6.QtCore.Qt.MatchFlag;
limited with QtAda6.QtCore.QAbstractItemModel;
limited with QtAda6.QtCore.Qt.SortOrder;
limited with QtAda6.QtCore.QSize;
with QtAda6.QtCore.QAbstractProxyModel;
with QtAda6.QtCore.Signal;
package QtAda6.QtCore.QSortFilterProxyModel is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtCore.QAbstractProxyModel.Inst with null record;
   subtype LIST_QtAda6_QtCore_QModelIndex is QtAda6.QtCore.QModelIndex.Class_Array;
   subtype SEQUENCE_QtAda6_QtCore_QModelIndex is QtAda6.QtCore.QModelIndex.Class_Array;
   type LIST_str is array (Positive range <>) of str;
   procedure Finalize (Self : in out Class);
   function autoAcceptChildRowsChanged
     (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- autoAcceptChildRowsChanged(bool)
   function dynamicSortFilterChanged
     (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- dynamicSortFilterChanged(bool)
   function filterCaseSensitivityChanged
     (self : access Inst)
      return access QtAda6.QtCore.Signal.Inst'Class;-- filterCaseSensitivityChanged(Qt::CaseSensitivity)
   function filterRoleChanged
     (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- filterRoleChanged(int)
   function recursiveFilteringEnabledChanged
     (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- recursiveFilteringEnabledChanged(bool)
   function sortCaseSensitivityChanged
     (self : access Inst)
      return access QtAda6.QtCore.Signal.Inst'Class;-- sortCaseSensitivityChanged(Qt::CaseSensitivity)
   function sortLocaleAwareChanged
     (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- sortLocaleAwareChanged(bool)
   function sortRoleChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- sortRoleChanged(int)
   function Create (parent_P : access QtAda6.QtCore.QObject.Inst'Class := null) return Class;
   function autoAcceptChildRows (self : access Inst) return bool;
   function buddy
     (self : access Inst; index_P : access QtAda6.QtCore.QModelIndex.Inst'Class)
      return access QtAda6.QtCore.QModelIndex.Inst'Class;
   function buddy
     (self : access Inst; index_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class)
      return access QtAda6.QtCore.QModelIndex.Inst'Class;
   function canFetchMore (self : access Inst; parent_P : access QtAda6.QtCore.QModelIndex.Inst'Class) return bool;
   function canFetchMore
     (self : access Inst; parent_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class) return bool;
   function columnCount (self : access Inst; parent_P : access QtAda6.QtCore.QModelIndex.Inst'Class := null) return int;
   function columnCount
     (self : access Inst; parent_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class := null) return int;
   function data
     (self : access Inst; index_P : access QtAda6.QtCore.QModelIndex.Inst'Class; role_P : int := 0) return Any;
   function data
     (self : access Inst; index_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class; role_P : int := 0)
      return Any;
   function dropMimeData
     (self     : access Inst; data_P : access QtAda6.QtCore.QMimeData.Inst'Class;
      action_P : access QtAda6.QtCore.Qt.DropAction.Inst'Class; row_P : int; column_P : int;
      parent_P : access QtAda6.QtCore.QModelIndex.Inst'Class) return bool;
   function dropMimeData
     (self     : access Inst; data_P : access QtAda6.QtCore.QMimeData.Inst'Class;
      action_P : access QtAda6.QtCore.Qt.DropAction.Inst'Class; row_P : int; column_P : int;
      parent_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class) return bool;
   function dynamicSortFilter (self : access Inst) return bool;
   procedure fetchMore (self : access Inst; parent_P : access QtAda6.QtCore.QModelIndex.Inst'Class);
   procedure fetchMore (self : access Inst; parent_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class);
   function filterAcceptsColumn
     (self : access Inst; source_column_P : int; source_parent_P : access QtAda6.QtCore.QModelIndex.Inst'Class)
      return bool;
   function filterAcceptsColumn
     (self            : access Inst; source_column_P : int;
      source_parent_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class) return bool;
   function filterAcceptsRow
     (self : access Inst; source_row_P : int; source_parent_P : access QtAda6.QtCore.QModelIndex.Inst'Class)
      return bool;
   function filterAcceptsRow
     (self : access Inst; source_row_P : int; source_parent_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class)
      return bool;
   function filterCaseSensitivity (self : access Inst) return access QtAda6.QtCore.Qt.CaseSensitivity.Inst'Class;
   function filterKeyColumn (self : access Inst) return int;
   function filterRegularExpression (self : access Inst) return access QtAda6.QtCore.QRegularExpression.Inst'Class;
   function filterRole (self : access Inst) return int;
   function flags
     (self : access Inst; index_P : access QtAda6.QtCore.QModelIndex.Inst'Class)
      return access QtAda6.QtCore.Qt.ItemFlag.Inst'Class;
   function flags
     (self : access Inst; index_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class)
      return access QtAda6.QtCore.Qt.ItemFlag.Inst'Class;
   function hasChildren
     (self : access Inst; parent_P : access QtAda6.QtCore.QModelIndex.Inst'Class := null) return bool;
   function hasChildren
     (self : access Inst; parent_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class := null) return bool;
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
   procedure invalidate (self : access Inst);
   procedure invalidateColumnsFilter (self : access Inst);
   procedure invalidateFilter (self : access Inst);
   procedure invalidateRowsFilter (self : access Inst);
   function isRecursiveFilteringEnabled (self : access Inst) return bool;
   function isSortLocaleAware (self : access Inst) return bool;
   function lessThan
     (self           : access Inst; source_left_P : access QtAda6.QtCore.QModelIndex.Inst'Class;
      source_right_P : access QtAda6.QtCore.QModelIndex.Inst'Class) return bool;
   function lessThan
     (self           : access Inst; source_left_P : access QtAda6.QtCore.QModelIndex.Inst'Class;
      source_right_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class) return bool;
   function lessThan
     (self           : access Inst; source_left_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class;
      source_right_P : access QtAda6.QtCore.QModelIndex.Inst'Class) return bool;
   function lessThan
     (self           : access Inst; source_left_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class;
      source_right_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class) return bool;
   function mapFromSource
     (self : access Inst; sourceIndex_P : access QtAda6.QtCore.QModelIndex.Inst'Class)
      return access QtAda6.QtCore.QModelIndex.Inst'Class;
   function mapFromSource
     (self : access Inst; sourceIndex_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class)
      return access QtAda6.QtCore.QModelIndex.Inst'Class;
   function mapSelectionFromSource
     (self : access Inst; sourceSelection_P : access QtAda6.QtCore.QItemSelection.Inst'Class)
      return access QtAda6.QtCore.QItemSelection.Inst'Class;
   function mapSelectionToSource
     (self : access Inst; proxySelection_P : access QtAda6.QtCore.QItemSelection.Inst'Class)
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
   function mimeData
     (self : access Inst; indexes_P : SEQUENCE_QtAda6_QtCore_QModelIndex)
      return access QtAda6.QtCore.QMimeData.Inst'Class;
   function mimeTypes (self : access Inst) return LIST_str;
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
   procedure setAutoAcceptChildRows (self : access Inst; accept_K_P : bool);
   function setData
     (self : access Inst; index_P : access QtAda6.QtCore.QModelIndex.Inst'Class; value_P : Any; role_P : int := 0)
      return bool;
   function setData
     (self   : access Inst; index_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class; value_P : Any;
      role_P : int := 0) return bool;
   procedure setDynamicSortFilter (self : access Inst; enable_P : bool);
   procedure setFilterCaseSensitivity (self : access Inst; cs_P : access QtAda6.QtCore.Qt.CaseSensitivity.Inst'Class);
   procedure setFilterFixedString (self : access Inst; pattern_P : str);
   procedure setFilterKeyColumn (self : access Inst; column_P : int);
   procedure setFilterRegularExpression (self : access Inst; pattern_P : str);
   procedure setFilterRegularExpression
     (self : access Inst; regularExpression_P : access QtAda6.QtCore.QRegularExpression.Inst'Class);
-- procedure setFilterRegularExpression(self : access Inst;regularExpression_P : str);
   procedure setFilterRole (self : access Inst; role_P : int);
   procedure setFilterWildcard (self : access Inst; pattern_P : str);
   function setHeaderData
     (self    : access Inst; section_P : int; orientation_P : access QtAda6.QtCore.Qt.Orientation.Inst'Class;
      value_P : Any; role_P : int := 0) return bool;
   procedure setRecursiveFilteringEnabled (self : access Inst; recursive_P : bool);
   procedure setSortCaseSensitivity (self : access Inst; cs_P : access QtAda6.QtCore.Qt.CaseSensitivity.Inst'Class);
   procedure setSortLocaleAware (self : access Inst; on_P : bool);
   procedure setSortRole (self : access Inst; role_P : int);
   procedure setSourceModel (self : access Inst; sourceModel_P : access QtAda6.QtCore.QAbstractItemModel.Inst'Class);
   function sibling
     (self : access Inst; row_P : int; column_P : int; idx_P : access QtAda6.QtCore.QModelIndex.Inst'Class)
      return access QtAda6.QtCore.QModelIndex.Inst'Class;
   function sibling
     (self : access Inst; row_P : int; column_P : int; idx_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class)
      return access QtAda6.QtCore.QModelIndex.Inst'Class;
   procedure sort (self : access Inst; column_P : int; order_P : access QtAda6.QtCore.Qt.SortOrder.Inst'Class := null);
   function sortCaseSensitivity (self : access Inst) return access QtAda6.QtCore.Qt.CaseSensitivity.Inst'Class;
   function sortColumn (self : access Inst) return int;
   function sortOrder (self : access Inst) return access QtAda6.QtCore.Qt.SortOrder.Inst'Class;
   function sortRole (self : access Inst) return int;
   function span
     (self : access Inst; index_P : access QtAda6.QtCore.QModelIndex.Inst'Class)
      return access QtAda6.QtCore.QSize.Inst'Class;
   function span
     (self : access Inst; index_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class)
      return access QtAda6.QtCore.QSize.Inst'Class;
   function supportedDropActions (self : access Inst) return access QtAda6.QtCore.Qt.DropAction.Inst'Class;
end QtAda6.QtCore.QSortFilterProxyModel;
