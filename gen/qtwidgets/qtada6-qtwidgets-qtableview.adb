-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qtableview.adb
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
with QtAda6.QtCore.QModelIndex;
with QtAda6.QtCore.QPersistentModelIndex;
with QtAda6.QtCore.Qt.PenStyle;
with QtAda6.QtWidgets.QHeaderView;
with QtAda6.QtCore.QPoint;
with QtAda6.QtWidgets.QStyleOptionViewItem;
with QtAda6.QtWidgets.QAbstractItemView.CursorAction;
with QtAda6.QtCore.Qt.KeyboardModifier;
with QtAda6.QtGui.QPaintEvent;
with QtAda6.QtWidgets.QAbstractItemView.ScrollHint;
with QtAda6.QtCore.QItemSelection;
with QtAda6.QtCore.QAbstractItemModel;
with QtAda6.QtCore.QRect;
with QtAda6.QtCore.QItemSelectionModel.SelectionFlag;
with QtAda6.QtCore.QItemSelectionModel;
with QtAda6.QtCore.Qt.SortOrder;
with QtAda6.QtCore.QTimerEvent;
with QtAda6.QtCore.QSize;
with QtAda6.QtGui.QRegion;
package body QtAda6.QtWidgets.QTableView is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create (parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null) return Class is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QTableView");
      Args  := Tuple_New (0);
      Dict  := Dict_New;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   procedure clearSpans (self : access Inst) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "clearSpans");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end clearSpans;
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
   procedure columnMoved (self : access Inst; column_P : int; oldIndex_P : int; newIndex_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "columnMoved");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (column_P));
      Tuple_SetItem (Args, 1, Long_FromLong (oldIndex_P));
      Tuple_SetItem (Args, 2, Long_FromLong (newIndex_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end columnMoved;
   procedure columnResized (self : access Inst; column_P : int; oldWidth_P : int; newWidth_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "columnResized");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (column_P));
      Tuple_SetItem (Args, 1, Long_FromLong (oldWidth_P));
      Tuple_SetItem (Args, 2, Long_FromLong (newWidth_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end columnResized;
   function columnSpan (self : access Inst; row_P : int; column_P : int) return int is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "columnSpan");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Tuple_SetItem (Args, 1, Long_FromLong (column_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end columnSpan;
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
   procedure doItemsLayout (self : access Inst) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "doItemsLayout");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end doItemsLayout;
   function gridStyle (self : access Inst) return access QtAda6.QtCore.Qt.PenStyle.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.PenStyle.Class := new QtAda6.QtCore.Qt.PenStyle.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "gridStyle");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end gridStyle;
   procedure hideColumn (self : access Inst; column_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hideColumn");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (column_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end hideColumn;
   procedure hideRow (self : access Inst; row_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hideRow");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end hideRow;
   function horizontalHeader (self : access Inst) return access QtAda6.QtWidgets.QHeaderView.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QHeaderView.Class := new QtAda6.QtWidgets.QHeaderView.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "horizontalHeader");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end horizontalHeader;
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
   procedure initViewItemOption (self : access Inst; option_P : access QtAda6.QtWidgets.QStyleOptionViewItem.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "initViewItemOption");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if option_P /= null then option_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end initViewItemOption;
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
   function isCornerButtonEnabled (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isCornerButtonEnabled");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isCornerButtonEnabled;
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
   function isRowHidden (self : access Inst; row_P : int) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isRowHidden");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
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
   procedure paintEvent (self : access Inst; e_P : access QtAda6.QtGui.QPaintEvent.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "paintEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if e_P /= null then e_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end paintEvent;
   procedure resizeColumnToContents (self : access Inst; column_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "resizeColumnToContents");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (column_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end resizeColumnToContents;
   procedure resizeColumnsToContents (self : access Inst) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "resizeColumnsToContents");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end resizeColumnsToContents;
   procedure resizeRowToContents (self : access Inst; row_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "resizeRowToContents");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end resizeRowToContents;
   procedure resizeRowsToContents (self : access Inst) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "resizeRowsToContents");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end resizeRowsToContents;
   function rowAt (self : access Inst; y_P : int) return int is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "rowAt");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (y_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end rowAt;
   procedure rowCountChanged (self : access Inst; oldCount_P : int; newCount_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "rowCountChanged");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (oldCount_P));
      Tuple_SetItem (Args, 1, Long_FromLong (newCount_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end rowCountChanged;
   function rowHeight (self : access Inst; row_P : int) return int is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "rowHeight");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end rowHeight;
   procedure rowMoved (self : access Inst; row_P : int; oldIndex_P : int; newIndex_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "rowMoved");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Tuple_SetItem (Args, 1, Long_FromLong (oldIndex_P));
      Tuple_SetItem (Args, 2, Long_FromLong (newIndex_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end rowMoved;
   procedure rowResized (self : access Inst; row_P : int; oldHeight_P : int; newHeight_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "rowResized");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Tuple_SetItem (Args, 1, Long_FromLong (oldHeight_P));
      Tuple_SetItem (Args, 2, Long_FromLong (newHeight_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end rowResized;
   function rowSpan (self : access Inst; row_P : int; column_P : int) return int is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "rowSpan");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Tuple_SetItem (Args, 1, Long_FromLong (column_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end rowSpan;
   function rowViewportPosition (self : access Inst; row_P : int) return int is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "rowViewportPosition");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end rowViewportPosition;
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
   procedure selectColumn (self : access Inst; column_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "selectColumn");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (column_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end selectColumn;
   procedure selectRow (self : access Inst; row_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "selectRow");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end selectRow;
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
   procedure setCornerButtonEnabled (self : access Inst; enable_P : bool) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setCornerButtonEnabled");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (enable_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setCornerButtonEnabled;
   procedure setGridStyle (self : access Inst; style_P : access QtAda6.QtCore.Qt.PenStyle.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setGridStyle");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if style_P /= null then style_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setGridStyle;
   procedure setHorizontalHeader (self : access Inst; header_P : access QtAda6.QtWidgets.QHeaderView.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setHorizontalHeader");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if header_P /= null then header_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setHorizontalHeader;
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
   procedure setRowHeight (self : access Inst; row_P : int; height_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setRowHeight");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Tuple_SetItem (Args, 1, Long_FromLong (height_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setRowHeight;
   procedure setRowHidden (self : access Inst; row_P : int; hide_P : bool) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
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
   procedure setShowGrid (self : access Inst; show_P : bool) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setShowGrid");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (show_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setShowGrid;
   procedure setSortingEnabled (self : access Inst; enable_P : bool) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setSortingEnabled");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (enable_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setSortingEnabled;
   procedure setSpan (self : access Inst; row_P : int; column_P : int; rowSpan_P : int; columnSpan_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setSpan");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Tuple_SetItem (Args, 1, Long_FromLong (column_P));
      Tuple_SetItem (Args, 2, Long_FromLong (rowSpan_P));
      Tuple_SetItem (Args, 3, Long_FromLong (columnSpan_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setSpan;
   procedure setVerticalHeader (self : access Inst; header_P : access QtAda6.QtWidgets.QHeaderView.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setVerticalHeader");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if header_P /= null then header_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setVerticalHeader;
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
   function showGrid (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "showGrid");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end showGrid;
   procedure showRow (self : access Inst; row_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "showRow");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end showRow;
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
   function sizeHintForRow (self : access Inst; row_P : int) return int is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "sizeHintForRow");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end sizeHintForRow;
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
   procedure updateGeometries (self : access Inst) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "updateGeometries");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end updateGeometries;
   function verticalHeader (self : access Inst) return access QtAda6.QtWidgets.QHeaderView.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QHeaderView.Class := new QtAda6.QtWidgets.QHeaderView.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "verticalHeader");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end verticalHeader;
   function verticalOffset (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "verticalOffset");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end verticalOffset;
   procedure verticalScrollbarAction (self : access Inst; action_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "verticalScrollbarAction");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (action_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end verticalScrollbarAction;
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
end QtAda6.QtWidgets.QTableView;
