-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qlistview.adb
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
with QtAda6.QtCore.QSize;
with QtAda6.QtGui.QDragLeaveEvent;
with QtAda6.QtGui.QDragMoveEvent;
with QtAda6.QtGui.QDropEvent;
with QtAda6.QtCore.QEvent;
with QtAda6.QtWidgets.QListView.Flow;
with QtAda6.QtCore.QPoint;
with QtAda6.QtCore.QModelIndex;
with QtAda6.QtWidgets.QStyleOptionViewItem;
with QtAda6.QtCore.Qt.AlignmentFlag;
with QtAda6.QtWidgets.QListView.LayoutMode;
with QtAda6.QtGui.QMouseEvent;
with QtAda6.QtWidgets.QAbstractItemView.CursorAction;
with QtAda6.QtCore.Qt.KeyboardModifier;
with QtAda6.QtWidgets.QListView.Movement;
with QtAda6.QtGui.QPaintEvent;
with QtAda6.QtCore.QRect;
with QtAda6.QtGui.QResizeEvent;
with QtAda6.QtWidgets.QListView.ResizeMode;
with QtAda6.QtWidgets.QAbstractItemView.ScrollHint;
with QtAda6.QtCore.QItemSelection;
with QtAda6.QtCore.QItemSelectionModel.SelectionFlag;
with QtAda6.QtWidgets.QListView.ViewMode;
with QtAda6.QtCore.Qt.DropAction;
with QtAda6.QtCore.QTimerEvent;
with QtAda6.QtGui.QRegion;
with QtAda6.QtGui.QWheelEvent;
package body QtAda6.QtWidgets.QListView is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function indexesMoved (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "indexesMoved"));
   end indexesMoved;
   function Create (parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QListView");
      Args  := Tuple_New (0);
      Dict  := Dict_New;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function batchSize (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "batchSize");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end batchSize;
   procedure clearPropertyFlags (self : access Inst) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "clearPropertyFlags");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end clearPropertyFlags;
   function contentsSize (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QSize.Class := new QtAda6.QtCore.QSize.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "contentsSize");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end contentsSize;
   procedure currentChanged
     (self       : access Inst; current_P : UNION_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex;
      previous_P : UNION_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "currentChanged");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if current_P /= null then current_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if previous_P /= null then previous_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end currentChanged;
   procedure dataChanged
     (self          : access Inst; topLeft_P : UNION_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex;
      bottomRight_P : UNION_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex;
      roles_P       : SEQUENCE_int := (2 .. 1 => <>))
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "dataChanged");
      List   := List_New (roles_P'Length);
      for ind in roles_P'Range loop
         List_SetItem (List, ssize_t (ind - roles_P'First), Long_FromLong (roles_P (ind)));
      end loop;
      Args := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if topLeft_P /= null then topLeft_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if bottomRight_P /= null then bottomRight_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if roles_P /= (2 .. 1 => <>) then
         Dict_SetItemString (Dict, "roles", List);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end dataChanged;
   procedure doItemsLayout (self : access Inst) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "doItemsLayout");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end doItemsLayout;
   procedure dragLeaveEvent (self : access Inst; e_P : access QtAda6.QtGui.QDragLeaveEvent.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "dragLeaveEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if e_P /= null then e_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end dragLeaveEvent;
   procedure dragMoveEvent (self : access Inst; e_P : access QtAda6.QtGui.QDragMoveEvent.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "dragMoveEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if e_P /= null then e_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end dragMoveEvent;
   procedure dropEvent (self : access Inst; e_P : access QtAda6.QtGui.QDropEvent.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "dropEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if e_P /= null then e_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end dropEvent;
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
   function flow_F (self : access Inst) return access QtAda6.QtWidgets.QListView.Flow.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QListView.Flow.Class := new QtAda6.QtWidgets.QListView.Flow.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "flow");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end flow_F;
   function gridSize (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QSize.Class := new QtAda6.QtCore.QSize.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "gridSize");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end gridSize;
   function horizontalOffset (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "horizontalOffset");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end horizontalOffset;
   function indexAt
     (self : access Inst; p_P : access QtAda6.QtCore.QPoint.Inst'Class)
      return access QtAda6.QtCore.QModelIndex.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QModelIndex.Class := new QtAda6.QtCore.QModelIndex.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "indexAt");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if p_P /= null then p_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end indexAt;
   procedure initViewItemOption (self : access Inst; option_P : access QtAda6.QtWidgets.QStyleOptionViewItem.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "initViewItemOption");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if option_P /= null then option_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end initViewItemOption;
   function isIndexHidden
     (self : access Inst; index_P : UNION_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex) return bool
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isIndexHidden");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if index_P /= null then index_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isIndexHidden;
   function isRowHidden (self : access Inst; row_P : int) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isRowHidden");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isRowHidden;
   function isSelectionRectVisible (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isSelectionRectVisible");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isSelectionRectVisible;
   function isWrapping (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isWrapping");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isWrapping;
   function itemAlignment (self : access Inst) return access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.AlignmentFlag.Class := new QtAda6.QtCore.Qt.AlignmentFlag.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "itemAlignment");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end itemAlignment;
   function layoutMode_F (self : access Inst) return access QtAda6.QtWidgets.QListView.LayoutMode.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QListView.LayoutMode.Class := new QtAda6.QtWidgets.QListView.LayoutMode.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "layoutMode");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end layoutMode_F;
   function modelColumn (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "modelColumn");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end modelColumn;
   procedure mouseMoveEvent (self : access Inst; e_P : access QtAda6.QtGui.QMouseEvent.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mouseMoveEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if e_P /= null then e_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end mouseMoveEvent;
   procedure mouseReleaseEvent (self : access Inst; e_P : access QtAda6.QtGui.QMouseEvent.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mouseReleaseEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if e_P /= null then e_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end mouseReleaseEvent;
   function moveCursor
     (self        : access Inst; cursorAction_P : access QtAda6.QtWidgets.QAbstractItemView.CursorAction.Inst'Class;
      modifiers_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class)
      return access QtAda6.QtCore.QModelIndex.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QModelIndex.Class := new QtAda6.QtCore.QModelIndex.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "moveCursor");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if cursorAction_P /= null then cursorAction_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if modifiers_P /= null then modifiers_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end moveCursor;
   function movement_F (self : access Inst) return access QtAda6.QtWidgets.QListView.Movement.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QListView.Movement.Class := new QtAda6.QtWidgets.QListView.Movement.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "movement");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end movement_F;
   procedure paintEvent (self : access Inst; e_P : access QtAda6.QtGui.QPaintEvent.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "paintEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if e_P /= null then e_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end paintEvent;
   function rectForIndex
     (self : access Inst; index_P : UNION_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex)
      return access QtAda6.QtCore.QRect.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QRect.Class := new QtAda6.QtCore.QRect.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "rectForIndex");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if index_P /= null then index_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end rectForIndex;
   procedure reset (self : access Inst) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "reset");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end reset;
   procedure resizeContents (self : access Inst; width_P : int; height_P : int) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "resizeContents");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (width_P));
      Tuple_SetItem (Args, 1, Long_FromLong (height_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end resizeContents;
   procedure resizeEvent (self : access Inst; e_P : access QtAda6.QtGui.QResizeEvent.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "resizeEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if e_P /= null then e_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end resizeEvent;
   function resizeMode_F (self : access Inst) return access QtAda6.QtWidgets.QListView.ResizeMode.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QListView.ResizeMode.Class := new QtAda6.QtWidgets.QListView.ResizeMode.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "resizeMode");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end resizeMode_F;
   procedure rowsAboutToBeRemoved
     (self : access Inst; parent_P : UNION_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex; start_P : int;
      end_K_P : int)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "rowsAboutToBeRemoved");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if parent_P /= null then parent_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (start_P));
      Tuple_SetItem (Args, 2, Long_FromLong (end_K_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end rowsAboutToBeRemoved;
   procedure rowsInserted
     (self : access Inst; parent_P : UNION_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex; start_P : int;
      end_K_P : int)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "rowsInserted");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if parent_P /= null then parent_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (start_P));
      Tuple_SetItem (Args, 2, Long_FromLong (end_K_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end rowsInserted;
   procedure scrollContentsBy (self : access Inst; dx_P : int; dy_P : int) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "scrollContentsBy");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (dx_P));
      Tuple_SetItem (Args, 1, Long_FromLong (dy_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end scrollContentsBy;
   procedure scrollTo
     (self   : access Inst; index_P : UNION_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex;
      hint_P : access QtAda6.QtWidgets.QAbstractItemView.ScrollHint.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "scrollTo");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if index_P /= null then index_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if hint_P /= null then
         Dict_SetItemString (Dict, "hint", hint_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end scrollTo;
   function selectedIndexes (self : access Inst) return LIST_QtAda6_QtCore_QModelIndex is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "selectedIndexes");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return (2 .. 1 => <>);
   end selectedIndexes;
   procedure selectionChanged
     (self         : access Inst; selected_P : access QtAda6.QtCore.QItemSelection.Inst'Class;
      deselected_P : access QtAda6.QtCore.QItemSelection.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "selectionChanged");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if selected_P /= null then selected_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if deselected_P /= null then deselected_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end selectionChanged;
   procedure setBatchSize (self : access Inst; batchSize_P : int) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setBatchSize");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (batchSize_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setBatchSize;
   procedure setFlow (self : access Inst; flow_P : access QtAda6.QtWidgets.QListView.Flow.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFlow");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if flow_P /= null then flow_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setFlow;
   procedure setGridSize (self : access Inst; size_P : access QtAda6.QtCore.QSize.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setGridSize");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if size_P /= null then size_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setGridSize;
   procedure setItemAlignment (self : access Inst; alignment_P : access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setItemAlignment");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if alignment_P /= null then alignment_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setItemAlignment;
   procedure setLayoutMode (self : access Inst; mode_P : access QtAda6.QtWidgets.QListView.LayoutMode.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setLayoutMode");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if mode_P /= null then mode_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setLayoutMode;
   procedure setModelColumn (self : access Inst; column_P : int) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setModelColumn");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (column_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setModelColumn;
   procedure setMovement (self : access Inst; movement_P : access QtAda6.QtWidgets.QListView.Movement.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setMovement");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if movement_P /= null then movement_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setMovement;
   procedure setPositionForIndex
     (self    : access Inst; position_P : access QtAda6.QtCore.QPoint.Inst'Class;
      index_P : UNION_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPositionForIndex");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if position_P /= null then position_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if index_P /= null then index_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPositionForIndex;
   procedure setResizeMode (self : access Inst; mode_P : access QtAda6.QtWidgets.QListView.ResizeMode.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setResizeMode");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if mode_P /= null then mode_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setResizeMode;
   procedure setRootIndex
     (self : access Inst; index_P : UNION_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setRootIndex");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if index_P /= null then index_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setRootIndex;
   procedure setRowHidden (self : access Inst; row_P : int; hide_P : bool) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setRowHidden");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Tuple_SetItem (Args, 1, To_Python (hide_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setRowHidden;
   procedure setSelection
     (self      : access Inst; rect_P : access QtAda6.QtCore.QRect.Inst'Class;
      command_P : access QtAda6.QtCore.QItemSelectionModel.SelectionFlag.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setSelection");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if rect_P /= null then rect_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if command_P /= null then command_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setSelection;
   procedure setSelectionRectVisible (self : access Inst; show_P : bool) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setSelectionRectVisible");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (show_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setSelectionRectVisible;
   procedure setSpacing (self : access Inst; space_P : int) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setSpacing");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (space_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setSpacing;
   procedure setUniformItemSizes (self : access Inst; enable_P : bool) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setUniformItemSizes");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (enable_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setUniformItemSizes;
   procedure setViewMode (self : access Inst; mode_P : access QtAda6.QtWidgets.QListView.ViewMode.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setViewMode");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if mode_P /= null then mode_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setViewMode;
   procedure setWordWrap (self : access Inst; on_P : bool) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setWordWrap");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (on_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setWordWrap;
   procedure setWrapping (self : access Inst; enable_P : bool) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setWrapping");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (enable_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setWrapping;
   function spacing (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "spacing");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end spacing;
   procedure startDrag (self : access Inst; supportedActions_P : access QtAda6.QtCore.Qt.DropAction.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "startDrag");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if supportedActions_P /= null then supportedActions_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end startDrag;
   procedure timerEvent (self : access Inst; e_P : access QtAda6.QtCore.QTimerEvent.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "timerEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if e_P /= null then e_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end timerEvent;
   function uniformItemSizes (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "uniformItemSizes");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end uniformItemSizes;
   procedure updateGeometries (self : access Inst) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "updateGeometries");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end updateGeometries;
   function verticalOffset (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "verticalOffset");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end verticalOffset;
   function viewMode_F (self : access Inst) return access QtAda6.QtWidgets.QListView.ViewMode.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QListView.ViewMode.Class := new QtAda6.QtWidgets.QListView.ViewMode.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "viewMode");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end viewMode_F;
   function viewportSizeHint (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QSize.Class := new QtAda6.QtCore.QSize.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "viewportSizeHint");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end viewportSizeHint;
   function visualRect
     (self : access Inst; index_P : UNION_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex)
      return access QtAda6.QtCore.QRect.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QRect.Class := new QtAda6.QtCore.QRect.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "visualRect");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if index_P /= null then index_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end visualRect;
   function visualRegionForSelection
     (self : access Inst; selection_P : access QtAda6.QtCore.QItemSelection.Inst'Class)
      return access QtAda6.QtGui.QRegion.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QRegion.Class := new QtAda6.QtGui.QRegion.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "visualRegionForSelection");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if selection_P /= null then selection_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end visualRegionForSelection;
   procedure wheelEvent (self : access Inst; e_P : access QtAda6.QtGui.QWheelEvent.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "wheelEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if e_P /= null then e_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end wheelEvent;
   function wordWrap (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "wordWrap");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end wordWrap;
end QtAda6.QtWidgets.QListView;
