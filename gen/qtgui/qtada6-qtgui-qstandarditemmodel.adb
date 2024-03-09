-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qstandarditemmodel.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Py; use Py;
with Ada.Unchecked_Deallocation;
with QtAda6.QtCore.Signal;
with QtAda6.QtCore.QObject;
with QtAda6.QtGui.QStandardItem;
with QtAda6.QtCore.QMimeData;
with QtAda6.QtCore.Qt.DropAction;
with QtAda6.QtCore.Qt.MatchFlag;
with QtAda6.QtCore.Qt.ItemFlag;
with QtAda6.QtCore.Qt.Orientation;
with QtAda6.QtCore.QModelIndex;
with QtAda6.QtCore.QByteArray;
with QtAda6.QtCore.Qt.SortOrder;
package body QtAda6.QtGui.QStandardItemModel is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function itemChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "itemChanged"));
   end itemChanged;
   function Create (parent_P : access QtAda6.QtCore.QObject.Inst'Class := null) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QStandardItemModel");
      Args  := Tuple_New (0);
      Dict  := Dict_New;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (rows_P : int; columns_P : int; parent_P : access QtAda6.QtCore.QObject.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QStandardItemModel");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (rows_P));
      Tuple_SetItem (Args, 1, Long_FromLong (columns_P));
      Dict := Dict_New;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   procedure appendColumn (self : access Inst; items_P : SEQUENCE_QtAda6_QtGui_QStandardItem) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "appendColumn");
      List   := List_New (items_P'Length);
      for ind in items_P'Range loop
         List_SetItem
           (List, ssize_t (ind - items_P'First),
            (if items_P (ind) /= null then items_P (ind).Python_Proxy else No_Value));
      end loop;
      Args := Tuple_New (1);
      Tuple_SetItem (Args, 0, List);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end appendColumn;
   procedure appendRow (self : access Inst; item_P : access QtAda6.QtGui.QStandardItem.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "appendRow");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if item_P /= null then item_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end appendRow;
   procedure appendRow (self : access Inst; items_P : SEQUENCE_QtAda6_QtGui_QStandardItem) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "appendRow");
      List   := List_New (items_P'Length);
      for ind in items_P'Range loop
         List_SetItem
           (List, ssize_t (ind - items_P'First),
            (if items_P (ind) /= null then items_P (ind).Python_Proxy else No_Value));
      end loop;
      Args := Tuple_New (1);
      Tuple_SetItem (Args, 0, List);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end appendRow;
   procedure clear (self : access Inst) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "clear");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end clear;
   function clearItemData
     (self : access Inst; index_P : UNION_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex) return bool
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "clearItemData");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if index_P /= null then index_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end clearItemData;
   function columnCount
     (self : access Inst; parent_P : UNION_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex := null)
      return int
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
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
   function data
     (self   : access Inst; index_P : UNION_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex;
      role_P : int := 0) return Any
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
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
   function dropMimeData
     (self     : access Inst; data_P : access QtAda6.QtCore.QMimeData.Inst'Class;
      action_P : access QtAda6.QtCore.Qt.DropAction.Inst'Class; row_P : int; column_P : int;
      parent_P : UNION_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex) return bool
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
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
   function findItems
     (self     : access Inst; text_P : str; flags_P : access QtAda6.QtCore.Qt.MatchFlag.Inst'Class := null;
      column_P : int := 0) return LIST_QtAda6_QtGui_QStandardItem
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "findItems");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (text_P));
      Dict := Dict_New;
      if flags_P /= null then
         Dict_SetItemString (Dict, "flags", flags_P.Python_Proxy);
      end if;
      if column_P /= 0 then
         Dict_SetItemString (Dict, "column", Long_FromLong (column_P));
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return (2 .. 1 => <>);
   end findItems;
   function flags
     (self : access Inst; index_P : UNION_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex)
      return access QtAda6.QtCore.Qt.ItemFlag.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
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
   function hasChildren
     (self : access Inst; parent_P : UNION_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex := null)
      return bool
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
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
   function headerData
     (self   : access Inst; section_P : int; orientation_P : access QtAda6.QtCore.Qt.Orientation.Inst'Class;
      role_P : int := 0) return Any
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
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
   function horizontalHeaderItem
     (self : access Inst; column_P : int) return access QtAda6.QtGui.QStandardItem.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QStandardItem.Class := new QtAda6.QtGui.QStandardItem.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "horizontalHeaderItem");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (column_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end horizontalHeaderItem;
   function index
     (self     : access Inst; row_P : int; column_P : int;
      parent_P : UNION_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex := null)
      return access QtAda6.QtCore.QModelIndex.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
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
   function indexFromItem
     (self : access Inst; item_P : access QtAda6.QtGui.QStandardItem.Inst'Class)
      return access QtAda6.QtCore.QModelIndex.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QModelIndex.Class := new QtAda6.QtCore.QModelIndex.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "indexFromItem");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if item_P /= null then item_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end indexFromItem;
   procedure insertColumn (self : access Inst; column_P : int; items_P : SEQUENCE_QtAda6_QtGui_QStandardItem) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "insertColumn");
      List   := List_New (items_P'Length);
      for ind in items_P'Range loop
         List_SetItem
           (List, ssize_t (ind - items_P'First),
            (if items_P (ind) /= null then items_P (ind).Python_Proxy else No_Value));
      end loop;
      Args := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (column_P));
      Tuple_SetItem (Args, 1, List);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end insertColumn;
   function insertColumn
     (self     : access Inst; column_P : int;
      parent_P : UNION_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex := null) return bool
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
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
     (self     : access Inst; column_P : int; count_P : int;
      parent_P : UNION_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex := null) return bool
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
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
   procedure insertRow (self : access Inst; row_P : int; item_P : access QtAda6.QtGui.QStandardItem.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "insertRow");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Tuple_SetItem (Args, 1, (if item_P /= null then item_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end insertRow;
   procedure insertRow (self : access Inst; row_P : int; items_P : SEQUENCE_QtAda6_QtGui_QStandardItem) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "insertRow");
      List   := List_New (items_P'Length);
      for ind in items_P'Range loop
         List_SetItem
           (List, ssize_t (ind - items_P'First),
            (if items_P (ind) /= null then items_P (ind).Python_Proxy else No_Value));
      end loop;
      Args := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Tuple_SetItem (Args, 1, List);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end insertRow;
   function insertRow
     (self     : access Inst; row_P : int;
      parent_P : UNION_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex := null) return bool
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
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
     (self     : access Inst; row_P : int; count_P : int;
      parent_P : UNION_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex := null) return bool
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
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
   function invisibleRootItem (self : access Inst) return access QtAda6.QtGui.QStandardItem.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QStandardItem.Class := new QtAda6.QtGui.QStandardItem.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "invisibleRootItem");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end invisibleRootItem;
   function item
     (self : access Inst; row_P : int; column_P : int := 0) return access QtAda6.QtGui.QStandardItem.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QStandardItem.Class := new QtAda6.QtGui.QStandardItem.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "item");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Dict := Dict_New;
      if column_P /= 0 then
         Dict_SetItemString (Dict, "column", Long_FromLong (column_P));
      end if;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end item;
   function itemData
     (self : access Inst; index_P : UNION_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex)
      return DICT_int_Any
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
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
   function itemFromIndex
     (self : access Inst; index_P : UNION_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex)
      return access QtAda6.QtGui.QStandardItem.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QStandardItem.Class := new QtAda6.QtGui.QStandardItem.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "itemFromIndex");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if index_P /= null then index_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end itemFromIndex;
   function itemPrototype (self : access Inst) return access QtAda6.QtGui.QStandardItem.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QStandardItem.Class := new QtAda6.QtGui.QStandardItem.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "itemPrototype");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end itemPrototype;
   function mimeData
     (self : access Inst; indexes_P : SEQUENCE_QtAda6_QtCore_QModelIndex)
      return access QtAda6.QtCore.QMimeData.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QMimeData.Class := new QtAda6.QtCore.QMimeData.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mimeData");
      List   := List_New (indexes_P'Length);
      for ind in indexes_P'Range loop
         List_SetItem
           (List, ssize_t (ind - indexes_P'First),
            (if indexes_P (ind) /= null then indexes_P (ind).Python_Proxy else No_Value));
      end loop;
      Args := Tuple_New (1);
      Tuple_SetItem (Args, 0, List);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mimeData;
   function mimeTypes (self : access Inst) return LIST_str is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mimeTypes");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return (2 .. 1 => <>);
   end mimeTypes;
   function parent (self : access Inst) return access QtAda6.QtCore.QObject.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QObject.Class := new QtAda6.QtCore.QObject.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "parent");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end parent;
   function parent
     (self : access Inst; child_P : UNION_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex)
      return access QtAda6.QtCore.QModelIndex.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
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
   function removeColumns
     (self     : access Inst; column_P : int; count_P : int;
      parent_P : UNION_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex := null) return bool
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
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
   function removeRows
     (self     : access Inst; row_P : int; count_P : int;
      parent_P : UNION_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex := null) return bool
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
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
   function roleNames (self : access Inst) return DICT_int_QtAda6_QtCore_QByteArray is
      Method, Args, Dict, List, Tuple, Result : Handle;
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
   function rowCount
     (self : access Inst; parent_P : UNION_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex := null)
      return int
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
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
   procedure setColumnCount (self : access Inst; columns_P : int) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setColumnCount");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (columns_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setColumnCount;
   function setData
     (self : access Inst; index_P : UNION_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex; value_P : Any;
      role_P : int := 0) return bool
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
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
      Method, Args, Dict, List, Tuple, Result : Handle;
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
   procedure setHorizontalHeaderItem
     (self : access Inst; column_P : int; item_P : access QtAda6.QtGui.QStandardItem.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setHorizontalHeaderItem");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (column_P));
      Tuple_SetItem (Args, 1, (if item_P /= null then item_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setHorizontalHeaderItem;
   procedure setHorizontalHeaderLabels (self : access Inst; labels_P : SEQUENCE_str) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setHorizontalHeaderLabels");
      List   := List_New (labels_P'Length);
      for ind in labels_P'Range loop
         List_SetItem (List, ssize_t (ind - labels_P'First), Unicode_FromString (labels_P (ind)));
      end loop;
      Args := Tuple_New (1);
      Tuple_SetItem (Args, 0, List);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setHorizontalHeaderLabels;
   procedure setItem
     (self : access Inst; row_P : int; column_P : int; item_P : access QtAda6.QtGui.QStandardItem.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setItem");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Tuple_SetItem (Args, 1, Long_FromLong (column_P));
      Tuple_SetItem (Args, 2, (if item_P /= null then item_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setItem;
   procedure setItem (self : access Inst; row_P : int; item_P : access QtAda6.QtGui.QStandardItem.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setItem");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Tuple_SetItem (Args, 1, (if item_P /= null then item_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setItem;
   function setItemData
     (self    : access Inst; index_P : UNION_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex;
      roles_P : DICT_int_Any) return bool
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setItemData");
      Tuple  := Tuple_New (2);
      Tuple_SetItem (Tuple, 0, Long_FromLong (roles_P.C0));
      Tuple_SetItem (Tuple, 1, (if roles_P.C1 /= null then roles_P.C1.Python_Proxy else No_Value));
      Args := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if index_P /= null then index_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Tuple);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end setItemData;
   procedure setItemPrototype (self : access Inst; item_P : access QtAda6.QtGui.QStandardItem.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setItemPrototype");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if item_P /= null then item_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setItemPrototype;
   procedure setItemRoleNames (self : access Inst; roleNames_P : DICT_int_QtAda6_QtCore_QByteArray) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setItemRoleNames");
      Tuple  := Tuple_New (2);
      Tuple_SetItem (Tuple, 0, Long_FromLong (roleNames_P.C0));
      Tuple_SetItem (Tuple, 1, (if roleNames_P.C1 /= null then roleNames_P.C1.Python_Proxy else No_Value));
      Args := Tuple_New (1);
      Tuple_SetItem (Args, 0, Tuple);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setItemRoleNames;
   procedure setRowCount (self : access Inst; rows_P : int) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setRowCount");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (rows_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setRowCount;
   procedure setSortRole (self : access Inst; role_P : int) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setSortRole");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (role_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setSortRole;
   procedure setVerticalHeaderItem
     (self : access Inst; row_P : int; item_P : access QtAda6.QtGui.QStandardItem.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setVerticalHeaderItem");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Tuple_SetItem (Args, 1, (if item_P /= null then item_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setVerticalHeaderItem;
   procedure setVerticalHeaderLabels (self : access Inst; labels_P : SEQUENCE_str) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setVerticalHeaderLabels");
      List   := List_New (labels_P'Length);
      for ind in labels_P'Range loop
         List_SetItem (List, ssize_t (ind - labels_P'First), Unicode_FromString (labels_P (ind)));
      end loop;
      Args := Tuple_New (1);
      Tuple_SetItem (Args, 0, List);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setVerticalHeaderLabels;
   procedure sort (self : access Inst; column_P : int; order_P : access QtAda6.QtCore.Qt.SortOrder.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
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
   function sortRole (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "sortRole");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end sortRole;
   function supportedDropActions (self : access Inst) return access QtAda6.QtCore.Qt.DropAction.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.DropAction.Class := new QtAda6.QtCore.Qt.DropAction.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "supportedDropActions");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end supportedDropActions;
   function takeColumn (self : access Inst; column_P : int) return LIST_QtAda6_QtGui_QStandardItem is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "takeColumn");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (column_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return (2 .. 1 => <>);
   end takeColumn;
   function takeHorizontalHeaderItem
     (self : access Inst; column_P : int) return access QtAda6.QtGui.QStandardItem.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QStandardItem.Class := new QtAda6.QtGui.QStandardItem.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "takeHorizontalHeaderItem");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (column_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end takeHorizontalHeaderItem;
   function takeItem
     (self : access Inst; row_P : int; column_P : int := 0) return access QtAda6.QtGui.QStandardItem.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QStandardItem.Class := new QtAda6.QtGui.QStandardItem.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "takeItem");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Dict := Dict_New;
      if column_P /= 0 then
         Dict_SetItemString (Dict, "column", Long_FromLong (column_P));
      end if;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end takeItem;
   function takeRow (self : access Inst; row_P : int) return LIST_QtAda6_QtGui_QStandardItem is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "takeRow");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return (2 .. 1 => <>);
   end takeRow;
   function takeVerticalHeaderItem (self : access Inst; row_P : int) return access QtAda6.QtGui.QStandardItem.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QStandardItem.Class := new QtAda6.QtGui.QStandardItem.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "takeVerticalHeaderItem");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end takeVerticalHeaderItem;
   function verticalHeaderItem (self : access Inst; row_P : int) return access QtAda6.QtGui.QStandardItem.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QStandardItem.Class := new QtAda6.QtGui.QStandardItem.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "verticalHeaderItem");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end verticalHeaderItem;
end QtAda6.QtGui.QStandardItemModel;
