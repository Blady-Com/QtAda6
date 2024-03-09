-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qtablewidget.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Py; use Py;
with Ada.Unchecked_Deallocation;
with QtAda6.QtCore.Signal;
with QtAda6.QtWidgets.QWidget;
with QtAda6.QtWidgets.QTableWidgetItem;
with QtAda6.QtGui.QDropEvent;
with QtAda6.QtCore.QMimeData;
with QtAda6.QtCore.Qt.DropAction;
with QtAda6.QtCore.QEvent;
with QtAda6.QtCore.Qt.MatchFlag;
with QtAda6.QtCore.QModelIndex;
with QtAda6.QtCore.QPoint;
with QtAda6.QtWidgets.QAbstractItemView.ScrollHint;
with QtAda6.QtWidgets.QTableWidgetSelectionRange;
with QtAda6.QtCore.QItemSelectionModel.SelectionFlag;
with QtAda6.QtCore.QAbstractItemModel;
with QtAda6.QtCore.Qt.SortOrder;
with QtAda6.QtCore.QRect;
package body QtAda6.QtWidgets.QTableWidget is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function cellActivated (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "cellActivated"));
   end cellActivated;
   function cellChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "cellChanged"));
   end cellChanged;
   function cellClicked (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "cellClicked"));
   end cellClicked;
   function cellDoubleClicked (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "cellDoubleClicked"));
   end cellDoubleClicked;
   function cellEntered (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "cellEntered"));
   end cellEntered;
   function cellPressed (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "cellPressed"));
   end cellPressed;
   function currentCellChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "currentCellChanged"));
   end currentCellChanged;
   function currentItemChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "currentItemChanged"));
   end currentItemChanged;
   function itemActivated (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "itemActivated"));
   end itemActivated;
   function itemChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "itemChanged"));
   end itemChanged;
   function itemClicked (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "itemClicked"));
   end itemClicked;
   function itemDoubleClicked (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "itemDoubleClicked"));
   end itemDoubleClicked;
   function itemEntered (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "itemEntered"));
   end itemEntered;
   function itemPressed (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "itemPressed"));
   end itemPressed;
   function itemSelectionChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'
          (Python_Proxy => Object_GetAttrString (self.Python_Proxy, "itemSelectionChanged"));
   end itemSelectionChanged;
   function Create (parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QTableWidget");
      Args  := Tuple_New (0);
      Dict  := Dict_New;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (rows_P : int; columns_P : int; parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QTableWidget");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (rows_P));
      Tuple_SetItem (Args, 1, Long_FromLong (columns_P));
      Dict := Dict_New;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function cellWidget
     (self : access Inst; row_P : int; column_P : int) return access QtAda6.QtWidgets.QWidget.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QWidget.Class := new QtAda6.QtWidgets.QWidget.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "cellWidget");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Tuple_SetItem (Args, 1, Long_FromLong (column_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end cellWidget;
   procedure clear (self : access Inst) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "clear");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end clear;
   procedure clearContents (self : access Inst) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "clearContents");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end clearContents;
   procedure closePersistentEditor (self : access Inst; item_P : access QtAda6.QtWidgets.QTableWidgetItem.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "closePersistentEditor");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if item_P /= null then item_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end closePersistentEditor;
   function column (self : access Inst; item_P : access QtAda6.QtWidgets.QTableWidgetItem.Inst'Class) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "column");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if item_P /= null then item_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end column;
   function columnCount (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "columnCount");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end columnCount;
   function currentColumn (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "currentColumn");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end currentColumn;
   function currentItem (self : access Inst) return access QtAda6.QtWidgets.QTableWidgetItem.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QTableWidgetItem.Class := new QtAda6.QtWidgets.QTableWidgetItem.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "currentItem");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end currentItem;
   function currentRow (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "currentRow");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end currentRow;
   procedure dropEvent (self : access Inst; event_P : access QtAda6.QtGui.QDropEvent.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "dropEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end dropEvent;
   function dropMimeData
     (self     : access Inst; row_P : int; column_P : int; data_P : access QtAda6.QtCore.QMimeData.Inst'Class;
      action_P : access QtAda6.QtCore.Qt.DropAction.Inst'Class) return bool
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "dropMimeData");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Tuple_SetItem (Args, 1, Long_FromLong (column_P));
      Tuple_SetItem (Args, 2, (if data_P /= null then data_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if action_P /= null then action_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end dropMimeData;
   procedure editItem (self : access Inst; item_P : access QtAda6.QtWidgets.QTableWidgetItem.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "editItem");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if item_P /= null then item_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end editItem;
   function event (self : access Inst; e_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "event");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if e_P /= null then e_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end event;
   function findItems
     (self : access Inst; text_P : str; flags_P : access QtAda6.QtCore.Qt.MatchFlag.Inst'Class)
      return LIST_QtAda6_QtWidgets_QTableWidgetItem
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "findItems");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (text_P));
      Tuple_SetItem (Args, 1, (if flags_P /= null then flags_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return (2 .. 1 => <>);
   end findItems;
   function horizontalHeaderItem
     (self : access Inst; column_P : int) return access QtAda6.QtWidgets.QTableWidgetItem.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QTableWidgetItem.Class := new QtAda6.QtWidgets.QTableWidgetItem.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "horizontalHeaderItem");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (column_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end horizontalHeaderItem;
   function indexFromItem
     (self : access Inst; item_P : access QtAda6.QtWidgets.QTableWidgetItem.Inst'Class)
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
   procedure insertColumn (self : access Inst; column_P : int) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "insertColumn");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (column_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end insertColumn;
   procedure insertRow (self : access Inst; row_P : int) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "insertRow");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end insertRow;
   function isPersistentEditorOpen
     (self : access Inst; item_P : access QtAda6.QtWidgets.QTableWidgetItem.Inst'Class) return bool
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isPersistentEditorOpen");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if item_P /= null then item_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isPersistentEditorOpen;
   function isSortingEnabled (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isSortingEnabled");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isSortingEnabled;
   function item
     (self : access Inst; row_P : int; column_P : int) return access QtAda6.QtWidgets.QTableWidgetItem.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QTableWidgetItem.Class := new QtAda6.QtWidgets.QTableWidgetItem.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "item");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Tuple_SetItem (Args, 1, Long_FromLong (column_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end item;
   function itemAt
     (self : access Inst; p_P : access QtAda6.QtCore.QPoint.Inst'Class)
      return access QtAda6.QtWidgets.QTableWidgetItem.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QTableWidgetItem.Class := new QtAda6.QtWidgets.QTableWidgetItem.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "itemAt");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if p_P /= null then p_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end itemAt;
   function itemAt (self : access Inst; x_P : int; y_P : int) return access QtAda6.QtWidgets.QTableWidgetItem.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QTableWidgetItem.Class := new QtAda6.QtWidgets.QTableWidgetItem.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "itemAt");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (x_P));
      Tuple_SetItem (Args, 1, Long_FromLong (y_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end itemAt;
   function itemFromIndex
     (self : access Inst; index_P : UNION_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex)
      return access QtAda6.QtWidgets.QTableWidgetItem.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QTableWidgetItem.Class := new QtAda6.QtWidgets.QTableWidgetItem.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "itemFromIndex");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if index_P /= null then index_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end itemFromIndex;
   function itemPrototype (self : access Inst) return access QtAda6.QtWidgets.QTableWidgetItem.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QTableWidgetItem.Class := new QtAda6.QtWidgets.QTableWidgetItem.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "itemPrototype");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end itemPrototype;
   function items
     (self : access Inst; data_P : access QtAda6.QtCore.QMimeData.Inst'Class)
      return LIST_QtAda6_QtWidgets_QTableWidgetItem
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "items");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if data_P /= null then data_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return (2 .. 1 => <>);
   end items;
   function mimeData
     (self : access Inst; items_P : SEQUENCE_QtAda6_QtWidgets_QTableWidgetItem)
      return access QtAda6.QtCore.QMimeData.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QMimeData.Class := new QtAda6.QtCore.QMimeData.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mimeData");
      List   := List_New (items_P'Length);
      for ind in items_P'Range loop
         List_SetItem
           (List, ssize_t (ind - items_P'First),
            (if items_P (ind) /= null then items_P (ind).Python_Proxy else No_Value));
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
   procedure openPersistentEditor (self : access Inst; item_P : access QtAda6.QtWidgets.QTableWidgetItem.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "openPersistentEditor");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if item_P /= null then item_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end openPersistentEditor;
   procedure removeCellWidget (self : access Inst; row_P : int; column_P : int) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "removeCellWidget");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Tuple_SetItem (Args, 1, Long_FromLong (column_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end removeCellWidget;
   procedure removeColumn (self : access Inst; column_P : int) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "removeColumn");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (column_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end removeColumn;
   procedure removeRow (self : access Inst; row_P : int) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "removeRow");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end removeRow;
   function row (self : access Inst; item_P : access QtAda6.QtWidgets.QTableWidgetItem.Inst'Class) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "row");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if item_P /= null then item_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end row;
   function rowCount (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "rowCount");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end rowCount;
   procedure scrollToItem
     (self   : access Inst; item_P : access QtAda6.QtWidgets.QTableWidgetItem.Inst'Class;
      hint_P : access QtAda6.QtWidgets.QAbstractItemView.ScrollHint.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "scrollToItem");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if item_P /= null then item_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if hint_P /= null then
         Dict_SetItemString (Dict, "hint", hint_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end scrollToItem;
   function selectedItems (self : access Inst) return LIST_QtAda6_QtWidgets_QTableWidgetItem is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "selectedItems");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return (2 .. 1 => <>);
   end selectedItems;
   function selectedRanges (self : access Inst) return LIST_QtAda6_QtWidgets_QTableWidgetSelectionRange is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "selectedRanges");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return (2 .. 1 => <>);
   end selectedRanges;
   procedure setCellWidget
     (self : access Inst; row_P : int; column_P : int; widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setCellWidget");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Tuple_SetItem (Args, 1, Long_FromLong (column_P));
      Tuple_SetItem (Args, 2, (if widget_P /= null then widget_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setCellWidget;
   procedure setColumnCount (self : access Inst; columns_P : int) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setColumnCount");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (columns_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setColumnCount;
   procedure setCurrentCell (self : access Inst; row_P : int; column_P : int) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setCurrentCell");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Tuple_SetItem (Args, 1, Long_FromLong (column_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setCurrentCell;
   procedure setCurrentCell
     (self      : access Inst; row_P : int; column_P : int;
      command_P : access QtAda6.QtCore.QItemSelectionModel.SelectionFlag.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setCurrentCell");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Tuple_SetItem (Args, 1, Long_FromLong (column_P));
      Tuple_SetItem (Args, 2, (if command_P /= null then command_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setCurrentCell;
   procedure setCurrentItem (self : access Inst; item_P : access QtAda6.QtWidgets.QTableWidgetItem.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setCurrentItem");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if item_P /= null then item_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setCurrentItem;
   procedure setCurrentItem
     (self      : access Inst; item_P : access QtAda6.QtWidgets.QTableWidgetItem.Inst'Class;
      command_P : access QtAda6.QtCore.QItemSelectionModel.SelectionFlag.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setCurrentItem");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if item_P /= null then item_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if command_P /= null then command_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setCurrentItem;
   procedure setHorizontalHeaderItem
     (self : access Inst; column_P : int; item_P : access QtAda6.QtWidgets.QTableWidgetItem.Inst'Class)
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
     (self : access Inst; row_P : int; column_P : int; item_P : access QtAda6.QtWidgets.QTableWidgetItem.Inst'Class)
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
   procedure setItemPrototype (self : access Inst; item_P : access QtAda6.QtWidgets.QTableWidgetItem.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setItemPrototype");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if item_P /= null then item_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setItemPrototype;
   procedure setModel (self : access Inst; model_P : access QtAda6.QtCore.QAbstractItemModel.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setModel");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if model_P /= null then model_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setModel;
   procedure setRangeSelected
     (self : access Inst; range_K_P : access QtAda6.QtWidgets.QTableWidgetSelectionRange.Inst'Class; select_K_P : bool)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setRangeSelected");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if range_K_P /= null then range_K_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, To_Python (select_K_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setRangeSelected;
   procedure setRowCount (self : access Inst; rows_P : int) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setRowCount");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (rows_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setRowCount;
   procedure setSortingEnabled (self : access Inst; enable_P : bool) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setSortingEnabled");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (enable_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setSortingEnabled;
   procedure setVerticalHeaderItem
     (self : access Inst; row_P : int; item_P : access QtAda6.QtWidgets.QTableWidgetItem.Inst'Class)
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
   procedure sortItems
     (self : access Inst; column_P : int; order_P : access QtAda6.QtCore.Qt.SortOrder.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "sortItems");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (column_P));
      Dict := Dict_New;
      if order_P /= null then
         Dict_SetItemString (Dict, "order", order_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end sortItems;
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
   function takeHorizontalHeaderItem
     (self : access Inst; column_P : int) return access QtAda6.QtWidgets.QTableWidgetItem.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QTableWidgetItem.Class := new QtAda6.QtWidgets.QTableWidgetItem.Inst;
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
     (self : access Inst; row_P : int; column_P : int) return access QtAda6.QtWidgets.QTableWidgetItem.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QTableWidgetItem.Class := new QtAda6.QtWidgets.QTableWidgetItem.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "takeItem");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Tuple_SetItem (Args, 1, Long_FromLong (column_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end takeItem;
   function takeVerticalHeaderItem
     (self : access Inst; row_P : int) return access QtAda6.QtWidgets.QTableWidgetItem.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QTableWidgetItem.Class := new QtAda6.QtWidgets.QTableWidgetItem.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "takeVerticalHeaderItem");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end takeVerticalHeaderItem;
   function verticalHeaderItem
     (self : access Inst; row_P : int) return access QtAda6.QtWidgets.QTableWidgetItem.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QTableWidgetItem.Class := new QtAda6.QtWidgets.QTableWidgetItem.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "verticalHeaderItem");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end verticalHeaderItem;
   function visualColumn (self : access Inst; logicalColumn_P : int) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "visualColumn");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (logicalColumn_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end visualColumn;
   function visualItemRect
     (self : access Inst; item_P : access QtAda6.QtWidgets.QTableWidgetItem.Inst'Class)
      return access QtAda6.QtCore.QRect.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QRect.Class := new QtAda6.QtCore.QRect.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "visualItemRect");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if item_P /= null then item_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end visualItemRect;
   function visualRow (self : access Inst; logicalRow_P : int) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "visualRow");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (logicalRow_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end visualRow;
end QtAda6.QtWidgets.QTableWidget;
