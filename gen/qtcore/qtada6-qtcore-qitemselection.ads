-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qitemselection.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QModelIndex;
limited with QtAda6.QtCore.QPersistentModelIndex;
limited with QtAda6.QtCore.QItemSelectionRange;
limited with QtAda6.QtCore.QItemSelectionModel.SelectionFlag;
package QtAda6.QtCore.QItemSelection is
   type Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex is access Any;
   type Sequence_QtAda6_QtCore_QItemSelectionRange is access Any;
   type List_QtAda6_QtCore_QItemSelectionRange is access Any;
   type List_QtAda6_QtCore_QModelIndex is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (QItemSelection_P : access QtAda6.QtCore.QItemSelection.Inst'Class) return Class;
   function Create
     (topLeft_P     : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex;
      bottomRight_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex) return Class;
   function U_add_U
     (self : access Inst; arg_1_P : access QtAda6.QtCore.QItemSelection.Inst'Class)
      return access QtAda6.QtCore.QItemSelection.Inst'Class;
   procedure U_copy_U;
   function U_iadd_U
     (self : access Inst; l_P : Sequence_QtAda6_QtCore_QItemSelectionRange)
      return List_QtAda6_QtCore_QItemSelectionRange;
   function U_lshift_U
     (self : access Inst; l_P : Sequence_QtAda6_QtCore_QItemSelectionRange)
      return List_QtAda6_QtCore_QItemSelectionRange;
   procedure append (self : access Inst; arg_1_P : access QtAda6.QtCore.QItemSelectionRange.Inst'Class);
   procedure append (self : access Inst; l_P : Sequence_QtAda6_QtCore_QItemSelectionRange);
   function at_K (self : access Inst; i_P : int) return access QtAda6.QtCore.QItemSelectionRange.Inst'Class;
   function back (self : access Inst) return access QtAda6.QtCore.QItemSelectionRange.Inst'Class;
   function capacity (self : access Inst) return int;
   procedure clear (self : access Inst);
   function constData (self : access Inst) return access QtAda6.QtCore.QItemSelectionRange.Inst'Class;
   function constFirst (self : access Inst) return access QtAda6.QtCore.QItemSelectionRange.Inst'Class;
   function constLast (self : access Inst) return access QtAda6.QtCore.QItemSelectionRange.Inst'Class;
   function contains
     (self : access Inst; index_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex) return bool;
   function count (self : access Inst) return int;
   function data (self : access Inst) return access QtAda6.QtCore.QItemSelectionRange.Inst'Class;
   function empty (self : access Inst) return bool;
   function first (self : access Inst) return access QtAda6.QtCore.QItemSelectionRange.Inst'Class;
   function first (self : access Inst; n_P : int) return List_QtAda6_QtCore_QItemSelectionRange;
   function fromList
     (list_P : Sequence_QtAda6_QtCore_QItemSelectionRange) return List_QtAda6_QtCore_QItemSelectionRange;
   function fromVector
     (vector_P : Sequence_QtAda6_QtCore_QItemSelectionRange) return List_QtAda6_QtCore_QItemSelectionRange;
   function front (self : access Inst) return access QtAda6.QtCore.QItemSelectionRange.Inst'Class;
   function indexes (self : access Inst) return List_QtAda6_QtCore_QModelIndex;
   procedure insert (self : access Inst; arg_1_P : int; arg_2_P : access QtAda6.QtCore.QItemSelectionRange.Inst'Class);
   function isEmpty (self : access Inst) return bool;
   function isSharedWith (self : access Inst; other_P : Sequence_QtAda6_QtCore_QItemSelectionRange) return bool;
   function last (self : access Inst) return access QtAda6.QtCore.QItemSelectionRange.Inst'Class;
   function last (self : access Inst; n_P : int) return List_QtAda6_QtCore_QItemSelectionRange;
   function length (self : access Inst) return int;
   procedure merge
     (self      : access Inst; other_P : access QtAda6.QtCore.QItemSelection.Inst'Class;
      command_P : access QtAda6.QtCore.QItemSelectionModel.SelectionFlag.Inst'Class);
   function mid (self : access Inst; pos_P : int; len_P : int) return List_QtAda6_QtCore_QItemSelectionRange;
   procedure move (self : access Inst; from_U_P : int; to_P : int);
   procedure pop_back (self : access Inst);
   procedure pop_front (self : access Inst);
   procedure prepend (self : access Inst; arg_1_P : access QtAda6.QtCore.QItemSelectionRange.Inst'Class);
   procedure push_back (self : access Inst; arg_1_P : access QtAda6.QtCore.QItemSelectionRange.Inst'Class);
   procedure push_front (self : access Inst; arg_1_P : access QtAda6.QtCore.QItemSelectionRange.Inst'Class);
   procedure remove (self : access Inst; i_P : int; n_P : int);
   procedure removeAll (self : access Inst; arg_1_P : access QtAda6.QtCore.QItemSelectionRange.Inst'Class);
   procedure removeAt (self : access Inst; i_P : int);
   procedure removeFirst (self : access Inst);
   procedure removeLast (self : access Inst);
   procedure removeOne (self : access Inst; arg_1_P : access QtAda6.QtCore.QItemSelectionRange.Inst'Class);
   procedure reserve (self : access Inst; size_P : int);
   procedure resize (self : access Inst; size_P : int);
   procedure select_K
     (self          : access Inst; topLeft_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex;
      bottomRight_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex);
   procedure shrink_to_fit (self : access Inst);
   function size (self : access Inst) return int;
   function sliced (self : access Inst; pos_P : int) return List_QtAda6_QtCore_QItemSelectionRange;
   function sliced (self : access Inst; pos_P : int; n_P : int) return List_QtAda6_QtCore_QItemSelectionRange;
   procedure split
     (range_K_P : access QtAda6.QtCore.QItemSelectionRange.Inst'Class;
      other_P   : access QtAda6.QtCore.QItemSelectionRange.Inst'Class;
      result_P  : access QtAda6.QtCore.QItemSelection.Inst'Class);
   procedure squeeze (self : access Inst);
   procedure swap (self : access Inst; other_P : Sequence_QtAda6_QtCore_QItemSelectionRange);
   procedure swapItemsAt (self : access Inst; i_P : int; j_P : int);
   function takeAt (self : access Inst; i_P : int) return access QtAda6.QtCore.QItemSelectionRange.Inst'Class;
   function toList (self : access Inst) return List_QtAda6_QtCore_QItemSelectionRange;
   function toVector (self : access Inst) return List_QtAda6_QtCore_QItemSelectionRange;
   function value (self : access Inst; i_P : int) return access QtAda6.QtCore.QItemSelectionRange.Inst'Class;
end QtAda6.QtCore.QItemSelection;
