-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qheaderview.adb
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
with QtAda6.QtWidgets.QAbstractItemView;
with QtAda6.QtCore.Qt.Orientation;
with QtAda6.QtWidgets.QWidget;
with QtAda6.QtCore.QModelIndex;
with QtAda6.QtCore.QPersistentModelIndex;
with QtAda6.QtCore.Qt.AlignmentFlag;
with QtAda6.QtCore.QEvent;
with QtAda6.QtCore.QPoint;
with QtAda6.QtWidgets.QStyleOptionFrame;
with QtAda6.QtWidgets.QStyleOptionHeader;
with QtAda6.QtGui.QMouseEvent;
with QtAda6.QtWidgets.QAbstractItemView.CursorAction;
with QtAda6.QtCore.Qt.KeyboardModifier;
with QtAda6.QtGui.QPaintEvent;
with QtAda6.QtGui.QPainter;
with QtAda6.QtCore.QRect;
with QtAda6.QtWidgets.QHeaderView.ResizeMode;
with QtAda6.QtCore.QByteArray;
with QtAda6.QtWidgets.QAbstractItemView.ScrollHint;
with QtAda6.QtCore.QSize;
with QtAda6.QtCore.QAbstractItemModel;
with QtAda6.QtCore.QItemSelectionModel.SelectionFlag;
with QtAda6.QtCore.Qt.SortOrder;
with QtAda6.QtCore.QItemSelection;
with QtAda6.QtGui.QRegion;
package body QtAda6.QtWidgets.QHeaderView is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function geometriesChanged (self : access Inst) return CLASSVAR_Signal is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "geometriesChanged"));
   end geometriesChanged;
   function sectionClicked (self : access Inst) return CLASSVAR_Signal is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "sectionClicked"));
   end sectionClicked;
   function sectionCountChanged (self : access Inst) return CLASSVAR_Signal is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "sectionCountChanged"));
   end sectionCountChanged;
   function sectionDoubleClicked (self : access Inst) return CLASSVAR_Signal is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'
          (Python_Proxy => Object_GetAttrString (self.Python_Proxy, "sectionDoubleClicked"));
   end sectionDoubleClicked;
   function sectionEntered (self : access Inst) return CLASSVAR_Signal is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "sectionEntered"));
   end sectionEntered;
   function sectionHandleDoubleClicked (self : access Inst) return CLASSVAR_Signal is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'
          (Python_Proxy => Object_GetAttrString (self.Python_Proxy, "sectionHandleDoubleClicked"));
   end sectionHandleDoubleClicked;
   function sectionMoved (self : access Inst) return CLASSVAR_Signal is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "sectionMoved"));
   end sectionMoved;
   function sectionPressed (self : access Inst) return CLASSVAR_Signal is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "sectionPressed"));
   end sectionPressed;
   function sectionResized (self : access Inst) return CLASSVAR_Signal is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "sectionResized"));
   end sectionResized;
   function sortIndicatorChanged (self : access Inst) return CLASSVAR_Signal is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'
          (Python_Proxy => Object_GetAttrString (self.Python_Proxy, "sortIndicatorChanged"));
   end sortIndicatorChanged;
   function sortIndicatorClearableChanged (self : access Inst) return CLASSVAR_Signal is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'
          (Python_Proxy => Object_GetAttrString (self.Python_Proxy, "sortIndicatorClearableChanged"));
   end sortIndicatorClearableChanged;
   function Create
     (orientation_P : access QtAda6.QtCore.Qt.Orientation.Inst'Class;
      parent_P      : access QtAda6.QtWidgets.QWidget.Inst'Class := null) return Class
   is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QHeaderView");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if orientation_P /= null then orientation_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if parent_P /= null then parent_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function cascadingSectionResizes (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "cascadingSectionResizes");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end cascadingSectionResizes;
   function count (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "count");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end count;
   procedure currentChanged
     (self  : access Inst; current_P : UNION_QtAda6_QtCore_QModelIndexQtAda6_QtCore_QPersistentModelIndex;
      old_P : UNION_QtAda6_QtCore_QModelIndexQtAda6_QtCore_QPersistentModelIndex)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "currentChanged");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if current_P /= null then current_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if old_P /= null then old_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end currentChanged;
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
   function defaultAlignment (self : access Inst) return access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.AlignmentFlag.Class := new QtAda6.QtCore.Qt.AlignmentFlag.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "defaultAlignment");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end defaultAlignment;
   function defaultSectionSize (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "defaultSectionSize");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end defaultSectionSize;
   procedure doItemsLayout (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "doItemsLayout");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end doItemsLayout;
   function event (self : access Inst; e_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "event");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if e_P /= null then e_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end event;
   procedure headerDataChanged
     (self          : access Inst; orientation_P : access QtAda6.QtCore.Qt.Orientation.Inst'Class; logicalFirst_P : int;
      logicalLast_P : int)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "headerDataChanged");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if orientation_P /= null then orientation_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (logicalFirst_P));
      Tuple_SetItem (Args, 2, Long_FromLong (logicalLast_P));
      Result := Object_CallObject (Method, Args, True);
   end headerDataChanged;
   function hiddenSectionCount (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hiddenSectionCount");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end hiddenSectionCount;
   procedure hideSection (self : access Inst; logicalIndex_P : int) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hideSection");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (logicalIndex_P));
      Result := Object_CallObject (Method, Args, True);
   end hideSection;
   function highlightSections (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "highlightSections");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end highlightSections;
   function horizontalOffset (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "horizontalOffset");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end horizontalOffset;
   function indexAt
     (self : access Inst; p_P : access QtAda6.QtCore.QPoint.Inst'Class)
      return access QtAda6.QtCore.QModelIndex.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QModelIndex.Class := new QtAda6.QtCore.QModelIndex.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "indexAt");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if p_P /= null then p_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end indexAt;
   procedure initStyleOption (self : access Inst; option_P : access QtAda6.QtWidgets.QStyleOptionFrame.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "initStyleOption");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if option_P /= null then option_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end initStyleOption;
   procedure initStyleOption (self : access Inst; option_P : access QtAda6.QtWidgets.QStyleOptionHeader.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "initStyleOption");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if option_P /= null then option_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end initStyleOption;
   procedure initStyleOptionForIndex
     (self : access Inst; option_P : access QtAda6.QtWidgets.QStyleOptionHeader.Inst'Class; logicalIndex_P : int)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "initStyleOptionForIndex");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if option_P /= null then option_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (logicalIndex_P));
      Result := Object_CallObject (Method, Args, True);
   end initStyleOptionForIndex;
   procedure initialize (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "initialize");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end initialize;
   procedure initializeSections (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "initializeSections");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end initializeSections;
   procedure initializeSections (self : access Inst; start_P : int; end_K_P : int) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "initializeSections");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (start_P));
      Tuple_SetItem (Args, 1, Long_FromLong (end_K_P));
      Result := Object_CallObject (Method, Args, True);
   end initializeSections;
   function isFirstSectionMovable (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isFirstSectionMovable");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isFirstSectionMovable;
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
   function isSectionHidden (self : access Inst; logicalIndex_P : int) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isSectionHidden");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (logicalIndex_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isSectionHidden;
   function isSortIndicatorClearable (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isSortIndicatorClearable");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isSortIndicatorClearable;
   function isSortIndicatorShown (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isSortIndicatorShown");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isSortIndicatorShown;
   function length (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "length");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end length;
   function logicalIndex (self : access Inst; visualIndex_P : int) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "logicalIndex");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (visualIndex_P));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end logicalIndex;
   function logicalIndexAt (self : access Inst; pos_P : access QtAda6.QtCore.QPoint.Inst'Class) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "logicalIndexAt");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if pos_P /= null then pos_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end logicalIndexAt;
   function logicalIndexAt (self : access Inst; position_P : int) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "logicalIndexAt");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (position_P));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end logicalIndexAt;
   function logicalIndexAt (self : access Inst; x_P : int; y_P : int) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "logicalIndexAt");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (x_P));
      Tuple_SetItem (Args, 1, Long_FromLong (y_P));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end logicalIndexAt;
   function maximumSectionSize (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "maximumSectionSize");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end maximumSectionSize;
   function minimumSectionSize (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "minimumSectionSize");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end minimumSectionSize;
   procedure mouseDoubleClickEvent (self : access Inst; e_P : access QtAda6.QtGui.QMouseEvent.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mouseDoubleClickEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if e_P /= null then e_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end mouseDoubleClickEvent;
   procedure mouseMoveEvent (self : access Inst; e_P : access QtAda6.QtGui.QMouseEvent.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mouseMoveEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if e_P /= null then e_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end mouseMoveEvent;
   procedure mousePressEvent (self : access Inst; e_P : access QtAda6.QtGui.QMouseEvent.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mousePressEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if e_P /= null then e_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end mousePressEvent;
   procedure mouseReleaseEvent (self : access Inst; e_P : access QtAda6.QtGui.QMouseEvent.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mouseReleaseEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if e_P /= null then e_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end mouseReleaseEvent;
   function moveCursor
     (self    : access Inst; arg_1_P : access QtAda6.QtWidgets.QAbstractItemView.CursorAction.Inst'Class;
      arg_2_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class) return access QtAda6.QtCore.QModelIndex.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QModelIndex.Class := new QtAda6.QtCore.QModelIndex.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "moveCursor");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if arg_2_P /= null then arg_2_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end moveCursor;
   procedure moveSection (self : access Inst; from_U_P : int; to_P : int) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "moveSection");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (from_U_P));
      Tuple_SetItem (Args, 1, Long_FromLong (to_P));
      Result := Object_CallObject (Method, Args, True);
   end moveSection;
   function offset (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "offset");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end offset;
   function orientation (self : access Inst) return access QtAda6.QtCore.Qt.Orientation.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.Qt.Orientation.Class := new QtAda6.QtCore.Qt.Orientation.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "orientation");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end orientation;
   procedure paintEvent (self : access Inst; e_P : access QtAda6.QtGui.QPaintEvent.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "paintEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if e_P /= null then e_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end paintEvent;
   procedure paintSection
     (self   : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      rect_P : access QtAda6.QtCore.QRect.Inst'Class; logicalIndex_P : int)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "paintSection");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if painter_P /= null then painter_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if rect_P /= null then rect_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, Long_FromLong (logicalIndex_P));
      Result := Object_CallObject (Method, Args, True);
   end paintSection;
   procedure reset (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "reset");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end reset;
   procedure resetDefaultSectionSize (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "resetDefaultSectionSize");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end resetDefaultSectionSize;
   function resizeContentsPrecision (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "resizeContentsPrecision");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end resizeContentsPrecision;
   procedure resizeSection (self : access Inst; logicalIndex_P : int; size_P : int) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "resizeSection");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (logicalIndex_P));
      Tuple_SetItem (Args, 1, Long_FromLong (size_P));
      Result := Object_CallObject (Method, Args, True);
   end resizeSection;
   procedure resizeSections (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "resizeSections");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end resizeSections;
   procedure resizeSections (self : access Inst; mode_P : access QtAda6.QtWidgets.QHeaderView.ResizeMode.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "resizeSections");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if mode_P /= null then mode_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end resizeSections;
   function restoreState (self : access Inst; state_P : UNION_QtAda6_QtCore_QByteArraybytes) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "restoreState");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if state_P /= null then state_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end restoreState;
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
   function saveState (self : access Inst) return access QtAda6.QtCore.QByteArray.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "saveState");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end saveState;
   procedure scrollContentsBy (self : access Inst; dx_P : int; dy_P : int) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "scrollContentsBy");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (dx_P));
      Tuple_SetItem (Args, 1, Long_FromLong (dy_P));
      Result := Object_CallObject (Method, Args, True);
   end scrollContentsBy;
   procedure scrollTo
     (self   : access Inst; index_P : UNION_QtAda6_QtCore_QModelIndexQtAda6_QtCore_QPersistentModelIndex;
      hint_P : access QtAda6.QtWidgets.QAbstractItemView.ScrollHint.Inst'Class)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "scrollTo");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if index_P /= null then index_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if hint_P /= null then hint_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end scrollTo;
   function sectionPosition (self : access Inst; logicalIndex_P : int) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "sectionPosition");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (logicalIndex_P));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end sectionPosition;
   function sectionResizeMode
     (self : access Inst; logicalIndex_P : int) return access QtAda6.QtWidgets.QHeaderView.ResizeMode.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QHeaderView.ResizeMode.Class := new QtAda6.QtWidgets.QHeaderView.ResizeMode.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "sectionResizeMode");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (logicalIndex_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end sectionResizeMode;
   function sectionSize (self : access Inst; logicalIndex_P : int) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "sectionSize");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (logicalIndex_P));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end sectionSize;
   function sectionSizeFromContents
     (self : access Inst; logicalIndex_P : int) return access QtAda6.QtCore.QSize.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QSize.Class := new QtAda6.QtCore.QSize.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "sectionSizeFromContents");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (logicalIndex_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end sectionSizeFromContents;
   function sectionSizeHint (self : access Inst; logicalIndex_P : int) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "sectionSizeHint");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (logicalIndex_P));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end sectionSizeHint;
   function sectionViewportPosition (self : access Inst; logicalIndex_P : int) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "sectionViewportPosition");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (logicalIndex_P));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end sectionViewportPosition;
   procedure sectionsAboutToBeRemoved
     (self           : access Inst; parent_P : UNION_QtAda6_QtCore_QModelIndexQtAda6_QtCore_QPersistentModelIndex;
      logicalFirst_P : int; logicalLast_P : int)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "sectionsAboutToBeRemoved");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if parent_P /= null then parent_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (logicalFirst_P));
      Tuple_SetItem (Args, 2, Long_FromLong (logicalLast_P));
      Result := Object_CallObject (Method, Args, True);
   end sectionsAboutToBeRemoved;
   function sectionsClickable (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "sectionsClickable");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end sectionsClickable;
   function sectionsHidden (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "sectionsHidden");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end sectionsHidden;
   procedure sectionsInserted
     (self           : access Inst; parent_P : UNION_QtAda6_QtCore_QModelIndexQtAda6_QtCore_QPersistentModelIndex;
      logicalFirst_P : int; logicalLast_P : int)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "sectionsInserted");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if parent_P /= null then parent_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (logicalFirst_P));
      Tuple_SetItem (Args, 2, Long_FromLong (logicalLast_P));
      Result := Object_CallObject (Method, Args, True);
   end sectionsInserted;
   function sectionsMovable (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "sectionsMovable");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end sectionsMovable;
   function sectionsMoved (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "sectionsMoved");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end sectionsMoved;
   procedure setCascadingSectionResizes (self : access Inst; enable_P : bool) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setCascadingSectionResizes");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (enable_P));
      Result := Object_CallObject (Method, Args, True);
   end setCascadingSectionResizes;
   procedure setDefaultAlignment (self : access Inst; alignment_P : access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setDefaultAlignment");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if alignment_P /= null then alignment_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setDefaultAlignment;
   procedure setDefaultSectionSize (self : access Inst; size_P : int) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setDefaultSectionSize");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (size_P));
      Result := Object_CallObject (Method, Args, True);
   end setDefaultSectionSize;
   procedure setFirstSectionMovable (self : access Inst; movable_P : bool) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFirstSectionMovable");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (movable_P));
      Result := Object_CallObject (Method, Args, True);
   end setFirstSectionMovable;
   procedure setHighlightSections (self : access Inst; highlight_P : bool) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setHighlightSections");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (highlight_P));
      Result := Object_CallObject (Method, Args, True);
   end setHighlightSections;
   procedure setMaximumSectionSize (self : access Inst; size_P : int) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setMaximumSectionSize");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (size_P));
      Result := Object_CallObject (Method, Args, True);
   end setMaximumSectionSize;
   procedure setMinimumSectionSize (self : access Inst; size_P : int) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setMinimumSectionSize");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (size_P));
      Result := Object_CallObject (Method, Args, True);
   end setMinimumSectionSize;
   procedure setModel (self : access Inst; model_P : access QtAda6.QtCore.QAbstractItemModel.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setModel");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if model_P /= null then model_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setModel;
   procedure setOffset (self : access Inst; offset_P : int) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setOffset");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (offset_P));
      Result := Object_CallObject (Method, Args, True);
   end setOffset;
   procedure setOffsetToLastSection (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setOffsetToLastSection");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end setOffsetToLastSection;
   procedure setOffsetToSectionPosition (self : access Inst; visualIndex_P : int) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setOffsetToSectionPosition");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (visualIndex_P));
      Result := Object_CallObject (Method, Args, True);
   end setOffsetToSectionPosition;
   procedure setResizeContentsPrecision (self : access Inst; precision_P : int) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setResizeContentsPrecision");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (precision_P));
      Result := Object_CallObject (Method, Args, True);
   end setResizeContentsPrecision;
   procedure setSectionHidden (self : access Inst; logicalIndex_P : int; hide_P : bool) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setSectionHidden");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (logicalIndex_P));
      Tuple_SetItem (Args, 1, To_Python (hide_P));
      Result := Object_CallObject (Method, Args, True);
   end setSectionHidden;
   procedure setSectionResizeMode
     (self : access Inst; logicalIndex_P : int; mode_P : access QtAda6.QtWidgets.QHeaderView.ResizeMode.Inst'Class)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setSectionResizeMode");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (logicalIndex_P));
      Tuple_SetItem (Args, 1, (if mode_P /= null then mode_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setSectionResizeMode;
   procedure setSectionResizeMode
     (self : access Inst; mode_P : access QtAda6.QtWidgets.QHeaderView.ResizeMode.Inst'Class)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setSectionResizeMode");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if mode_P /= null then mode_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setSectionResizeMode;
   procedure setSectionsClickable (self : access Inst; clickable_P : bool) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setSectionsClickable");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (clickable_P));
      Result := Object_CallObject (Method, Args, True);
   end setSectionsClickable;
   procedure setSectionsMovable (self : access Inst; movable_P : bool) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setSectionsMovable");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (movable_P));
      Result := Object_CallObject (Method, Args, True);
   end setSectionsMovable;
   procedure setSelection
     (self    : access Inst; rect_P : access QtAda6.QtCore.QRect.Inst'Class;
      flags_P : access QtAda6.QtCore.QItemSelectionModel.SelectionFlag.Inst'Class)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setSelection");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if rect_P /= null then rect_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if flags_P /= null then flags_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setSelection;
   procedure setSortIndicator
     (self : access Inst; logicalIndex_P : int; order_P : access QtAda6.QtCore.Qt.SortOrder.Inst'Class)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setSortIndicator");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (logicalIndex_P));
      Tuple_SetItem (Args, 1, (if order_P /= null then order_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setSortIndicator;
   procedure setSortIndicatorClearable (self : access Inst; clearable_P : bool) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setSortIndicatorClearable");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (clearable_P));
      Result := Object_CallObject (Method, Args, True);
   end setSortIndicatorClearable;
   procedure setSortIndicatorShown (self : access Inst; show_P : bool) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setSortIndicatorShown");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (show_P));
      Result := Object_CallObject (Method, Args, True);
   end setSortIndicatorShown;
   procedure setStretchLastSection (self : access Inst; stretch_P : bool) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setStretchLastSection");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (stretch_P));
      Result := Object_CallObject (Method, Args, True);
   end setStretchLastSection;
   procedure setVisible (self : access Inst; v_P : bool) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setVisible");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (v_P));
      Result := Object_CallObject (Method, Args, True);
   end setVisible;
   procedure showSection (self : access Inst; logicalIndex_P : int) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "showSection");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (logicalIndex_P));
      Result := Object_CallObject (Method, Args, True);
   end showSection;
   function sizeHint (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QSize.Class := new QtAda6.QtCore.QSize.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "sizeHint");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end sizeHint;
   function sortIndicatorOrder (self : access Inst) return access QtAda6.QtCore.Qt.SortOrder.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.Qt.SortOrder.Class := new QtAda6.QtCore.Qt.SortOrder.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "sortIndicatorOrder");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end sortIndicatorOrder;
   function sortIndicatorSection (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "sortIndicatorSection");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end sortIndicatorSection;
   function stretchLastSection (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "stretchLastSection");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end stretchLastSection;
   function stretchSectionCount (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "stretchSectionCount");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end stretchSectionCount;
   procedure swapSections (self : access Inst; first_P : int; second_P : int) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "swapSections");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (first_P));
      Tuple_SetItem (Args, 1, Long_FromLong (second_P));
      Result := Object_CallObject (Method, Args, True);
   end swapSections;
   procedure updateGeometries (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "updateGeometries");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end updateGeometries;
   procedure updateSection (self : access Inst; logicalIndex_P : int) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "updateSection");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (logicalIndex_P));
      Result := Object_CallObject (Method, Args, True);
   end updateSection;
   function verticalOffset (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "verticalOffset");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end verticalOffset;
   function viewportEvent (self : access Inst; e_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "viewportEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if e_P /= null then e_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end viewportEvent;
   function visualIndex (self : access Inst; logicalIndex_P : int) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "visualIndex");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (logicalIndex_P));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end visualIndex;
   function visualIndexAt (self : access Inst; position_P : int) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "visualIndexAt");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (position_P));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end visualIndexAt;
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
end QtAda6.QtWidgets.QHeaderView;
