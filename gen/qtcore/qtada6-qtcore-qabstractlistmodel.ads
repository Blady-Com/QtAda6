-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qabstractlistmodel.ads
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
limited with QtAda6.QtCore.Qt.ItemFlag;
with QtAda6.QtCore.QAbstractItemModel;
package QtAda6.QtCore.QAbstractListModel is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtCore.QAbstractItemModel.Inst with null record;
   procedure Finalize (Self : in out Class);
   function Create (parent_P : access QtAda6.QtCore.QObject.Inst'Class := null) return Class;
   function columnCount (self : access Inst; parent_P : access QtAda6.QtCore.QModelIndex.Inst'Class) return int;
   function columnCount
     (self : access Inst; parent_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class) return int;
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
   function hasChildren (self : access Inst; parent_P : access QtAda6.QtCore.QModelIndex.Inst'Class) return bool;
   function hasChildren
     (self : access Inst; parent_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class) return bool;
   function index
     (self     : access Inst; row_P : int; column_P : int := 0;
      parent_P : access QtAda6.QtCore.QModelIndex.Inst'Class := null)
      return access QtAda6.QtCore.QModelIndex.Inst'Class;
   function index
     (self     : access Inst; row_P : int; column_P : int := 0;
      parent_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class := null)
      return access QtAda6.QtCore.QModelIndex.Inst'Class;
   function parent (self : access Inst) return access QtAda6.QtCore.QObject.Inst'Class;
   function parent
     (self : access Inst; child_P : access QtAda6.QtCore.QModelIndex.Inst'Class)
      return access QtAda6.QtCore.QModelIndex.Inst'Class;
   function parent
     (self : access Inst; child_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class)
      return access QtAda6.QtCore.QModelIndex.Inst'Class;
   function sibling
     (self : access Inst; row_P : int; column_P : int; idx_P : access QtAda6.QtCore.QModelIndex.Inst'Class)
      return access QtAda6.QtCore.QModelIndex.Inst'Class;
   function sibling
     (self : access Inst; row_P : int; column_P : int; idx_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class)
      return access QtAda6.QtCore.QModelIndex.Inst'Class;
end QtAda6.QtCore.QAbstractListModel;
