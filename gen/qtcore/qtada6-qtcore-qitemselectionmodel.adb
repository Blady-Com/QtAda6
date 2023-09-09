-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qitemselectionmodel.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Py; use Py;
with Ada.Unchecked_Deallocation;
with QtAda6.QtCore.QObject;
with QtAda6.QtCore.QAbstractItemModel;
with QtAda6.QtCore.QModelIndex;
with QtAda6.QtCore.QPersistentModelIndex;
with QtAda6.QtCore.QItemSelection;
with QtAda6.QtCore.QItemSelectionModel.SelectionFlag;
package body QtAda6.QtCore.QItemSelectionModel is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create
     (model_P : access QtAda6.QtCore.QAbstractItemModel.Inst'Class; parent_P : access QtAda6.QtCore.QObject.Inst'Class)
      return Class
   is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QItemSelectionModel");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, model_P.Python_Proxy);
      Tuple_SetItem (Args, 1, parent_P.Python_Proxy);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (model_P : Optional_QtAda6_QtCore_QAbstractItemModel) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QItemSelectionModel");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   procedure clear (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "clear");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end clear;
   procedure clearCurrentIndex (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "clearCurrentIndex");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end clearCurrentIndex;
   procedure clearSelection (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "clearSelection");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end clearSelection;
   function columnIntersectsSelection
     (self     : access Inst; column_P : int;
      parent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex) return bool
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "columnIntersectsSelection");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (column_P));
      Tuple_SetItem (Args, 1, No_Value);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end columnIntersectsSelection;
   function currentIndex (self : access Inst) return access QtAda6.QtCore.QModelIndex.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QModelIndex.Class := new QtAda6.QtCore.QModelIndex.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "currentIndex");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end currentIndex;
   procedure emitSelectionChanged
     (self           : access Inst; newSelection_P : access QtAda6.QtCore.QItemSelection.Inst'Class;
      oldSelection_P : access QtAda6.QtCore.QItemSelection.Inst'Class)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "emitSelectionChanged");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, newSelection_P.Python_Proxy);
      Tuple_SetItem (Args, 1, oldSelection_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end emitSelectionChanged;
   function hasSelection (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hasSelection");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end hasSelection;
   function isColumnSelected
     (self     : access Inst; column_P : int;
      parent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex) return bool
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isColumnSelected");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (column_P));
      Tuple_SetItem (Args, 1, No_Value);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isColumnSelected;
   function isRowSelected
     (self : access Inst; row_P : int; parent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex)
      return bool
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isRowSelected");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Tuple_SetItem (Args, 1, No_Value);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isRowSelected;
   function isSelected
     (self : access Inst; index_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex) return bool
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isSelected");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isSelected;
   function model (self : access Inst) return access QtAda6.QtCore.QAbstractItemModel.Inst'Class is
      Method, Args, Result : Handle;
      Ret : constant QtAda6.QtCore.QAbstractItemModel.Class := new QtAda6.QtCore.QAbstractItemModel.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "model");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end model;
   procedure reset (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "reset");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end reset;
   function rowIntersectsSelection
     (self : access Inst; row_P : int; parent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex)
      return bool
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "rowIntersectsSelection");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Tuple_SetItem (Args, 1, No_Value);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end rowIntersectsSelection;
   procedure select_K
     (self      : access Inst; index_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex;
      command_P : access QtAda6.QtCore.QItemSelectionModel.SelectionFlag.Inst'Class)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "select");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, No_Value);
      Tuple_SetItem (Args, 1, command_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end select_K;
   procedure select_K
     (self      : access Inst; selection_P : access QtAda6.QtCore.QItemSelection.Inst'Class;
      command_P : access QtAda6.QtCore.QItemSelectionModel.SelectionFlag.Inst'Class)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "select");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, selection_P.Python_Proxy);
      Tuple_SetItem (Args, 1, command_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end select_K;
   function selectedColumns (self : access Inst; row_P : int) return List_QtAda6_QtCore_QModelIndex is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "selectedColumns");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Result := Object_CallObject (Method, Args, True);
      return null;
   end selectedColumns;
   function selectedIndexes (self : access Inst) return List_QtAda6_QtCore_QModelIndex is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "selectedIndexes");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end selectedIndexes;
   function selectedRows (self : access Inst; column_P : int) return List_QtAda6_QtCore_QModelIndex is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "selectedRows");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (column_P));
      Result := Object_CallObject (Method, Args, True);
      return null;
   end selectedRows;
   function selection_F (self : access Inst) return access QtAda6.QtCore.QItemSelection.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QItemSelection.Class := new QtAda6.QtCore.QItemSelection.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "selection");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end selection_F;
   procedure setCurrentIndex
     (self      : access Inst; index_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex;
      command_P : access QtAda6.QtCore.QItemSelectionModel.SelectionFlag.Inst'Class)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setCurrentIndex");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, No_Value);
      Tuple_SetItem (Args, 1, command_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setCurrentIndex;
   procedure setModel (self : access Inst; model_P : access QtAda6.QtCore.QAbstractItemModel.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setModel");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, model_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setModel;
end QtAda6.QtCore.QItemSelectionModel;
