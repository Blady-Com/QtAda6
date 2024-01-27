-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qabstractitemview.adb
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
with QtAda6.QtWidgets.QAbstractScrollArea;
with QtAda6.QtWidgets.QWidget;
with QtAda6.QtWidgets.QAbstractItemDelegate.EndEditHint;
with QtAda6.QtCore.QModelIndex;
with QtAda6.QtCore.QPersistentModelIndex;
with QtAda6.QtCore.Qt.DropAction;
with QtAda6.QtCore.QPoint;
with QtAda6.QtWidgets.QAbstractItemView.DragDropMode;
with QtAda6.QtGui.QDragEnterEvent;
with QtAda6.QtGui.QDragLeaveEvent;
with QtAda6.QtGui.QDragMoveEvent;
with QtAda6.QtGui.QDropEvent;
with QtAda6.QtWidgets.QAbstractItemView.DropIndicatorPosition;
with QtAda6.QtWidgets.QAbstractItemView.EditTrigger;
with QtAda6.QtCore.QEvent;
with QtAda6.QtCore.QObject;
with QtAda6.QtGui.QFocusEvent;
with QtAda6.QtWidgets.QAbstractItemView.ScrollMode;
with QtAda6.QtCore.QSize;
with QtAda6.QtWidgets.QStyleOptionViewItem;
with QtAda6.QtGui.QInputMethodEvent;
with QtAda6.QtCore.Qt.InputMethodQuery;
with QtAda6.QtWidgets.QAbstractItemDelegate;
with QtAda6.QtGui.QKeyEvent;
with QtAda6.QtCore.QAbstractItemModel;
with QtAda6.QtGui.QMouseEvent;
with QtAda6.QtWidgets.QAbstractItemView.CursorAction;
with QtAda6.QtCore.Qt.KeyboardModifier;
with QtAda6.QtGui.QResizeEvent;
with QtAda6.QtWidgets.QAbstractItemView.ScrollHint;
with QtAda6.QtWidgets.QAbstractItemView.SelectionBehavior;
with QtAda6.QtCore.QItemSelection;
with QtAda6.QtCore.QItemSelectionModel.SelectionFlag;
with QtAda6.QtWidgets.QAbstractItemView.SelectionMode;
with QtAda6.QtCore.QItemSelectionModel;
with QtAda6.QtGui.QRegion;
with QtAda6.QtGui.QBitmap;
with QtAda6.QtGui.QPolygon;
with QtAda6.QtCore.QRect;
with QtAda6.QtWidgets.QAbstractItemView.State;
with QtAda6.QtCore.Qt.TextElideMode;
with QtAda6.QtCore.QTimerEvent;
package body QtAda6.QtWidgets.QAbstractItemView is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function activated (self : access Inst) return CLASSVAR_Signal is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "activated"));
   end activated;
   function clicked (self : access Inst) return CLASSVAR_Signal is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "clicked"));
   end clicked;
   function doubleClicked (self : access Inst) return CLASSVAR_Signal is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "doubleClicked"));
   end doubleClicked;
   function entered (self : access Inst) return CLASSVAR_Signal is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "entered"));
   end entered;
   function iconSizeChanged (self : access Inst) return CLASSVAR_Signal is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "iconSizeChanged"));
   end iconSizeChanged;
   function pressed (self : access Inst) return CLASSVAR_Signal is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "pressed"));
   end pressed;
   function viewportEntered (self : access Inst) return CLASSVAR_Signal is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "viewportEntered"));
   end viewportEntered;
   function Create (parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null) return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QAbstractItemView");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if parent_P /= null then parent_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function alternatingRowColors (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "alternatingRowColors");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end alternatingRowColors;
   function autoScrollMargin (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "autoScrollMargin");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end autoScrollMargin;
   procedure clearSelection (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "clearSelection");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end clearSelection;
   procedure closeEditor
     (self   : access Inst; editor_P : access QtAda6.QtWidgets.QWidget.Inst'Class;
      hint_P : access QtAda6.QtWidgets.QAbstractItemDelegate.EndEditHint.Inst'Class)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "closeEditor");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if editor_P /= null then editor_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if hint_P /= null then hint_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end closeEditor;
   procedure closePersistentEditor
     (self : access Inst; index_P : UNION_QtAda6_QtCore_QModelIndexQtAda6_QtCore_QPersistentModelIndex)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "closePersistentEditor");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if index_P /= null then index_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end closePersistentEditor;
   procedure commitData (self : access Inst; editor_P : access QtAda6.QtWidgets.QWidget.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "commitData");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if editor_P /= null then editor_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end commitData;
   procedure currentChanged
     (self       : access Inst; current_P : UNION_QtAda6_QtCore_QModelIndexQtAda6_QtCore_QPersistentModelIndex;
      previous_P : UNION_QtAda6_QtCore_QModelIndexQtAda6_QtCore_QPersistentModelIndex)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "currentChanged");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if current_P /= null then current_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if previous_P /= null then previous_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end currentChanged;
   function currentIndex (self : access Inst) return access QtAda6.QtCore.QModelIndex.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QModelIndex.Class := new QtAda6.QtCore.QModelIndex.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "currentIndex");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end currentIndex;
   procedure dataChanged
     (self          : access Inst; topLeft_P : UNION_QtAda6_QtCore_QModelIndexQtAda6_QtCore_QPersistentModelIndex;
      bottomRight_P : UNION_QtAda6_QtCore_QModelIndexQtAda6_QtCore_QPersistentModelIndex;
      roles_P       : SEQUENCE_int := (2 .. 1 => <>))
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "dataChanged");
      List   := List_New (roles_P'Length);
      for ind in roles_P'Range loop
         List_SetItem (List, ssize_t (ind - roles_P'First), Long_FromLong (roles_P (ind)));
      end loop;
      Args := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if topLeft_P /= null then topLeft_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if bottomRight_P /= null then bottomRight_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, List);
      Result := Object_CallObject (Method, Args, True);
   end dataChanged;
   function defaultDropAction (self : access Inst) return access QtAda6.QtCore.Qt.DropAction.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.Qt.DropAction.Class := new QtAda6.QtCore.Qt.DropAction.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "defaultDropAction");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end defaultDropAction;
   function dirtyRegionOffset (self : access Inst) return access QtAda6.QtCore.QPoint.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QPoint.Class := new QtAda6.QtCore.QPoint.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "dirtyRegionOffset");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end dirtyRegionOffset;
   procedure doAutoScroll (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "doAutoScroll");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end doAutoScroll;
   procedure doItemsLayout (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "doItemsLayout");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end doItemsLayout;
   function dragDropMode_F (self : access Inst) return access QtAda6.QtWidgets.QAbstractItemView.DragDropMode.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtWidgets.QAbstractItemView.DragDropMode.Class :=
        new QtAda6.QtWidgets.QAbstractItemView.DragDropMode.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "dragDropMode");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end dragDropMode_F;
   function dragDropOverwriteMode (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "dragDropOverwriteMode");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end dragDropOverwriteMode;
   function dragEnabled (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "dragEnabled");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end dragEnabled;
   procedure dragEnterEvent (self : access Inst; event_P : access QtAda6.QtGui.QDragEnterEvent.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "dragEnterEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end dragEnterEvent;
   procedure dragLeaveEvent (self : access Inst; event_P : access QtAda6.QtGui.QDragLeaveEvent.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "dragLeaveEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end dragLeaveEvent;
   procedure dragMoveEvent (self : access Inst; event_P : access QtAda6.QtGui.QDragMoveEvent.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "dragMoveEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end dragMoveEvent;
   procedure dropEvent (self : access Inst; event_P : access QtAda6.QtGui.QDropEvent.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "dropEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end dropEvent;
   function dropIndicatorPosition_F
     (self : access Inst) return access QtAda6.QtWidgets.QAbstractItemView.DropIndicatorPosition.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtWidgets.QAbstractItemView.DropIndicatorPosition.Class :=
        new QtAda6.QtWidgets.QAbstractItemView.DropIndicatorPosition.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "dropIndicatorPosition");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end dropIndicatorPosition_F;
   procedure edit_F (self : access Inst; index_P : UNION_QtAda6_QtCore_QModelIndexQtAda6_QtCore_QPersistentModelIndex)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "edit");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if index_P /= null then index_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end edit_F;
   function edit_F
     (self      : access Inst; index_P : UNION_QtAda6_QtCore_QModelIndexQtAda6_QtCore_QPersistentModelIndex;
      trigger_P : access QtAda6.QtWidgets.QAbstractItemView.EditTrigger.Inst'Class;
      event_P   : access QtAda6.QtCore.QEvent.Inst'Class) return bool
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "edit");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if index_P /= null then index_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if trigger_P /= null then trigger_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end edit_F;
   function editTriggers (self : access Inst) return access QtAda6.QtWidgets.QAbstractItemView.EditTrigger.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtWidgets.QAbstractItemView.EditTrigger.Class :=
        new QtAda6.QtWidgets.QAbstractItemView.EditTrigger.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "editTriggers");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end editTriggers;
   procedure editorDestroyed (self : access Inst; editor_P : access QtAda6.QtCore.QObject.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "editorDestroyed");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if editor_P /= null then editor_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end editorDestroyed;
   function event (self : access Inst; event_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "event");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end event;
   function eventFilter
     (self    : access Inst; object_P : access QtAda6.QtCore.QObject.Inst'Class;
      event_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "eventFilter");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if object_P /= null then object_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end eventFilter;
   procedure executeDelayedItemsLayout (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "executeDelayedItemsLayout");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end executeDelayedItemsLayout;
   procedure focusInEvent (self : access Inst; event_P : access QtAda6.QtGui.QFocusEvent.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "focusInEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end focusInEvent;
   function focusNextPrevChild (self : access Inst; next_P : bool) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "focusNextPrevChild");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (next_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end focusNextPrevChild;
   procedure focusOutEvent (self : access Inst; event_P : access QtAda6.QtGui.QFocusEvent.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "focusOutEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end focusOutEvent;
   function hasAutoScroll (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hasAutoScroll");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end hasAutoScroll;
   function horizontalOffset (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "horizontalOffset");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end horizontalOffset;
   function horizontalScrollMode
     (self : access Inst) return access QtAda6.QtWidgets.QAbstractItemView.ScrollMode.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtWidgets.QAbstractItemView.ScrollMode.Class :=
        new QtAda6.QtWidgets.QAbstractItemView.ScrollMode.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "horizontalScrollMode");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end horizontalScrollMode;
   procedure horizontalScrollbarAction (self : access Inst; action_P : int) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "horizontalScrollbarAction");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (action_P));
      Result := Object_CallObject (Method, Args, True);
   end horizontalScrollbarAction;
   procedure horizontalScrollbarValueChanged (self : access Inst; value_P : int) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "horizontalScrollbarValueChanged");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (value_P));
      Result := Object_CallObject (Method, Args, True);
   end horizontalScrollbarValueChanged;
   function iconSize (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QSize.Class := new QtAda6.QtCore.QSize.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "iconSize");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end iconSize;
   function indexAt
     (self : access Inst; point_P : access QtAda6.QtCore.QPoint.Inst'Class)
      return access QtAda6.QtCore.QModelIndex.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QModelIndex.Class := new QtAda6.QtCore.QModelIndex.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "indexAt");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if point_P /= null then point_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end indexAt;
   function indexWidget
     (self : access Inst; index_P : UNION_QtAda6_QtCore_QModelIndexQtAda6_QtCore_QPersistentModelIndex)
      return access QtAda6.QtWidgets.QWidget.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtWidgets.QWidget.Class := new QtAda6.QtWidgets.QWidget.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "indexWidget");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if index_P /= null then index_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end indexWidget;
   procedure initViewItemOption (self : access Inst; option_P : access QtAda6.QtWidgets.QStyleOptionViewItem.Inst'Class)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "initViewItemOption");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if option_P /= null then option_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end initViewItemOption;
   procedure inputMethodEvent (self : access Inst; event_P : access QtAda6.QtGui.QInputMethodEvent.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "inputMethodEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end inputMethodEvent;
   function inputMethodQuery
     (self : access Inst; query_P : access QtAda6.QtCore.Qt.InputMethodQuery.Inst'Class) return Any
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "inputMethodQuery");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if query_P /= null then query_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return null;
   end inputMethodQuery;
   function isIndexHidden
     (self : access Inst; index_P : UNION_QtAda6_QtCore_QModelIndexQtAda6_QtCore_QPersistentModelIndex) return bool
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isIndexHidden");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if index_P /= null then index_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isIndexHidden;
   function isPersistentEditorOpen
     (self : access Inst; index_P : UNION_QtAda6_QtCore_QModelIndexQtAda6_QtCore_QPersistentModelIndex) return bool
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isPersistentEditorOpen");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if index_P /= null then index_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isPersistentEditorOpen;
   function itemDelegate (self : access Inst) return access QtAda6.QtWidgets.QAbstractItemDelegate.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QAbstractItemDelegate.Class := new QtAda6.QtWidgets.QAbstractItemDelegate.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "itemDelegate");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end itemDelegate;
   function itemDelegate
     (self : access Inst; index_P : UNION_QtAda6_QtCore_QModelIndexQtAda6_QtCore_QPersistentModelIndex)
      return access QtAda6.QtWidgets.QAbstractItemDelegate.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QAbstractItemDelegate.Class := new QtAda6.QtWidgets.QAbstractItemDelegate.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "itemDelegate");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if index_P /= null then index_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end itemDelegate;
   function itemDelegateForColumn
     (self : access Inst; column_P : int) return access QtAda6.QtWidgets.QAbstractItemDelegate.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QAbstractItemDelegate.Class := new QtAda6.QtWidgets.QAbstractItemDelegate.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "itemDelegateForColumn");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (column_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end itemDelegateForColumn;
   function itemDelegateForIndex
     (self : access Inst; index_P : UNION_QtAda6_QtCore_QModelIndexQtAda6_QtCore_QPersistentModelIndex)
      return access QtAda6.QtWidgets.QAbstractItemDelegate.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QAbstractItemDelegate.Class := new QtAda6.QtWidgets.QAbstractItemDelegate.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "itemDelegateForIndex");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if index_P /= null then index_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end itemDelegateForIndex;
   function itemDelegateForRow
     (self : access Inst; row_P : int) return access QtAda6.QtWidgets.QAbstractItemDelegate.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QAbstractItemDelegate.Class := new QtAda6.QtWidgets.QAbstractItemDelegate.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "itemDelegateForRow");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end itemDelegateForRow;
   procedure keyPressEvent (self : access Inst; event_P : access QtAda6.QtGui.QKeyEvent.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "keyPressEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end keyPressEvent;
   procedure keyboardSearch (self : access Inst; search_P : str) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "keyboardSearch");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (search_P));
      Result := Object_CallObject (Method, Args, True);
   end keyboardSearch;
   function model (self : access Inst) return access QtAda6.QtCore.QAbstractItemModel.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtCore.QAbstractItemModel.Class := new QtAda6.QtCore.QAbstractItemModel.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "model");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end model;
   procedure mouseDoubleClickEvent (self : access Inst; event_P : access QtAda6.QtGui.QMouseEvent.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mouseDoubleClickEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end mouseDoubleClickEvent;
   procedure mouseMoveEvent (self : access Inst; event_P : access QtAda6.QtGui.QMouseEvent.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mouseMoveEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end mouseMoveEvent;
   procedure mousePressEvent (self : access Inst; event_P : access QtAda6.QtGui.QMouseEvent.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mousePressEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end mousePressEvent;
   procedure mouseReleaseEvent (self : access Inst; event_P : access QtAda6.QtGui.QMouseEvent.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mouseReleaseEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end mouseReleaseEvent;
   function moveCursor
     (self        : access Inst; cursorAction_P : access QtAda6.QtWidgets.QAbstractItemView.CursorAction.Inst'Class;
      modifiers_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class)
      return access QtAda6.QtCore.QModelIndex.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QModelIndex.Class := new QtAda6.QtCore.QModelIndex.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "moveCursor");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if cursorAction_P /= null then cursorAction_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if modifiers_P /= null then modifiers_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end moveCursor;
   procedure openPersistentEditor
     (self : access Inst; index_P : UNION_QtAda6_QtCore_QModelIndexQtAda6_QtCore_QPersistentModelIndex)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "openPersistentEditor");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if index_P /= null then index_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end openPersistentEditor;
   procedure reset (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "reset");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end reset;
   procedure resetHorizontalScrollMode (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "resetHorizontalScrollMode");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end resetHorizontalScrollMode;
   procedure resetVerticalScrollMode (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "resetVerticalScrollMode");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end resetVerticalScrollMode;
   procedure resizeEvent (self : access Inst; event_P : access QtAda6.QtGui.QResizeEvent.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "resizeEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end resizeEvent;
   function rootIndex (self : access Inst) return access QtAda6.QtCore.QModelIndex.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QModelIndex.Class := new QtAda6.QtCore.QModelIndex.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "rootIndex");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end rootIndex;
   procedure rowsAboutToBeRemoved
     (self : access Inst; parent_P : UNION_QtAda6_QtCore_QModelIndexQtAda6_QtCore_QPersistentModelIndex; start_P : int;
      end_K_P : int)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "rowsAboutToBeRemoved");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if parent_P /= null then parent_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (start_P));
      Tuple_SetItem (Args, 2, Long_FromLong (end_K_P));
      Result := Object_CallObject (Method, Args, True);
   end rowsAboutToBeRemoved;
   procedure rowsInserted
     (self : access Inst; parent_P : UNION_QtAda6_QtCore_QModelIndexQtAda6_QtCore_QPersistentModelIndex; start_P : int;
      end_K_P : int)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "rowsInserted");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if parent_P /= null then parent_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (start_P));
      Tuple_SetItem (Args, 2, Long_FromLong (end_K_P));
      Result := Object_CallObject (Method, Args, True);
   end rowsInserted;
   procedure scheduleDelayedItemsLayout (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "scheduleDelayedItemsLayout");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end scheduleDelayedItemsLayout;
   procedure scrollDirtyRegion (self : access Inst; dx_P : int; dy_P : int) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "scrollDirtyRegion");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (dx_P));
      Tuple_SetItem (Args, 1, Long_FromLong (dy_P));
      Result := Object_CallObject (Method, Args, True);
   end scrollDirtyRegion;
   procedure scrollTo
     (self   : access Inst; index_P : UNION_QtAda6_QtCore_QModelIndexQtAda6_QtCore_QPersistentModelIndex;
      hint_P : access QtAda6.QtWidgets.QAbstractItemView.ScrollHint.Inst'Class := null)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "scrollTo");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if index_P /= null then index_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if hint_P /= null then hint_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end scrollTo;
   procedure scrollToBottom (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "scrollToBottom");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end scrollToBottom;
   procedure scrollToTop (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "scrollToTop");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end scrollToTop;
   procedure selectAll (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "selectAll");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end selectAll;
   function selectedIndexes (self : access Inst) return LIST_QtAda6_QtCore_QModelIndex is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "selectedIndexes");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return (2 .. 1 => <>);
   end selectedIndexes;
   function selectionBehavior_F
     (self : access Inst) return access QtAda6.QtWidgets.QAbstractItemView.SelectionBehavior.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtWidgets.QAbstractItemView.SelectionBehavior.Class :=
        new QtAda6.QtWidgets.QAbstractItemView.SelectionBehavior.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "selectionBehavior");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end selectionBehavior_F;
   procedure selectionChanged
     (self         : access Inst; selected_P : access QtAda6.QtCore.QItemSelection.Inst'Class;
      deselected_P : access QtAda6.QtCore.QItemSelection.Inst'Class)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "selectionChanged");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if selected_P /= null then selected_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if deselected_P /= null then deselected_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end selectionChanged;
   function selectionCommand
     (self    : access Inst; index_P : UNION_QtAda6_QtCore_QModelIndexQtAda6_QtCore_QPersistentModelIndex;
      event_P : access QtAda6.QtCore.QEvent.Inst'Class := null)
      return access QtAda6.QtCore.QItemSelectionModel.SelectionFlag.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QItemSelectionModel.SelectionFlag.Class :=
        new QtAda6.QtCore.QItemSelectionModel.SelectionFlag.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "selectionCommand");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if index_P /= null then index_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end selectionCommand;
   function selectionMode_F
     (self : access Inst) return access QtAda6.QtWidgets.QAbstractItemView.SelectionMode.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtWidgets.QAbstractItemView.SelectionMode.Class :=
        new QtAda6.QtWidgets.QAbstractItemView.SelectionMode.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "selectionMode");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end selectionMode_F;
   function selectionModel (self : access Inst) return access QtAda6.QtCore.QItemSelectionModel.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtCore.QItemSelectionModel.Class := new QtAda6.QtCore.QItemSelectionModel.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "selectionModel");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end selectionModel;
   procedure setAlternatingRowColors (self : access Inst; enable_P : bool) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setAlternatingRowColors");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (enable_P));
      Result := Object_CallObject (Method, Args, True);
   end setAlternatingRowColors;
   procedure setAutoScroll (self : access Inst; enable_P : bool) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setAutoScroll");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (enable_P));
      Result := Object_CallObject (Method, Args, True);
   end setAutoScroll;
   procedure setAutoScrollMargin (self : access Inst; margin_P : int) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setAutoScrollMargin");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (margin_P));
      Result := Object_CallObject (Method, Args, True);
   end setAutoScrollMargin;
   procedure setCurrentIndex
     (self : access Inst; index_P : UNION_QtAda6_QtCore_QModelIndexQtAda6_QtCore_QPersistentModelIndex)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setCurrentIndex");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if index_P /= null then index_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setCurrentIndex;
   procedure setDefaultDropAction (self : access Inst; dropAction_P : access QtAda6.QtCore.Qt.DropAction.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setDefaultDropAction");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if dropAction_P /= null then dropAction_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setDefaultDropAction;
   procedure setDirtyRegion
     (self     : access Inst;
      region_P : UNION_QtAda6_QtGui_QRegionQtAda6_QtGui_QBitmapQtAda6_QtGui_QPolygonQtAda6_QtCore_QRect)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setDirtyRegion");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if region_P /= null then region_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setDirtyRegion;
   procedure setDragDropMode
     (self : access Inst; behavior_P : access QtAda6.QtWidgets.QAbstractItemView.DragDropMode.Inst'Class)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setDragDropMode");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if behavior_P /= null then behavior_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setDragDropMode;
   procedure setDragDropOverwriteMode (self : access Inst; overwrite_P : bool) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setDragDropOverwriteMode");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (overwrite_P));
      Result := Object_CallObject (Method, Args, True);
   end setDragDropOverwriteMode;
   procedure setDragEnabled (self : access Inst; enable_P : bool) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setDragEnabled");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (enable_P));
      Result := Object_CallObject (Method, Args, True);
   end setDragEnabled;
   procedure setDropIndicatorShown (self : access Inst; enable_P : bool) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setDropIndicatorShown");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (enable_P));
      Result := Object_CallObject (Method, Args, True);
   end setDropIndicatorShown;
   procedure setEditTriggers
     (self : access Inst; triggers_P : access QtAda6.QtWidgets.QAbstractItemView.EditTrigger.Inst'Class)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setEditTriggers");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if triggers_P /= null then triggers_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setEditTriggers;
   procedure setHorizontalScrollMode
     (self : access Inst; mode_P : access QtAda6.QtWidgets.QAbstractItemView.ScrollMode.Inst'Class)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setHorizontalScrollMode");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if mode_P /= null then mode_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setHorizontalScrollMode;
   procedure setIconSize (self : access Inst; size_P : access QtAda6.QtCore.QSize.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setIconSize");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if size_P /= null then size_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setIconSize;
   procedure setIndexWidget
     (self     : access Inst; index_P : UNION_QtAda6_QtCore_QModelIndexQtAda6_QtCore_QPersistentModelIndex;
      widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setIndexWidget");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if index_P /= null then index_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if widget_P /= null then widget_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setIndexWidget;
   procedure setItemDelegate (self : access Inst; delegate_P : access QtAda6.QtWidgets.QAbstractItemDelegate.Inst'Class)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setItemDelegate");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if delegate_P /= null then delegate_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setItemDelegate;
   procedure setItemDelegateForColumn
     (self : access Inst; column_P : int; delegate_P : access QtAda6.QtWidgets.QAbstractItemDelegate.Inst'Class)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setItemDelegateForColumn");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (column_P));
      Tuple_SetItem (Args, 1, (if delegate_P /= null then delegate_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setItemDelegateForColumn;
   procedure setItemDelegateForRow
     (self : access Inst; row_P : int; delegate_P : access QtAda6.QtWidgets.QAbstractItemDelegate.Inst'Class)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setItemDelegateForRow");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Tuple_SetItem (Args, 1, (if delegate_P /= null then delegate_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setItemDelegateForRow;
   procedure setModel (self : access Inst; model_P : access QtAda6.QtCore.QAbstractItemModel.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setModel");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if model_P /= null then model_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setModel;
   procedure setRootIndex
     (self : access Inst; index_P : UNION_QtAda6_QtCore_QModelIndexQtAda6_QtCore_QPersistentModelIndex)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setRootIndex");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if index_P /= null then index_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setRootIndex;
   procedure setSelection
     (self      : access Inst; rect_P : access QtAda6.QtCore.QRect.Inst'Class;
      command_P : access QtAda6.QtCore.QItemSelectionModel.SelectionFlag.Inst'Class)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setSelection");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if rect_P /= null then rect_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if command_P /= null then command_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setSelection;
   procedure setSelectionBehavior
     (self : access Inst; behavior_P : access QtAda6.QtWidgets.QAbstractItemView.SelectionBehavior.Inst'Class)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setSelectionBehavior");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if behavior_P /= null then behavior_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setSelectionBehavior;
   procedure setSelectionMode
     (self : access Inst; mode_P : access QtAda6.QtWidgets.QAbstractItemView.SelectionMode.Inst'Class)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setSelectionMode");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if mode_P /= null then mode_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setSelectionMode;
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
   procedure setState (self : access Inst; state_P : access QtAda6.QtWidgets.QAbstractItemView.State.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setState");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if state_P /= null then state_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setState;
   procedure setTabKeyNavigation (self : access Inst; enable_P : bool) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setTabKeyNavigation");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (enable_P));
      Result := Object_CallObject (Method, Args, True);
   end setTabKeyNavigation;
   procedure setTextElideMode (self : access Inst; mode_P : access QtAda6.QtCore.Qt.TextElideMode.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setTextElideMode");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if mode_P /= null then mode_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setTextElideMode;
   procedure setVerticalScrollMode
     (self : access Inst; mode_P : access QtAda6.QtWidgets.QAbstractItemView.ScrollMode.Inst'Class)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setVerticalScrollMode");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if mode_P /= null then mode_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setVerticalScrollMode;
   function showDropIndicator (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "showDropIndicator");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end showDropIndicator;
   function sizeHintForColumn (self : access Inst; column_P : int) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "sizeHintForColumn");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (column_P));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end sizeHintForColumn;
   function sizeHintForIndex
     (self : access Inst; index_P : UNION_QtAda6_QtCore_QModelIndexQtAda6_QtCore_QPersistentModelIndex)
      return access QtAda6.QtCore.QSize.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QSize.Class := new QtAda6.QtCore.QSize.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "sizeHintForIndex");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if index_P /= null then index_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end sizeHintForIndex;
   function sizeHintForRow (self : access Inst; row_P : int) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "sizeHintForRow");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end sizeHintForRow;
   procedure startAutoScroll (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "startAutoScroll");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end startAutoScroll;
   procedure startDrag (self : access Inst; supportedActions_P : access QtAda6.QtCore.Qt.DropAction.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "startDrag");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if supportedActions_P /= null then supportedActions_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end startDrag;
   function state_F (self : access Inst) return access QtAda6.QtWidgets.QAbstractItemView.State.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtWidgets.QAbstractItemView.State.Class :=
        new QtAda6.QtWidgets.QAbstractItemView.State.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "state");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end state_F;
   procedure stopAutoScroll (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "stopAutoScroll");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end stopAutoScroll;
   function tabKeyNavigation (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "tabKeyNavigation");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end tabKeyNavigation;
   function textElideMode (self : access Inst) return access QtAda6.QtCore.Qt.TextElideMode.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.TextElideMode.Class := new QtAda6.QtCore.Qt.TextElideMode.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "textElideMode");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end textElideMode;
   procedure timerEvent (self : access Inst; event_P : access QtAda6.QtCore.QTimerEvent.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "timerEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end timerEvent;
   procedure update (self : access Inst; index_P : UNION_QtAda6_QtCore_QModelIndexQtAda6_QtCore_QPersistentModelIndex)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "update");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if index_P /= null then index_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end update;
   procedure updateEditorData (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "updateEditorData");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end updateEditorData;
   procedure updateEditorGeometries (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "updateEditorGeometries");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end updateEditorGeometries;
   procedure updateGeometries (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "updateGeometries");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end updateGeometries;
   function verticalOffset (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "verticalOffset");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end verticalOffset;
   function verticalScrollMode
     (self : access Inst) return access QtAda6.QtWidgets.QAbstractItemView.ScrollMode.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtWidgets.QAbstractItemView.ScrollMode.Class :=
        new QtAda6.QtWidgets.QAbstractItemView.ScrollMode.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "verticalScrollMode");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end verticalScrollMode;
   procedure verticalScrollbarAction (self : access Inst; action_P : int) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "verticalScrollbarAction");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (action_P));
      Result := Object_CallObject (Method, Args, True);
   end verticalScrollbarAction;
   procedure verticalScrollbarValueChanged (self : access Inst; value_P : int) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "verticalScrollbarValueChanged");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (value_P));
      Result := Object_CallObject (Method, Args, True);
   end verticalScrollbarValueChanged;
   function viewportEvent (self : access Inst; event_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "viewportEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end viewportEvent;
   function viewportSizeHint (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QSize.Class := new QtAda6.QtCore.QSize.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "viewportSizeHint");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end viewportSizeHint;
   function visualRect
     (self : access Inst; index_P : UNION_QtAda6_QtCore_QModelIndexQtAda6_QtCore_QPersistentModelIndex)
      return access QtAda6.QtCore.QRect.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QRect.Class := new QtAda6.QtCore.QRect.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "visualRect");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if index_P /= null then index_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end visualRect;
   function visualRegionForSelection
     (self : access Inst; selection_P : access QtAda6.QtCore.QItemSelection.Inst'Class)
      return access QtAda6.QtGui.QRegion.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QRegion.Class := new QtAda6.QtGui.QRegion.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "visualRegionForSelection");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if selection_P /= null then selection_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end visualRegionForSelection;
end QtAda6.QtWidgets.QAbstractItemView;
