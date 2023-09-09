-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qabstractitemmodel.adb
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
with QtAda6.QtCore.QModelIndex;
with QtAda6.QtCore.QPersistentModelIndex;
with QtAda6.QtCore.QMimeData;
with QtAda6.QtCore.Qt.DropAction;
with QtAda6.QtCore.QAbstractItemModel.CheckIndexOption;
with QtAda6.QtCore.QDataStream;
with QtAda6.QtCore.Qt.ItemFlag;
with QtAda6.QtCore.Qt.Orientation;
with QtAda6.QtCore.Qt.MatchFlag;
with QtAda6.QtCore.QByteArray;
with QtAda6.QtCore.Qt.SortOrder;
with QtAda6.QtCore.QSize;
package body QtAda6.QtCore.QAbstractItemModel is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create (parent_P : Optional_QtAda6_QtCore_QObject) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QAbstractItemModel");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   procedure beginInsertColumns
     (self : access Inst; parent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex; first_P : int;
      last_P : int)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "beginInsertColumns");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, No_Value);
      Tuple_SetItem (Args, 1, Long_FromLong (first_P));
      Tuple_SetItem (Args, 2, Long_FromLong (last_P));
      Result := Object_CallObject (Method, Args, True);
   end beginInsertColumns;
   procedure beginInsertRows
     (self : access Inst; parent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex; first_P : int;
      last_P : int)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "beginInsertRows");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, No_Value);
      Tuple_SetItem (Args, 1, Long_FromLong (first_P));
      Tuple_SetItem (Args, 2, Long_FromLong (last_P));
      Result := Object_CallObject (Method, Args, True);
   end beginInsertRows;
   function beginMoveColumns
     (self : access Inst; sourceParent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex;
      sourceFirst_P       : int; sourceLast_P : int;
      destinationParent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex;
      destinationColumn_P : int) return bool
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "beginMoveColumns");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, No_Value);
      Tuple_SetItem (Args, 1, Long_FromLong (sourceFirst_P));
      Tuple_SetItem (Args, 2, Long_FromLong (sourceLast_P));
      Tuple_SetItem (Args, 3, No_Value);
      Tuple_SetItem (Args, 4, Long_FromLong (destinationColumn_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end beginMoveColumns;
   function beginMoveRows
     (self : access Inst; sourceParent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex;
      sourceFirst_P       : int; sourceLast_P : int;
      destinationParent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex; destinationRow_P : int)
      return bool
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "beginMoveRows");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, No_Value);
      Tuple_SetItem (Args, 1, Long_FromLong (sourceFirst_P));
      Tuple_SetItem (Args, 2, Long_FromLong (sourceLast_P));
      Tuple_SetItem (Args, 3, No_Value);
      Tuple_SetItem (Args, 4, Long_FromLong (destinationRow_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end beginMoveRows;
   procedure beginRemoveColumns
     (self : access Inst; parent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex; first_P : int;
      last_P : int)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "beginRemoveColumns");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, No_Value);
      Tuple_SetItem (Args, 1, Long_FromLong (first_P));
      Tuple_SetItem (Args, 2, Long_FromLong (last_P));
      Result := Object_CallObject (Method, Args, True);
   end beginRemoveColumns;
   procedure beginRemoveRows
     (self : access Inst; parent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex; first_P : int;
      last_P : int)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "beginRemoveRows");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, No_Value);
      Tuple_SetItem (Args, 1, Long_FromLong (first_P));
      Tuple_SetItem (Args, 2, Long_FromLong (last_P));
      Result := Object_CallObject (Method, Args, True);
   end beginRemoveRows;
   procedure beginResetModel (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "beginResetModel");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end beginResetModel;
   function buddy
     (self : access Inst; index_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex)
      return access QtAda6.QtCore.QModelIndex.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QModelIndex.Class := new QtAda6.QtCore.QModelIndex.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "buddy");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end buddy;
   function canDropMimeData
     (self     : access Inst; data_P : access QtAda6.QtCore.QMimeData.Inst'Class;
      action_P : access QtAda6.QtCore.Qt.DropAction.Inst'Class; row_P : int; column_P : int;
      parent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex) return bool
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "canDropMimeData");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, data_P.Python_Proxy);
      Tuple_SetItem (Args, 1, action_P.Python_Proxy);
      Tuple_SetItem (Args, 2, Long_FromLong (row_P));
      Tuple_SetItem (Args, 3, Long_FromLong (column_P));
      Tuple_SetItem (Args, 4, No_Value);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end canDropMimeData;
   function canFetchMore
     (self : access Inst; parent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex) return bool
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "canFetchMore");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end canFetchMore;
   procedure changePersistentIndex
     (self : access Inst; from_U_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex;
      to_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "changePersistentIndex");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, No_Value);
      Tuple_SetItem (Args, 1, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end changePersistentIndex;
   procedure changePersistentIndexList
     (self : access Inst; from_U_P : Sequence_QtAda6_QtCore_QModelIndex; to_P : Sequence_QtAda6_QtCore_QModelIndex)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "changePersistentIndexList");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, No_Value);
      Tuple_SetItem (Args, 1, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end changePersistentIndexList;
   function checkIndex_F
     (self      : access Inst; index_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex;
      options_P : access QtAda6.QtCore.QAbstractItemModel.CheckIndexOption.Inst'Class) return bool
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "checkIndex");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, No_Value);
      Tuple_SetItem (Args, 1, options_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end checkIndex_F;
   function clearItemData
     (self : access Inst; index_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex) return bool
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "clearItemData");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end clearItemData;
   function columnCount
     (self : access Inst; parent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex) return int
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "columnCount");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end columnCount;
   function createIndex
     (self : access Inst; row_P : int; column_P : int; id_P : int) return access QtAda6.QtCore.QModelIndex.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QModelIndex.Class := new QtAda6.QtCore.QModelIndex.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "createIndex");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Tuple_SetItem (Args, 1, Long_FromLong (column_P));
      Tuple_SetItem (Args, 2, Long_FromLong (id_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end createIndex;
   function createIndex
     (self : access Inst; row_P : int; column_P : int; ptr_P : Object)
      return access QtAda6.QtCore.QModelIndex.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QModelIndex.Class := new QtAda6.QtCore.QModelIndex.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "createIndex");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Tuple_SetItem (Args, 1, Long_FromLong (column_P));
      Tuple_SetItem (Args, 2, ptr_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end createIndex;
   function data
     (self : access Inst; index_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex; role_P : int)
      return Any
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "data");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, No_Value);
      Tuple_SetItem (Args, 1, Long_FromLong (role_P));
      Result := Object_CallObject (Method, Args, True);
      return Any_conv_P2A_is_not_supported;
   end data;
   function decodeData
     (self     : access Inst; row_P : int; column_P : int;
      parent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex;
      stream_P : access QtAda6.QtCore.QDataStream.Inst'Class) return bool
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "decodeData");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Tuple_SetItem (Args, 1, Long_FromLong (column_P));
      Tuple_SetItem (Args, 2, No_Value);
      Tuple_SetItem (Args, 3, stream_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end decodeData;
   function dropMimeData
     (self     : access Inst; data_P : access QtAda6.QtCore.QMimeData.Inst'Class;
      action_P : access QtAda6.QtCore.Qt.DropAction.Inst'Class; row_P : int; column_P : int;
      parent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex) return bool
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "dropMimeData");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, data_P.Python_Proxy);
      Tuple_SetItem (Args, 1, action_P.Python_Proxy);
      Tuple_SetItem (Args, 2, Long_FromLong (row_P));
      Tuple_SetItem (Args, 3, Long_FromLong (column_P));
      Tuple_SetItem (Args, 4, No_Value);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end dropMimeData;
   procedure encodeData
     (self     : access Inst; indexes_P : Sequence_QtAda6_QtCore_QModelIndex;
      stream_P : access QtAda6.QtCore.QDataStream.Inst'Class)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "encodeData");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, No_Value);
      Tuple_SetItem (Args, 1, stream_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end encodeData;
   procedure endInsertColumns (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "endInsertColumns");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end endInsertColumns;
   procedure endInsertRows (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "endInsertRows");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end endInsertRows;
   procedure endMoveColumns (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "endMoveColumns");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end endMoveColumns;
   procedure endMoveRows (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "endMoveRows");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end endMoveRows;
   procedure endRemoveColumns (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "endRemoveColumns");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end endRemoveColumns;
   procedure endRemoveRows (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "endRemoveRows");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end endRemoveRows;
   procedure endResetModel (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "endResetModel");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end endResetModel;
   procedure fetchMore
     (self : access Inst; parent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "fetchMore");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end fetchMore;
   function flags
     (self : access Inst; index_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex)
      return access QtAda6.QtCore.Qt.ItemFlag.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.Qt.ItemFlag.Class := new QtAda6.QtCore.Qt.ItemFlag.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "flags");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end flags;
   function hasChildren
     (self : access Inst; parent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex) return bool
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hasChildren");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end hasChildren;
   function hasIndex
     (self     : access Inst; row_P : int; column_P : int;
      parent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex) return bool
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hasIndex");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Tuple_SetItem (Args, 1, Long_FromLong (column_P));
      Tuple_SetItem (Args, 2, No_Value);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end hasIndex;
   function headerData
     (self : access Inst; section_P : int; orientation_P : access QtAda6.QtCore.Qt.Orientation.Inst'Class; role_P : int)
      return Any
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "headerData");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (section_P));
      Tuple_SetItem (Args, 1, orientation_P.Python_Proxy);
      Tuple_SetItem (Args, 2, Long_FromLong (role_P));
      Result := Object_CallObject (Method, Args, True);
      return Any_conv_P2A_is_not_supported;
   end headerData;
   function index_F
     (self     : access Inst; row_P : int; column_P : int;
      parent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex)
      return access QtAda6.QtCore.QModelIndex.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QModelIndex.Class := new QtAda6.QtCore.QModelIndex.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "index");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Tuple_SetItem (Args, 1, Long_FromLong (column_P));
      Tuple_SetItem (Args, 2, No_Value);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end index_F;
   function insertColumn
     (self     : access Inst; column_P : int;
      parent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex) return bool
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "insertColumn");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (column_P));
      Tuple_SetItem (Args, 1, No_Value);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end insertColumn;
   function insertColumns
     (self     : access Inst; column_P : int; count_P : int;
      parent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex) return bool
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "insertColumns");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (column_P));
      Tuple_SetItem (Args, 1, Long_FromLong (count_P));
      Tuple_SetItem (Args, 2, No_Value);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end insertColumns;
   function insertRow
     (self : access Inst; row_P : int; parent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex)
      return bool
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "insertRow");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Tuple_SetItem (Args, 1, No_Value);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end insertRow;
   function insertRows
     (self     : access Inst; row_P : int; count_P : int;
      parent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex) return bool
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "insertRows");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Tuple_SetItem (Args, 1, Long_FromLong (count_P));
      Tuple_SetItem (Args, 2, No_Value);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end insertRows;
   function itemData
     (self : access Inst; index_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex)
      return Dict_int_Any
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "itemData");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end itemData;
   function match
     (self : access Inst; start_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex; role_P : int;
      value_P : Any; hits_P : int; flags_P : access QtAda6.QtCore.Qt.MatchFlag.Inst'Class)
      return List_QtAda6_QtCore_QModelIndex
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "match");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, No_Value);
      Tuple_SetItem (Args, 1, Long_FromLong (role_P));
      Tuple_SetItem (Args, 2, Any_conv_A2P_is_not_supported);
      Tuple_SetItem (Args, 3, Long_FromLong (hits_P));
      Tuple_SetItem (Args, 4, flags_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end match;
   function mimeData
     (self : access Inst; indexes_P : Sequence_QtAda6_QtCore_QModelIndex)
      return access QtAda6.QtCore.QMimeData.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QMimeData.Class := new QtAda6.QtCore.QMimeData.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mimeData");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mimeData;
   function mimeTypes (self : access Inst) return List_str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mimeTypes");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end mimeTypes;
   function moveColumn
     (self : access Inst; sourceParent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex;
      sourceColumn_P : int; destinationParent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex;
      destinationChild_P : int) return bool
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "moveColumn");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, No_Value);
      Tuple_SetItem (Args, 1, Long_FromLong (sourceColumn_P));
      Tuple_SetItem (Args, 2, No_Value);
      Tuple_SetItem (Args, 3, Long_FromLong (destinationChild_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end moveColumn;
   function moveColumns
     (self : access Inst; sourceParent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex;
      sourceColumn_P      : int; count_P : int;
      destinationParent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex;
      destinationChild_P  : int) return bool
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "moveColumns");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, No_Value);
      Tuple_SetItem (Args, 1, Long_FromLong (sourceColumn_P));
      Tuple_SetItem (Args, 2, Long_FromLong (count_P));
      Tuple_SetItem (Args, 3, No_Value);
      Tuple_SetItem (Args, 4, Long_FromLong (destinationChild_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end moveColumns;
   function moveRow
     (self : access Inst; sourceParent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex;
      sourceRow_P : int; destinationParent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex;
      destinationChild_P : int) return bool
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "moveRow");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, No_Value);
      Tuple_SetItem (Args, 1, Long_FromLong (sourceRow_P));
      Tuple_SetItem (Args, 2, No_Value);
      Tuple_SetItem (Args, 3, Long_FromLong (destinationChild_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end moveRow;
   function moveRows
     (self : access Inst; sourceParent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex;
      sourceRow_P         : int; count_P : int;
      destinationParent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex;
      destinationChild_P  : int) return bool
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "moveRows");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, No_Value);
      Tuple_SetItem (Args, 1, Long_FromLong (sourceRow_P));
      Tuple_SetItem (Args, 2, Long_FromLong (count_P));
      Tuple_SetItem (Args, 3, No_Value);
      Tuple_SetItem (Args, 4, Long_FromLong (destinationChild_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end moveRows;
   function parent (self : access Inst) return access QtAda6.QtCore.QObject.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QObject.Class := new QtAda6.QtCore.QObject.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "parent");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end parent;
   function parent
     (self : access Inst; child_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex)
      return access QtAda6.QtCore.QModelIndex.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QModelIndex.Class := new QtAda6.QtCore.QModelIndex.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "parent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end parent;
   function persistentIndexList (self : access Inst) return List_QtAda6_QtCore_QModelIndex is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "persistentIndexList");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end persistentIndexList;
   function removeColumn
     (self     : access Inst; column_P : int;
      parent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex) return bool
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "removeColumn");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (column_P));
      Tuple_SetItem (Args, 1, No_Value);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end removeColumn;
   function removeColumns
     (self     : access Inst; column_P : int; count_P : int;
      parent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex) return bool
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "removeColumns");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (column_P));
      Tuple_SetItem (Args, 1, Long_FromLong (count_P));
      Tuple_SetItem (Args, 2, No_Value);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end removeColumns;
   function removeRow
     (self : access Inst; row_P : int; parent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex)
      return bool
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "removeRow");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Tuple_SetItem (Args, 1, No_Value);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end removeRow;
   function removeRows
     (self     : access Inst; row_P : int; count_P : int;
      parent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex) return bool
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "removeRows");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Tuple_SetItem (Args, 1, Long_FromLong (count_P));
      Tuple_SetItem (Args, 2, No_Value);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end removeRows;
   procedure resetInternalData (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "resetInternalData");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end resetInternalData;
   procedure revert (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "revert");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end revert;
   function roleNames (self : access Inst) return Dict_int_QtAda6_QtCore_QByteArray is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "roleNames");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end roleNames;
   function rowCount
     (self : access Inst; parent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex) return int
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "rowCount");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end rowCount;
   function setData
     (self : access Inst; index_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex; value_P : Any;
      role_P : int) return bool
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setData");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, No_Value);
      Tuple_SetItem (Args, 1, Any_conv_A2P_is_not_supported);
      Tuple_SetItem (Args, 2, Long_FromLong (role_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end setData;
   function setHeaderData
     (self    : access Inst; section_P : int; orientation_P : access QtAda6.QtCore.Qt.Orientation.Inst'Class;
      value_P : Any; role_P : int) return bool
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setHeaderData");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Long_FromLong (section_P));
      Tuple_SetItem (Args, 1, orientation_P.Python_Proxy);
      Tuple_SetItem (Args, 2, Any_conv_A2P_is_not_supported);
      Tuple_SetItem (Args, 3, Long_FromLong (role_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end setHeaderData;
   function setItemData
     (self    : access Inst; index_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex;
      roles_P : Dict_int_Any) return bool
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setItemData");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, No_Value);
      Tuple_SetItem (Args, 1, No_Value);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end setItemData;
   function sibling
     (self  : access Inst; row_P : int; column_P : int;
      idx_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex)
      return access QtAda6.QtCore.QModelIndex.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QModelIndex.Class := new QtAda6.QtCore.QModelIndex.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "sibling");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Tuple_SetItem (Args, 1, Long_FromLong (column_P));
      Tuple_SetItem (Args, 2, No_Value);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end sibling;
   procedure sort (self : access Inst; column_P : int; order_P : access QtAda6.QtCore.Qt.SortOrder.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "sort");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (column_P));
      Tuple_SetItem (Args, 1, order_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end sort;
   function span
     (self : access Inst; index_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex)
      return access QtAda6.QtCore.QSize.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QSize.Class := new QtAda6.QtCore.QSize.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "span");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end span;
   function submit (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "submit");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end submit;
   function supportedDragActions (self : access Inst) return access QtAda6.QtCore.Qt.DropAction.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.Qt.DropAction.Class := new QtAda6.QtCore.Qt.DropAction.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "supportedDragActions");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end supportedDragActions;
   function supportedDropActions (self : access Inst) return access QtAda6.QtCore.Qt.DropAction.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.Qt.DropAction.Class := new QtAda6.QtCore.Qt.DropAction.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "supportedDropActions");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end supportedDropActions;
end QtAda6.QtCore.QAbstractItemModel;
