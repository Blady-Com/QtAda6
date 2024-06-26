-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qsortfilterproxymodel.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Py; use Py;
with Ada.Unchecked_Deallocation;
with QtAda6.QtCore.QObject;
with QtAda6.QtCore.QModelIndex;
with QtAda6.QtCore.QPersistentModelIndex;
with QtAda6.QtCore.QMimeData;
with QtAda6.QtCore.Qt.DropAction;
with QtAda6.QtCore.Qt.CaseSensitivity;
with QtAda6.QtCore.QRegularExpression;
with QtAda6.QtCore.Qt.ItemFlag;
with QtAda6.QtCore.Qt.Orientation;
with QtAda6.QtCore.QItemSelection;
with QtAda6.QtCore.Qt.MatchFlag;
with QtAda6.QtCore.QAbstractItemModel;
with QtAda6.QtCore.Qt.SortOrder;
with QtAda6.QtCore.QSize;
package body QtAda6.QtCore.QSortFilterProxyModel is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function autoAcceptChildRowsChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'
          (Python_Proxy => Object_GetAttrString (self.Python_Proxy, "autoAcceptChildRowsChanged"));
   end autoAcceptChildRowsChanged;
   function dynamicSortFilterChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'
          (Python_Proxy => Object_GetAttrString (self.Python_Proxy, "dynamicSortFilterChanged"));
   end dynamicSortFilterChanged;
   function filterCaseSensitivityChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'
          (Python_Proxy => Object_GetAttrString (self.Python_Proxy, "filterCaseSensitivityChanged"));
   end filterCaseSensitivityChanged;
   function filterRoleChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "filterRoleChanged"));
   end filterRoleChanged;
   function recursiveFilteringEnabledChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'
          (Python_Proxy => Object_GetAttrString (self.Python_Proxy, "recursiveFilteringEnabledChanged"));
   end recursiveFilteringEnabledChanged;
   function sortCaseSensitivityChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'
          (Python_Proxy => Object_GetAttrString (self.Python_Proxy, "sortCaseSensitivityChanged"));
   end sortCaseSensitivityChanged;
   function sortLocaleAwareChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'
          (Python_Proxy => Object_GetAttrString (self.Python_Proxy, "sortLocaleAwareChanged"));
   end sortLocaleAwareChanged;
   function sortRoleChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "sortRoleChanged"));
   end sortRoleChanged;
   function Create (parent_P : access QtAda6.QtCore.QObject.Inst'Class := null) return Class is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QSortFilterProxyModel");
      Args  := Tuple_New (0);
      Dict  := Dict_New;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function autoAcceptChildRows (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "autoAcceptChildRows");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end autoAcceptChildRows;
   function buddy
     (self : access Inst; index_P : access QtAda6.QtCore.QModelIndex.Inst'Class)
      return access QtAda6.QtCore.QModelIndex.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QModelIndex.Class := new QtAda6.QtCore.QModelIndex.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "buddy");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if index_P /= null then index_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end buddy;
   function buddy
     (self : access Inst; index_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class)
      return access QtAda6.QtCore.QModelIndex.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QModelIndex.Class := new QtAda6.QtCore.QModelIndex.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "buddy");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if index_P /= null then index_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end buddy;
   function canFetchMore (self : access Inst; parent_P : access QtAda6.QtCore.QModelIndex.Inst'Class) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "canFetchMore");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if parent_P /= null then parent_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end canFetchMore;
   function canFetchMore
     (self : access Inst; parent_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class) return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "canFetchMore");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if parent_P /= null then parent_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end canFetchMore;
   function columnCount (self : access Inst; parent_P : access QtAda6.QtCore.QModelIndex.Inst'Class := null) return int
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "columnCount");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end columnCount;
   function columnCount
     (self : access Inst; parent_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class := null) return int
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "columnCount");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end columnCount;
   function data
     (self : access Inst; index_P : access QtAda6.QtCore.QModelIndex.Inst'Class; role_P : int := 0) return Any
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "data");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if index_P /= null then index_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if role_P /= 0 then
         Dict_SetItemString (Dict, "role", Long_FromLong (role_P));
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return null;
   end data;
   function data
     (self : access Inst; index_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class; role_P : int := 0) return Any
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "data");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if index_P /= null then index_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if role_P /= 0 then
         Dict_SetItemString (Dict, "role", Long_FromLong (role_P));
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return null;
   end data;
   function dropMimeData
     (self     : access Inst; data_P : access QtAda6.QtCore.QMimeData.Inst'Class;
      action_P : access QtAda6.QtCore.Qt.DropAction.Inst'Class; row_P : int; column_P : int;
      parent_P : access QtAda6.QtCore.QModelIndex.Inst'Class) return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "dropMimeData");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if data_P /= null then data_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if action_P /= null then action_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, Long_FromLong (row_P));
      Tuple_SetItem (Args, 3, Long_FromLong (column_P));
      Tuple_SetItem (Args, 4, (if parent_P /= null then parent_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end dropMimeData;
   function dropMimeData
     (self     : access Inst; data_P : access QtAda6.QtCore.QMimeData.Inst'Class;
      action_P : access QtAda6.QtCore.Qt.DropAction.Inst'Class; row_P : int; column_P : int;
      parent_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class) return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "dropMimeData");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if data_P /= null then data_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if action_P /= null then action_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, Long_FromLong (row_P));
      Tuple_SetItem (Args, 3, Long_FromLong (column_P));
      Tuple_SetItem (Args, 4, (if parent_P /= null then parent_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end dropMimeData;
   function dynamicSortFilter (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "dynamicSortFilter");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end dynamicSortFilter;
   procedure fetchMore (self : access Inst; parent_P : access QtAda6.QtCore.QModelIndex.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "fetchMore");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if parent_P /= null then parent_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end fetchMore;
   procedure fetchMore (self : access Inst; parent_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "fetchMore");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if parent_P /= null then parent_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end fetchMore;
   function filterAcceptsColumn
     (self : access Inst; source_column_P : int; source_parent_P : access QtAda6.QtCore.QModelIndex.Inst'Class)
      return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "filterAcceptsColumn");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (source_column_P));
      Tuple_SetItem (Args, 1, (if source_parent_P /= null then source_parent_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end filterAcceptsColumn;
   function filterAcceptsColumn
     (self            : access Inst; source_column_P : int;
      source_parent_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class) return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "filterAcceptsColumn");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (source_column_P));
      Tuple_SetItem (Args, 1, (if source_parent_P /= null then source_parent_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end filterAcceptsColumn;
   function filterAcceptsRow
     (self : access Inst; source_row_P : int; source_parent_P : access QtAda6.QtCore.QModelIndex.Inst'Class) return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "filterAcceptsRow");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (source_row_P));
      Tuple_SetItem (Args, 1, (if source_parent_P /= null then source_parent_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end filterAcceptsRow;
   function filterAcceptsRow
     (self : access Inst; source_row_P : int; source_parent_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class)
      return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "filterAcceptsRow");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (source_row_P));
      Tuple_SetItem (Args, 1, (if source_parent_P /= null then source_parent_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end filterAcceptsRow;
   function filterCaseSensitivity (self : access Inst) return access QtAda6.QtCore.Qt.CaseSensitivity.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.CaseSensitivity.Class := new QtAda6.QtCore.Qt.CaseSensitivity.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "filterCaseSensitivity");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end filterCaseSensitivity;
   function filterKeyColumn (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "filterKeyColumn");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end filterKeyColumn;
   function filterRegularExpression (self : access Inst) return access QtAda6.QtCore.QRegularExpression.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QRegularExpression.Class := new QtAda6.QtCore.QRegularExpression.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "filterRegularExpression");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end filterRegularExpression;
   function filterRole (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "filterRole");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end filterRole;
   function flags
     (self : access Inst; index_P : access QtAda6.QtCore.QModelIndex.Inst'Class)
      return access QtAda6.QtCore.Qt.ItemFlag.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.ItemFlag.Class := new QtAda6.QtCore.Qt.ItemFlag.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "flags");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if index_P /= null then index_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end flags;
   function flags
     (self : access Inst; index_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class)
      return access QtAda6.QtCore.Qt.ItemFlag.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.ItemFlag.Class := new QtAda6.QtCore.Qt.ItemFlag.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "flags");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if index_P /= null then index_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end flags;
   function hasChildren (self : access Inst; parent_P : access QtAda6.QtCore.QModelIndex.Inst'Class := null) return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hasChildren");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end hasChildren;
   function hasChildren
     (self : access Inst; parent_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class := null) return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hasChildren");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end hasChildren;
   function headerData
     (self   : access Inst; section_P : int; orientation_P : access QtAda6.QtCore.Qt.Orientation.Inst'Class;
      role_P : int := 0) return Any
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "headerData");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (section_P));
      Tuple_SetItem (Args, 1, (if orientation_P /= null then orientation_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if role_P /= 0 then
         Dict_SetItemString (Dict, "role", Long_FromLong (role_P));
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return null;
   end headerData;
   function index
     (self : access Inst; row_P : int; column_P : int; parent_P : access QtAda6.QtCore.QModelIndex.Inst'Class := null)
      return access QtAda6.QtCore.QModelIndex.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QModelIndex.Class := new QtAda6.QtCore.QModelIndex.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "index");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Tuple_SetItem (Args, 1, Long_FromLong (column_P));
      Dict := Dict_New;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end index;
   function index
     (self     : access Inst; row_P : int; column_P : int;
      parent_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class := null)
      return access QtAda6.QtCore.QModelIndex.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QModelIndex.Class := new QtAda6.QtCore.QModelIndex.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "index");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Tuple_SetItem (Args, 1, Long_FromLong (column_P));
      Dict := Dict_New;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end index;
   function insertColumns
     (self : access Inst; column_P : int; count_P : int; parent_P : access QtAda6.QtCore.QModelIndex.Inst'Class := null)
      return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "insertColumns");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (column_P));
      Tuple_SetItem (Args, 1, Long_FromLong (count_P));
      Dict := Dict_New;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end insertColumns;
   function insertColumns
     (self     : access Inst; column_P : int; count_P : int;
      parent_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class := null) return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "insertColumns");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (column_P));
      Tuple_SetItem (Args, 1, Long_FromLong (count_P));
      Dict := Dict_New;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end insertColumns;
   function insertRows
     (self : access Inst; row_P : int; count_P : int; parent_P : access QtAda6.QtCore.QModelIndex.Inst'Class := null)
      return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "insertRows");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Tuple_SetItem (Args, 1, Long_FromLong (count_P));
      Dict := Dict_New;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end insertRows;
   function insertRows
     (self     : access Inst; row_P : int; count_P : int;
      parent_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class := null) return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "insertRows");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Tuple_SetItem (Args, 1, Long_FromLong (count_P));
      Dict := Dict_New;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end insertRows;
   procedure invalidate (self : access Inst) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "invalidate");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end invalidate;
   procedure invalidateColumnsFilter (self : access Inst) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "invalidateColumnsFilter");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end invalidateColumnsFilter;
   procedure invalidateFilter (self : access Inst) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "invalidateFilter");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end invalidateFilter;
   procedure invalidateRowsFilter (self : access Inst) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "invalidateRowsFilter");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end invalidateRowsFilter;
   function isRecursiveFilteringEnabled (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isRecursiveFilteringEnabled");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isRecursiveFilteringEnabled;
   function isSortLocaleAware (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isSortLocaleAware");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isSortLocaleAware;
   function lessThan
     (self           : access Inst; source_left_P : access QtAda6.QtCore.QModelIndex.Inst'Class;
      source_right_P : access QtAda6.QtCore.QModelIndex.Inst'Class) return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "lessThan");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if source_left_P /= null then source_left_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if source_right_P /= null then source_right_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end lessThan;
   function lessThan
     (self           : access Inst; source_left_P : access QtAda6.QtCore.QModelIndex.Inst'Class;
      source_right_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class) return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "lessThan");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if source_left_P /= null then source_left_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if source_right_P /= null then source_right_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end lessThan;
   function lessThan
     (self           : access Inst; source_left_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class;
      source_right_P : access QtAda6.QtCore.QModelIndex.Inst'Class) return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "lessThan");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if source_left_P /= null then source_left_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if source_right_P /= null then source_right_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end lessThan;
   function lessThan
     (self           : access Inst; source_left_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class;
      source_right_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class) return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "lessThan");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if source_left_P /= null then source_left_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if source_right_P /= null then source_right_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end lessThan;
   function mapFromSource
     (self : access Inst; sourceIndex_P : access QtAda6.QtCore.QModelIndex.Inst'Class)
      return access QtAda6.QtCore.QModelIndex.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QModelIndex.Class := new QtAda6.QtCore.QModelIndex.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mapFromSource");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if sourceIndex_P /= null then sourceIndex_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mapFromSource;
   function mapFromSource
     (self : access Inst; sourceIndex_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class)
      return access QtAda6.QtCore.QModelIndex.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QModelIndex.Class := new QtAda6.QtCore.QModelIndex.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mapFromSource");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if sourceIndex_P /= null then sourceIndex_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mapFromSource;
   function mapSelectionFromSource
     (self : access Inst; sourceSelection_P : access QtAda6.QtCore.QItemSelection.Inst'Class)
      return access QtAda6.QtCore.QItemSelection.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QItemSelection.Class := new QtAda6.QtCore.QItemSelection.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mapSelectionFromSource");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if sourceSelection_P /= null then sourceSelection_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mapSelectionFromSource;
   function mapSelectionToSource
     (self : access Inst; proxySelection_P : access QtAda6.QtCore.QItemSelection.Inst'Class)
      return access QtAda6.QtCore.QItemSelection.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QItemSelection.Class := new QtAda6.QtCore.QItemSelection.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mapSelectionToSource");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if proxySelection_P /= null then proxySelection_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mapSelectionToSource;
   function mapToSource
     (self : access Inst; proxyIndex_P : access QtAda6.QtCore.QModelIndex.Inst'Class)
      return access QtAda6.QtCore.QModelIndex.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QModelIndex.Class := new QtAda6.QtCore.QModelIndex.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mapToSource");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if proxyIndex_P /= null then proxyIndex_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mapToSource;
   function mapToSource
     (self : access Inst; proxyIndex_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class)
      return access QtAda6.QtCore.QModelIndex.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QModelIndex.Class := new QtAda6.QtCore.QModelIndex.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mapToSource");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if proxyIndex_P /= null then proxyIndex_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mapToSource;
   function match
     (self   : access Inst; start_P : access QtAda6.QtCore.QModelIndex.Inst'Class; role_P : int; value_P : Any;
      hits_P : int := 0; flags_P : access QtAda6.QtCore.Qt.MatchFlag.Inst'Class := null)
      return LIST_QtAda6_QtCore_QModelIndex
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "match");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if start_P /= null then start_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (role_P));
      Tuple_SetItem (Args, 2, (if value_P /= null then value_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if hits_P /= 0 then
         Dict_SetItemString (Dict, "hits", Long_FromLong (hits_P));
      end if;
      if flags_P /= null then
         Dict_SetItemString (Dict, "flags", flags_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return Ret : LIST_QtAda6_QtCore_QModelIndex (1 .. Natural (List_Size (Result))) do
         for Ind in Ret'Range loop
            Ret (Ind).Python_Proxy := List_GetItem (Result, ssize_t (Ind - Ret'First));
         end loop;
      end return;
   end match;
   function match
     (self : access Inst; start_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class; role_P : int; value_P : Any;
      hits_P : int := 0; flags_P : access QtAda6.QtCore.Qt.MatchFlag.Inst'Class := null)
      return LIST_QtAda6_QtCore_QModelIndex
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "match");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if start_P /= null then start_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (role_P));
      Tuple_SetItem (Args, 2, (if value_P /= null then value_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if hits_P /= 0 then
         Dict_SetItemString (Dict, "hits", Long_FromLong (hits_P));
      end if;
      if flags_P /= null then
         Dict_SetItemString (Dict, "flags", flags_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return Ret : LIST_QtAda6_QtCore_QModelIndex (1 .. Natural (List_Size (Result))) do
         for Ind in Ret'Range loop
            Ret (Ind).Python_Proxy := List_GetItem (Result, ssize_t (Ind - Ret'First));
         end loop;
      end return;
   end match;
   function mimeData
     (self : access Inst; indexes_P : SEQUENCE_QtAda6_QtCore_QModelIndex)
      return access QtAda6.QtCore.QMimeData.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QMimeData.Class := new QtAda6.QtCore.QMimeData.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mimeData");
      Args   := Tuple_New (1);
      List   := List_New (indexes_P'Length);
      for ind in indexes_P'Range loop
         List_SetItem
           (List, ssize_t (ind - indexes_P'First),
            (if indexes_P (ind) /= null then indexes_P (ind).Python_Proxy else No_Value));
      end loop;
      Tuple_SetItem (Args, 0, List);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mimeData;
   function mimeTypes (self : access Inst) return LIST_str is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mimeTypes");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Ret : LIST_str (1 .. Natural (List_Size (Result))) do
         for Ind in Ret'Range loop
            Ret (Ind) := As_String (List_GetItem (Result, ssize_t (Ind - Ret'First)));
         end loop;
      end return;
   end mimeTypes;
   function parent (self : access Inst) return access QtAda6.QtCore.QObject.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QObject.Class := new QtAda6.QtCore.QObject.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "parent");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end parent;
   function parent
     (self : access Inst; child_P : access QtAda6.QtCore.QModelIndex.Inst'Class)
      return access QtAda6.QtCore.QModelIndex.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QModelIndex.Class := new QtAda6.QtCore.QModelIndex.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "parent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if child_P /= null then child_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end parent;
   function parent
     (self : access Inst; child_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class)
      return access QtAda6.QtCore.QModelIndex.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QModelIndex.Class := new QtAda6.QtCore.QModelIndex.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "parent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if child_P /= null then child_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end parent;
   function removeColumns
     (self : access Inst; column_P : int; count_P : int; parent_P : access QtAda6.QtCore.QModelIndex.Inst'Class := null)
      return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "removeColumns");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (column_P));
      Tuple_SetItem (Args, 1, Long_FromLong (count_P));
      Dict := Dict_New;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end removeColumns;
   function removeColumns
     (self     : access Inst; column_P : int; count_P : int;
      parent_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class := null) return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "removeColumns");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (column_P));
      Tuple_SetItem (Args, 1, Long_FromLong (count_P));
      Dict := Dict_New;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end removeColumns;
   function removeRows
     (self : access Inst; row_P : int; count_P : int; parent_P : access QtAda6.QtCore.QModelIndex.Inst'Class := null)
      return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "removeRows");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Tuple_SetItem (Args, 1, Long_FromLong (count_P));
      Dict := Dict_New;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end removeRows;
   function removeRows
     (self     : access Inst; row_P : int; count_P : int;
      parent_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class := null) return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "removeRows");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Tuple_SetItem (Args, 1, Long_FromLong (count_P));
      Dict := Dict_New;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end removeRows;
   function rowCount (self : access Inst; parent_P : access QtAda6.QtCore.QModelIndex.Inst'Class := null) return int is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "rowCount");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end rowCount;
   function rowCount
     (self : access Inst; parent_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class := null) return int
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "rowCount");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end rowCount;
   procedure setAutoAcceptChildRows (self : access Inst; accept_K_P : bool) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setAutoAcceptChildRows");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (accept_K_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setAutoAcceptChildRows;
   function setData
     (self : access Inst; index_P : access QtAda6.QtCore.QModelIndex.Inst'Class; value_P : Any; role_P : int := 0)
      return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setData");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if index_P /= null then index_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if value_P /= null then value_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if role_P /= 0 then
         Dict_SetItemString (Dict, "role", Long_FromLong (role_P));
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end setData;
   function setData
     (self   : access Inst; index_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class; value_P : Any;
      role_P : int := 0) return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setData");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if index_P /= null then index_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if value_P /= null then value_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if role_P /= 0 then
         Dict_SetItemString (Dict, "role", Long_FromLong (role_P));
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end setData;
   procedure setDynamicSortFilter (self : access Inst; enable_P : bool) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setDynamicSortFilter");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (enable_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setDynamicSortFilter;
   procedure setFilterCaseSensitivity (self : access Inst; cs_P : access QtAda6.QtCore.Qt.CaseSensitivity.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFilterCaseSensitivity");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if cs_P /= null then cs_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setFilterCaseSensitivity;
   procedure setFilterFixedString (self : access Inst; pattern_P : str) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFilterFixedString");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (pattern_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setFilterFixedString;
   procedure setFilterKeyColumn (self : access Inst; column_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFilterKeyColumn");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (column_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setFilterKeyColumn;
   procedure setFilterRegularExpression (self : access Inst; pattern_P : str) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFilterRegularExpression");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (pattern_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setFilterRegularExpression;
   procedure setFilterRegularExpression
     (self : access Inst; regularExpression_P : access QtAda6.QtCore.QRegularExpression.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFilterRegularExpression");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if regularExpression_P /= null then regularExpression_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setFilterRegularExpression;
   procedure setFilterRole (self : access Inst; role_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFilterRole");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (role_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setFilterRole;
   procedure setFilterWildcard (self : access Inst; pattern_P : str) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFilterWildcard");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (pattern_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setFilterWildcard;
   function setHeaderData
     (self    : access Inst; section_P : int; orientation_P : access QtAda6.QtCore.Qt.Orientation.Inst'Class;
      value_P : Any; role_P : int := 0) return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setHeaderData");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (section_P));
      Tuple_SetItem (Args, 1, (if orientation_P /= null then orientation_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if value_P /= null then value_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if role_P /= 0 then
         Dict_SetItemString (Dict, "role", Long_FromLong (role_P));
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end setHeaderData;
   procedure setRecursiveFilteringEnabled (self : access Inst; recursive_P : bool) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setRecursiveFilteringEnabled");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (recursive_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setRecursiveFilteringEnabled;
   procedure setSortCaseSensitivity (self : access Inst; cs_P : access QtAda6.QtCore.Qt.CaseSensitivity.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setSortCaseSensitivity");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if cs_P /= null then cs_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setSortCaseSensitivity;
   procedure setSortLocaleAware (self : access Inst; on_P : bool) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setSortLocaleAware");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (on_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setSortLocaleAware;
   procedure setSortRole (self : access Inst; role_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setSortRole");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (role_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setSortRole;
   procedure setSourceModel (self : access Inst; sourceModel_P : access QtAda6.QtCore.QAbstractItemModel.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setSourceModel");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if sourceModel_P /= null then sourceModel_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setSourceModel;
   function sibling
     (self : access Inst; row_P : int; column_P : int; idx_P : access QtAda6.QtCore.QModelIndex.Inst'Class)
      return access QtAda6.QtCore.QModelIndex.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QModelIndex.Class := new QtAda6.QtCore.QModelIndex.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "sibling");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Tuple_SetItem (Args, 1, Long_FromLong (column_P));
      Tuple_SetItem (Args, 2, (if idx_P /= null then idx_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end sibling;
   function sibling
     (self : access Inst; row_P : int; column_P : int; idx_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class)
      return access QtAda6.QtCore.QModelIndex.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QModelIndex.Class := new QtAda6.QtCore.QModelIndex.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "sibling");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Tuple_SetItem (Args, 1, Long_FromLong (column_P));
      Tuple_SetItem (Args, 2, (if idx_P /= null then idx_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end sibling;
   procedure sort (self : access Inst; column_P : int; order_P : access QtAda6.QtCore.Qt.SortOrder.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "sort");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (column_P));
      Dict := Dict_New;
      if order_P /= null then
         Dict_SetItemString (Dict, "order", order_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end sort;
   function sortCaseSensitivity (self : access Inst) return access QtAda6.QtCore.Qt.CaseSensitivity.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.CaseSensitivity.Class := new QtAda6.QtCore.Qt.CaseSensitivity.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "sortCaseSensitivity");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end sortCaseSensitivity;
   function sortColumn (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "sortColumn");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end sortColumn;
   function sortOrder (self : access Inst) return access QtAda6.QtCore.Qt.SortOrder.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.SortOrder.Class := new QtAda6.QtCore.Qt.SortOrder.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "sortOrder");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end sortOrder;
   function sortRole (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "sortRole");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end sortRole;
   function span
     (self : access Inst; index_P : access QtAda6.QtCore.QModelIndex.Inst'Class)
      return access QtAda6.QtCore.QSize.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret                                          : constant QtAda6.QtCore.QSize.Class := new QtAda6.QtCore.QSize.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "span");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if index_P /= null then index_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end span;
   function span
     (self : access Inst; index_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class)
      return access QtAda6.QtCore.QSize.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret                                          : constant QtAda6.QtCore.QSize.Class := new QtAda6.QtCore.QSize.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "span");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if index_P /= null then index_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end span;
   function supportedDropActions (self : access Inst) return access QtAda6.QtCore.Qt.DropAction.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.DropAction.Class := new QtAda6.QtCore.Qt.DropAction.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "supportedDropActions");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end supportedDropActions;
end QtAda6.QtCore.QSortFilterProxyModel;
