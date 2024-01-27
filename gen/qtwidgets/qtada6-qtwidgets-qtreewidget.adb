-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qtreewidget.adb
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
with QtAda6.QtWidgets.QTreeView;
with QtAda6.QtWidgets.QWidget;
with QtAda6.QtWidgets.QTreeWidgetItem;
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
package body QtAda6.QtWidgets.QTreeWidget is
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
   function itemCollapsed (self : access Inst) return CLASSVAR_Signal is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "itemCollapsed"));
   end itemCollapsed;
   function itemDoubleClicked (self : access Inst) return CLASSVAR_Signal is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "itemDoubleClicked"));
   end itemDoubleClicked;
   function itemEntered (self : access Inst) return CLASSVAR_Signal is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "itemEntered"));
   end itemEntered;
   function itemExpanded (self : access Inst) return CLASSVAR_Signal is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "itemExpanded"));
   end itemExpanded;
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
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QTreeWidget");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if parent_P /= null then parent_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   procedure addTopLevelItem (self : access Inst; item_P : access QtAda6.QtWidgets.QTreeWidgetItem.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addTopLevelItem");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if item_P /= null then item_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end addTopLevelItem;
   procedure addTopLevelItems (self : access Inst; items_P : SEQUENCE_QtAda6_QtWidgets_QTreeWidgetItem) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addTopLevelItems");
      List   := List_New (items_P'Length);
      for ind in items_P'Range loop
         List_SetItem
           (List, ssize_t (ind - items_P'First),
            (if items_P (ind) /= null then items_P (ind).Python_Proxy else No_Value));
      end loop;
      Args := Tuple_New (1);
      Tuple_SetItem (Args, 0, List);
      Result := Object_CallObject (Method, Args, True);
   end addTopLevelItems;
   procedure clear (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "clear");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end clear;
   procedure closePersistentEditor
     (self : access Inst; item_P : access QtAda6.QtWidgets.QTreeWidgetItem.Inst'Class; column_P : int := 0)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "closePersistentEditor");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if item_P /= null then item_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (column_P));
      Result := Object_CallObject (Method, Args, True);
   end closePersistentEditor;
   procedure collapseItem (self : access Inst; item_P : access QtAda6.QtWidgets.QTreeWidgetItem.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "collapseItem");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if item_P /= null then item_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end collapseItem;
   function columnCount (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "columnCount");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end columnCount;
   function currentColumn (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "currentColumn");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end currentColumn;
   function currentItem (self : access Inst) return access QtAda6.QtWidgets.QTreeWidgetItem.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QTreeWidgetItem.Class := new QtAda6.QtWidgets.QTreeWidgetItem.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "currentItem");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end currentItem;
   procedure dropEvent (self : access Inst; event_P : access QtAda6.QtGui.QDropEvent.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "dropEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end dropEvent;
   function dropMimeData
     (self   : access Inst; parent_P : access QtAda6.QtWidgets.QTreeWidgetItem.Inst'Class; index_P : int;
      data_P : access QtAda6.QtCore.QMimeData.Inst'Class; action_P : access QtAda6.QtCore.Qt.DropAction.Inst'Class)
      return bool
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "dropMimeData");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if parent_P /= null then parent_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (index_P));
      Tuple_SetItem (Args, 2, (if data_P /= null then data_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if action_P /= null then action_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end dropMimeData;
   procedure editItem
     (self : access Inst; item_P : access QtAda6.QtWidgets.QTreeWidgetItem.Inst'Class; column_P : int := 0)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "editItem");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if item_P /= null then item_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (column_P));
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
   procedure expandItem (self : access Inst; item_P : access QtAda6.QtWidgets.QTreeWidgetItem.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "expandItem");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if item_P /= null then item_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end expandItem;
   function findItems
     (self : access Inst; text_P : str; flags_P : access QtAda6.QtCore.Qt.MatchFlag.Inst'Class; column_P : int := 0)
      return LIST_QtAda6_QtWidgets_QTreeWidgetItem
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "findItems");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Unicode_FromString (text_P));
      Tuple_SetItem (Args, 1, (if flags_P /= null then flags_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, Long_FromLong (column_P));
      Result := Object_CallObject (Method, Args, True);
      return (2 .. 1 => <>);
   end findItems;
   function headerItem (self : access Inst) return access QtAda6.QtWidgets.QTreeWidgetItem.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QTreeWidgetItem.Class := new QtAda6.QtWidgets.QTreeWidgetItem.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "headerItem");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end headerItem;
   function indexFromItem
     (self : access Inst; item_P : access QtAda6.QtWidgets.QTreeWidgetItem.Inst'Class; column_P : int := 0)
      return access QtAda6.QtCore.QModelIndex.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QModelIndex.Class := new QtAda6.QtCore.QModelIndex.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "indexFromItem");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if item_P /= null then item_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (column_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end indexFromItem;
   function indexOfTopLevelItem
     (self : access Inst; item_P : access QtAda6.QtWidgets.QTreeWidgetItem.Inst'Class) return int
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "indexOfTopLevelItem");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if item_P /= null then item_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end indexOfTopLevelItem;
   procedure insertTopLevelItem
     (self : access Inst; index_P : int; item_P : access QtAda6.QtWidgets.QTreeWidgetItem.Inst'Class)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "insertTopLevelItem");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (index_P));
      Tuple_SetItem (Args, 1, (if item_P /= null then item_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end insertTopLevelItem;
   procedure insertTopLevelItems
     (self : access Inst; index_P : int; items_P : SEQUENCE_QtAda6_QtWidgets_QTreeWidgetItem)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "insertTopLevelItems");
      List   := List_New (items_P'Length);
      for ind in items_P'Range loop
         List_SetItem
           (List, ssize_t (ind - items_P'First),
            (if items_P (ind) /= null then items_P (ind).Python_Proxy else No_Value));
      end loop;
      Args := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (index_P));
      Tuple_SetItem (Args, 1, List);
      Result := Object_CallObject (Method, Args, True);
   end insertTopLevelItems;
   function invisibleRootItem (self : access Inst) return access QtAda6.QtWidgets.QTreeWidgetItem.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QTreeWidgetItem.Class := new QtAda6.QtWidgets.QTreeWidgetItem.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "invisibleRootItem");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end invisibleRootItem;
   function isPersistentEditorOpen
     (self : access Inst; item_P : access QtAda6.QtWidgets.QTreeWidgetItem.Inst'Class; column_P : int := 0) return bool
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isPersistentEditorOpen");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if item_P /= null then item_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (column_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isPersistentEditorOpen;
   function itemAbove
     (self : access Inst; item_P : access QtAda6.QtWidgets.QTreeWidgetItem.Inst'Class)
      return access QtAda6.QtWidgets.QTreeWidgetItem.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QTreeWidgetItem.Class := new QtAda6.QtWidgets.QTreeWidgetItem.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "itemAbove");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if item_P /= null then item_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end itemAbove;
   function itemAt
     (self : access Inst; p_P : access QtAda6.QtCore.QPoint.Inst'Class)
      return access QtAda6.QtWidgets.QTreeWidgetItem.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QTreeWidgetItem.Class := new QtAda6.QtWidgets.QTreeWidgetItem.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "itemAt");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if p_P /= null then p_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end itemAt;
   function itemAt (self : access Inst; x_P : int; y_P : int) return access QtAda6.QtWidgets.QTreeWidgetItem.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QTreeWidgetItem.Class := new QtAda6.QtWidgets.QTreeWidgetItem.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "itemAt");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (x_P));
      Tuple_SetItem (Args, 1, Long_FromLong (y_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end itemAt;
   function itemBelow
     (self : access Inst; item_P : access QtAda6.QtWidgets.QTreeWidgetItem.Inst'Class)
      return access QtAda6.QtWidgets.QTreeWidgetItem.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QTreeWidgetItem.Class := new QtAda6.QtWidgets.QTreeWidgetItem.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "itemBelow");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if item_P /= null then item_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end itemBelow;
   function itemFromIndex
     (self : access Inst; index_P : UNION_QtAda6_QtCore_QModelIndexQtAda6_QtCore_QPersistentModelIndex)
      return access QtAda6.QtWidgets.QTreeWidgetItem.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QTreeWidgetItem.Class := new QtAda6.QtWidgets.QTreeWidgetItem.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "itemFromIndex");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if index_P /= null then index_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end itemFromIndex;
   function itemWidget
     (self : access Inst; item_P : access QtAda6.QtWidgets.QTreeWidgetItem.Inst'Class; column_P : int)
      return access QtAda6.QtWidgets.QWidget.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtWidgets.QWidget.Class := new QtAda6.QtWidgets.QWidget.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "itemWidget");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if item_P /= null then item_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (column_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end itemWidget;
   function mimeData
     (self : access Inst; items_P : SEQUENCE_QtAda6_QtWidgets_QTreeWidgetItem)
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
   procedure openPersistentEditor
     (self : access Inst; item_P : access QtAda6.QtWidgets.QTreeWidgetItem.Inst'Class; column_P : int := 0)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "openPersistentEditor");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if item_P /= null then item_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (column_P));
      Result := Object_CallObject (Method, Args, True);
   end openPersistentEditor;
   procedure removeItemWidget
     (self : access Inst; item_P : access QtAda6.QtWidgets.QTreeWidgetItem.Inst'Class; column_P : int)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "removeItemWidget");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if item_P /= null then item_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (column_P));
      Result := Object_CallObject (Method, Args, True);
   end removeItemWidget;
   procedure scrollToItem
     (self   : access Inst; item_P : access QtAda6.QtWidgets.QTreeWidgetItem.Inst'Class;
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
   function selectedItems (self : access Inst) return LIST_QtAda6_QtWidgets_QTreeWidgetItem is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "selectedItems");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return (2 .. 1 => <>);
   end selectedItems;
   procedure setColumnCount (self : access Inst; columns_P : int) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setColumnCount");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (columns_P));
      Result := Object_CallObject (Method, Args, True);
   end setColumnCount;
   procedure setCurrentItem (self : access Inst; item_P : access QtAda6.QtWidgets.QTreeWidgetItem.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setCurrentItem");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if item_P /= null then item_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setCurrentItem;
   procedure setCurrentItem
     (self : access Inst; item_P : access QtAda6.QtWidgets.QTreeWidgetItem.Inst'Class; column_P : int)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setCurrentItem");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if item_P /= null then item_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (column_P));
      Result := Object_CallObject (Method, Args, True);
   end setCurrentItem;
   procedure setCurrentItem
     (self      : access Inst; item_P : access QtAda6.QtWidgets.QTreeWidgetItem.Inst'Class; column_P : int;
      command_P : access QtAda6.QtCore.QItemSelectionModel.SelectionFlag.Inst'Class)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setCurrentItem");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if item_P /= null then item_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (column_P));
      Tuple_SetItem (Args, 2, (if command_P /= null then command_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setCurrentItem;
   procedure setHeaderItem (self : access Inst; item_P : access QtAda6.QtWidgets.QTreeWidgetItem.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setHeaderItem");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if item_P /= null then item_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setHeaderItem;
   procedure setHeaderLabel (self : access Inst; label_P : str) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setHeaderLabel");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (label_P));
      Result := Object_CallObject (Method, Args, True);
   end setHeaderLabel;
   procedure setHeaderLabels (self : access Inst; labels_P : SEQUENCE_str) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setHeaderLabels");
      List   := List_New (labels_P'Length);
      for ind in labels_P'Range loop
         List_SetItem (List, ssize_t (ind - labels_P'First), Unicode_FromString (labels_P (ind)));
      end loop;
      Args := Tuple_New (1);
      Tuple_SetItem (Args, 0, List);
      Result := Object_CallObject (Method, Args, True);
   end setHeaderLabels;
   procedure setItemWidget
     (self     : access Inst; item_P : access QtAda6.QtWidgets.QTreeWidgetItem.Inst'Class; column_P : int;
      widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setItemWidget");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if item_P /= null then item_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (column_P));
      Tuple_SetItem (Args, 2, (if widget_P /= null then widget_P.Python_Proxy else No_Value));
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
   function sortColumn (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "sortColumn");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end sortColumn;
   procedure sortItems (self : access Inst; column_P : int; order_P : access QtAda6.QtCore.Qt.SortOrder.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "sortItems");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (column_P));
      Tuple_SetItem (Args, 1, (if order_P /= null then order_P.Python_Proxy else No_Value));
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
   function takeTopLevelItem
     (self : access Inst; index_P : int) return access QtAda6.QtWidgets.QTreeWidgetItem.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QTreeWidgetItem.Class := new QtAda6.QtWidgets.QTreeWidgetItem.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "takeTopLevelItem");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (index_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end takeTopLevelItem;
   function topLevelItem (self : access Inst; index_P : int) return access QtAda6.QtWidgets.QTreeWidgetItem.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QTreeWidgetItem.Class := new QtAda6.QtWidgets.QTreeWidgetItem.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "topLevelItem");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (index_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end topLevelItem;
   function topLevelItemCount (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "topLevelItemCount");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end topLevelItemCount;
   function visualItemRect
     (self : access Inst; item_P : access QtAda6.QtWidgets.QTreeWidgetItem.Inst'Class)
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
end QtAda6.QtWidgets.QTreeWidget;
