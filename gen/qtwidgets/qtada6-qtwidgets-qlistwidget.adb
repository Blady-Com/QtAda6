-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qlistwidget.adb
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
with QtAda6.QtWidgets.QListView;
with QtAda6.QtWidgets.QWidget;
with QtAda6.QtWidgets.QListWidgetItem;
with QtAda6.QtGui.QDropEvent;
with QtAda6.QtCore.QMimeData;
with QtAda6.QtCore.Qt.DropAction;
with QtAda6.QtCore.QEvent;
with QtAda6.QtCore.Qt.MatchFlag;
with QtAda6.QtCore.QModelIndex;
with QtAda6.QtCore.QPoint;
with QtAda6.QtCore.QPersistentModelIndex;
with QtAda6.QtWidgets.QAbstractItemView.ScrollHint;
with QtAda6.QtCore.QItemSelectionModel.SelectionFlag;
with QtAda6.QtCore.QAbstractItemModel;
with QtAda6.QtCore.QItemSelectionModel;
with QtAda6.QtCore.Qt.SortOrder;
with QtAda6.QtCore.QRect;
package body QtAda6.QtWidgets.QListWidget is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function currentItemChanged (self : access Inst) return CLASSVAR_Signal is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "currentItemChanged"));
   end currentItemChanged;
   function currentRowChanged (self : access Inst) return CLASSVAR_Signal is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "currentRowChanged"));
   end currentRowChanged;
   function currentTextChanged (self : access Inst) return CLASSVAR_Signal is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "currentTextChanged"));
   end currentTextChanged;
   function itemActivated (self : access Inst) return CLASSVAR_Signal is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "itemActivated"));
   end itemActivated;
   function itemChanged (self : access Inst) return CLASSVAR_Signal is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "itemChanged"));
   end itemChanged;
   function itemClicked (self : access Inst) return CLASSVAR_Signal is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "itemClicked"));
   end itemClicked;
   function itemDoubleClicked (self : access Inst) return CLASSVAR_Signal is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "itemDoubleClicked"));
   end itemDoubleClicked;
   function itemEntered (self : access Inst) return CLASSVAR_Signal is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "itemEntered"));
   end itemEntered;
   function itemPressed (self : access Inst) return CLASSVAR_Signal is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "itemPressed"));
   end itemPressed;
   function itemSelectionChanged (self : access Inst) return CLASSVAR_Signal is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'
          (Python_Proxy => Object_GetAttrString (self.Python_Proxy, "itemSelectionChanged"));
   end itemSelectionChanged;
   function Create (parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null) return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QListWidget");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if parent_P /= null then parent_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   procedure addItem (self : access Inst; item_P : access QtAda6.QtWidgets.QListWidgetItem.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addItem");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if item_P /= null then item_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end addItem;
   procedure addItem (self : access Inst; label_P : str) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addItem");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (label_P));
      Result := Object_CallObject (Method, Args, True);
   end addItem;
   procedure addItems (self : access Inst; labels_P : SEQUENCE_str) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addItems");
      List   := List_New (labels_P'Length);
      for ind in labels_P'Range loop
         List_SetItem (List, ssize_t (ind - labels_P'First), Unicode_FromString (labels_P (ind)));
      end loop;
      Args := Tuple_New (1);
      Tuple_SetItem (Args, 0, List);
      Result := Object_CallObject (Method, Args, True);
   end addItems;
   procedure clear (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "clear");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end clear;
   procedure closePersistentEditor (self : access Inst; item_P : access QtAda6.QtWidgets.QListWidgetItem.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "closePersistentEditor");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if item_P /= null then item_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end closePersistentEditor;
   function count (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "count");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end count;
   function currentItem (self : access Inst) return access QtAda6.QtWidgets.QListWidgetItem.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QListWidgetItem.Class := new QtAda6.QtWidgets.QListWidgetItem.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "currentItem");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end currentItem;
   function currentRow (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "currentRow");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end currentRow;
   procedure dropEvent (self : access Inst; event_P : access QtAda6.QtGui.QDropEvent.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "dropEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end dropEvent;
   function dropMimeData
     (self     : access Inst; index_P : int; data_P : access QtAda6.QtCore.QMimeData.Inst'Class;
      action_P : access QtAda6.QtCore.Qt.DropAction.Inst'Class) return bool
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "dropMimeData");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (index_P));
      Tuple_SetItem (Args, 1, (if data_P /= null then data_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if action_P /= null then action_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end dropMimeData;
   procedure editItem (self : access Inst; item_P : access QtAda6.QtWidgets.QListWidgetItem.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "editItem");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if item_P /= null then item_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end editItem;
   function event (self : access Inst; e_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "event");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if e_P /= null then e_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end event;
   function findItems
     (self : access Inst; text_P : str; flags_P : access QtAda6.QtCore.Qt.MatchFlag.Inst'Class)
      return LIST_QtAda6_QtWidgets_QListWidgetItem
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "findItems");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (text_P));
      Tuple_SetItem (Args, 1, (if flags_P /= null then flags_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return (2 .. 1 => <>);
   end findItems;
   function indexFromItem
     (self : access Inst; item_P : access QtAda6.QtWidgets.QListWidgetItem.Inst'Class)
      return access QtAda6.QtCore.QModelIndex.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QModelIndex.Class := new QtAda6.QtCore.QModelIndex.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "indexFromItem");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if item_P /= null then item_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end indexFromItem;
   procedure insertItem (self : access Inst; row_P : int; item_P : access QtAda6.QtWidgets.QListWidgetItem.Inst'Class)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "insertItem");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Tuple_SetItem (Args, 1, (if item_P /= null then item_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end insertItem;
   procedure insertItem (self : access Inst; row_P : int; label_P : str) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "insertItem");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Tuple_SetItem (Args, 1, Unicode_FromString (label_P));
      Result := Object_CallObject (Method, Args, True);
   end insertItem;
   procedure insertItems (self : access Inst; row_P : int; labels_P : SEQUENCE_str) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "insertItems");
      List   := List_New (labels_P'Length);
      for ind in labels_P'Range loop
         List_SetItem (List, ssize_t (ind - labels_P'First), Unicode_FromString (labels_P (ind)));
      end loop;
      Args := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Tuple_SetItem (Args, 1, List);
      Result := Object_CallObject (Method, Args, True);
   end insertItems;
   function isPersistentEditorOpen
     (self : access Inst; item_P : access QtAda6.QtWidgets.QListWidgetItem.Inst'Class) return bool
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isPersistentEditorOpen");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if item_P /= null then item_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isPersistentEditorOpen;
   function isSortingEnabled (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isSortingEnabled");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isSortingEnabled;
   function item (self : access Inst; row_P : int) return access QtAda6.QtWidgets.QListWidgetItem.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QListWidgetItem.Class := new QtAda6.QtWidgets.QListWidgetItem.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "item");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end item;
   function itemAt
     (self : access Inst; p_P : access QtAda6.QtCore.QPoint.Inst'Class)
      return access QtAda6.QtWidgets.QListWidgetItem.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QListWidgetItem.Class := new QtAda6.QtWidgets.QListWidgetItem.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "itemAt");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if p_P /= null then p_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end itemAt;
   function itemAt (self : access Inst; x_P : int; y_P : int) return access QtAda6.QtWidgets.QListWidgetItem.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QListWidgetItem.Class := new QtAda6.QtWidgets.QListWidgetItem.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "itemAt");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (x_P));
      Tuple_SetItem (Args, 1, Long_FromLong (y_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end itemAt;
   function itemFromIndex
     (self : access Inst; index_P : UNION_QtAda6_QtCore_QModelIndexQtAda6_QtCore_QPersistentModelIndex)
      return access QtAda6.QtWidgets.QListWidgetItem.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QListWidgetItem.Class := new QtAda6.QtWidgets.QListWidgetItem.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "itemFromIndex");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if index_P /= null then index_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end itemFromIndex;
   function itemWidget
     (self : access Inst; item_P : access QtAda6.QtWidgets.QListWidgetItem.Inst'Class)
      return access QtAda6.QtWidgets.QWidget.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtWidgets.QWidget.Class := new QtAda6.QtWidgets.QWidget.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "itemWidget");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if item_P /= null then item_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end itemWidget;
   function items
     (self : access Inst; data_P : access QtAda6.QtCore.QMimeData.Inst'Class)
      return LIST_QtAda6_QtWidgets_QListWidgetItem
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "items");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if data_P /= null then data_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return (2 .. 1 => <>);
   end items;
   function mimeData
     (self : access Inst; items_P : SEQUENCE_QtAda6_QtWidgets_QListWidgetItem)
      return access QtAda6.QtCore.QMimeData.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QMimeData.Class := new QtAda6.QtCore.QMimeData.Inst;
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
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mimeData;
   function mimeTypes (self : access Inst) return LIST_str is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mimeTypes");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return (2 .. 1 => <>);
   end mimeTypes;
   procedure openPersistentEditor (self : access Inst; item_P : access QtAda6.QtWidgets.QListWidgetItem.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "openPersistentEditor");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if item_P /= null then item_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end openPersistentEditor;
   procedure removeItemWidget (self : access Inst; item_P : access QtAda6.QtWidgets.QListWidgetItem.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "removeItemWidget");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if item_P /= null then item_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end removeItemWidget;
   function row (self : access Inst; item_P : access QtAda6.QtWidgets.QListWidgetItem.Inst'Class) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "row");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if item_P /= null then item_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end row;
   procedure scrollToItem
     (self   : access Inst; item_P : access QtAda6.QtWidgets.QListWidgetItem.Inst'Class;
      hint_P : access QtAda6.QtWidgets.QAbstractItemView.ScrollHint.Inst'Class := null)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "scrollToItem");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if item_P /= null then item_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if hint_P /= null then hint_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end scrollToItem;
   function selectedItems (self : access Inst) return LIST_QtAda6_QtWidgets_QListWidgetItem is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "selectedItems");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return (2 .. 1 => <>);
   end selectedItems;
   procedure setCurrentItem (self : access Inst; item_P : access QtAda6.QtWidgets.QListWidgetItem.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setCurrentItem");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if item_P /= null then item_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setCurrentItem;
   procedure setCurrentItem
     (self      : access Inst; item_P : access QtAda6.QtWidgets.QListWidgetItem.Inst'Class;
      command_P : access QtAda6.QtCore.QItemSelectionModel.SelectionFlag.Inst'Class)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setCurrentItem");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if item_P /= null then item_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if command_P /= null then command_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setCurrentItem;
   procedure setCurrentRow (self : access Inst; row_P : int) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setCurrentRow");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Result := Object_CallObject (Method, Args, True);
   end setCurrentRow;
   procedure setCurrentRow
     (self : access Inst; row_P : int; command_P : access QtAda6.QtCore.QItemSelectionModel.SelectionFlag.Inst'Class)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setCurrentRow");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Tuple_SetItem (Args, 1, (if command_P /= null then command_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setCurrentRow;
   procedure setItemWidget
     (self     : access Inst; item_P : access QtAda6.QtWidgets.QListWidgetItem.Inst'Class;
      widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setItemWidget");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if item_P /= null then item_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if widget_P /= null then widget_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setItemWidget;
   procedure setModel (self : access Inst; model_P : access QtAda6.QtCore.QAbstractItemModel.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setModel");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if model_P /= null then model_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setModel;
   procedure setSelectionModel
     (self : access Inst; selectionModel_P : access QtAda6.QtCore.QItemSelectionModel.Inst'Class)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setSelectionModel");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if selectionModel_P /= null then selectionModel_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setSelectionModel;
   procedure setSortingEnabled (self : access Inst; enable_P : bool) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setSortingEnabled");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (enable_P));
      Result := Object_CallObject (Method, Args, True);
   end setSortingEnabled;
   procedure sortItems (self : access Inst; order_P : access QtAda6.QtCore.Qt.SortOrder.Inst'Class := null) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "sortItems");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if order_P /= null then order_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end sortItems;
   function supportedDropActions (self : access Inst) return access QtAda6.QtCore.Qt.DropAction.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.Qt.DropAction.Class := new QtAda6.QtCore.Qt.DropAction.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "supportedDropActions");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end supportedDropActions;
   function takeItem (self : access Inst; row_P : int) return access QtAda6.QtWidgets.QListWidgetItem.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QListWidgetItem.Class := new QtAda6.QtWidgets.QListWidgetItem.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "takeItem");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end takeItem;
   function visualItemRect
     (self : access Inst; item_P : access QtAda6.QtWidgets.QListWidgetItem.Inst'Class)
      return access QtAda6.QtCore.QRect.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QRect.Class := new QtAda6.QtCore.QRect.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "visualItemRect");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if item_P /= null then item_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end visualItemRect;
end QtAda6.QtWidgets.QListWidget;
