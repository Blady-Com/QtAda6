-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qitemselectionrange.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QModelIndex;
limited with QtAda6.QtCore.QPersistentModelIndex;
limited with QtAda6.QtCore.QAbstractItemModel;
package QtAda6.QtCore.QItemSelectionRange is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   subtype LIST_QtAda6_QtCore_QModelIndex is QtAda6.QtCore.QModelIndex.Class_Array;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (QItemSelectionRange_P : access QtAda6.QtCore.QItemSelectionRange.Inst'Class) return Class;
   function Create (index_P : access QtAda6.QtCore.QModelIndex.Inst'Class) return Class;
   function Create (index_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class) return Class;
   function Create
     (topL_P : access QtAda6.QtCore.QModelIndex.Inst'Class; bottomR_P : access QtAda6.QtCore.QModelIndex.Inst'Class)
      return Class;
   function Create
     (topL_P    : access QtAda6.QtCore.QModelIndex.Inst'Class;
      bottomR_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class) return Class;
   function Create
     (topL_P    : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class;
      bottomR_P : access QtAda6.QtCore.QModelIndex.Inst'Class) return Class;
   function Create
     (topL_P    : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class;
      bottomR_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class) return Class;
   procedure U_copy_U;
   function bottom (self : access Inst) return int;
   function bottomRight (self : access Inst) return access QtAda6.QtCore.QPersistentModelIndex.Inst'Class;
   function contains (self : access Inst; index_P : access QtAda6.QtCore.QModelIndex.Inst'Class) return bool;
   function contains (self : access Inst; index_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class) return bool;
   function contains
     (self : access Inst; row_P : int; column_P : int; parentIndex_P : access QtAda6.QtCore.QModelIndex.Inst'Class)
      return bool;
   function contains
     (self          : access Inst; row_P : int; column_P : int;
      parentIndex_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class) return bool;
   function height (self : access Inst) return int;
   function indexes (self : access Inst) return LIST_QtAda6_QtCore_QModelIndex;
   function intersected
     (self : access Inst; other_P : access QtAda6.QtCore.QItemSelectionRange.Inst'Class)
      return access QtAda6.QtCore.QItemSelectionRange.Inst'Class;
   function intersects (self : access Inst; other_P : access QtAda6.QtCore.QItemSelectionRange.Inst'Class) return bool;
   function isEmpty (self : access Inst) return bool;
   function isValid (self : access Inst) return bool;
   function left (self : access Inst) return int;
   function model (self : access Inst) return access QtAda6.QtCore.QAbstractItemModel.Inst'Class;
   function parent (self : access Inst) return access QtAda6.QtCore.QModelIndex.Inst'Class;
   function right (self : access Inst) return int;
   procedure swap (self : access Inst; other_P : access QtAda6.QtCore.QItemSelectionRange.Inst'Class);
   function top (self : access Inst) return int;
   function topLeft (self : access Inst) return access QtAda6.QtCore.QPersistentModelIndex.Inst'Class;
   function width (self : access Inst) return int;
end QtAda6.QtCore.QItemSelectionRange;
