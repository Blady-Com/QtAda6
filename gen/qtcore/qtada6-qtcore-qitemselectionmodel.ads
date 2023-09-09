-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qitemselectionmodel.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QAbstractItemModel;
limited with QtAda6.QtCore.QModelIndex;
limited with QtAda6.QtCore.QPersistentModelIndex;
limited with QtAda6.QtCore.QItemSelection;
limited with QtAda6.QtCore.QItemSelectionModel.SelectionFlag;
with QtAda6.QtCore.QObject;
package QtAda6.QtCore.QItemSelectionModel is
   type ClassVar_Signal is access Any;
   type Optional_QtAda6_QtCore_QAbstractItemModel is access Any;
   type Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex is access Any;
   type List_QtAda6_QtCore_QModelIndex is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new QtAda6.QtCore.QObject.Inst with null record;
   procedure Finalize (Self : in out Class);
   currentChanged       : ClassVar_Signal;-- currentChanged(QModelIndex,QModelIndex)
   currentColumnChanged : ClassVar_Signal;-- currentColumnChanged(QModelIndex,QModelIndex)
   currentRowChanged    : ClassVar_Signal;-- currentRowChanged(QModelIndex,QModelIndex)
   modelChanged         : ClassVar_Signal;-- modelChanged(QAbstractItemModel*)
   selectionChanged     : ClassVar_Signal;-- selectionChanged(QItemSelection,QItemSelection)
   function Create
     (model_P : access QtAda6.QtCore.QAbstractItemModel.Inst'Class; parent_P : access QtAda6.QtCore.QObject.Inst'Class)
      return Class;
   function Create (model_P : Optional_QtAda6_QtCore_QAbstractItemModel) return Class;
   procedure clear (self : access Inst);
   procedure clearCurrentIndex (self : access Inst);
   procedure clearSelection (self : access Inst);
   function columnIntersectsSelection
     (self     : access Inst; column_P : int;
      parent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex) return bool;
   function currentIndex (self : access Inst) return access QtAda6.QtCore.QModelIndex.Inst'Class;
   procedure emitSelectionChanged
     (self           : access Inst; newSelection_P : access QtAda6.QtCore.QItemSelection.Inst'Class;
      oldSelection_P : access QtAda6.QtCore.QItemSelection.Inst'Class);
   function hasSelection (self : access Inst) return bool;
   function isColumnSelected
     (self     : access Inst; column_P : int;
      parent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex) return bool;
   function isRowSelected
     (self : access Inst; row_P : int; parent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex)
      return bool;
   function isSelected
     (self : access Inst; index_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex) return bool;
   function model (self : access Inst) return access QtAda6.QtCore.QAbstractItemModel.Inst'Class;
   procedure reset (self : access Inst);
   function rowIntersectsSelection
     (self : access Inst; row_P : int; parent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex)
      return bool;
   procedure select_K
     (self      : access Inst; index_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex;
      command_P : access QtAda6.QtCore.QItemSelectionModel.SelectionFlag.Inst'Class);
   procedure select_K
     (self      : access Inst; selection_P : access QtAda6.QtCore.QItemSelection.Inst'Class;
      command_P : access QtAda6.QtCore.QItemSelectionModel.SelectionFlag.Inst'Class);
   function selectedColumns (self : access Inst; row_P : int) return List_QtAda6_QtCore_QModelIndex;
   function selectedIndexes (self : access Inst) return List_QtAda6_QtCore_QModelIndex;
   function selectedRows (self : access Inst; column_P : int) return List_QtAda6_QtCore_QModelIndex;
   function selection_F (self : access Inst) return access QtAda6.QtCore.QItemSelection.Inst'Class;
   procedure setCurrentIndex
     (self      : access Inst; index_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex;
      command_P : access QtAda6.QtCore.QItemSelectionModel.SelectionFlag.Inst'Class);
   procedure setModel (self : access Inst; model_P : access QtAda6.QtCore.QAbstractItemModel.Inst'Class);
end QtAda6.QtCore.QItemSelectionModel;
