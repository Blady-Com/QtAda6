-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qitemselectionmodel.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QAbstractItemModel;
limited with QtAda6.QtCore.QPersistentModelIndex;
limited with QtAda6.QtCore.QItemSelection;
limited with QtAda6.QtCore.QItemSelectionModel.SelectionFlag;
with QtAda6.QtCore.QObject;
with QtAda6.QtCore.Signal;
with QtAda6.QtCore.QModelIndex;
package QtAda6.QtCore.QItemSelectionModel is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtCore.QObject.Inst with null record;
   subtype CLASSVAR_Signal is QtAda6.QtCore.Signal.Class;
   type UNION_QtAda6_QtCore_QModelIndexQtAda6_QtCore_QPersistentModelIndex is new Any;
   subtype LIST_QtAda6_QtCore_QModelIndex is QtAda6.QtCore.QModelIndex.Class_Array;
   procedure Finalize (Self : in out Class);
   function currentChanged (self : access Inst) return CLASSVAR_Signal;-- currentChanged(QModelIndex,QModelIndex)
   function currentColumnChanged
     (self : access Inst) return CLASSVAR_Signal;-- currentColumnChanged(QModelIndex,QModelIndex)
   function currentRowChanged (self : access Inst) return CLASSVAR_Signal;-- currentRowChanged(QModelIndex,QModelIndex)
   function modelChanged (self : access Inst) return CLASSVAR_Signal;-- modelChanged(QAbstractItemModel*)
   function selectionChanged
     (self : access Inst) return CLASSVAR_Signal;-- selectionChanged(QItemSelection,QItemSelection)
   function Create
     (model_P : access QtAda6.QtCore.QAbstractItemModel.Inst'Class; parent_P : access QtAda6.QtCore.QObject.Inst'Class)
      return Class;
   function Create (model_P : access QtAda6.QtCore.QAbstractItemModel.Inst'Class := null) return Class;
   procedure clear (self : access Inst);
   procedure clearCurrentIndex (self : access Inst);
   procedure clearSelection (self : access Inst);
   function columnIntersectsSelection
     (self     : access Inst; column_P : int;
      parent_P : UNION_QtAda6_QtCore_QModelIndexQtAda6_QtCore_QPersistentModelIndex := null) return bool;
   function currentIndex (self : access Inst) return access QtAda6.QtCore.QModelIndex.Inst'Class;
   procedure emitSelectionChanged
     (self           : access Inst; newSelection_P : access QtAda6.QtCore.QItemSelection.Inst'Class;
      oldSelection_P : access QtAda6.QtCore.QItemSelection.Inst'Class);
   function hasSelection (self : access Inst) return bool;
   function isColumnSelected
     (self     : access Inst; column_P : int;
      parent_P : UNION_QtAda6_QtCore_QModelIndexQtAda6_QtCore_QPersistentModelIndex := null) return bool;
   function isRowSelected
     (self     : access Inst; row_P : int;
      parent_P : UNION_QtAda6_QtCore_QModelIndexQtAda6_QtCore_QPersistentModelIndex := null) return bool;
   function isSelected
     (self : access Inst; index_P : UNION_QtAda6_QtCore_QModelIndexQtAda6_QtCore_QPersistentModelIndex) return bool;
   function model (self : access Inst) return access QtAda6.QtCore.QAbstractItemModel.Inst'Class;
   procedure reset (self : access Inst);
   function rowIntersectsSelection
     (self     : access Inst; row_P : int;
      parent_P : UNION_QtAda6_QtCore_QModelIndexQtAda6_QtCore_QPersistentModelIndex := null) return bool;
   procedure select_K
     (self      : access Inst; index_P : UNION_QtAda6_QtCore_QModelIndexQtAda6_QtCore_QPersistentModelIndex;
      command_P : access QtAda6.QtCore.QItemSelectionModel.SelectionFlag.Inst'Class);
   procedure select_K
     (self      : access Inst; selection_P : access QtAda6.QtCore.QItemSelection.Inst'Class;
      command_P : access QtAda6.QtCore.QItemSelectionModel.SelectionFlag.Inst'Class);
   function selectedColumns (self : access Inst; row_P : int := 0) return LIST_QtAda6_QtCore_QModelIndex;
   function selectedIndexes (self : access Inst) return LIST_QtAda6_QtCore_QModelIndex;
   function selectedRows (self : access Inst; column_P : int := 0) return LIST_QtAda6_QtCore_QModelIndex;
   function selection_F (self : access Inst) return access QtAda6.QtCore.QItemSelection.Inst'Class;
   procedure setCurrentIndex
     (self      : access Inst; index_P : UNION_QtAda6_QtCore_QModelIndexQtAda6_QtCore_QPersistentModelIndex;
      command_P : access QtAda6.QtCore.QItemSelectionModel.SelectionFlag.Inst'Class);
   procedure setModel (self : access Inst; model_P : access QtAda6.QtCore.QAbstractItemModel.Inst'Class);
end QtAda6.QtCore.QItemSelectionModel;
