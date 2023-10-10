-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qstandarditemmodel.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with py; use py;
with Ada.Unchecked_Deallocation;
with QtAda6.QtCore.QAbstractItemModel;
with QtAda6.QtCore.QObject;
with QtAda6.QtGui.QStandardItem;
with QtAda6.QtCore.QModelIndex;
with QtAda6.QtCore.QPersistentModelIndex;
with QtAda6.QtCore.QMimeData;
with QtAda6.QtCore.Qt.DropAction;
with QtAda6.QtCore.Qt.MatchFlag;
with QtAda6.QtCore.Qt.ItemFlag;
with QtAda6.QtCore.Qt.Orientation;
with QtAda6.QtCore.QByteArray;
with QtAda6.QtCore.Qt.SortOrder;
package body QtAda6.QtGui.QStandardItemModel is
procedure Finalize (Self : in out Class) is
  procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
  begin
    Py.Invalidate (Self.Python_Proxy);
    Free (Inst_Access (Self));
  end;
function Create(parent_P : Optional_QtAda6_QtCore_QObject) return Class is
  Class, Args : Handle;
begin
  Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QStandardItemModel");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,No_Value);
  return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
end;
function Create(rows_P : int;columns_P : int;parent_P : Optional_QtAda6_QtCore_QObject) return Class is
  Class, Args : Handle;
begin
  Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QStandardItemModel");
  Args   := Tuple_New ( 3);
  Tuple_SetItem (Args, 0,Long_FromLong (rows_P));
  Tuple_SetItem (Args, 1,Long_FromLong (columns_P));
  Tuple_SetItem (Args, 2,No_Value);
  return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
end;
procedure appendColumn(self : access Inst;items_P : Sequence_QtAda6_QtGui_QStandardItem) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "appendColumn");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,No_Value);
  Result := Object_CallObject (Method, Args, True);
end;
procedure appendRow(self : access Inst;item_P : access QtAda6.QtGui.QStandardItem.Inst'Class) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "appendRow");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,item_P.Python_Proxy);
  Result := Object_CallObject (Method, Args, True);
end;
procedure appendRow(self : access Inst;items_P : Sequence_QtAda6_QtGui_QStandardItem) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "appendRow");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,No_Value);
  Result := Object_CallObject (Method, Args, True);
end;
procedure clear(self : access Inst) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "clear");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
end;
function clearItemData(self : access Inst;index_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex) return bool is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "clearItemData");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,No_Value);
  Result := Object_CallObject (Method, Args, True);
  return To_Ada (Result);
end;
function columnCount(self : access Inst;parent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex) return int is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "columnCount");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,No_Value);
  Result := Object_CallObject (Method, Args, True);
  return Long_AsLong (Result);
end;
function data(self : access Inst;index_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex;role_P : int) return Any is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "data");
  Args   := Tuple_New ( 2);
  Tuple_SetItem (Args, 0,No_Value);
  Tuple_SetItem (Args, 1,Long_FromLong (role_P));
  Result := Object_CallObject (Method, Args, True);
  return Any_conv_P2A_is_not_supported;
end;
function dropMimeData(self : access Inst;data_P : access QtAda6.QtCore.QMimeData.Inst'Class;action_P : access QtAda6.QtCore.Qt.DropAction.Inst'Class;row_P : int;column_P : int;parent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex) return bool is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "dropMimeData");
  Args   := Tuple_New ( 5);
  Tuple_SetItem (Args, 0,data_P.Python_Proxy);
  Tuple_SetItem (Args, 1,action_P.Python_Proxy);
  Tuple_SetItem (Args, 2,Long_FromLong (row_P));
  Tuple_SetItem (Args, 3,Long_FromLong (column_P));
  Tuple_SetItem (Args, 4,No_Value);
  Result := Object_CallObject (Method, Args, True);
  return To_Ada (Result);
end;
function findItems(self : access Inst;text_P : str;flags_P : access QtAda6.QtCore.Qt.MatchFlag.Inst'Class;column_P : int) return List_QtAda6_QtGui_QStandardItem is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "findItems");
  Args   := Tuple_New ( 3);
  Tuple_SetItem (Args, 0,Unicode_FromString (text_P));
  Tuple_SetItem (Args, 1,flags_P.Python_Proxy);
  Tuple_SetItem (Args, 2,Long_FromLong (column_P));
  Result := Object_CallObject (Method, Args, True);
  return null;
end;
function flags(self : access Inst;index_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex) return access QtAda6.QtCore.Qt.ItemFlag.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtCore.Qt.ItemFlag.Class := new QtAda6.QtCore.Qt.ItemFlag.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "flags");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,No_Value);
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
function hasChildren(self : access Inst;parent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex) return bool is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "hasChildren");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,No_Value);
  Result := Object_CallObject (Method, Args, True);
  return To_Ada (Result);
end;
function headerData(self : access Inst;section_P : int;orientation_P : access QtAda6.QtCore.Qt.Orientation.Inst'Class;role_P : int) return Any is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "headerData");
  Args   := Tuple_New ( 3);
  Tuple_SetItem (Args, 0,Long_FromLong (section_P));
  Tuple_SetItem (Args, 1,orientation_P.Python_Proxy);
  Tuple_SetItem (Args, 2,Long_FromLong (role_P));
  Result := Object_CallObject (Method, Args, True);
  return Any_conv_P2A_is_not_supported;
end;
function horizontalHeaderItem(self : access Inst;column_P : int) return access QtAda6.QtGui.QStandardItem.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtGui.QStandardItem.Class := new QtAda6.QtGui.QStandardItem.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "horizontalHeaderItem");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,Long_FromLong (column_P));
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
function index(self : access Inst;row_P : int;column_P : int;parent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex) return access QtAda6.QtCore.QModelIndex.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtCore.QModelIndex.Class := new QtAda6.QtCore.QModelIndex.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "index");
  Args   := Tuple_New ( 3);
  Tuple_SetItem (Args, 0,Long_FromLong (row_P));
  Tuple_SetItem (Args, 1,Long_FromLong (column_P));
  Tuple_SetItem (Args, 2,No_Value);
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
function indexFromItem(self : access Inst;item_P : access QtAda6.QtGui.QStandardItem.Inst'Class) return access QtAda6.QtCore.QModelIndex.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtCore.QModelIndex.Class := new QtAda6.QtCore.QModelIndex.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "indexFromItem");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,item_P.Python_Proxy);
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
procedure insertColumn(self : access Inst;column_P : int;items_P : Sequence_QtAda6_QtGui_QStandardItem) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "insertColumn");
  Args   := Tuple_New ( 2);
  Tuple_SetItem (Args, 0,Long_FromLong (column_P));
  Tuple_SetItem (Args, 1,No_Value);
  Result := Object_CallObject (Method, Args, True);
end;
function insertColumn(self : access Inst;column_P : int;parent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex) return bool is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "insertColumn");
  Args   := Tuple_New ( 2);
  Tuple_SetItem (Args, 0,Long_FromLong (column_P));
  Tuple_SetItem (Args, 1,No_Value);
  Result := Object_CallObject (Method, Args, True);
  return To_Ada (Result);
end;
function insertColumns(self : access Inst;column_P : int;count_P : int;parent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex) return bool is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "insertColumns");
  Args   := Tuple_New ( 3);
  Tuple_SetItem (Args, 0,Long_FromLong (column_P));
  Tuple_SetItem (Args, 1,Long_FromLong (count_P));
  Tuple_SetItem (Args, 2,No_Value);
  Result := Object_CallObject (Method, Args, True);
  return To_Ada (Result);
end;
procedure insertRow(self : access Inst;row_P : int;item_P : access QtAda6.QtGui.QStandardItem.Inst'Class) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "insertRow");
  Args   := Tuple_New ( 2);
  Tuple_SetItem (Args, 0,Long_FromLong (row_P));
  Tuple_SetItem (Args, 1,item_P.Python_Proxy);
  Result := Object_CallObject (Method, Args, True);
end;
procedure insertRow(self : access Inst;row_P : int;items_P : Sequence_QtAda6_QtGui_QStandardItem) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "insertRow");
  Args   := Tuple_New ( 2);
  Tuple_SetItem (Args, 0,Long_FromLong (row_P));
  Tuple_SetItem (Args, 1,No_Value);
  Result := Object_CallObject (Method, Args, True);
end;
function insertRow(self : access Inst;row_P : int;parent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex) return bool is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "insertRow");
  Args   := Tuple_New ( 2);
  Tuple_SetItem (Args, 0,Long_FromLong (row_P));
  Tuple_SetItem (Args, 1,No_Value);
  Result := Object_CallObject (Method, Args, True);
  return To_Ada (Result);
end;
function insertRows(self : access Inst;row_P : int;count_P : int;parent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex) return bool is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "insertRows");
  Args   := Tuple_New ( 3);
  Tuple_SetItem (Args, 0,Long_FromLong (row_P));
  Tuple_SetItem (Args, 1,Long_FromLong (count_P));
  Tuple_SetItem (Args, 2,No_Value);
  Result := Object_CallObject (Method, Args, True);
  return To_Ada (Result);
end;
function invisibleRootItem(self : access Inst) return access QtAda6.QtGui.QStandardItem.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtGui.QStandardItem.Class := new QtAda6.QtGui.QStandardItem.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "invisibleRootItem");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
function item(self : access Inst;row_P : int;column_P : int) return access QtAda6.QtGui.QStandardItem.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtGui.QStandardItem.Class := new QtAda6.QtGui.QStandardItem.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "item");
  Args   := Tuple_New ( 2);
  Tuple_SetItem (Args, 0,Long_FromLong (row_P));
  Tuple_SetItem (Args, 1,Long_FromLong (column_P));
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
function itemData(self : access Inst;index_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex) return Dict_int_Any is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "itemData");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,No_Value);
  Result := Object_CallObject (Method, Args, True);
  return null;
end;
function itemFromIndex(self : access Inst;index_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex) return access QtAda6.QtGui.QStandardItem.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtGui.QStandardItem.Class := new QtAda6.QtGui.QStandardItem.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "itemFromIndex");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,No_Value);
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
function itemPrototype(self : access Inst) return access QtAda6.QtGui.QStandardItem.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtGui.QStandardItem.Class := new QtAda6.QtGui.QStandardItem.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "itemPrototype");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
function mimeData(self : access Inst;indexes_P : Sequence_QtAda6_QtCore_QModelIndex) return access QtAda6.QtCore.QMimeData.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtCore.QMimeData.Class := new QtAda6.QtCore.QMimeData.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "mimeData");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,No_Value);
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
function mimeTypes(self : access Inst) return List_str is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "mimeTypes");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return null;
end;
function parent(self : access Inst) return access QtAda6.QtCore.QObject.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtCore.QObject.Class := new QtAda6.QtCore.QObject.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "parent");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
function parent(self : access Inst;child_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex) return access QtAda6.QtCore.QModelIndex.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtCore.QModelIndex.Class := new QtAda6.QtCore.QModelIndex.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "parent");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,No_Value);
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
function removeColumns(self : access Inst;column_P : int;count_P : int;parent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex) return bool is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "removeColumns");
  Args   := Tuple_New ( 3);
  Tuple_SetItem (Args, 0,Long_FromLong (column_P));
  Tuple_SetItem (Args, 1,Long_FromLong (count_P));
  Tuple_SetItem (Args, 2,No_Value);
  Result := Object_CallObject (Method, Args, True);
  return To_Ada (Result);
end;
function removeRows(self : access Inst;row_P : int;count_P : int;parent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex) return bool is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "removeRows");
  Args   := Tuple_New ( 3);
  Tuple_SetItem (Args, 0,Long_FromLong (row_P));
  Tuple_SetItem (Args, 1,Long_FromLong (count_P));
  Tuple_SetItem (Args, 2,No_Value);
  Result := Object_CallObject (Method, Args, True);
  return To_Ada (Result);
end;
function roleNames(self : access Inst) return Dict_int_QtAda6_QtCore_QByteArray is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "roleNames");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return null;
end;
function rowCount(self : access Inst;parent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex) return int is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "rowCount");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,No_Value);
  Result := Object_CallObject (Method, Args, True);
  return Long_AsLong (Result);
end;
procedure setColumnCount(self : access Inst;columns_P : int) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setColumnCount");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,Long_FromLong (columns_P));
  Result := Object_CallObject (Method, Args, True);
end;
function setData(self : access Inst;index_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex;value_P : Any;role_P : int) return bool is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setData");
  Args   := Tuple_New ( 3);
  Tuple_SetItem (Args, 0,No_Value);
  Tuple_SetItem (Args, 1,Any_conv_A2P_is_not_supported);
  Tuple_SetItem (Args, 2,Long_FromLong (role_P));
  Result := Object_CallObject (Method, Args, True);
  return To_Ada (Result);
end;
function setHeaderData(self : access Inst;section_P : int;orientation_P : access QtAda6.QtCore.Qt.Orientation.Inst'Class;value_P : Any;role_P : int) return bool is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setHeaderData");
  Args   := Tuple_New ( 4);
  Tuple_SetItem (Args, 0,Long_FromLong (section_P));
  Tuple_SetItem (Args, 1,orientation_P.Python_Proxy);
  Tuple_SetItem (Args, 2,Any_conv_A2P_is_not_supported);
  Tuple_SetItem (Args, 3,Long_FromLong (role_P));
  Result := Object_CallObject (Method, Args, True);
  return To_Ada (Result);
end;
procedure setHorizontalHeaderItem(self : access Inst;column_P : int;item_P : access QtAda6.QtGui.QStandardItem.Inst'Class) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setHorizontalHeaderItem");
  Args   := Tuple_New ( 2);
  Tuple_SetItem (Args, 0,Long_FromLong (column_P));
  Tuple_SetItem (Args, 1,item_P.Python_Proxy);
  Result := Object_CallObject (Method, Args, True);
end;
procedure setHorizontalHeaderLabels(self : access Inst;labels_P : Sequence_str) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setHorizontalHeaderLabels");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,No_Value);
  Result := Object_CallObject (Method, Args, True);
end;
procedure setItem(self : access Inst;row_P : int;column_P : int;item_P : access QtAda6.QtGui.QStandardItem.Inst'Class) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setItem");
  Args   := Tuple_New ( 3);
  Tuple_SetItem (Args, 0,Long_FromLong (row_P));
  Tuple_SetItem (Args, 1,Long_FromLong (column_P));
  Tuple_SetItem (Args, 2,item_P.Python_Proxy);
  Result := Object_CallObject (Method, Args, True);
end;
procedure setItem(self : access Inst;row_P : int;item_P : access QtAda6.QtGui.QStandardItem.Inst'Class) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setItem");
  Args   := Tuple_New ( 2);
  Tuple_SetItem (Args, 0,Long_FromLong (row_P));
  Tuple_SetItem (Args, 1,item_P.Python_Proxy);
  Result := Object_CallObject (Method, Args, True);
end;
function setItemData(self : access Inst;index_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex;roles_P : Dict_int_Any) return bool is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setItemData");
  Args   := Tuple_New ( 2);
  Tuple_SetItem (Args, 0,No_Value);
  Tuple_SetItem (Args, 1,No_Value);
  Result := Object_CallObject (Method, Args, True);
  return To_Ada (Result);
end;
procedure setItemPrototype(self : access Inst;item_P : access QtAda6.QtGui.QStandardItem.Inst'Class) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setItemPrototype");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,item_P.Python_Proxy);
  Result := Object_CallObject (Method, Args, True);
end;
procedure setItemRoleNames(self : access Inst;roleNames_P : Dict_int_QtAda6_QtCore_QByteArray) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setItemRoleNames");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,No_Value);
  Result := Object_CallObject (Method, Args, True);
end;
procedure setRowCount(self : access Inst;rows_P : int) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setRowCount");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,Long_FromLong (rows_P));
  Result := Object_CallObject (Method, Args, True);
end;
procedure setSortRole(self : access Inst;role_P : int) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setSortRole");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,Long_FromLong (role_P));
  Result := Object_CallObject (Method, Args, True);
end;
procedure setVerticalHeaderItem(self : access Inst;row_P : int;item_P : access QtAda6.QtGui.QStandardItem.Inst'Class) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setVerticalHeaderItem");
  Args   := Tuple_New ( 2);
  Tuple_SetItem (Args, 0,Long_FromLong (row_P));
  Tuple_SetItem (Args, 1,item_P.Python_Proxy);
  Result := Object_CallObject (Method, Args, True);
end;
procedure setVerticalHeaderLabels(self : access Inst;labels_P : Sequence_str) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setVerticalHeaderLabels");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,No_Value);
  Result := Object_CallObject (Method, Args, True);
end;
procedure sort(self : access Inst;column_P : int;order_P : access QtAda6.QtCore.Qt.SortOrder.Inst'Class) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "sort");
  Args   := Tuple_New ( 2);
  Tuple_SetItem (Args, 0,Long_FromLong (column_P));
  Tuple_SetItem (Args, 1,order_P.Python_Proxy);
  Result := Object_CallObject (Method, Args, True);
end;
function sortRole(self : access Inst) return int is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "sortRole");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return Long_AsLong (Result);
end;
function supportedDropActions(self : access Inst) return access QtAda6.QtCore.Qt.DropAction.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtCore.Qt.DropAction.Class := new QtAda6.QtCore.Qt.DropAction.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "supportedDropActions");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
function takeColumn(self : access Inst;column_P : int) return List_QtAda6_QtGui_QStandardItem is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "takeColumn");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,Long_FromLong (column_P));
  Result := Object_CallObject (Method, Args, True);
  return null;
end;
function takeHorizontalHeaderItem(self : access Inst;column_P : int) return access QtAda6.QtGui.QStandardItem.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtGui.QStandardItem.Class := new QtAda6.QtGui.QStandardItem.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "takeHorizontalHeaderItem");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,Long_FromLong (column_P));
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
function takeItem(self : access Inst;row_P : int;column_P : int) return access QtAda6.QtGui.QStandardItem.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtGui.QStandardItem.Class := new QtAda6.QtGui.QStandardItem.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "takeItem");
  Args   := Tuple_New ( 2);
  Tuple_SetItem (Args, 0,Long_FromLong (row_P));
  Tuple_SetItem (Args, 1,Long_FromLong (column_P));
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
function takeRow(self : access Inst;row_P : int) return List_QtAda6_QtGui_QStandardItem is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "takeRow");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,Long_FromLong (row_P));
  Result := Object_CallObject (Method, Args, True);
  return null;
end;
function takeVerticalHeaderItem(self : access Inst;row_P : int) return access QtAda6.QtGui.QStandardItem.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtGui.QStandardItem.Class := new QtAda6.QtGui.QStandardItem.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "takeVerticalHeaderItem");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,Long_FromLong (row_P));
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
function verticalHeaderItem(self : access Inst;row_P : int) return access QtAda6.QtGui.QStandardItem.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtGui.QStandardItem.Class := new QtAda6.QtGui.QStandardItem.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "verticalHeaderItem");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,Long_FromLong (row_P));
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
end QtAda6.QtGui.QStandardItemModel;
