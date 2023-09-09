-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qabstracttablemodel.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QObject;
limited with QtAda6.QtCore.QMimeData;
limited with QtAda6.QtCore.Qt.DropAction;
limited with QtAda6.QtCore.QModelIndex;
limited with QtAda6.QtCore.QPersistentModelIndex;
limited with QtAda6.QtCore.Qt.ItemFlag;
with QtAda6.QtCore.QAbstractItemModel;
package QtAda6.QtCore.QAbstractTableModel is
   type Optional_QtAda6_QtCore_QObject is access Any;
   type Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new QtAda6.QtCore.QAbstractItemModel.Inst with null record;
   procedure Finalize (Self : in out Class);
   function Create (parent_P : Optional_QtAda6_QtCore_QObject) return Class;
   function dropMimeData
     (self     : access Inst; data_P : access QtAda6.QtCore.QMimeData.Inst'Class;
      action_P : access QtAda6.QtCore.Qt.DropAction.Inst'Class; row_P : int; column_P : int;
      parent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex) return bool;
   function flags
     (self : access Inst; index_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex)
      return access QtAda6.QtCore.Qt.ItemFlag.Inst'Class;
   function hasChildren
     (self : access Inst; parent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex) return bool;
   function index
     (self     : access Inst; row_P : int; column_P : int;
      parent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex)
      return access QtAda6.QtCore.QModelIndex.Inst'Class;
   function parent (self : access Inst) return access QtAda6.QtCore.QObject.Inst'Class;
   function parent
     (self : access Inst; child_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex)
      return access QtAda6.QtCore.QModelIndex.Inst'Class;
   function sibling
     (self  : access Inst; row_P : int; column_P : int;
      idx_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex)
      return access QtAda6.QtCore.QModelIndex.Inst'Class;
end QtAda6.QtCore.QAbstractTableModel;
