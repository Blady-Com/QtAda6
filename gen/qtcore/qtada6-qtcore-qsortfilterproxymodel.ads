-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qsortfilterproxymodel.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
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
package QtAda6.QtCore.QSortFilterProxyModel is
   type ClassVar_Signal is access Any;
   type Optional_QtAda6_QtCore_QObject is access Any;
   type Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex is access Any;
   type List_QtAda6_QtCore_QModelIndex is access Any;
   type Sequence_QtAda6_QtCore_QModelIndex is access Any;
   type List_str is access Any;
   type Union_QtAda6_QtCore_QRegularExpression_str is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new QtAda6.QtCore.QAbstractProxyModel.Inst with null record;
   procedure Finalize (Self : in out Class);
   autoAcceptChildRowsChanged       : ClassVar_Signal;-- autoAcceptChildRowsChanged(bool)
   dynamicSortFilterChanged         : ClassVar_Signal;-- dynamicSortFilterChanged(bool)
   filterCaseSensitivityChanged     : ClassVar_Signal;-- filterCaseSensitivityChanged(Qt::CaseSensitivity)
   filterRoleChanged                : ClassVar_Signal;-- filterRoleChanged(int)
   recursiveFilteringEnabledChanged : ClassVar_Signal;-- recursiveFilteringEnabledChanged(bool)
   sortCaseSensitivityChanged       : ClassVar_Signal;-- sortCaseSensitivityChanged(Qt::CaseSensitivity)
   sortLocaleAwareChanged           : ClassVar_Signal;-- sortLocaleAwareChanged(bool)
   sortRoleChanged                  : ClassVar_Signal;-- sortRoleChanged(int)
   function Create (parent_P : Optional_QtAda6_QtCore_QObject) return Class;
   function autoAcceptChildRows (self : access Inst) return bool;
   function buddy
     (self : access Inst; index_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex)
      return access QtAda6.QtCore.QModelIndex.Inst'Class;
   function canFetchMore
     (self : access Inst; parent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex) return bool;
   function columnCount
     (self : access Inst; parent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex) return int;
   function data
     (self : access Inst; index_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex; role_P : int)
      return Any;
   function dropMimeData
     (self     : access Inst; data_P : access QtAda6.QtCore.QMimeData.Inst'Class;
      action_P : access QtAda6.QtCore.Qt.DropAction.Inst'Class; row_P : int; column_P : int;
      parent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex) return bool;
   function dynamicSortFilter (self : access Inst) return bool;
   procedure fetchMore
     (self : access Inst; parent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex);
   function filterAcceptsColumn
     (self            : access Inst; source_column_P : int;
      source_parent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex) return bool;
   function filterAcceptsRow
     (self            : access Inst; source_row_P : int;
      source_parent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex) return bool;
   function filterCaseSensitivity (self : access Inst) return access QtAda6.QtCore.Qt.CaseSensitivity.Inst'Class;
   function filterKeyColumn (self : access Inst) return int;
   function filterRegularExpression (self : access Inst) return access QtAda6.QtCore.QRegularExpression.Inst'Class;
   function filterRole (self : access Inst) return int;
   function flags
     (self : access Inst; index_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex)
      return access QtAda6.QtCore.Qt.ItemFlag.Inst'Class;
   function hasChildren
     (self : access Inst; parent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex) return bool;
   function headerData
     (self : access Inst; section_P : int; orientation_P : access QtAda6.QtCore.Qt.Orientation.Inst'Class; role_P : int)
      return Any;
   function index
     (self     : access Inst; row_P : int; column_P : int;
      parent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex)
      return access QtAda6.QtCore.QModelIndex.Inst'Class;
   function insertColumns
     (self     : access Inst; column_P : int; count_P : int;
      parent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex) return bool;
   function insertRows
     (self     : access Inst; row_P : int; count_P : int;
      parent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex) return bool;
   procedure invalidate (self : access Inst);
   procedure invalidateColumnsFilter (self : access Inst);
   procedure invalidateFilter (self : access Inst);
   procedure invalidateRowsFilter (self : access Inst);
   function isRecursiveFilteringEnabled (self : access Inst) return bool;
   function isSortLocaleAware (self : access Inst) return bool;
   function lessThan
     (self           : access Inst; source_left_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex;
      source_right_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex) return bool;
   function mapFromSource
     (self : access Inst; sourceIndex_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex)
      return access QtAda6.QtCore.QModelIndex.Inst'Class;
   function mapSelectionFromSource
     (self : access Inst; sourceSelection_P : access QtAda6.QtCore.QItemSelection.Inst'Class)
      return access QtAda6.QtCore.QItemSelection.Inst'Class;
   function mapSelectionToSource
     (self : access Inst; proxySelection_P : access QtAda6.QtCore.QItemSelection.Inst'Class)
      return access QtAda6.QtCore.QItemSelection.Inst'Class;
   function mapToSource
     (self : access Inst; proxyIndex_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex)
      return access QtAda6.QtCore.QModelIndex.Inst'Class;
   function match
     (self : access Inst; start_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex; role_P : int;
      value_P : Any; hits_P : int; flags_P : access QtAda6.QtCore.Qt.MatchFlag.Inst'Class)
      return List_QtAda6_QtCore_QModelIndex;
   function mimeData
     (self : access Inst; indexes_P : Sequence_QtAda6_QtCore_QModelIndex)
      return access QtAda6.QtCore.QMimeData.Inst'Class;
   function mimeTypes (self : access Inst) return List_str;
   function parent (self : access Inst) return access QtAda6.QtCore.QObject.Inst'Class;
   function parent
     (self : access Inst; child_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex)
      return access QtAda6.QtCore.QModelIndex.Inst'Class;
   function removeColumns
     (self     : access Inst; column_P : int; count_P : int;
      parent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex) return bool;
   function removeRows
     (self     : access Inst; row_P : int; count_P : int;
      parent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex) return bool;
   function rowCount
     (self : access Inst; parent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex) return int;
   procedure setAutoAcceptChildRows (self : access Inst; accept_K_P : bool);
   function setData
     (self : access Inst; index_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex; value_P : Any;
      role_P : int) return bool;
   procedure setDynamicSortFilter (self : access Inst; enable_P : bool);
   procedure setFilterCaseSensitivity (self : access Inst; cs_P : access QtAda6.QtCore.Qt.CaseSensitivity.Inst'Class);
   procedure setFilterFixedString (self : access Inst; pattern_P : str);
   procedure setFilterKeyColumn (self : access Inst; column_P : int);
   procedure setFilterRegularExpression (self : access Inst; pattern_P : str);
   procedure setFilterRegularExpression
     (self : access Inst; regularExpression_P : Union_QtAda6_QtCore_QRegularExpression_str);
   procedure setFilterRole (self : access Inst; role_P : int);
   procedure setFilterWildcard (self : access Inst; pattern_P : str);
   function setHeaderData
     (self    : access Inst; section_P : int; orientation_P : access QtAda6.QtCore.Qt.Orientation.Inst'Class;
      value_P : Any; role_P : int) return bool;
   procedure setRecursiveFilteringEnabled (self : access Inst; recursive_P : bool);
   procedure setSortCaseSensitivity (self : access Inst; cs_P : access QtAda6.QtCore.Qt.CaseSensitivity.Inst'Class);
   procedure setSortLocaleAware (self : access Inst; on_P : bool);
   procedure setSortRole (self : access Inst; role_P : int);
   procedure setSourceModel (self : access Inst; sourceModel_P : access QtAda6.QtCore.QAbstractItemModel.Inst'Class);
   function sibling
     (self  : access Inst; row_P : int; column_P : int;
      idx_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex)
      return access QtAda6.QtCore.QModelIndex.Inst'Class;
   procedure sort (self : access Inst; column_P : int; order_P : access QtAda6.QtCore.Qt.SortOrder.Inst'Class);
   function sortCaseSensitivity (self : access Inst) return access QtAda6.QtCore.Qt.CaseSensitivity.Inst'Class;
   function sortColumn (self : access Inst) return int;
   function sortOrder (self : access Inst) return access QtAda6.QtCore.Qt.SortOrder.Inst'Class;
   function sortRole (self : access Inst) return int;
   function span
     (self : access Inst; index_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex)
      return access QtAda6.QtCore.QSize.Inst'Class;
   function supportedDropActions (self : access Inst) return access QtAda6.QtCore.Qt.DropAction.Inst'Class;
end QtAda6.QtCore.QSortFilterProxyModel;
