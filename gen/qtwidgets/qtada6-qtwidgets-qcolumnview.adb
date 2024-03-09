-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qcolumnview.adb
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
with QtAda6.QtWidgets.QAbstractItemView;
with QtAda6.QtCore.QPoint;
with QtAda6.QtCore.QModelIndex;
with QtAda6.QtWidgets.QAbstractItemView.CursorAction;
with QtAda6.QtCore.Qt.KeyboardModifier;
with QtAda6.QtGui.QResizeEvent;
with QtAda6.QtWidgets.QAbstractItemView.ScrollHint;
with QtAda6.QtCore.QAbstractItemModel;
with QtAda6.QtCore.QRect;
with QtAda6.QtCore.QItemSelectionModel.SelectionFlag;
with QtAda6.QtCore.QItemSelectionModel;
with QtAda6.QtCore.QSize;
with QtAda6.QtCore.QItemSelection;
with QtAda6.QtGui.QRegion;
package body QtAda6.QtWidgets.QColumnView is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function updatePreviewWidget (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "updatePreviewWidget"));
   end updatePreviewWidget;
   function Create (parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QColumnView");
      Args  := Tuple_New (0);
      Dict  := Dict_New;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function columnWidths (self : access Inst) return LIST_int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "columnWidths");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return (2 .. 1 => <>);
   end columnWidths;
   function createColumn
     (self : access Inst; rootIndex_P : UNION_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex)
      return access QtAda6.QtWidgets.QAbstractItemView.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QAbstractItemView.Class := new QtAda6.QtWidgets.QAbstractItemView.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "createColumn");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if rootIndex_P /= null then rootIndex_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end createColumn;
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
     (self : access Inst; point_P : access QtAda6.QtCore.QPoint.Inst'Class)
      return access QtAda6.QtCore.QModelIndex.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QModelIndex.Class := new QtAda6.QtCore.QModelIndex.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "indexAt");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if point_P /= null then point_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end indexAt;
   procedure initializeColumn (self : access Inst; column_P : access QtAda6.QtWidgets.QAbstractItemView.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "initializeColumn");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if column_P /= null then column_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end initializeColumn;
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
   function previewWidget (self : access Inst) return access QtAda6.QtWidgets.QWidget.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QWidget.Class := new QtAda6.QtWidgets.QWidget.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "previewWidget");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end previewWidget;
   procedure resizeEvent (self : access Inst; event_P : access QtAda6.QtGui.QResizeEvent.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "resizeEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end resizeEvent;
   function resizeGripsVisible (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "resizeGripsVisible");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end resizeGripsVisible;
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
   procedure selectAll (self : access Inst) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "selectAll");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end selectAll;
   procedure setColumnWidths (self : access Inst; list_P : SEQUENCE_int) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setColumnWidths");
      List   := List_New (list_P'Length);
      for ind in list_P'Range loop
         List_SetItem (List, ssize_t (ind - list_P'First), Long_FromLong (list_P (ind)));
      end loop;
      Args := Tuple_New (1);
      Tuple_SetItem (Args, 0, List);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setColumnWidths;
   procedure setModel (self : access Inst; model_P : access QtAda6.QtCore.QAbstractItemModel.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setModel");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if model_P /= null then model_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setModel;
   procedure setPreviewWidget (self : access Inst; widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPreviewWidget");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if widget_P /= null then widget_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPreviewWidget;
   procedure setResizeGripsVisible (self : access Inst; visible_P : bool) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setResizeGripsVisible");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (visible_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setResizeGripsVisible;
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
   procedure setSelectionModel
     (self : access Inst; selectionModel_P : access QtAda6.QtCore.QItemSelectionModel.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setSelectionModel");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if selectionModel_P /= null then selectionModel_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setSelectionModel;
   function sizeHint (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QSize.Class := new QtAda6.QtCore.QSize.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "sizeHint");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end sizeHint;
   function verticalOffset (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "verticalOffset");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end verticalOffset;
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
end QtAda6.QtWidgets.QColumnView;
