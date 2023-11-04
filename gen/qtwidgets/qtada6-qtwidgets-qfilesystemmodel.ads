-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qfilesystemmodel.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
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
limited with QtAda6.QtCore.QEvent;
limited with QtAda6.QtGui.QIcon;
limited with QtAda6.QtCore.QFileInfo;
limited with QtAda6.QtCore.QDir.Filter;
limited with QtAda6.QtCore.Qt.ItemFlag;
limited with QtAda6.QtCore.Qt.Orientation;
limited with QtAda6.QtGui.QAbstractFileIconProvider;
limited with QtAda6.QtCore.QDateTime;
limited with QtAda6.QtWidgets.QFileSystemModel.Option;
limited with QtAda6.QtCore.QByteArray;
limited with QtAda6.QtCore.QDir;
limited with QtAda6.QtCore.Qt.SortOrder;
limited with QtAda6.QtCore.QTimerEvent;
with QtAda6.QtCore.QAbstractItemModel;
package QtAda6.QtWidgets.QFileSystemModel is
   type ClassVar_Signal is access Any;
   type Optional_QtAda6_QtCore_QObject is access Any;
   type Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex is access Any;
   type Sequence_QtAda6_QtCore_QModelIndex is access Any;
   type List_str is access Any;
   type Dict_int_QtAda6_QtCore_QByteArray is access Any;
   type Sequence_str is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new QtAda6.QtCore.QAbstractItemModel.Inst with null record;
   procedure Finalize (Self : in out Class);
   directoryLoaded : ClassVar_Signal;-- directoryLoaded(QString)
   fileRenamed     : ClassVar_Signal;-- fileRenamed(QString,QString,QString)
   rootPathChanged : ClassVar_Signal;-- rootPathChanged(QString)
   function Create (parent_P : Optional_QtAda6_QtCore_QObject) return Class;
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
   function event (self : access Inst; event_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   procedure fetchMore
     (self : access Inst; parent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex);
   function fileIcon
     (self : access Inst; index_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex)
      return access QtAda6.QtGui.QIcon.Inst'Class;
   function fileInfo
     (self : access Inst; index_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex)
      return access QtAda6.QtCore.QFileInfo.Inst'Class;
   function fileName
     (self : access Inst; index_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex) return str;
   function filePath
     (self : access Inst; index_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex) return str;
   function filter (self : access Inst) return access QtAda6.QtCore.QDir.Filter.Inst'Class;
   function flags
     (self : access Inst; index_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex)
      return access QtAda6.QtCore.Qt.ItemFlag.Inst'Class;
   function hasChildren
     (self : access Inst; parent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex) return bool;
   function headerData
     (self : access Inst; section_P : int; orientation_P : access QtAda6.QtCore.Qt.Orientation.Inst'Class; role_P : int)
      return Any;
   function iconProvider (self : access Inst) return access QtAda6.QtGui.QAbstractFileIconProvider.Inst'Class;
   function index (self : access Inst; path_P : str; column_P : int) return access QtAda6.QtCore.QModelIndex.Inst'Class;
   function index
     (self     : access Inst; row_P : int; column_P : int;
      parent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex)
      return access QtAda6.QtCore.QModelIndex.Inst'Class;
   function isDir
     (self : access Inst; index_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex) return bool;
   function isReadOnly (self : access Inst) return bool;
   function lastModified
     (self : access Inst; index_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex)
      return access QtAda6.QtCore.QDateTime.Inst'Class;
   function mimeData
     (self : access Inst; indexes_P : Sequence_QtAda6_QtCore_QModelIndex)
      return access QtAda6.QtCore.QMimeData.Inst'Class;
   function mimeTypes (self : access Inst) return List_str;
   function mkdir
     (self : access Inst; parent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex; name_P : str)
      return access QtAda6.QtCore.QModelIndex.Inst'Class;
   function myComputer (self : access Inst; role_P : int) return Any;
   function nameFilterDisables (self : access Inst) return bool;
   function nameFilters (self : access Inst) return List_str;
   function options (self : access Inst) return access QtAda6.QtWidgets.QFileSystemModel.Option.Inst'Class;
   function parent (self : access Inst) return access QtAda6.QtCore.QObject.Inst'Class;
   function parent
     (self : access Inst; child_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex)
      return access QtAda6.QtCore.QModelIndex.Inst'Class;
   function remove
     (self : access Inst; index_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex) return bool;
   function resolveSymlinks (self : access Inst) return bool;
   function rmdir
     (self : access Inst; index_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex) return bool;
   function roleNames (self : access Inst) return Dict_int_QtAda6_QtCore_QByteArray;
   function rootDirectory (self : access Inst) return access QtAda6.QtCore.QDir.Inst'Class;
   function rootPath (self : access Inst) return str;
   function rowCount
     (self : access Inst; parent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex) return int;
   function setData
     (self : access Inst; index_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex; value_P : Any;
      role_P : int) return bool;
   procedure setFilter (self : access Inst; filters_P : access QtAda6.QtCore.QDir.Filter.Inst'Class);
   procedure setIconProvider
     (self : access Inst; provider_P : access QtAda6.QtGui.QAbstractFileIconProvider.Inst'Class);
   procedure setNameFilterDisables (self : access Inst; enable_P : bool);
   procedure setNameFilters (self : access Inst; filters_P : Sequence_str);
   procedure setOption
     (self : access Inst; option_P : access QtAda6.QtWidgets.QFileSystemModel.Option.Inst'Class; on_P : bool);
   procedure setOptions (self : access Inst; options_P : access QtAda6.QtWidgets.QFileSystemModel.Option.Inst'Class);
   procedure setReadOnly (self : access Inst; enable_P : bool);
   procedure setResolveSymlinks (self : access Inst; enable_P : bool);
   function setRootPath (self : access Inst; path_P : str) return access QtAda6.QtCore.QModelIndex.Inst'Class;
   function sibling
     (self  : access Inst; row_P : int; column_P : int;
      idx_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex)
      return access QtAda6.QtCore.QModelIndex.Inst'Class;
   function size
     (self : access Inst; index_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex) return int;
   procedure sort (self : access Inst; column_P : int; order_P : access QtAda6.QtCore.Qt.SortOrder.Inst'Class);
   function supportedDropActions (self : access Inst) return access QtAda6.QtCore.Qt.DropAction.Inst'Class;
   function testOption
     (self : access Inst; option_P : access QtAda6.QtWidgets.QFileSystemModel.Option.Inst'Class) return bool;
   procedure timerEvent (self : access Inst; event_P : access QtAda6.QtCore.QTimerEvent.Inst'Class);
   function type_K
     (self : access Inst; index_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex) return str;
end QtAda6.QtWidgets.QFileSystemModel;
