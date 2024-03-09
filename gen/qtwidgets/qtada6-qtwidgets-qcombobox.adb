-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qcombobox.adb
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
with QtAda6.QtCore.QEvent;
with QtAda6.QtWidgets.QCompleter;
with QtAda6.QtGui.QContextMenuEvent;
with QtAda6.QtCore.Qt.MatchFlag;
with QtAda6.QtGui.QFocusEvent;
with QtAda6.QtGui.QHideEvent;
with QtAda6.QtCore.QSize;
with QtAda6.QtWidgets.QStyleOptionComboBox;
with QtAda6.QtGui.QInputMethodEvent;
with QtAda6.QtCore.Qt.InputMethodQuery;
with QtAda6.QtWidgets.QComboBox.InsertPolicy;
with QtAda6.QtWidgets.QAbstractItemDelegate;
with QtAda6.QtGui.QIcon;
with QtAda6.QtGui.QKeyEvent;
with QtAda6.QtWidgets.QLineEdit;
with QtAda6.QtCore.QAbstractItemModel;
with QtAda6.QtGui.QMouseEvent;
with QtAda6.QtGui.QPaintEvent;
with QtAda6.QtGui.QResizeEvent;
with QtAda6.QtCore.QModelIndex;
with QtAda6.QtWidgets.QComboBox.SizeAdjustPolicy;
with QtAda6.QtGui.QValidator;
with QtAda6.QtWidgets.QAbstractItemView;
with QtAda6.QtGui.QShowEvent;
with QtAda6.QtGui.QWheelEvent;
package body QtAda6.QtWidgets.QComboBox is
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
   function currentIndexChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "currentIndexChanged"));
   end currentIndexChanged;
   function currentTextChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "currentTextChanged"));
   end currentTextChanged;
   function editTextChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "editTextChanged"));
   end editTextChanged;
   function highlighted (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "highlighted"));
   end highlighted;
   function textActivated (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "textActivated"));
   end textActivated;
   function textHighlighted (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "textHighlighted"));
   end textHighlighted;
   function Create (parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QComboBox");
      Args  := Tuple_New (0);
      Dict  := Dict_New;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   procedure addItem
     (self       : access Inst; icon_P : UNION_QtAda6_QtGui_QIcon_QtAda6_QtGui_QPixmap; text_P : str;
      userData_P : Any := null)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addItem");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if icon_P /= null then icon_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Unicode_FromString (text_P));
      Dict := Dict_New;
      if userData_P /= null then
         Dict_SetItemString (Dict, "userData", userData_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end addItem;
   procedure addItem (self : access Inst; text_P : str; userData_P : Any := null) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addItem");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (text_P));
      Dict := Dict_New;
      if userData_P /= null then
         Dict_SetItemString (Dict, "userData", userData_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end addItem;
   procedure addItems (self : access Inst; texts_P : SEQUENCE_str) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addItems");
      List   := List_New (texts_P'Length);
      for ind in texts_P'Range loop
         List_SetItem (List, ssize_t (ind - texts_P'First), Unicode_FromString (texts_P (ind)));
      end loop;
      Args := Tuple_New (1);
      Tuple_SetItem (Args, 0, List);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end addItems;
   procedure changeEvent (self : access Inst; e_P : access QtAda6.QtCore.QEvent.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "changeEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if e_P /= null then e_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end changeEvent;
   procedure clear (self : access Inst) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "clear");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end clear;
   procedure clearEditText (self : access Inst) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "clearEditText");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end clearEditText;
   function completer (self : access Inst) return access QtAda6.QtWidgets.QCompleter.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QCompleter.Class := new QtAda6.QtWidgets.QCompleter.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "completer");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end completer;
   procedure contextMenuEvent (self : access Inst; e_P : access QtAda6.QtGui.QContextMenuEvent.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "contextMenuEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if e_P /= null then e_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end contextMenuEvent;
   function count (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "count");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end count;
   function currentData (self : access Inst; role_P : int := 0) return Any is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "currentData");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      if role_P /= 0 then
         Dict_SetItemString (Dict, "role", Long_FromLong (role_P));
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return null;
   end currentData;
   function currentIndex (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "currentIndex");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end currentIndex;
   function currentText (self : access Inst) return str is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "currentText");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end currentText;
   function duplicatesEnabled (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "duplicatesEnabled");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end duplicatesEnabled;
   function event (self : access Inst; event_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "event");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end event;
   function findData
     (self    : access Inst; data_P : Any; role_P : int := 0;
      flags_P : access QtAda6.QtCore.Qt.MatchFlag.Inst'Class := null) return int
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "findData");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if data_P /= null then data_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if role_P /= 0 then
         Dict_SetItemString (Dict, "role", Long_FromLong (role_P));
      end if;
      if flags_P /= null then
         Dict_SetItemString (Dict, "flags", flags_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end findData;
   function findText
     (self : access Inst; text_P : str; flags_P : access QtAda6.QtCore.Qt.MatchFlag.Inst'Class := null) return int
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "findText");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (text_P));
      Dict := Dict_New;
      if flags_P /= null then
         Dict_SetItemString (Dict, "flags", flags_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end findText;
   procedure focusInEvent (self : access Inst; e_P : access QtAda6.QtGui.QFocusEvent.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "focusInEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if e_P /= null then e_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end focusInEvent;
   procedure focusOutEvent (self : access Inst; e_P : access QtAda6.QtGui.QFocusEvent.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "focusOutEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if e_P /= null then e_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end focusOutEvent;
   function hasFrame (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hasFrame");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end hasFrame;
   procedure hideEvent (self : access Inst; e_P : access QtAda6.QtGui.QHideEvent.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hideEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if e_P /= null then e_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end hideEvent;
   procedure hidePopup (self : access Inst) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hidePopup");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end hidePopup;
   function iconSize (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QSize.Class := new QtAda6.QtCore.QSize.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "iconSize");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end iconSize;
   procedure initStyleOption (self : access Inst; option_P : access QtAda6.QtWidgets.QStyleOptionComboBox.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "initStyleOption");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if option_P /= null then option_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end initStyleOption;
   procedure inputMethodEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QInputMethodEvent.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "inputMethodEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end inputMethodEvent;
   function inputMethodQuery
     (self : access Inst; arg_1_P : access QtAda6.QtCore.Qt.InputMethodQuery.Inst'Class) return Any
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "inputMethodQuery");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return null;
   end inputMethodQuery;
   function inputMethodQuery
     (self : access Inst; query_P : access QtAda6.QtCore.Qt.InputMethodQuery.Inst'Class; argument_P : Any) return Any
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "inputMethodQuery");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if query_P /= null then query_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if argument_P /= null then argument_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return null;
   end inputMethodQuery;
   procedure insertItem
     (self       : access Inst; index_P : int; icon_P : UNION_QtAda6_QtGui_QIcon_QtAda6_QtGui_QPixmap; text_P : str;
      userData_P : Any := null)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "insertItem");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (index_P));
      Tuple_SetItem (Args, 1, (if icon_P /= null then icon_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, Unicode_FromString (text_P));
      Dict := Dict_New;
      if userData_P /= null then
         Dict_SetItemString (Dict, "userData", userData_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end insertItem;
   procedure insertItem (self : access Inst; index_P : int; text_P : str; userData_P : Any := null) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "insertItem");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (index_P));
      Tuple_SetItem (Args, 1, Unicode_FromString (text_P));
      Dict := Dict_New;
      if userData_P /= null then
         Dict_SetItemString (Dict, "userData", userData_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end insertItem;
   procedure insertItems (self : access Inst; index_P : int; texts_P : SEQUENCE_str) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "insertItems");
      List   := List_New (texts_P'Length);
      for ind in texts_P'Range loop
         List_SetItem (List, ssize_t (ind - texts_P'First), Unicode_FromString (texts_P (ind)));
      end loop;
      Args := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (index_P));
      Tuple_SetItem (Args, 1, List);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end insertItems;
   function insertPolicy_F (self : access Inst) return access QtAda6.QtWidgets.QComboBox.InsertPolicy.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QComboBox.InsertPolicy.Class := new QtAda6.QtWidgets.QComboBox.InsertPolicy.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "insertPolicy");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end insertPolicy_F;
   procedure insertSeparator (self : access Inst; index_P : int) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "insertSeparator");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (index_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end insertSeparator;
   function isEditable (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isEditable");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isEditable;
   function itemData (self : access Inst; index_P : int; role_P : int := 0) return Any is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "itemData");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (index_P));
      Dict := Dict_New;
      if role_P /= 0 then
         Dict_SetItemString (Dict, "role", Long_FromLong (role_P));
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return null;
   end itemData;
   function itemDelegate (self : access Inst) return access QtAda6.QtWidgets.QAbstractItemDelegate.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QAbstractItemDelegate.Class := new QtAda6.QtWidgets.QAbstractItemDelegate.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "itemDelegate");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end itemDelegate;
   function itemIcon (self : access Inst; index_P : int) return access QtAda6.QtGui.QIcon.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QIcon.Class := new QtAda6.QtGui.QIcon.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "itemIcon");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (index_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end itemIcon;
   function itemText (self : access Inst; index_P : int) return str is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "itemText");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (index_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end itemText;
   procedure keyPressEvent (self : access Inst; e_P : access QtAda6.QtGui.QKeyEvent.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "keyPressEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if e_P /= null then e_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end keyPressEvent;
   procedure keyReleaseEvent (self : access Inst; e_P : access QtAda6.QtGui.QKeyEvent.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "keyReleaseEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if e_P /= null then e_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end keyReleaseEvent;
   function lineEdit (self : access Inst) return access QtAda6.QtWidgets.QLineEdit.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QLineEdit.Class := new QtAda6.QtWidgets.QLineEdit.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "lineEdit");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end lineEdit;
   function maxCount (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "maxCount");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end maxCount;
   function maxVisibleItems (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "maxVisibleItems");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end maxVisibleItems;
   function minimumContentsLength (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "minimumContentsLength");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end minimumContentsLength;
   function minimumSizeHint (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QSize.Class := new QtAda6.QtCore.QSize.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "minimumSizeHint");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end minimumSizeHint;
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
   function modelColumn (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "modelColumn");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end modelColumn;
   procedure mousePressEvent (self : access Inst; e_P : access QtAda6.QtGui.QMouseEvent.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mousePressEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if e_P /= null then e_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end mousePressEvent;
   procedure mouseReleaseEvent (self : access Inst; e_P : access QtAda6.QtGui.QMouseEvent.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mouseReleaseEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if e_P /= null then e_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end mouseReleaseEvent;
   procedure paintEvent (self : access Inst; e_P : access QtAda6.QtGui.QPaintEvent.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "paintEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if e_P /= null then e_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end paintEvent;
   function placeholderText (self : access Inst) return str is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "placeholderText");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end placeholderText;
   procedure removeItem (self : access Inst; index_P : int) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "removeItem");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (index_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end removeItem;
   procedure resizeEvent (self : access Inst; e_P : access QtAda6.QtGui.QResizeEvent.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "resizeEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if e_P /= null then e_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end resizeEvent;
   function rootModelIndex (self : access Inst) return access QtAda6.QtCore.QModelIndex.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QModelIndex.Class := new QtAda6.QtCore.QModelIndex.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "rootModelIndex");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end rootModelIndex;
   procedure setCompleter (self : access Inst; c_P : access QtAda6.QtWidgets.QCompleter.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setCompleter");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if c_P /= null then c_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setCompleter;
   procedure setCurrentIndex (self : access Inst; index_P : int) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setCurrentIndex");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (index_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setCurrentIndex;
   procedure setCurrentText (self : access Inst; text_P : str) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setCurrentText");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (text_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setCurrentText;
   procedure setDuplicatesEnabled (self : access Inst; enable_P : bool) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setDuplicatesEnabled");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (enable_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setDuplicatesEnabled;
   procedure setEditText (self : access Inst; text_P : str) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setEditText");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (text_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setEditText;
   procedure setEditable (self : access Inst; editable_P : bool) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setEditable");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (editable_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setEditable;
   procedure setFrame (self : access Inst; arg_1_P : bool) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFrame");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (arg_1_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setFrame;
   procedure setIconSize (self : access Inst; size_P : access QtAda6.QtCore.QSize.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setIconSize");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if size_P /= null then size_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setIconSize;
   procedure setInsertPolicy (self : access Inst; policy_P : access QtAda6.QtWidgets.QComboBox.InsertPolicy.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setInsertPolicy");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if policy_P /= null then policy_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setInsertPolicy;
   procedure setItemData (self : access Inst; index_P : int; value_P : Any; role_P : int := 0) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setItemData");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (index_P));
      Tuple_SetItem (Args, 1, (if value_P /= null then value_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if role_P /= 0 then
         Dict_SetItemString (Dict, "role", Long_FromLong (role_P));
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end setItemData;
   procedure setItemDelegate (self : access Inst; delegate_P : access QtAda6.QtWidgets.QAbstractItemDelegate.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setItemDelegate");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if delegate_P /= null then delegate_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setItemDelegate;
   procedure setItemIcon (self : access Inst; index_P : int; icon_P : UNION_QtAda6_QtGui_QIcon_QtAda6_QtGui_QPixmap) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setItemIcon");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (index_P));
      Tuple_SetItem (Args, 1, (if icon_P /= null then icon_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setItemIcon;
   procedure setItemText (self : access Inst; index_P : int; text_P : str) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setItemText");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (index_P));
      Tuple_SetItem (Args, 1, Unicode_FromString (text_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setItemText;
   procedure setLineEdit (self : access Inst; edit_P : access QtAda6.QtWidgets.QLineEdit.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setLineEdit");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if edit_P /= null then edit_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setLineEdit;
   procedure setMaxCount (self : access Inst; max_P : int) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setMaxCount");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (max_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setMaxCount;
   procedure setMaxVisibleItems (self : access Inst; maxItems_P : int) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setMaxVisibleItems");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (maxItems_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setMaxVisibleItems;
   procedure setMinimumContentsLength (self : access Inst; characters_P : int) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setMinimumContentsLength");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (characters_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setMinimumContentsLength;
   procedure setModel (self : access Inst; model_P : access QtAda6.QtCore.QAbstractItemModel.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setModel");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if model_P /= null then model_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setModel;
   procedure setModelColumn (self : access Inst; visibleColumn_P : int) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setModelColumn");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (visibleColumn_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setModelColumn;
   procedure setPlaceholderText (self : access Inst; placeholderText_P : str) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPlaceholderText");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (placeholderText_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPlaceholderText;
   procedure setRootModelIndex
     (self : access Inst; index_P : UNION_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setRootModelIndex");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if index_P /= null then index_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setRootModelIndex;
   procedure setSizeAdjustPolicy
     (self : access Inst; policy_P : access QtAda6.QtWidgets.QComboBox.SizeAdjustPolicy.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setSizeAdjustPolicy");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if policy_P /= null then policy_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setSizeAdjustPolicy;
   procedure setValidator (self : access Inst; v_P : access QtAda6.QtGui.QValidator.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setValidator");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if v_P /= null then v_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setValidator;
   procedure setView (self : access Inst; itemView_P : access QtAda6.QtWidgets.QAbstractItemView.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setView");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if itemView_P /= null then itemView_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setView;
   procedure showEvent (self : access Inst; e_P : access QtAda6.QtGui.QShowEvent.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "showEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if e_P /= null then e_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end showEvent;
   procedure showPopup (self : access Inst) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "showPopup");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end showPopup;
   function sizeAdjustPolicy_F (self : access Inst) return access QtAda6.QtWidgets.QComboBox.SizeAdjustPolicy.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtWidgets.QComboBox.SizeAdjustPolicy.Class :=
        new QtAda6.QtWidgets.QComboBox.SizeAdjustPolicy.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "sizeAdjustPolicy");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end sizeAdjustPolicy_F;
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
   function validator (self : access Inst) return access QtAda6.QtGui.QValidator.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QValidator.Class := new QtAda6.QtGui.QValidator.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "validator");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end validator;
   function view (self : access Inst) return access QtAda6.QtWidgets.QAbstractItemView.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QAbstractItemView.Class := new QtAda6.QtWidgets.QAbstractItemView.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "view");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end view;
   procedure wheelEvent (self : access Inst; e_P : access QtAda6.QtGui.QWheelEvent.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "wheelEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if e_P /= null then e_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end wheelEvent;
end QtAda6.QtWidgets.QComboBox;
