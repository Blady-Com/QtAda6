-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qconcatenatetablesproxymodel.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QObject;
limited with QtAda6.QtCore.QMimeData;
limited with QtAda6.QtCore.Qt.DropAction;
limited with QtAda6.QtCore.QModelIndex;
limited with QtAda6.QtCore.QPersistentModelIndex;
limited with QtAda6.QtCore.Qt.ItemFlag;
limited with QtAda6.QtCore.Qt.Orientation;
limited with QtAda6.QtCore.QSize;
with QtAda6.QtCore.QAbstractItemModel;
package QtAda6.QtCore.QConcatenateTablesProxyModel is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtCore.QAbstractItemModel.Inst with null record;
   type DICT_int_Any is record
      C0 : int;
      C1 : Any;
   end record;
   subtype SEQUENCE_QtAda6_QtCore_QModelIndex is QtAda6.QtCore.QModelIndex.Class_Array;
   type LIST_str is array (Positive range <>) of str;
   subtype LIST_QtAda6_QtCore_QAbstractItemModel is QtAda6.QtCore.QAbstractItemModel.Class_Array;
   procedure Finalize (Self : in out Class);
   function Create (parent_P : access QtAda6.QtCore.QObject.Inst'Class := null) return Class;
   procedure addSourceModel (self : access Inst; sourceModel_P : access QtAda6.QtCore.QAbstractItemModel.Inst'Class);
   function canDropMimeData
     (self     : access Inst; data_P : access QtAda6.QtCore.QMimeData.Inst'Class;
      action_P : access QtAda6.QtCore.Qt.DropAction.Inst'Class; row_P : int; column_P : int;
      parent_P : access QtAda6.QtCore.QModelIndex.Inst'Class) return bool;
   function canDropMimeData
     (self     : access Inst; data_P : access QtAda6.QtCore.QMimeData.Inst'Class;
      action_P : access QtAda6.QtCore.Qt.DropAction.Inst'Class; row_P : int; column_P : int;
      parent_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class) return bool;
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
   function flags
     (self : access Inst; index_P : access QtAda6.QtCore.QModelIndex.Inst'Class)
      return access QtAda6.QtCore.Qt.ItemFlag.Inst'Class;
   function flags
     (self : access Inst; index_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class)
      return access QtAda6.QtCore.Qt.ItemFlag.Inst'Class;
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
   function itemData
     (self : access Inst; proxyIndex_P : access QtAda6.QtCore.QModelIndex.Inst'Class) return DICT_int_Any;
   function itemData
     (self : access Inst; proxyIndex_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class) return DICT_int_Any;
   function mapFromSource
     (self : access Inst; sourceIndex_P : access QtAda6.QtCore.QModelIndex.Inst'Class)
      return access QtAda6.QtCore.QModelIndex.Inst'Class;
   function mapFromSource
     (self : access Inst; sourceIndex_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class)
      return access QtAda6.QtCore.QModelIndex.Inst'Class;
   function mapToSource
     (self : access Inst; proxyIndex_P : access QtAda6.QtCore.QModelIndex.Inst'Class)
      return access QtAda6.QtCore.QModelIndex.Inst'Class;
   function mapToSource
     (self : access Inst; proxyIndex_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class)
      return access QtAda6.QtCore.QModelIndex.Inst'Class;
   function mimeData
     (self : access Inst; indexes_P : SEQUENCE_QtAda6_QtCore_QModelIndex)
      return access QtAda6.QtCore.QMimeData.Inst'Class;
   function mimeTypes (self : access Inst) return LIST_str;
   function parent (self : access Inst) return access QtAda6.QtCore.QObject.Inst'Class;
   function parent
     (self : access Inst; index_P : access QtAda6.QtCore.QModelIndex.Inst'Class)
      return access QtAda6.QtCore.QModelIndex.Inst'Class;
   function parent
     (self : access Inst; index_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class)
      return access QtAda6.QtCore.QModelIndex.Inst'Class;
   procedure removeSourceModel (self : access Inst; sourceModel_P : access QtAda6.QtCore.QAbstractItemModel.Inst'Class);
   function rowCount (self : access Inst; parent_P : access QtAda6.QtCore.QModelIndex.Inst'Class := null) return int;
   function rowCount
     (self : access Inst; parent_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class := null) return int;
   function setData
     (self : access Inst; index_P : access QtAda6.QtCore.QModelIndex.Inst'Class; value_P : Any; role_P : int := 0)
      return bool;
   function setData
     (self   : access Inst; index_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class; value_P : Any;
      role_P : int := 0) return bool;
   function setItemData
     (self : access Inst; index_P : access QtAda6.QtCore.QModelIndex.Inst'Class; roles_P : DICT_int_Any) return bool;
   function setItemData
     (self : access Inst; index_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class; roles_P : DICT_int_Any)
      return bool;
   function sourceModels (self : access Inst) return LIST_QtAda6_QtCore_QAbstractItemModel;
   function span
     (self : access Inst; index_P : access QtAda6.QtCore.QModelIndex.Inst'Class)
      return access QtAda6.QtCore.QSize.Inst'Class;
   function span
     (self : access Inst; index_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class)
      return access QtAda6.QtCore.QSize.Inst'Class;
end QtAda6.QtCore.QConcatenateTablesProxyModel;
