-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qtreeview.adb
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
with QtAda6.QtWidgets.QWidget;
with QtAda6.QtCore.QEvent;
with QtAda6.QtCore.QModelIndex;
with QtAda6.QtCore.QPersistentModelIndex;
with QtAda6.QtGui.QDragMoveEvent;
with QtAda6.QtGui.QPainter;
with QtAda6.QtCore.QRect;
with QtAda6.QtWidgets.QStyleOptionViewItem;
with QtAda6.QtGui.QRegion;
with QtAda6.QtGui.QBitmap;
with QtAda6.QtGui.QPolygon;
with QtAda6.QtWidgets.QHeaderView;
with QtAda6.QtCore.QPoint;
with QtAda6.QtGui.QKeyEvent;
with QtAda6.QtGui.QMouseEvent;
with QtAda6.QtWidgets.QAbstractItemView.CursorAction;
with QtAda6.QtCore.Qt.KeyboardModifier;
with QtAda6.QtGui.QPaintEvent;
with QtAda6.QtWidgets.QAbstractItemView.ScrollHint;
with QtAda6.QtCore.QItemSelection;
with QtAda6.QtCore.QAbstractItemModel;
with QtAda6.QtCore.QItemSelectionModel.SelectionFlag;
with QtAda6.QtCore.QItemSelectionModel;
with QtAda6.QtCore.Qt.SortOrder;
with QtAda6.QtCore.QTimerEvent;
with QtAda6.QtCore.QSize;
package body QtAda6.QtWidgets.QTreeView is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function collapsed (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "collapsed"));
   end collapsed;
   function expanded (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "expanded"));
   end expanded;
   function Create (parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null) return Class is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QTreeView");
      Args  := Tuple_New (0);
      Dict  := Dict_New;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function allColumnsShowFocus (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "allColumnsShowFocus");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end allColumnsShowFocus;
   function autoExpandDelay (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "autoExpandDelay");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end autoExpandDelay;
   procedure changeEvent (self : access Inst; event_P : access QtAda6.QtCore.QEvent.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "changeEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end changeEvent;
   procedure collapse (self : access Inst; index_P : access QtAda6.QtCore.QModelIndex.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "collapse");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if index_P /= null then index_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end collapse;
   procedure collapse (self : access Inst; index_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "collapse");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if index_P /= null then index_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end collapse;
   procedure collapseAll (self : access Inst) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "collapseAll");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end collapseAll;
   function columnAt (self : access Inst; x_P : int) return int is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "columnAt");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (x_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end columnAt;
   procedure columnCountChanged (self : access Inst; oldCount_P : int; newCount_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "columnCountChanged");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (oldCount_P));
      Tuple_SetItem (Args, 1, Long_FromLong (newCount_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end columnCountChanged;
   procedure columnMoved (self : access Inst) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "columnMoved");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end columnMoved;
   procedure columnResized (self : access Inst; column_P : int; oldSize_P : int; newSize_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "columnResized");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (column_P));
      Tuple_SetItem (Args, 1, Long_FromLong (oldSize_P));
      Tuple_SetItem (Args, 2, Long_FromLong (newSize_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end columnResized;
   function columnViewportPosition (self : access Inst; column_P : int) return int is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "columnViewportPosition");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (column_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end columnViewportPosition;
   function columnWidth (self : access Inst; column_P : int) return int is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "columnWidth");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (column_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end columnWidth;
   procedure currentChanged
     (self       : access Inst; current_P : access QtAda6.QtCore.QModelIndex.Inst'Class;
      previous_P : access QtAda6.QtCore.QModelIndex.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "currentChanged");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if current_P /= null then current_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if previous_P /= null then previous_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end currentChanged;
   procedure currentChanged
     (self       : access Inst; current_P : access QtAda6.QtCore.QModelIndex.Inst'Class;
      previous_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "currentChanged");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if current_P /= null then current_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if previous_P /= null then previous_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end currentChanged;
   procedure currentChanged
     (self       : access Inst; current_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class;
      previous_P : access QtAda6.QtCore.QModelIndex.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "currentChanged");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if current_P /= null then current_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if previous_P /= null then previous_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end currentChanged;
   procedure currentChanged
     (self       : access Inst; current_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class;
      previous_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "currentChanged");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if current_P /= null then current_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if previous_P /= null then previous_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end currentChanged;
   procedure dataChanged
     (self          : access Inst; topLeft_P : access QtAda6.QtCore.QModelIndex.Inst'Class;
      bottomRight_P : access QtAda6.QtCore.QModelIndex.Inst'Class; roles_P : SEQUENCE_int)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "dataChanged");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if topLeft_P /= null then topLeft_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if bottomRight_P /= null then bottomRight_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      List := List_New (roles_P'Length);
      for ind in roles_P'Range loop
         List_SetItem (List, ssize_t (ind - roles_P'First), Long_FromLong (roles_P (ind)));
      end loop;
      if roles_P'Length > 0 then
         Dict_SetItemString (Dict, "roles", List);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end dataChanged;
   procedure dataChanged
     (self          : access Inst; topLeft_P : access QtAda6.QtCore.QModelIndex.Inst'Class;
      bottomRight_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class; roles_P : SEQUENCE_int)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "dataChanged");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if topLeft_P /= null then topLeft_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if bottomRight_P /= null then bottomRight_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      List := List_New (roles_P'Length);
      for ind in roles_P'Range loop
         List_SetItem (List, ssize_t (ind - roles_P'First), Long_FromLong (roles_P (ind)));
      end loop;
      if roles_P'Length > 0 then
         Dict_SetItemString (Dict, "roles", List);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end dataChanged;
   procedure dataChanged
     (self          : access Inst; topLeft_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class;
      bottomRight_P : access QtAda6.QtCore.QModelIndex.Inst'Class; roles_P : SEQUENCE_int)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "dataChanged");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if topLeft_P /= null then topLeft_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if bottomRight_P /= null then bottomRight_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      List := List_New (roles_P'Length);
      for ind in roles_P'Range loop
         List_SetItem (List, ssize_t (ind - roles_P'First), Long_FromLong (roles_P (ind)));
      end loop;
      if roles_P'Length > 0 then
         Dict_SetItemString (Dict, "roles", List);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end dataChanged;
   procedure dataChanged
     (self          : access Inst; topLeft_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class;
      bottomRight_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class; roles_P : SEQUENCE_int)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "dataChanged");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if topLeft_P /= null then topLeft_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if bottomRight_P /= null then bottomRight_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      List := List_New (roles_P'Length);
      for ind in roles_P'Range loop
         List_SetItem (List, ssize_t (ind - roles_P'First), Long_FromLong (roles_P (ind)));
      end loop;
      if roles_P'Length > 0 then
         Dict_SetItemString (Dict, "roles", List);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end dataChanged;
   procedure doItemsLayout (self : access Inst) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "doItemsLayout");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end doItemsLayout;
   procedure dragMoveEvent (self : access Inst; event_P : access QtAda6.QtGui.QDragMoveEvent.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "dragMoveEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end dragMoveEvent;
   procedure drawBranches
     (self   : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      rect_P : access QtAda6.QtCore.QRect.Inst'Class; index_P : access QtAda6.QtCore.QModelIndex.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawBranches");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if painter_P /= null then painter_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if rect_P /= null then rect_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if index_P /= null then index_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawBranches;
   procedure drawBranches
     (self   : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      rect_P : access QtAda6.QtCore.QRect.Inst'Class; index_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawBranches");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if painter_P /= null then painter_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if rect_P /= null then rect_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if index_P /= null then index_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawBranches;
   procedure drawRow
     (self      : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      options_P : access QtAda6.QtWidgets.QStyleOptionViewItem.Inst'Class;
      index_P   : access QtAda6.QtCore.QModelIndex.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawRow");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if painter_P /= null then painter_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if options_P /= null then options_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if index_P /= null then index_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawRow;
   procedure drawRow
     (self      : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      options_P : access QtAda6.QtWidgets.QStyleOptionViewItem.Inst'Class;
      index_P   : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawRow");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if painter_P /= null then painter_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if options_P /= null then options_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if index_P /= null then index_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawRow;
   procedure drawTree
     (self     : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      region_P : access QtAda6.QtGui.QRegion.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawTree");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if painter_P /= null then painter_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if region_P /= null then region_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawTree;
   procedure drawTree
     (self     : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      region_P : access QtAda6.QtGui.QBitmap.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawTree");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if painter_P /= null then painter_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if region_P /= null then region_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawTree;
   procedure drawTree
     (self     : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      region_P : access QtAda6.QtGui.QPolygon.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawTree");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if painter_P /= null then painter_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if region_P /= null then region_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawTree;
   procedure drawTree
     (self     : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      region_P : access QtAda6.QtCore.QRect.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawTree");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if painter_P /= null then painter_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if region_P /= null then region_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawTree;
   procedure expand (self : access Inst; index_P : access QtAda6.QtCore.QModelIndex.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "expand");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if index_P /= null then index_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end expand;
   procedure expand (self : access Inst; index_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "expand");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if index_P /= null then index_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end expand;
   procedure expandAll (self : access Inst) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "expandAll");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end expandAll;
   procedure expandRecursively
     (self : access Inst; index_P : access QtAda6.QtCore.QModelIndex.Inst'Class; depth_P : int := 0)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "expandRecursively");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if index_P /= null then index_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if depth_P /= 0 then
         Dict_SetItemString (Dict, "depth", Long_FromLong (depth_P));
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end expandRecursively;
   procedure expandRecursively
     (self : access Inst; index_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class; depth_P : int := 0)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "expandRecursively");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if index_P /= null then index_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if depth_P /= 0 then
         Dict_SetItemString (Dict, "depth", Long_FromLong (depth_P));
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end expandRecursively;
   procedure expandToDepth (self : access Inst; depth_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "expandToDepth");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (depth_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end expandToDepth;
   function expandsOnDoubleClick (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "expandsOnDoubleClick");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end expandsOnDoubleClick;
   function header (self : access Inst) return access QtAda6.QtWidgets.QHeaderView.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QHeaderView.Class := new QtAda6.QtWidgets.QHeaderView.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "header");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end header;
   procedure hideColumn (self : access Inst; column_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hideColumn");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (column_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end hideColumn;
   function horizontalOffset (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "horizontalOffset");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end horizontalOffset;
   procedure horizontalScrollbarAction (self : access Inst; action_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "horizontalScrollbarAction");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (action_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end horizontalScrollbarAction;
   function indentation (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "indentation");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end indentation;
   function indexAbove
     (self : access Inst; index_P : access QtAda6.QtCore.QModelIndex.Inst'Class)
      return access QtAda6.QtCore.QModelIndex.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QModelIndex.Class := new QtAda6.QtCore.QModelIndex.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "indexAbove");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if index_P /= null then index_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end indexAbove;
   function indexAbove
     (self : access Inst; index_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class)
      return access QtAda6.QtCore.QModelIndex.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QModelIndex.Class := new QtAda6.QtCore.QModelIndex.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "indexAbove");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if index_P /= null then index_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end indexAbove;
   function indexAt
     (self : access Inst; p_P : access QtAda6.QtCore.QPoint.Inst'Class)
      return access QtAda6.QtCore.QModelIndex.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
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
   function indexBelow
     (self : access Inst; index_P : access QtAda6.QtCore.QModelIndex.Inst'Class)
      return access QtAda6.QtCore.QModelIndex.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QModelIndex.Class := new QtAda6.QtCore.QModelIndex.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "indexBelow");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if index_P /= null then index_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end indexBelow;
   function indexBelow
     (self : access Inst; index_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class)
      return access QtAda6.QtCore.QModelIndex.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QModelIndex.Class := new QtAda6.QtCore.QModelIndex.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "indexBelow");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if index_P /= null then index_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end indexBelow;
   function indexRowSizeHint (self : access Inst; index_P : access QtAda6.QtCore.QModelIndex.Inst'Class) return int is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "indexRowSizeHint");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if index_P /= null then index_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end indexRowSizeHint;
   function indexRowSizeHint
     (self : access Inst; index_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class) return int
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "indexRowSizeHint");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if index_P /= null then index_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end indexRowSizeHint;
   function isAnimated (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isAnimated");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isAnimated;
   function isColumnHidden (self : access Inst; column_P : int) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isColumnHidden");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (column_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isColumnHidden;
   function isExpanded (self : access Inst; index_P : access QtAda6.QtCore.QModelIndex.Inst'Class) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isExpanded");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if index_P /= null then index_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isExpanded;
   function isExpanded (self : access Inst; index_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class) return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isExpanded");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if index_P /= null then index_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isExpanded;
   function isFirstColumnSpanned
     (self : access Inst; row_P : int; parent_P : access QtAda6.QtCore.QModelIndex.Inst'Class) return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isFirstColumnSpanned");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Tuple_SetItem (Args, 1, (if parent_P /= null then parent_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isFirstColumnSpanned;
   function isFirstColumnSpanned
     (self : access Inst; row_P : int; parent_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class) return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isFirstColumnSpanned");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Tuple_SetItem (Args, 1, (if parent_P /= null then parent_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isFirstColumnSpanned;
   function isHeaderHidden (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isHeaderHidden");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isHeaderHidden;
   function isIndexHidden (self : access Inst; index_P : access QtAda6.QtCore.QModelIndex.Inst'Class) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isIndexHidden");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if index_P /= null then index_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isIndexHidden;
   function isIndexHidden
     (self : access Inst; index_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class) return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isIndexHidden");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if index_P /= null then index_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isIndexHidden;
   function isRowHidden
     (self : access Inst; row_P : int; parent_P : access QtAda6.QtCore.QModelIndex.Inst'Class) return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isRowHidden");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Tuple_SetItem (Args, 1, (if parent_P /= null then parent_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isRowHidden;
   function isRowHidden
     (self : access Inst; row_P : int; parent_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class) return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isRowHidden");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Tuple_SetItem (Args, 1, (if parent_P /= null then parent_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isRowHidden;
   function isSortingEnabled (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isSortingEnabled");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isSortingEnabled;
   function itemsExpandable (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "itemsExpandable");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end itemsExpandable;
   procedure keyPressEvent (self : access Inst; event_P : access QtAda6.QtGui.QKeyEvent.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "keyPressEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end keyPressEvent;
   procedure keyboardSearch (self : access Inst; search_P : str) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "keyboardSearch");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (search_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end keyboardSearch;
   procedure mouseDoubleClickEvent (self : access Inst; event_P : access QtAda6.QtGui.QMouseEvent.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mouseDoubleClickEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end mouseDoubleClickEvent;
   procedure mouseMoveEvent (self : access Inst; event_P : access QtAda6.QtGui.QMouseEvent.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mouseMoveEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end mouseMoveEvent;
   procedure mousePressEvent (self : access Inst; event_P : access QtAda6.QtGui.QMouseEvent.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mousePressEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end mousePressEvent;
   procedure mouseReleaseEvent (self : access Inst; event_P : access QtAda6.QtGui.QMouseEvent.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mouseReleaseEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end mouseReleaseEvent;
   function moveCursor
     (self        : access Inst; cursorAction_P : access QtAda6.QtWidgets.QAbstractItemView.CursorAction.Inst'Class;
      modifiers_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class)
      return access QtAda6.QtCore.QModelIndex.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
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
   procedure paintEvent (self : access Inst; event_P : access QtAda6.QtGui.QPaintEvent.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "paintEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end paintEvent;
   procedure reexpand (self : access Inst) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "reexpand");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end reexpand;
   procedure reset (self : access Inst) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "reset");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end reset;
   procedure resetIndentation (self : access Inst) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "resetIndentation");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end resetIndentation;
   procedure resizeColumnToContents (self : access Inst; column_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "resizeColumnToContents");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (column_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end resizeColumnToContents;
   function rootIsDecorated (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "rootIsDecorated");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end rootIsDecorated;
   function rowHeight (self : access Inst; index_P : access QtAda6.QtCore.QModelIndex.Inst'Class) return int is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "rowHeight");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if index_P /= null then index_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end rowHeight;
   function rowHeight (self : access Inst; index_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class) return int
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "rowHeight");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if index_P /= null then index_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end rowHeight;
   procedure rowsAboutToBeRemoved
     (self : access Inst; parent_P : access QtAda6.QtCore.QModelIndex.Inst'Class; start_P : int; end_K_P : int)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "rowsAboutToBeRemoved");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if parent_P /= null then parent_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (start_P));
      Tuple_SetItem (Args, 2, Long_FromLong (end_K_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end rowsAboutToBeRemoved;
   procedure rowsAboutToBeRemoved
     (self    : access Inst; parent_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class; start_P : int;
      end_K_P : int)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
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
     (self : access Inst; parent_P : access QtAda6.QtCore.QModelIndex.Inst'Class; start_P : int; end_K_P : int)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "rowsInserted");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if parent_P /= null then parent_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (start_P));
      Tuple_SetItem (Args, 2, Long_FromLong (end_K_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end rowsInserted;
   procedure rowsInserted
     (self    : access Inst; parent_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class; start_P : int;
      end_K_P : int)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "rowsInserted");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if parent_P /= null then parent_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (start_P));
      Tuple_SetItem (Args, 2, Long_FromLong (end_K_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end rowsInserted;
   procedure rowsRemoved
     (self : access Inst; parent_P : access QtAda6.QtCore.QModelIndex.Inst'Class; first_P : int; last_P : int)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "rowsRemoved");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if parent_P /= null then parent_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (first_P));
      Tuple_SetItem (Args, 2, Long_FromLong (last_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end rowsRemoved;
   procedure rowsRemoved
     (self : access Inst; parent_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class; first_P : int; last_P : int)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "rowsRemoved");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if parent_P /= null then parent_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (first_P));
      Tuple_SetItem (Args, 2, Long_FromLong (last_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end rowsRemoved;
   procedure scrollContentsBy (self : access Inst; dx_P : int; dy_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "scrollContentsBy");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (dx_P));
      Tuple_SetItem (Args, 1, Long_FromLong (dy_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end scrollContentsBy;
   procedure scrollTo
     (self   : access Inst; index_P : access QtAda6.QtCore.QModelIndex.Inst'Class;
      hint_P : access QtAda6.QtWidgets.QAbstractItemView.ScrollHint.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
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
   procedure scrollTo
     (self   : access Inst; index_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class;
      hint_P : access QtAda6.QtWidgets.QAbstractItemView.ScrollHint.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
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
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "selectAll");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end selectAll;
   function selectedIndexes (self : access Inst) return LIST_QtAda6_QtCore_QModelIndex is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "selectedIndexes");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Ret : LIST_QtAda6_QtCore_QModelIndex (1 .. Natural (List_Size (Result))) do
         for Ind in Ret'Range loop
            Ret (Ind).Python_Proxy := List_GetItem (Result, ssize_t (Ind - Ret'First));
         end loop;
      end return;
   end selectedIndexes;
   procedure selectionChanged
     (self         : access Inst; selected_P : access QtAda6.QtCore.QItemSelection.Inst'Class;
      deselected_P : access QtAda6.QtCore.QItemSelection.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "selectionChanged");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if selected_P /= null then selected_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if deselected_P /= null then deselected_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end selectionChanged;
   procedure setAllColumnsShowFocus (self : access Inst; enable_P : bool) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setAllColumnsShowFocus");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (enable_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setAllColumnsShowFocus;
   procedure setAnimated (self : access Inst; enable_P : bool) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setAnimated");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (enable_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setAnimated;
   procedure setAutoExpandDelay (self : access Inst; delay_K_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setAutoExpandDelay");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (delay_K_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setAutoExpandDelay;
   procedure setColumnHidden (self : access Inst; column_P : int; hide_P : bool) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setColumnHidden");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (column_P));
      Tuple_SetItem (Args, 1, To_Python (hide_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setColumnHidden;
   procedure setColumnWidth (self : access Inst; column_P : int; width_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setColumnWidth");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (column_P));
      Tuple_SetItem (Args, 1, Long_FromLong (width_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setColumnWidth;
   procedure setExpanded (self : access Inst; index_P : access QtAda6.QtCore.QModelIndex.Inst'Class; expand_P : bool) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setExpanded");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if index_P /= null then index_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, To_Python (expand_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setExpanded;
   procedure setExpanded
     (self : access Inst; index_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class; expand_P : bool)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setExpanded");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if index_P /= null then index_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, To_Python (expand_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setExpanded;
   procedure setExpandsOnDoubleClick (self : access Inst; enable_P : bool) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setExpandsOnDoubleClick");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (enable_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setExpandsOnDoubleClick;
   procedure setFirstColumnSpanned
     (self : access Inst; row_P : int; parent_P : access QtAda6.QtCore.QModelIndex.Inst'Class; span_P : bool)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFirstColumnSpanned");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Tuple_SetItem (Args, 1, (if parent_P /= null then parent_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, To_Python (span_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setFirstColumnSpanned;
   procedure setFirstColumnSpanned
     (self : access Inst; row_P : int; parent_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class; span_P : bool)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFirstColumnSpanned");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Tuple_SetItem (Args, 1, (if parent_P /= null then parent_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, To_Python (span_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setFirstColumnSpanned;
   procedure setHeader (self : access Inst; header_P : access QtAda6.QtWidgets.QHeaderView.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setHeader");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if header_P /= null then header_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setHeader;
   procedure setHeaderHidden (self : access Inst; hide_P : bool) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setHeaderHidden");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (hide_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setHeaderHidden;
   procedure setIndentation (self : access Inst; i_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setIndentation");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (i_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setIndentation;
   procedure setItemsExpandable (self : access Inst; enable_P : bool) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setItemsExpandable");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (enable_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setItemsExpandable;
   procedure setModel (self : access Inst; model_P : access QtAda6.QtCore.QAbstractItemModel.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setModel");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if model_P /= null then model_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setModel;
   procedure setRootIndex (self : access Inst; index_P : access QtAda6.QtCore.QModelIndex.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setRootIndex");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if index_P /= null then index_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setRootIndex;
   procedure setRootIndex (self : access Inst; index_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setRootIndex");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if index_P /= null then index_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setRootIndex;
   procedure setRootIsDecorated (self : access Inst; show_P : bool) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setRootIsDecorated");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (show_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setRootIsDecorated;
   procedure setRowHidden
     (self : access Inst; row_P : int; parent_P : access QtAda6.QtCore.QModelIndex.Inst'Class; hide_P : bool)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setRowHidden");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Tuple_SetItem (Args, 1, (if parent_P /= null then parent_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, To_Python (hide_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setRowHidden;
   procedure setRowHidden
     (self : access Inst; row_P : int; parent_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class; hide_P : bool)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setRowHidden");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Tuple_SetItem (Args, 1, (if parent_P /= null then parent_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, To_Python (hide_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setRowHidden;
   procedure setSelection
     (self      : access Inst; rect_P : access QtAda6.QtCore.QRect.Inst'Class;
      command_P : access QtAda6.QtCore.QItemSelectionModel.SelectionFlag.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
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
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setSelectionModel");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if selectionModel_P /= null then selectionModel_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setSelectionModel;
   procedure setSortingEnabled (self : access Inst; enable_P : bool) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setSortingEnabled");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (enable_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setSortingEnabled;
   procedure setTreePosition (self : access Inst; logicalIndex_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setTreePosition");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (logicalIndex_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setTreePosition;
   procedure setUniformRowHeights (self : access Inst; uniform_P : bool) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setUniformRowHeights");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (uniform_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setUniformRowHeights;
   procedure setWordWrap (self : access Inst; on_P : bool) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setWordWrap");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (on_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setWordWrap;
   procedure showColumn (self : access Inst; column_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "showColumn");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (column_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end showColumn;
   function sizeHintForColumn (self : access Inst; column_P : int) return int is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "sizeHintForColumn");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (column_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end sizeHintForColumn;
   procedure sortByColumn (self : access Inst; column_P : int; order_P : access QtAda6.QtCore.Qt.SortOrder.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "sortByColumn");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (column_P));
      Tuple_SetItem (Args, 1, (if order_P /= null then order_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end sortByColumn;
   procedure timerEvent (self : access Inst; event_P : access QtAda6.QtCore.QTimerEvent.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "timerEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end timerEvent;
   function treePosition (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "treePosition");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end treePosition;
   function uniformRowHeights (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "uniformRowHeights");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end uniformRowHeights;
   procedure updateGeometries (self : access Inst) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "updateGeometries");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end updateGeometries;
   function verticalOffset (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "verticalOffset");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end verticalOffset;
   procedure verticalScrollbarValueChanged (self : access Inst; value_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "verticalScrollbarValueChanged");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (value_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end verticalScrollbarValueChanged;
   function viewportEvent (self : access Inst; event_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "viewportEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end viewportEvent;
   function viewportSizeHint (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret                                          : constant QtAda6.QtCore.QSize.Class := new QtAda6.QtCore.QSize.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "viewportSizeHint");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end viewportSizeHint;
   function visualRect
     (self : access Inst; index_P : access QtAda6.QtCore.QModelIndex.Inst'Class)
      return access QtAda6.QtCore.QRect.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret                                          : constant QtAda6.QtCore.QRect.Class := new QtAda6.QtCore.QRect.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "visualRect");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if index_P /= null then index_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end visualRect;
   function visualRect
     (self : access Inst; index_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class)
      return access QtAda6.QtCore.QRect.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret                                          : constant QtAda6.QtCore.QRect.Class := new QtAda6.QtCore.QRect.Inst;
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
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QRegion.Class := new QtAda6.QtGui.QRegion.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "visualRegionForSelection");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if selection_P /= null then selection_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end visualRegionForSelection;
   function wordWrap (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "wordWrap");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end wordWrap;
end QtAda6.QtWidgets.QTreeView;
