-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qcompleter.adb
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
with QtAda6.QtCore.QObject;
with QtAda6.QtCore.QAbstractItemModel;
with QtAda6.QtCore.Qt.CaseSensitivity;
with QtAda6.QtCore.QRect;
with QtAda6.QtWidgets.QCompleter.CompletionMode;
with QtAda6.QtCore.QModelIndex;
with QtAda6.QtCore.QEvent;
with QtAda6.QtCore.Qt.MatchFlag;
with QtAda6.QtWidgets.QCompleter.ModelSorting;
with QtAda6.QtWidgets.QAbstractItemView;
with QtAda6.QtWidgets.QWidget;
package body QtAda6.QtWidgets.QCompleter is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function activated (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "activated"));
   end activated;
   function highlighted (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "highlighted"));
   end highlighted;
   function Create
     (completions_P : SEQUENCE_str; parent_P : access QtAda6.QtCore.QObject.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QCompleter");
      List  := List_New (completions_P'Length);
      for ind in completions_P'Range loop
         List_SetItem (List, ssize_t (ind - completions_P'First), Unicode_FromString (completions_P (ind)));
      end loop;
      Args := Tuple_New (1);
      Tuple_SetItem (Args, 0, List);
      Dict := Dict_New;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (model_P  : access QtAda6.QtCore.QAbstractItemModel.Inst'Class;
      parent_P : access QtAda6.QtCore.QObject.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QCompleter");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if model_P /= null then model_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (parent_P : access QtAda6.QtCore.QObject.Inst'Class := null) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QCompleter");
      Args  := Tuple_New (0);
      Dict  := Dict_New;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function caseSensitivity (self : access Inst) return access QtAda6.QtCore.Qt.CaseSensitivity.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.CaseSensitivity.Class := new QtAda6.QtCore.Qt.CaseSensitivity.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "caseSensitivity");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end caseSensitivity;
   procedure complete (self : access Inst; rect_P : access QtAda6.QtCore.QRect.Inst'Class := null) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "complete");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      if rect_P /= null then
         Dict_SetItemString (Dict, "rect", rect_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end complete;
   function completionColumn (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "completionColumn");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end completionColumn;
   function completionCount (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "completionCount");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end completionCount;
   function completionMode_F (self : access Inst) return access QtAda6.QtWidgets.QCompleter.CompletionMode.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtWidgets.QCompleter.CompletionMode.Class :=
        new QtAda6.QtWidgets.QCompleter.CompletionMode.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "completionMode");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end completionMode_F;
   function completionModel (self : access Inst) return access QtAda6.QtCore.QAbstractItemModel.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QAbstractItemModel.Class := new QtAda6.QtCore.QAbstractItemModel.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "completionModel");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end completionModel;
   function completionPrefix (self : access Inst) return str is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "completionPrefix");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end completionPrefix;
   function completionRole (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "completionRole");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end completionRole;
   function currentCompletion (self : access Inst) return str is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "currentCompletion");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end currentCompletion;
   function currentIndex (self : access Inst) return access QtAda6.QtCore.QModelIndex.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QModelIndex.Class := new QtAda6.QtCore.QModelIndex.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "currentIndex");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end currentIndex;
   function currentRow (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "currentRow");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end currentRow;
   function event (self : access Inst; arg_1_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "event");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end event;
   function eventFilter
     (self : access Inst; o_P : access QtAda6.QtCore.QObject.Inst'Class; e_P : access QtAda6.QtCore.QEvent.Inst'Class)
      return bool
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "eventFilter");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if o_P /= null then o_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if e_P /= null then e_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end eventFilter;
   function filterMode (self : access Inst) return access QtAda6.QtCore.Qt.MatchFlag.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.MatchFlag.Class := new QtAda6.QtCore.Qt.MatchFlag.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "filterMode");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end filterMode;
   function maxVisibleItems (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "maxVisibleItems");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end maxVisibleItems;
   function model (self : access Inst) return access QtAda6.QtCore.QAbstractItemModel.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QAbstractItemModel.Class := new QtAda6.QtCore.QAbstractItemModel.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "model");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end model;
   function modelSorting_F (self : access Inst) return access QtAda6.QtWidgets.QCompleter.ModelSorting.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtWidgets.QCompleter.ModelSorting.Class :=
        new QtAda6.QtWidgets.QCompleter.ModelSorting.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "modelSorting");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end modelSorting_F;
   function pathFromIndex
     (self : access Inst; index_P : UNION_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex) return str
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "pathFromIndex");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if index_P /= null then index_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end pathFromIndex;
   function popup (self : access Inst) return access QtAda6.QtWidgets.QAbstractItemView.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QAbstractItemView.Class := new QtAda6.QtWidgets.QAbstractItemView.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "popup");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end popup;
   procedure setCaseSensitivity
     (self : access Inst; caseSensitivity_P : access QtAda6.QtCore.Qt.CaseSensitivity.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setCaseSensitivity");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if caseSensitivity_P /= null then caseSensitivity_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setCaseSensitivity;
   procedure setCompletionColumn (self : access Inst; column_P : int) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setCompletionColumn");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (column_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setCompletionColumn;
   procedure setCompletionMode
     (self : access Inst; mode_P : access QtAda6.QtWidgets.QCompleter.CompletionMode.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setCompletionMode");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if mode_P /= null then mode_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setCompletionMode;
   procedure setCompletionPrefix (self : access Inst; prefix_P : str) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setCompletionPrefix");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (prefix_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setCompletionPrefix;
   procedure setCompletionRole (self : access Inst; role_P : int) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setCompletionRole");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (role_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setCompletionRole;
   function setCurrentRow (self : access Inst; row_P : int) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setCurrentRow");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end setCurrentRow;
   procedure setFilterMode (self : access Inst; filterMode_P : access QtAda6.QtCore.Qt.MatchFlag.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFilterMode");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if filterMode_P /= null then filterMode_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setFilterMode;
   procedure setMaxVisibleItems (self : access Inst; maxItems_P : int) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setMaxVisibleItems");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (maxItems_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setMaxVisibleItems;
   procedure setModel (self : access Inst; c_P : access QtAda6.QtCore.QAbstractItemModel.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setModel");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if c_P /= null then c_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setModel;
   procedure setModelSorting
     (self : access Inst; sorting_P : access QtAda6.QtWidgets.QCompleter.ModelSorting.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setModelSorting");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if sorting_P /= null then sorting_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setModelSorting;
   procedure setPopup (self : access Inst; popup_P : access QtAda6.QtWidgets.QAbstractItemView.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPopup");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if popup_P /= null then popup_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPopup;
   procedure setWidget (self : access Inst; widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setWidget");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if widget_P /= null then widget_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setWidget;
   procedure setWrapAround (self : access Inst; wrap_P : bool) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setWrapAround");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (wrap_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setWrapAround;
   function splitPath (self : access Inst; path_P : str) return LIST_str is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "splitPath");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (path_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return (2 .. 1 => <>);
   end splitPath;
   function widget (self : access Inst) return access QtAda6.QtWidgets.QWidget.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QWidget.Class := new QtAda6.QtWidgets.QWidget.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "widget");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end widget;
   function wrapAround (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "wrapAround");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end wrapAround;
end QtAda6.QtWidgets.QCompleter;
