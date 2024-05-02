-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qmodelindex.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QPersistentModelIndex;
limited with QtAda6.QtCore.Qt.ItemFlag;
limited with QtAda6.QtCore.QAbstractItemModel;
package QtAda6.QtCore.QModelIndex is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (QModelIndex_P : access QtAda6.QtCore.QModelIndex.Inst'Class) return Class;
   function Create (QModelIndex_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class) return Class;
   procedure U_copy_U;
   function column (self : access Inst) return int;
   function constInternalPointer (self : access Inst) return int;
   function data (self : access Inst; role_P : int := 0) return Any;
   function flags (self : access Inst) return access QtAda6.QtCore.Qt.ItemFlag.Inst'Class;
   function internalId (self : access Inst) return int;
   function internalPointer (self : access Inst) return int;
   function isValid (self : access Inst) return bool;
   function model (self : access Inst) return access QtAda6.QtCore.QAbstractItemModel.Inst'Class;
   function parent (self : access Inst) return access QtAda6.QtCore.QModelIndex.Inst'Class;
   function row (self : access Inst) return int;
   function sibling
     (self : access Inst; row_P : int; column_P : int) return access QtAda6.QtCore.QModelIndex.Inst'Class;
   function siblingAtColumn (self : access Inst; column_P : int) return access QtAda6.QtCore.QModelIndex.Inst'Class;
   function siblingAtRow (self : access Inst; row_P : int) return access QtAda6.QtCore.QModelIndex.Inst'Class;
end QtAda6.QtCore.QModelIndex;
