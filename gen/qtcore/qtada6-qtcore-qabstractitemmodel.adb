-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qabstractitemmodel.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
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
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function columnsAboutToBeInserted (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'
          (Python_Proxy => Object_GetAttrString (self.Python_Proxy, "columnsAboutToBeInserted"));
   end columnsAboutToBeInserted;
   function columnsAboutToBeMoved (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'
          (Python_Proxy => Object_GetAttrString (self.Python_Proxy, "columnsAboutToBeMoved"));
   end columnsAboutToBeMoved;
   function columnsAboutToBeRemoved (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'
          (Python_Proxy => Object_GetAttrString (self.Python_Proxy, "columnsAboutToBeRemoved"));
   end columnsAboutToBeRemoved;
   function columnsInserted (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "columnsInserted"));
   end columnsInserted;
   function columnsMoved (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "columnsMoved"));
   end columnsMoved;
   function columnsRemoved (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "columnsRemoved"));
   end columnsRemoved;
   function dataChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "dataChanged"));
   end dataChanged;
   function headerDataChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "headerDataChanged"));
   end headerDataChanged;
   function layoutAboutToBeChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'
          (Python_Proxy => Object_GetAttrString (self.Python_Proxy, "layoutAboutToBeChanged"));
   end layoutAboutToBeChanged;
   function layoutChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "layoutChanged"));
   end layoutChanged;
   function modelAboutToBeReset (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "modelAboutToBeReset"));
   end modelAboutToBeReset;
   function modelReset (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "modelReset"));
   end modelReset;
   function rowsAboutToBeInserted (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'
          (Python_Proxy => Object_GetAttrString (self.Python_Proxy, "rowsAboutToBeInserted"));
   end rowsAboutToBeInserted;
   function rowsAboutToBeMoved (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "rowsAboutToBeMoved"));
   end rowsAboutToBeMoved;
   function rowsAboutToBeRemoved (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'
          (Python_Proxy => Object_GetAttrString (self.Python_Proxy, "rowsAboutToBeRemoved"));
   end rowsAboutToBeRemoved;
   function rowsInserted (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "rowsInserted"));
   end rowsInserted;
   function rowsMoved (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "rowsMoved"));
   end rowsMoved;
   function rowsRemoved (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "rowsRemoved"));
   end rowsRemoved;
   function Create (parent_P : access QtAda6.QtCore.QObject.Inst'Class := null) return Class is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QAbstractItemModel");
      Args  := Tuple_New (0);
      Dict  := Dict_New;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   procedure beginInsertColumns
     (self : access Inst; parent_P : access QtAda6.QtCore.QModelIndex.Inst'Class; first_P : int; last_P : int)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "beginInsertColumns");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if parent_P /= null then parent_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (first_P));
      Tuple_SetItem (Args, 2, Long_FromLong (last_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end beginInsertColumns;
   procedure beginInsertColumns
     (self : access Inst; parent_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class; first_P : int; last_P : int)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "beginInsertColumns");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if parent_P /= null then parent_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (first_P));
      Tuple_SetItem (Args, 2, Long_FromLong (last_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end beginInsertColumns;
   procedure beginInsertRows
     (self : access Inst; parent_P : access QtAda6.QtCore.QModelIndex.Inst'Class; first_P : int; last_P : int)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "beginInsertRows");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if parent_P /= null then parent_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (first_P));
      Tuple_SetItem (Args, 2, Long_FromLong (last_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end beginInsertRows;
   procedure beginInsertRows
     (self : access Inst; parent_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class; first_P : int; last_P : int)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "beginInsertRows");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if parent_P /= null then parent_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (first_P));
      Tuple_SetItem (Args, 2, Long_FromLong (last_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end beginInsertRows;
   function beginMoveColumns
     (self         : access Inst; sourceParent_P : access QtAda6.QtCore.QModelIndex.Inst'Class; sourceFirst_P : int;
      sourceLast_P : int; destinationParent_P : access QtAda6.QtCore.QModelIndex.Inst'Class; destinationColumn_P : int)
      return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "beginMoveColumns");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if sourceParent_P /= null then sourceParent_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (sourceFirst_P));
      Tuple_SetItem (Args, 2, Long_FromLong (sourceLast_P));
      Tuple_SetItem (Args, 3, (if destinationParent_P /= null then destinationParent_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, Long_FromLong (destinationColumn_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end beginMoveColumns;
   function beginMoveColumns
     (self : access Inst; sourceParent_P : access QtAda6.QtCore.QModelIndex.Inst'Class; sourceFirst_P : int;
      sourceLast_P        : int; destinationParent_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class;
      destinationColumn_P : int) return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "beginMoveColumns");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if sourceParent_P /= null then sourceParent_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (sourceFirst_P));
      Tuple_SetItem (Args, 2, Long_FromLong (sourceLast_P));
      Tuple_SetItem (Args, 3, (if destinationParent_P /= null then destinationParent_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, Long_FromLong (destinationColumn_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end beginMoveColumns;
   function beginMoveColumns
     (self : access Inst; sourceParent_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class; sourceFirst_P : int;
      sourceLast_P : int; destinationParent_P : access QtAda6.QtCore.QModelIndex.Inst'Class; destinationColumn_P : int)
      return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "beginMoveColumns");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if sourceParent_P /= null then sourceParent_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (sourceFirst_P));
      Tuple_SetItem (Args, 2, Long_FromLong (sourceLast_P));
      Tuple_SetItem (Args, 3, (if destinationParent_P /= null then destinationParent_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, Long_FromLong (destinationColumn_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end beginMoveColumns;
   function beginMoveColumns
     (self : access Inst; sourceParent_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class; sourceFirst_P : int;
      sourceLast_P        : int; destinationParent_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class;
      destinationColumn_P : int) return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "beginMoveColumns");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if sourceParent_P /= null then sourceParent_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (sourceFirst_P));
      Tuple_SetItem (Args, 2, Long_FromLong (sourceLast_P));
      Tuple_SetItem (Args, 3, (if destinationParent_P /= null then destinationParent_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, Long_FromLong (destinationColumn_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end beginMoveColumns;
   function beginMoveRows
     (self         : access Inst; sourceParent_P : access QtAda6.QtCore.QModelIndex.Inst'Class; sourceFirst_P : int;
      sourceLast_P : int; destinationParent_P : access QtAda6.QtCore.QModelIndex.Inst'Class; destinationRow_P : int)
      return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "beginMoveRows");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if sourceParent_P /= null then sourceParent_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (sourceFirst_P));
      Tuple_SetItem (Args, 2, Long_FromLong (sourceLast_P));
      Tuple_SetItem (Args, 3, (if destinationParent_P /= null then destinationParent_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, Long_FromLong (destinationRow_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end beginMoveRows;
   function beginMoveRows
     (self             : access Inst; sourceParent_P : access QtAda6.QtCore.QModelIndex.Inst'Class; sourceFirst_P : int;
      sourceLast_P     : int; destinationParent_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class;
      destinationRow_P : int) return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "beginMoveRows");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if sourceParent_P /= null then sourceParent_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (sourceFirst_P));
      Tuple_SetItem (Args, 2, Long_FromLong (sourceLast_P));
      Tuple_SetItem (Args, 3, (if destinationParent_P /= null then destinationParent_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, Long_FromLong (destinationRow_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end beginMoveRows;
   function beginMoveRows
     (self : access Inst; sourceParent_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class; sourceFirst_P : int;
      sourceLast_P : int; destinationParent_P : access QtAda6.QtCore.QModelIndex.Inst'Class; destinationRow_P : int)
      return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "beginMoveRows");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if sourceParent_P /= null then sourceParent_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (sourceFirst_P));
      Tuple_SetItem (Args, 2, Long_FromLong (sourceLast_P));
      Tuple_SetItem (Args, 3, (if destinationParent_P /= null then destinationParent_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, Long_FromLong (destinationRow_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end beginMoveRows;
   function beginMoveRows
     (self : access Inst; sourceParent_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class; sourceFirst_P : int;
      sourceLast_P     : int; destinationParent_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class;
      destinationRow_P : int) return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "beginMoveRows");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if sourceParent_P /= null then sourceParent_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (sourceFirst_P));
      Tuple_SetItem (Args, 2, Long_FromLong (sourceLast_P));
      Tuple_SetItem (Args, 3, (if destinationParent_P /= null then destinationParent_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, Long_FromLong (destinationRow_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end beginMoveRows;
   procedure beginRemoveColumns
     (self : access Inst; parent_P : access QtAda6.QtCore.QModelIndex.Inst'Class; first_P : int; last_P : int)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "beginRemoveColumns");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if parent_P /= null then parent_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (first_P));
      Tuple_SetItem (Args, 2, Long_FromLong (last_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end beginRemoveColumns;
   procedure beginRemoveColumns
     (self : access Inst; parent_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class; first_P : int; last_P : int)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "beginRemoveColumns");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if parent_P /= null then parent_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (first_P));
      Tuple_SetItem (Args, 2, Long_FromLong (last_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end beginRemoveColumns;
   procedure beginRemoveRows
     (self : access Inst; parent_P : access QtAda6.QtCore.QModelIndex.Inst'Class; first_P : int; last_P : int)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "beginRemoveRows");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if parent_P /= null then parent_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (first_P));
      Tuple_SetItem (Args, 2, Long_FromLong (last_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end beginRemoveRows;
   procedure beginRemoveRows
     (self : access Inst; parent_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class; first_P : int; last_P : int)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "beginRemoveRows");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if parent_P /= null then parent_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (first_P));
      Tuple_SetItem (Args, 2, Long_FromLong (last_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end beginRemoveRows;
   procedure beginResetModel (self : access Inst) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "beginResetModel");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end beginResetModel;
   function buddy
     (self : access Inst; index_P : access QtAda6.QtCore.QModelIndex.Inst'Class)
      return access QtAda6.QtCore.QModelIndex.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QModelIndex.Class := new QtAda6.QtCore.QModelIndex.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "buddy");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if index_P /= null then index_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end buddy;
   function buddy
     (self : access Inst; index_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class)
      return access QtAda6.QtCore.QModelIndex.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QModelIndex.Class := new QtAda6.QtCore.QModelIndex.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "buddy");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if index_P /= null then index_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end buddy;
   function canDropMimeData
     (self     : access Inst; data_P : access QtAda6.QtCore.QMimeData.Inst'Class;
      action_P : access QtAda6.QtCore.Qt.DropAction.Inst'Class; row_P : int; column_P : int;
      parent_P : access QtAda6.QtCore.QModelIndex.Inst'Class) return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "canDropMimeData");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if data_P /= null then data_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if action_P /= null then action_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, Long_FromLong (row_P));
      Tuple_SetItem (Args, 3, Long_FromLong (column_P));
      Tuple_SetItem (Args, 4, (if parent_P /= null then parent_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end canDropMimeData;
   function canDropMimeData
     (self     : access Inst; data_P : access QtAda6.QtCore.QMimeData.Inst'Class;
      action_P : access QtAda6.QtCore.Qt.DropAction.Inst'Class; row_P : int; column_P : int;
      parent_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class) return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "canDropMimeData");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if data_P /= null then data_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if action_P /= null then action_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, Long_FromLong (row_P));
      Tuple_SetItem (Args, 3, Long_FromLong (column_P));
      Tuple_SetItem (Args, 4, (if parent_P /= null then parent_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end canDropMimeData;
   function canFetchMore (self : access Inst; parent_P : access QtAda6.QtCore.QModelIndex.Inst'Class) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "canFetchMore");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if parent_P /= null then parent_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end canFetchMore;
   function canFetchMore
     (self : access Inst; parent_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class) return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "canFetchMore");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if parent_P /= null then parent_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end canFetchMore;
   procedure changePersistentIndex
     (self : access Inst; from_U_P : access QtAda6.QtCore.QModelIndex.Inst'Class;
      to_P : access QtAda6.QtCore.QModelIndex.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "changePersistentIndex");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if from_U_P /= null then from_U_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if to_P /= null then to_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end changePersistentIndex;
   procedure changePersistentIndex
     (self : access Inst; from_U_P : access QtAda6.QtCore.QModelIndex.Inst'Class;
      to_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "changePersistentIndex");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if from_U_P /= null then from_U_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if to_P /= null then to_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end changePersistentIndex;
   procedure changePersistentIndex
     (self : access Inst; from_U_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class;
      to_P : access QtAda6.QtCore.QModelIndex.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "changePersistentIndex");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if from_U_P /= null then from_U_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if to_P /= null then to_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end changePersistentIndex;
   procedure changePersistentIndex
     (self : access Inst; from_U_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class;
      to_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "changePersistentIndex");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if from_U_P /= null then from_U_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if to_P /= null then to_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end changePersistentIndex;
   procedure changePersistentIndexList
     (self : access Inst; from_U_P : SEQUENCE_QtAda6_QtCore_QModelIndex; to_P : SEQUENCE_QtAda6_QtCore_QModelIndex)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "changePersistentIndexList");
      Args   := Tuple_New (2);
      List   := List_New (from_U_P'Length);
      for ind in from_U_P'Range loop
         List_SetItem
           (List, ssize_t (ind - from_U_P'First),
            (if from_U_P (ind) /= null then from_U_P (ind).Python_Proxy else No_Value));
      end loop;
      Tuple_SetItem (Args, 0, List);
      List := List_New (to_P'Length);
      for ind in to_P'Range loop
         List_SetItem
           (List, ssize_t (ind - to_P'First), (if to_P (ind) /= null then to_P (ind).Python_Proxy else No_Value));
      end loop;
      Tuple_SetItem (Args, 1, List);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end changePersistentIndexList;
   function checkIndex
     (self      : access Inst; index_P : access QtAda6.QtCore.QModelIndex.Inst'Class;
      options_P : access QtAda6.QtCore.QAbstractItemModel.CheckIndexOption.Inst'Class := null) return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "checkIndex");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if index_P /= null then index_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if options_P /= null then
         Dict_SetItemString (Dict, "options", options_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end checkIndex;
   function checkIndex
     (self      : access Inst; index_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class;
      options_P : access QtAda6.QtCore.QAbstractItemModel.CheckIndexOption.Inst'Class := null) return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "checkIndex");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if index_P /= null then index_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if options_P /= null then
         Dict_SetItemString (Dict, "options", options_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end checkIndex;
   function clearItemData (self : access Inst; index_P : access QtAda6.QtCore.QModelIndex.Inst'Class) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "clearItemData");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if index_P /= null then index_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end clearItemData;
   function clearItemData
     (self : access Inst; index_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class) return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "clearItemData");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if index_P /= null then index_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end clearItemData;
   function columnCount (self : access Inst; parent_P : access QtAda6.QtCore.QModelIndex.Inst'Class := null) return int
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "columnCount");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end columnCount;
   function columnCount
     (self : access Inst; parent_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class := null) return int
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "columnCount");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end columnCount;
   function createIndex
     (self : access Inst; row_P : int; column_P : int; id_P : int := 0)
      return access QtAda6.QtCore.QModelIndex.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QModelIndex.Class := new QtAda6.QtCore.QModelIndex.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "createIndex");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Tuple_SetItem (Args, 1, Long_FromLong (column_P));
      Dict := Dict_New;
      if id_P /= 0 then
         Dict_SetItemString (Dict, "id", Long_FromLong (id_P));
      end if;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end createIndex;
   function createIndex
     (self : access Inst; row_P : int; column_P : int; ptr_P : access Object'Class)
      return access QtAda6.QtCore.QModelIndex.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QModelIndex.Class := new QtAda6.QtCore.QModelIndex.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "createIndex");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Tuple_SetItem (Args, 1, Long_FromLong (column_P));
      Tuple_SetItem (Args, 2, (if ptr_P /= null then ptr_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end createIndex;
   function data
     (self : access Inst; index_P : access QtAda6.QtCore.QModelIndex.Inst'Class; role_P : int := 0) return Any
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "data");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if index_P /= null then index_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if role_P /= 0 then
         Dict_SetItemString (Dict, "role", Long_FromLong (role_P));
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return null;
   end data;
   function data
     (self : access Inst; index_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class; role_P : int := 0) return Any
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "data");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if index_P /= null then index_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if role_P /= 0 then
         Dict_SetItemString (Dict, "role", Long_FromLong (role_P));
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return null;
   end data;
   function decodeData
     (self     : access Inst; row_P : int; column_P : int; parent_P : access QtAda6.QtCore.QModelIndex.Inst'Class;
      stream_P : access QtAda6.QtCore.QDataStream.Inst'Class) return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "decodeData");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Tuple_SetItem (Args, 1, Long_FromLong (column_P));
      Tuple_SetItem (Args, 2, (if parent_P /= null then parent_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if stream_P /= null then stream_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end decodeData;
   function decodeData
     (self : access Inst; row_P : int; column_P : int; parent_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class;
      stream_P : access QtAda6.QtCore.QDataStream.Inst'Class) return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "decodeData");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Tuple_SetItem (Args, 1, Long_FromLong (column_P));
      Tuple_SetItem (Args, 2, (if parent_P /= null then parent_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if stream_P /= null then stream_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end decodeData;
   function dropMimeData
     (self     : access Inst; data_P : access QtAda6.QtCore.QMimeData.Inst'Class;
      action_P : access QtAda6.QtCore.Qt.DropAction.Inst'Class; row_P : int; column_P : int;
      parent_P : access QtAda6.QtCore.QModelIndex.Inst'Class) return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "dropMimeData");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if data_P /= null then data_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if action_P /= null then action_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, Long_FromLong (row_P));
      Tuple_SetItem (Args, 3, Long_FromLong (column_P));
      Tuple_SetItem (Args, 4, (if parent_P /= null then parent_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end dropMimeData;
   function dropMimeData
     (self     : access Inst; data_P : access QtAda6.QtCore.QMimeData.Inst'Class;
      action_P : access QtAda6.QtCore.Qt.DropAction.Inst'Class; row_P : int; column_P : int;
      parent_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class) return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "dropMimeData");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if data_P /= null then data_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if action_P /= null then action_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, Long_FromLong (row_P));
      Tuple_SetItem (Args, 3, Long_FromLong (column_P));
      Tuple_SetItem (Args, 4, (if parent_P /= null then parent_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end dropMimeData;
   procedure encodeData
     (self     : access Inst; indexes_P : SEQUENCE_QtAda6_QtCore_QModelIndex;
      stream_P : access QtAda6.QtCore.QDataStream.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "encodeData");
      Args   := Tuple_New (2);
      List   := List_New (indexes_P'Length);
      for ind in indexes_P'Range loop
         List_SetItem
           (List, ssize_t (ind - indexes_P'First),
            (if indexes_P (ind) /= null then indexes_P (ind).Python_Proxy else No_Value));
      end loop;
      Tuple_SetItem (Args, 0, List);
      Tuple_SetItem (Args, 1, (if stream_P /= null then stream_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end encodeData;
   procedure endInsertColumns (self : access Inst) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "endInsertColumns");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end endInsertColumns;
   procedure endInsertRows (self : access Inst) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "endInsertRows");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end endInsertRows;
   procedure endMoveColumns (self : access Inst) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "endMoveColumns");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end endMoveColumns;
   procedure endMoveRows (self : access Inst) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "endMoveRows");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end endMoveRows;
   procedure endRemoveColumns (self : access Inst) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "endRemoveColumns");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end endRemoveColumns;
   procedure endRemoveRows (self : access Inst) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "endRemoveRows");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end endRemoveRows;
   procedure endResetModel (self : access Inst) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "endResetModel");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end endResetModel;
   procedure fetchMore (self : access Inst; parent_P : access QtAda6.QtCore.QModelIndex.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "fetchMore");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if parent_P /= null then parent_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end fetchMore;
   procedure fetchMore (self : access Inst; parent_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "fetchMore");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if parent_P /= null then parent_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end fetchMore;
   function flags
     (self : access Inst; index_P : access QtAda6.QtCore.QModelIndex.Inst'Class)
      return access QtAda6.QtCore.Qt.ItemFlag.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.ItemFlag.Class := new QtAda6.QtCore.Qt.ItemFlag.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "flags");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if index_P /= null then index_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end flags;
   function flags
     (self : access Inst; index_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class)
      return access QtAda6.QtCore.Qt.ItemFlag.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.ItemFlag.Class := new QtAda6.QtCore.Qt.ItemFlag.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "flags");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if index_P /= null then index_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end flags;
   function hasChildren (self : access Inst; parent_P : access QtAda6.QtCore.QModelIndex.Inst'Class := null) return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hasChildren");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end hasChildren;
   function hasChildren
     (self : access Inst; parent_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class := null) return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hasChildren");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end hasChildren;
   function hasIndex
     (self : access Inst; row_P : int; column_P : int; parent_P : access QtAda6.QtCore.QModelIndex.Inst'Class := null)
      return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hasIndex");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Tuple_SetItem (Args, 1, Long_FromLong (column_P));
      Dict := Dict_New;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end hasIndex;
   function hasIndex
     (self     : access Inst; row_P : int; column_P : int;
      parent_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class := null) return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hasIndex");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Tuple_SetItem (Args, 1, Long_FromLong (column_P));
      Dict := Dict_New;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end hasIndex;
   function headerData
     (self   : access Inst; section_P : int; orientation_P : access QtAda6.QtCore.Qt.Orientation.Inst'Class;
      role_P : int := 0) return Any
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "headerData");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (section_P));
      Tuple_SetItem (Args, 1, (if orientation_P /= null then orientation_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if role_P /= 0 then
         Dict_SetItemString (Dict, "role", Long_FromLong (role_P));
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return null;
   end headerData;
   function index
     (self : access Inst; row_P : int; column_P : int; parent_P : access QtAda6.QtCore.QModelIndex.Inst'Class := null)
      return access QtAda6.QtCore.QModelIndex.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QModelIndex.Class := new QtAda6.QtCore.QModelIndex.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "index");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Tuple_SetItem (Args, 1, Long_FromLong (column_P));
      Dict := Dict_New;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end index;
   function index
     (self     : access Inst; row_P : int; column_P : int;
      parent_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class := null)
      return access QtAda6.QtCore.QModelIndex.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QModelIndex.Class := new QtAda6.QtCore.QModelIndex.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "index");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Tuple_SetItem (Args, 1, Long_FromLong (column_P));
      Dict := Dict_New;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end index;
   function insertColumn
     (self : access Inst; column_P : int; parent_P : access QtAda6.QtCore.QModelIndex.Inst'Class := null) return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "insertColumn");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (column_P));
      Dict := Dict_New;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end insertColumn;
   function insertColumn
     (self : access Inst; column_P : int; parent_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class := null)
      return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "insertColumn");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (column_P));
      Dict := Dict_New;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end insertColumn;
   function insertColumns
     (self : access Inst; column_P : int; count_P : int; parent_P : access QtAda6.QtCore.QModelIndex.Inst'Class := null)
      return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "insertColumns");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (column_P));
      Tuple_SetItem (Args, 1, Long_FromLong (count_P));
      Dict := Dict_New;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end insertColumns;
   function insertColumns
     (self     : access Inst; column_P : int; count_P : int;
      parent_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class := null) return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "insertColumns");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (column_P));
      Tuple_SetItem (Args, 1, Long_FromLong (count_P));
      Dict := Dict_New;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end insertColumns;
   function insertRow
     (self : access Inst; row_P : int; parent_P : access QtAda6.QtCore.QModelIndex.Inst'Class := null) return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "insertRow");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Dict := Dict_New;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end insertRow;
   function insertRow
     (self : access Inst; row_P : int; parent_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class := null)
      return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "insertRow");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Dict := Dict_New;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end insertRow;
   function insertRows
     (self : access Inst; row_P : int; count_P : int; parent_P : access QtAda6.QtCore.QModelIndex.Inst'Class := null)
      return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "insertRows");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Tuple_SetItem (Args, 1, Long_FromLong (count_P));
      Dict := Dict_New;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end insertRows;
   function insertRows
     (self     : access Inst; row_P : int; count_P : int;
      parent_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class := null) return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "insertRows");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Tuple_SetItem (Args, 1, Long_FromLong (count_P));
      Dict := Dict_New;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end insertRows;
   function itemData (self : access Inst; index_P : access QtAda6.QtCore.QModelIndex.Inst'Class) return DICT_int_Any is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "itemData");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if index_P /= null then index_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Ret : DICT_int_Any do
         Ret.C0 := Long_AsLong (Tuple_GetItem (Result, 0));
         Ret.C1 := null;
      end return;
   end itemData;
   function itemData
     (self : access Inst; index_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class) return DICT_int_Any
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "itemData");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if index_P /= null then index_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Ret : DICT_int_Any do
         Ret.C0 := Long_AsLong (Tuple_GetItem (Result, 0));
         Ret.C1 := null;
      end return;
   end itemData;
   function match
     (self   : access Inst; start_P : access QtAda6.QtCore.QModelIndex.Inst'Class; role_P : int; value_P : Any;
      hits_P : int := 0; flags_P : access QtAda6.QtCore.Qt.MatchFlag.Inst'Class := null)
      return LIST_QtAda6_QtCore_QModelIndex
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "match");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if start_P /= null then start_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (role_P));
      Tuple_SetItem (Args, 2, (if value_P /= null then value_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if hits_P /= 0 then
         Dict_SetItemString (Dict, "hits", Long_FromLong (hits_P));
      end if;
      if flags_P /= null then
         Dict_SetItemString (Dict, "flags", flags_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return Ret : LIST_QtAda6_QtCore_QModelIndex (1 .. Natural (List_Size (Result))) do
         for Ind in Ret'Range loop
            Ret (Ind).Python_Proxy := List_GetItem (Result, ssize_t (Ind - Ret'First));
         end loop;
      end return;
   end match;
   function match
     (self : access Inst; start_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class; role_P : int; value_P : Any;
      hits_P : int := 0; flags_P : access QtAda6.QtCore.Qt.MatchFlag.Inst'Class := null)
      return LIST_QtAda6_QtCore_QModelIndex
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "match");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if start_P /= null then start_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (role_P));
      Tuple_SetItem (Args, 2, (if value_P /= null then value_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if hits_P /= 0 then
         Dict_SetItemString (Dict, "hits", Long_FromLong (hits_P));
      end if;
      if flags_P /= null then
         Dict_SetItemString (Dict, "flags", flags_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return Ret : LIST_QtAda6_QtCore_QModelIndex (1 .. Natural (List_Size (Result))) do
         for Ind in Ret'Range loop
            Ret (Ind).Python_Proxy := List_GetItem (Result, ssize_t (Ind - Ret'First));
         end loop;
      end return;
   end match;
   function mimeData
     (self : access Inst; indexes_P : SEQUENCE_QtAda6_QtCore_QModelIndex)
      return access QtAda6.QtCore.QMimeData.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QMimeData.Class := new QtAda6.QtCore.QMimeData.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mimeData");
      Args   := Tuple_New (1);
      List   := List_New (indexes_P'Length);
      for ind in indexes_P'Range loop
         List_SetItem
           (List, ssize_t (ind - indexes_P'First),
            (if indexes_P (ind) /= null then indexes_P (ind).Python_Proxy else No_Value));
      end loop;
      Tuple_SetItem (Args, 0, List);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mimeData;
   function mimeTypes (self : access Inst) return LIST_str is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mimeTypes");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Ret : LIST_str (1 .. Natural (List_Size (Result))) do
         for Ind in Ret'Range loop
            Ret (Ind) := As_String (List_GetItem (Result, ssize_t (Ind - Ret'First)));
         end loop;
      end return;
   end mimeTypes;
   function moveColumn
     (self : access Inst; sourceParent_P : access QtAda6.QtCore.QModelIndex.Inst'Class; sourceColumn_P : int;
      destinationParent_P : access QtAda6.QtCore.QModelIndex.Inst'Class; destinationChild_P : int) return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "moveColumn");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if sourceParent_P /= null then sourceParent_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (sourceColumn_P));
      Tuple_SetItem (Args, 2, (if destinationParent_P /= null then destinationParent_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, Long_FromLong (destinationChild_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end moveColumn;
   function moveColumn
     (self : access Inst; sourceParent_P : access QtAda6.QtCore.QModelIndex.Inst'Class; sourceColumn_P : int;
      destinationParent_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class; destinationChild_P : int) return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "moveColumn");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if sourceParent_P /= null then sourceParent_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (sourceColumn_P));
      Tuple_SetItem (Args, 2, (if destinationParent_P /= null then destinationParent_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, Long_FromLong (destinationChild_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end moveColumn;
   function moveColumn
     (self : access Inst; sourceParent_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class; sourceColumn_P : int;
      destinationParent_P : access QtAda6.QtCore.QModelIndex.Inst'Class; destinationChild_P : int) return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "moveColumn");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if sourceParent_P /= null then sourceParent_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (sourceColumn_P));
      Tuple_SetItem (Args, 2, (if destinationParent_P /= null then destinationParent_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, Long_FromLong (destinationChild_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end moveColumn;
   function moveColumn
     (self : access Inst; sourceParent_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class; sourceColumn_P : int;
      destinationParent_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class; destinationChild_P : int) return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "moveColumn");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if sourceParent_P /= null then sourceParent_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (sourceColumn_P));
      Tuple_SetItem (Args, 2, (if destinationParent_P /= null then destinationParent_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, Long_FromLong (destinationChild_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end moveColumn;
   function moveColumns
     (self    : access Inst; sourceParent_P : access QtAda6.QtCore.QModelIndex.Inst'Class; sourceColumn_P : int;
      count_P : int; destinationParent_P : access QtAda6.QtCore.QModelIndex.Inst'Class; destinationChild_P : int)
      return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "moveColumns");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if sourceParent_P /= null then sourceParent_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (sourceColumn_P));
      Tuple_SetItem (Args, 2, Long_FromLong (count_P));
      Tuple_SetItem (Args, 3, (if destinationParent_P /= null then destinationParent_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, Long_FromLong (destinationChild_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end moveColumns;
   function moveColumns
     (self : access Inst; sourceParent_P : access QtAda6.QtCore.QModelIndex.Inst'Class; sourceColumn_P : int;
      count_P            : int; destinationParent_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class;
      destinationChild_P : int) return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "moveColumns");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if sourceParent_P /= null then sourceParent_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (sourceColumn_P));
      Tuple_SetItem (Args, 2, Long_FromLong (count_P));
      Tuple_SetItem (Args, 3, (if destinationParent_P /= null then destinationParent_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, Long_FromLong (destinationChild_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end moveColumns;
   function moveColumns
     (self : access Inst; sourceParent_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class; sourceColumn_P : int;
      count_P : int; destinationParent_P : access QtAda6.QtCore.QModelIndex.Inst'Class; destinationChild_P : int)
      return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "moveColumns");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if sourceParent_P /= null then sourceParent_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (sourceColumn_P));
      Tuple_SetItem (Args, 2, Long_FromLong (count_P));
      Tuple_SetItem (Args, 3, (if destinationParent_P /= null then destinationParent_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, Long_FromLong (destinationChild_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end moveColumns;
   function moveColumns
     (self : access Inst; sourceParent_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class; sourceColumn_P : int;
      count_P            : int; destinationParent_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class;
      destinationChild_P : int) return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "moveColumns");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if sourceParent_P /= null then sourceParent_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (sourceColumn_P));
      Tuple_SetItem (Args, 2, Long_FromLong (count_P));
      Tuple_SetItem (Args, 3, (if destinationParent_P /= null then destinationParent_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, Long_FromLong (destinationChild_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end moveColumns;
   function moveRow
     (self : access Inst; sourceParent_P : access QtAda6.QtCore.QModelIndex.Inst'Class; sourceRow_P : int;
      destinationParent_P : access QtAda6.QtCore.QModelIndex.Inst'Class; destinationChild_P : int) return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "moveRow");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if sourceParent_P /= null then sourceParent_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (sourceRow_P));
      Tuple_SetItem (Args, 2, (if destinationParent_P /= null then destinationParent_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, Long_FromLong (destinationChild_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end moveRow;
   function moveRow
     (self : access Inst; sourceParent_P : access QtAda6.QtCore.QModelIndex.Inst'Class; sourceRow_P : int;
      destinationParent_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class; destinationChild_P : int) return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "moveRow");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if sourceParent_P /= null then sourceParent_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (sourceRow_P));
      Tuple_SetItem (Args, 2, (if destinationParent_P /= null then destinationParent_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, Long_FromLong (destinationChild_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end moveRow;
   function moveRow
     (self : access Inst; sourceParent_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class; sourceRow_P : int;
      destinationParent_P : access QtAda6.QtCore.QModelIndex.Inst'Class; destinationChild_P : int) return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "moveRow");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if sourceParent_P /= null then sourceParent_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (sourceRow_P));
      Tuple_SetItem (Args, 2, (if destinationParent_P /= null then destinationParent_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, Long_FromLong (destinationChild_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end moveRow;
   function moveRow
     (self : access Inst; sourceParent_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class; sourceRow_P : int;
      destinationParent_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class; destinationChild_P : int) return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "moveRow");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if sourceParent_P /= null then sourceParent_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (sourceRow_P));
      Tuple_SetItem (Args, 2, (if destinationParent_P /= null then destinationParent_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, Long_FromLong (destinationChild_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end moveRow;
   function moveRows
     (self    : access Inst; sourceParent_P : access QtAda6.QtCore.QModelIndex.Inst'Class; sourceRow_P : int;
      count_P : int; destinationParent_P : access QtAda6.QtCore.QModelIndex.Inst'Class; destinationChild_P : int)
      return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "moveRows");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if sourceParent_P /= null then sourceParent_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (sourceRow_P));
      Tuple_SetItem (Args, 2, Long_FromLong (count_P));
      Tuple_SetItem (Args, 3, (if destinationParent_P /= null then destinationParent_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, Long_FromLong (destinationChild_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end moveRows;
   function moveRows
     (self               : access Inst; sourceParent_P : access QtAda6.QtCore.QModelIndex.Inst'Class; sourceRow_P : int;
      count_P            : int; destinationParent_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class;
      destinationChild_P : int) return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "moveRows");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if sourceParent_P /= null then sourceParent_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (sourceRow_P));
      Tuple_SetItem (Args, 2, Long_FromLong (count_P));
      Tuple_SetItem (Args, 3, (if destinationParent_P /= null then destinationParent_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, Long_FromLong (destinationChild_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end moveRows;
   function moveRows
     (self    : access Inst; sourceParent_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class; sourceRow_P : int;
      count_P : int; destinationParent_P : access QtAda6.QtCore.QModelIndex.Inst'Class; destinationChild_P : int)
      return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "moveRows");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if sourceParent_P /= null then sourceParent_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (sourceRow_P));
      Tuple_SetItem (Args, 2, Long_FromLong (count_P));
      Tuple_SetItem (Args, 3, (if destinationParent_P /= null then destinationParent_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, Long_FromLong (destinationChild_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end moveRows;
   function moveRows
     (self : access Inst; sourceParent_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class; sourceRow_P : int;
      count_P            : int; destinationParent_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class;
      destinationChild_P : int) return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "moveRows");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if sourceParent_P /= null then sourceParent_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (sourceRow_P));
      Tuple_SetItem (Args, 2, Long_FromLong (count_P));
      Tuple_SetItem (Args, 3, (if destinationParent_P /= null then destinationParent_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, Long_FromLong (destinationChild_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end moveRows;
   function parent (self : access Inst) return access QtAda6.QtCore.QObject.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QObject.Class := new QtAda6.QtCore.QObject.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "parent");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end parent;
   function parent
     (self : access Inst; child_P : access QtAda6.QtCore.QModelIndex.Inst'Class)
      return access QtAda6.QtCore.QModelIndex.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QModelIndex.Class := new QtAda6.QtCore.QModelIndex.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "parent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if child_P /= null then child_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end parent;
   function parent
     (self : access Inst; child_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class)
      return access QtAda6.QtCore.QModelIndex.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QModelIndex.Class := new QtAda6.QtCore.QModelIndex.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "parent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if child_P /= null then child_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end parent;
   function persistentIndexList (self : access Inst) return LIST_QtAda6_QtCore_QModelIndex is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "persistentIndexList");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Ret : LIST_QtAda6_QtCore_QModelIndex (1 .. Natural (List_Size (Result))) do
         for Ind in Ret'Range loop
            Ret (Ind).Python_Proxy := List_GetItem (Result, ssize_t (Ind - Ret'First));
         end loop;
      end return;
   end persistentIndexList;
   function removeColumn
     (self : access Inst; column_P : int; parent_P : access QtAda6.QtCore.QModelIndex.Inst'Class := null) return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "removeColumn");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (column_P));
      Dict := Dict_New;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end removeColumn;
   function removeColumn
     (self : access Inst; column_P : int; parent_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class := null)
      return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "removeColumn");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (column_P));
      Dict := Dict_New;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end removeColumn;
   function removeColumns
     (self : access Inst; column_P : int; count_P : int; parent_P : access QtAda6.QtCore.QModelIndex.Inst'Class := null)
      return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "removeColumns");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (column_P));
      Tuple_SetItem (Args, 1, Long_FromLong (count_P));
      Dict := Dict_New;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end removeColumns;
   function removeColumns
     (self     : access Inst; column_P : int; count_P : int;
      parent_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class := null) return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "removeColumns");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (column_P));
      Tuple_SetItem (Args, 1, Long_FromLong (count_P));
      Dict := Dict_New;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end removeColumns;
   function removeRow
     (self : access Inst; row_P : int; parent_P : access QtAda6.QtCore.QModelIndex.Inst'Class := null) return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "removeRow");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Dict := Dict_New;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end removeRow;
   function removeRow
     (self : access Inst; row_P : int; parent_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class := null)
      return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "removeRow");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Dict := Dict_New;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end removeRow;
   function removeRows
     (self : access Inst; row_P : int; count_P : int; parent_P : access QtAda6.QtCore.QModelIndex.Inst'Class := null)
      return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "removeRows");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Tuple_SetItem (Args, 1, Long_FromLong (count_P));
      Dict := Dict_New;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end removeRows;
   function removeRows
     (self     : access Inst; row_P : int; count_P : int;
      parent_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class := null) return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "removeRows");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Tuple_SetItem (Args, 1, Long_FromLong (count_P));
      Dict := Dict_New;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end removeRows;
   procedure resetInternalData (self : access Inst) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "resetInternalData");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end resetInternalData;
   procedure revert (self : access Inst) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "revert");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end revert;
   function roleNames (self : access Inst) return DICT_int_QtAda6_QtCore_QByteArray is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "roleNames");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Ret : DICT_int_QtAda6_QtCore_QByteArray do
         Ret.C0              := Long_AsLong (Tuple_GetItem (Result, 0));
         Ret.C1.Python_Proxy := Tuple_GetItem (Result, 1);
      end return;
   end roleNames;
   function rowCount (self : access Inst; parent_P : access QtAda6.QtCore.QModelIndex.Inst'Class := null) return int is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "rowCount");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end rowCount;
   function rowCount
     (self : access Inst; parent_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class := null) return int
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "rowCount");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end rowCount;
   function setData
     (self : access Inst; index_P : access QtAda6.QtCore.QModelIndex.Inst'Class; value_P : Any; role_P : int := 0)
      return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setData");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if index_P /= null then index_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if value_P /= null then value_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if role_P /= 0 then
         Dict_SetItemString (Dict, "role", Long_FromLong (role_P));
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end setData;
   function setData
     (self   : access Inst; index_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class; value_P : Any;
      role_P : int := 0) return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setData");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if index_P /= null then index_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if value_P /= null then value_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if role_P /= 0 then
         Dict_SetItemString (Dict, "role", Long_FromLong (role_P));
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end setData;
   function setHeaderData
     (self    : access Inst; section_P : int; orientation_P : access QtAda6.QtCore.Qt.Orientation.Inst'Class;
      value_P : Any; role_P : int := 0) return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setHeaderData");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (section_P));
      Tuple_SetItem (Args, 1, (if orientation_P /= null then orientation_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if value_P /= null then value_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if role_P /= 0 then
         Dict_SetItemString (Dict, "role", Long_FromLong (role_P));
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end setHeaderData;
   function setItemData
     (self : access Inst; index_P : access QtAda6.QtCore.QModelIndex.Inst'Class; roles_P : DICT_int_Any) return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setItemData");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if index_P /= null then index_P.Python_Proxy else No_Value));
      Tuple := Tuple_New (2);
      Tuple_SetItem (Tuple, 0, Long_FromLong (roles_P.C0));
      Tuple_SetItem (Tuple, 1, (if roles_P.C1 /= null then roles_P.C1.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Tuple);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end setItemData;
   function setItemData
     (self : access Inst; index_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class; roles_P : DICT_int_Any)
      return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setItemData");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if index_P /= null then index_P.Python_Proxy else No_Value));
      Tuple := Tuple_New (2);
      Tuple_SetItem (Tuple, 0, Long_FromLong (roles_P.C0));
      Tuple_SetItem (Tuple, 1, (if roles_P.C1 /= null then roles_P.C1.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Tuple);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end setItemData;
   function sibling
     (self : access Inst; row_P : int; column_P : int; idx_P : access QtAda6.QtCore.QModelIndex.Inst'Class)
      return access QtAda6.QtCore.QModelIndex.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QModelIndex.Class := new QtAda6.QtCore.QModelIndex.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "sibling");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Tuple_SetItem (Args, 1, Long_FromLong (column_P));
      Tuple_SetItem (Args, 2, (if idx_P /= null then idx_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end sibling;
   function sibling
     (self : access Inst; row_P : int; column_P : int; idx_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class)
      return access QtAda6.QtCore.QModelIndex.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QModelIndex.Class := new QtAda6.QtCore.QModelIndex.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "sibling");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Tuple_SetItem (Args, 1, Long_FromLong (column_P));
      Tuple_SetItem (Args, 2, (if idx_P /= null then idx_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end sibling;
   procedure sort (self : access Inst; column_P : int; order_P : access QtAda6.QtCore.Qt.SortOrder.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "sort");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (column_P));
      Dict := Dict_New;
      if order_P /= null then
         Dict_SetItemString (Dict, "order", order_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end sort;
   function span
     (self : access Inst; index_P : access QtAda6.QtCore.QModelIndex.Inst'Class)
      return access QtAda6.QtCore.QSize.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret                                          : constant QtAda6.QtCore.QSize.Class := new QtAda6.QtCore.QSize.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "span");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if index_P /= null then index_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end span;
   function span
     (self : access Inst; index_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class)
      return access QtAda6.QtCore.QSize.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret                                          : constant QtAda6.QtCore.QSize.Class := new QtAda6.QtCore.QSize.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "span");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if index_P /= null then index_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end span;
   function submit (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "submit");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end submit;
   function supportedDragActions (self : access Inst) return access QtAda6.QtCore.Qt.DropAction.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.DropAction.Class := new QtAda6.QtCore.Qt.DropAction.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "supportedDragActions");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end supportedDragActions;
   function supportedDropActions (self : access Inst) return access QtAda6.QtCore.Qt.DropAction.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.DropAction.Class := new QtAda6.QtCore.Qt.DropAction.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "supportedDropActions");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end supportedDropActions;
end QtAda6.QtCore.QAbstractItemModel;
