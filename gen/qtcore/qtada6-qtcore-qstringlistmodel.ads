-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qstringlistmodel.ads
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
limited with QtAda6.QtCore.Qt.ItemFlag;
limited with QtAda6.QtCore.Qt.SortOrder;
limited with QtAda6.QtCore.Qt.DropAction;
with QtAda6.QtCore.QAbstractListModel;
package QtAda6.QtCore.QStringListModel is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtCore.QAbstractListModel.Inst with null record;
   type SEQUENCE_str is array (Positive range <>) of str;
   type DICT_int_Any is record
      C0 : int;
      C1 : Any;
   end record;
   type LIST_str is array (Positive range <>) of str;
   procedure Finalize (Self : in out Class);
   function Create (parent_P : access QtAda6.QtCore.QObject.Inst'Class := null) return Class;
   function Create (strings_P : SEQUENCE_str; parent_P : access QtAda6.QtCore.QObject.Inst'Class := null) return Class;
   function clearItemData (self : access Inst; index_P : access QtAda6.QtCore.QModelIndex.Inst'Class) return bool;
   function clearItemData
     (self : access Inst; index_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class) return bool;
   function data
     (self : access Inst; index_P : access QtAda6.QtCore.QModelIndex.Inst'Class; role_P : int := 0) return Any;
   function data
     (self : access Inst; index_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class; role_P : int := 0)
      return Any;
   function flags
     (self : access Inst; index_P : access QtAda6.QtCore.QModelIndex.Inst'Class)
      return access QtAda6.QtCore.Qt.ItemFlag.Inst'Class;
   function flags
     (self : access Inst; index_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class)
      return access QtAda6.QtCore.Qt.ItemFlag.Inst'Class;
   function insertRows
     (self : access Inst; row_P : int; count_P : int; parent_P : access QtAda6.QtCore.QModelIndex.Inst'Class := null)
      return bool;
   function insertRows
     (self     : access Inst; row_P : int; count_P : int;
      parent_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class := null) return bool;
   function itemData (self : access Inst; index_P : access QtAda6.QtCore.QModelIndex.Inst'Class) return DICT_int_Any;
   function itemData
     (self : access Inst; index_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class) return DICT_int_Any;
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
   function removeRows
     (self : access Inst; row_P : int; count_P : int; parent_P : access QtAda6.QtCore.QModelIndex.Inst'Class := null)
      return bool;
   function removeRows
     (self     : access Inst; row_P : int; count_P : int;
      parent_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class := null) return bool;
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
   procedure setStringList (self : access Inst; strings_P : SEQUENCE_str);
   function sibling
     (self : access Inst; row_P : int; column_P : int; idx_P : access QtAda6.QtCore.QModelIndex.Inst'Class)
      return access QtAda6.QtCore.QModelIndex.Inst'Class;
   function sibling
     (self : access Inst; row_P : int; column_P : int; idx_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class)
      return access QtAda6.QtCore.QModelIndex.Inst'Class;
   procedure sort (self : access Inst; column_P : int; order_P : access QtAda6.QtCore.Qt.SortOrder.Inst'Class := null);
   function stringList (self : access Inst) return LIST_str;
   function supportedDropActions (self : access Inst) return access QtAda6.QtCore.Qt.DropAction.Inst'Class;
end QtAda6.QtCore.QStringListModel;
