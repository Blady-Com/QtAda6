-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qstandarditem.adb
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
with QtAda6.QtGui.QIcon;
with QtAda6.QtGui.QPixmap;
with QtAda6.QtCore.QDataStream;
with QtAda6.QtGui.QBrush;
with QtAda6.QtCore.Qt.CheckState;
with QtAda6.QtCore.Qt.ItemFlag;
with QtAda6.QtGui.QFont;
with QtAda6.QtCore.QModelIndex;
with QtAda6.QtGui.QStandardItemModel;
with QtAda6.QtCore.Qt.BrushStyle;
with QtAda6.QtCore.Qt.GlobalColor;
with QtAda6.QtGui.QColor;
with QtAda6.QtGui.QGradient;
with QtAda6.QtGui.QImage;
with QtAda6.QtCore.QSize;
with QtAda6.QtCore.Qt.AlignmentFlag;
with QtAda6.QtCore.Qt.SortOrder;
package body QtAda6.QtGui.QStandardItem is
procedure Finalize (Self : in out Class) is
  procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
  begin
    Py.Invalidate (Self.Python_Proxy);
    Free (Inst_Access (Self));
  end;
function Create return Class is
  Class, Args : Handle;
begin
  Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QStandardItem");
  Args   := Tuple_New ( 0);
  return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
end;
function Create(icon_P : Union_QtAda6_QtGui_QIcon_QtAda6_QtGui_QPixmap;text_P : str) return Class is
  Class, Args : Handle;
begin
  Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QStandardItem");
  Args   := Tuple_New ( 2);
  Tuple_SetItem (Args, 0,No_Value);
  Tuple_SetItem (Args, 1,Unicode_FromString (text_P));
  return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
end;
function Create(other_P : access QtAda6.QtGui.QStandardItem.Inst'Class) return Class is
  Class, Args : Handle;
begin
  Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QStandardItem");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,other_P.Python_Proxy);
  return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
end;
function Create(rows_P : int;columns_P : int) return Class is
  Class, Args : Handle;
begin
  Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QStandardItem");
  Args   := Tuple_New ( 2);
  Tuple_SetItem (Args, 0,Long_FromLong (rows_P));
  Tuple_SetItem (Args, 1,Long_FromLong (columns_P));
  return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
end;
function Create(text_P : str) return Class is
  Class, Args : Handle;
begin
  Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QStandardItem");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,Unicode_FromString (text_P));
  return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
end;
function U_lshift_U(self : access Inst;out_K_P : access QtAda6.QtCore.QDataStream.Inst'Class) return access QtAda6.QtCore.QDataStream.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtCore.QDataStream.Class := new QtAda6.QtCore.QDataStream.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "__lshift__");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,out_K_P.Python_Proxy);
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
function U_rshift_U(self : access Inst;in_U_P : access QtAda6.QtCore.QDataStream.Inst'Class) return access QtAda6.QtCore.QDataStream.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtCore.QDataStream.Class := new QtAda6.QtCore.QDataStream.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "__rshift__");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,in_U_P.Python_Proxy);
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
function accessibleDescription(self : access Inst) return str is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "accessibleDescription");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return As_String (Result);
end;
function accessibleText(self : access Inst) return str is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "accessibleText");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return As_String (Result);
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
procedure appendRows(self : access Inst;items_P : Sequence_QtAda6_QtGui_QStandardItem) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "appendRows");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,No_Value);
  Result := Object_CallObject (Method, Args, True);
end;
function background(self : access Inst) return access QtAda6.QtGui.QBrush.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtGui.QBrush.Class := new QtAda6.QtGui.QBrush.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "background");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
function checkState(self : access Inst) return access QtAda6.QtCore.Qt.CheckState.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtCore.Qt.CheckState.Class := new QtAda6.QtCore.Qt.CheckState.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "checkState");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
function child(self : access Inst;row_P : int;column_P : int) return access QtAda6.QtGui.QStandardItem.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtGui.QStandardItem.Class := new QtAda6.QtGui.QStandardItem.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "child");
  Args   := Tuple_New ( 2);
  Tuple_SetItem (Args, 0,Long_FromLong (row_P));
  Tuple_SetItem (Args, 1,Long_FromLong (column_P));
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
procedure clearData(self : access Inst) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "clearData");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
end;
function clone(self : access Inst) return access QtAda6.QtGui.QStandardItem.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtGui.QStandardItem.Class := new QtAda6.QtGui.QStandardItem.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "clone");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
function column(self : access Inst) return int is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "column");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return Long_AsLong (Result);
end;
function columnCount(self : access Inst) return int is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "columnCount");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return Long_AsLong (Result);
end;
function data(self : access Inst;role_P : int) return Any is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "data");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,Long_FromLong (role_P));
  Result := Object_CallObject (Method, Args, True);
  return Any_conv_P2A_is_not_supported;
end;
procedure emitDataChanged(self : access Inst) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "emitDataChanged");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
end;
function flags(self : access Inst) return access QtAda6.QtCore.Qt.ItemFlag.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtCore.Qt.ItemFlag.Class := new QtAda6.QtCore.Qt.ItemFlag.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "flags");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
function font(self : access Inst) return access QtAda6.QtGui.QFont.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtGui.QFont.Class := new QtAda6.QtGui.QFont.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "font");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
function foreground(self : access Inst) return access QtAda6.QtGui.QBrush.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtGui.QBrush.Class := new QtAda6.QtGui.QBrush.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "foreground");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
function hasChildren(self : access Inst) return bool is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "hasChildren");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return To_Ada (Result);
end;
function icon(self : access Inst) return access QtAda6.QtGui.QIcon.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtGui.QIcon.Class := new QtAda6.QtGui.QIcon.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "icon");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
function index(self : access Inst) return access QtAda6.QtCore.QModelIndex.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtCore.QModelIndex.Class := new QtAda6.QtCore.QModelIndex.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "index");
  Args   := Tuple_New ( 0);
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
procedure insertColumns(self : access Inst;column_P : int;count_P : int) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "insertColumns");
  Args   := Tuple_New ( 2);
  Tuple_SetItem (Args, 0,Long_FromLong (column_P));
  Tuple_SetItem (Args, 1,Long_FromLong (count_P));
  Result := Object_CallObject (Method, Args, True);
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
procedure insertRows(self : access Inst;row_P : int;count_P : int) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "insertRows");
  Args   := Tuple_New ( 2);
  Tuple_SetItem (Args, 0,Long_FromLong (row_P));
  Tuple_SetItem (Args, 1,Long_FromLong (count_P));
  Result := Object_CallObject (Method, Args, True);
end;
procedure insertRows(self : access Inst;row_P : int;items_P : Sequence_QtAda6_QtGui_QStandardItem) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "insertRows");
  Args   := Tuple_New ( 2);
  Tuple_SetItem (Args, 0,Long_FromLong (row_P));
  Tuple_SetItem (Args, 1,No_Value);
  Result := Object_CallObject (Method, Args, True);
end;
function isAutoTristate(self : access Inst) return bool is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "isAutoTristate");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return To_Ada (Result);
end;
function isCheckable(self : access Inst) return bool is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "isCheckable");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return To_Ada (Result);
end;
function isDragEnabled(self : access Inst) return bool is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "isDragEnabled");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return To_Ada (Result);
end;
function isDropEnabled(self : access Inst) return bool is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "isDropEnabled");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return To_Ada (Result);
end;
function isEditable(self : access Inst) return bool is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "isEditable");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return To_Ada (Result);
end;
function isEnabled(self : access Inst) return bool is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "isEnabled");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return To_Ada (Result);
end;
function isSelectable(self : access Inst) return bool is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "isSelectable");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return To_Ada (Result);
end;
function isUserTristate(self : access Inst) return bool is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "isUserTristate");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return To_Ada (Result);
end;
function model(self : access Inst) return access QtAda6.QtGui.QStandardItemModel.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtGui.QStandardItemModel.Class := new QtAda6.QtGui.QStandardItemModel.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "model");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
function parent(self : access Inst) return access QtAda6.QtGui.QStandardItem.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtGui.QStandardItem.Class := new QtAda6.QtGui.QStandardItem.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "parent");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
procedure read(self : access Inst;in_U_P : access QtAda6.QtCore.QDataStream.Inst'Class) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "read");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,in_U_P.Python_Proxy);
  Result := Object_CallObject (Method, Args, True);
end;
procedure removeColumn(self : access Inst;column_P : int) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "removeColumn");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,Long_FromLong (column_P));
  Result := Object_CallObject (Method, Args, True);
end;
procedure removeColumns(self : access Inst;column_P : int;count_P : int) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "removeColumns");
  Args   := Tuple_New ( 2);
  Tuple_SetItem (Args, 0,Long_FromLong (column_P));
  Tuple_SetItem (Args, 1,Long_FromLong (count_P));
  Result := Object_CallObject (Method, Args, True);
end;
procedure removeRow(self : access Inst;row_P : int) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "removeRow");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,Long_FromLong (row_P));
  Result := Object_CallObject (Method, Args, True);
end;
procedure removeRows(self : access Inst;row_P : int;count_P : int) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "removeRows");
  Args   := Tuple_New ( 2);
  Tuple_SetItem (Args, 0,Long_FromLong (row_P));
  Tuple_SetItem (Args, 1,Long_FromLong (count_P));
  Result := Object_CallObject (Method, Args, True);
end;
function row(self : access Inst) return int is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "row");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return Long_AsLong (Result);
end;
function rowCount(self : access Inst) return int is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "rowCount");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return Long_AsLong (Result);
end;
procedure setAccessibleDescription(self : access Inst;accessibleDescription_P : str) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setAccessibleDescription");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,Unicode_FromString (accessibleDescription_P));
  Result := Object_CallObject (Method, Args, True);
end;
procedure setAccessibleText(self : access Inst;accessibleText_P : str) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setAccessibleText");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,Unicode_FromString (accessibleText_P));
  Result := Object_CallObject (Method, Args, True);
end;
procedure setAutoTristate(self : access Inst;tristate_P : bool) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setAutoTristate");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,To_Python (tristate_P));
  Result := Object_CallObject (Method, Args, True);
end;
procedure setBackground(self : access Inst;brush_P : Union_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setBackground");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,No_Value);
  Result := Object_CallObject (Method, Args, True);
end;
procedure setCheckState(self : access Inst;checkState_P : access QtAda6.QtCore.Qt.CheckState.Inst'Class) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setCheckState");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,checkState_P.Python_Proxy);
  Result := Object_CallObject (Method, Args, True);
end;
procedure setCheckable(self : access Inst;checkable_P : bool) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setCheckable");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,To_Python (checkable_P));
  Result := Object_CallObject (Method, Args, True);
end;
procedure setChild(self : access Inst;row_P : int;column_P : int;item_P : access QtAda6.QtGui.QStandardItem.Inst'Class) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setChild");
  Args   := Tuple_New ( 3);
  Tuple_SetItem (Args, 0,Long_FromLong (row_P));
  Tuple_SetItem (Args, 1,Long_FromLong (column_P));
  Tuple_SetItem (Args, 2,item_P.Python_Proxy);
  Result := Object_CallObject (Method, Args, True);
end;
procedure setChild(self : access Inst;row_P : int;item_P : access QtAda6.QtGui.QStandardItem.Inst'Class) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setChild");
  Args   := Tuple_New ( 2);
  Tuple_SetItem (Args, 0,Long_FromLong (row_P));
  Tuple_SetItem (Args, 1,item_P.Python_Proxy);
  Result := Object_CallObject (Method, Args, True);
end;
procedure setColumnCount(self : access Inst;columns_P : int) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setColumnCount");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,Long_FromLong (columns_P));
  Result := Object_CallObject (Method, Args, True);
end;
procedure setData(self : access Inst;value_P : Any;role_P : int) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setData");
  Args   := Tuple_New ( 2);
  Tuple_SetItem (Args, 0,Any_conv_A2P_is_not_supported);
  Tuple_SetItem (Args, 1,Long_FromLong (role_P));
  Result := Object_CallObject (Method, Args, True);
end;
procedure setDragEnabled(self : access Inst;dragEnabled_P : bool) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setDragEnabled");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,To_Python (dragEnabled_P));
  Result := Object_CallObject (Method, Args, True);
end;
procedure setDropEnabled(self : access Inst;dropEnabled_P : bool) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setDropEnabled");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,To_Python (dropEnabled_P));
  Result := Object_CallObject (Method, Args, True);
end;
procedure setEditable(self : access Inst;editable_P : bool) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setEditable");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,To_Python (editable_P));
  Result := Object_CallObject (Method, Args, True);
end;
procedure setEnabled(self : access Inst;enabled_P : bool) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setEnabled");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,To_Python (enabled_P));
  Result := Object_CallObject (Method, Args, True);
end;
procedure setFlags(self : access Inst;flags_P : access QtAda6.QtCore.Qt.ItemFlag.Inst'Class) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setFlags");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,flags_P.Python_Proxy);
  Result := Object_CallObject (Method, Args, True);
end;
procedure setFont(self : access Inst;font_P : Union_QtAda6_QtGui_QFont_str_Sequence_str) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setFont");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,No_Value);
  Result := Object_CallObject (Method, Args, True);
end;
procedure setForeground(self : access Inst;brush_P : Union_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setForeground");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,No_Value);
  Result := Object_CallObject (Method, Args, True);
end;
procedure setIcon(self : access Inst;icon_P : Union_QtAda6_QtGui_QIcon_QtAda6_QtGui_QPixmap) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setIcon");
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
procedure setSelectable(self : access Inst;selectable_P : bool) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setSelectable");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,To_Python (selectable_P));
  Result := Object_CallObject (Method, Args, True);
end;
procedure setSizeHint(self : access Inst;sizeHint_P : access QtAda6.QtCore.QSize.Inst'Class) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setSizeHint");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,sizeHint_P.Python_Proxy);
  Result := Object_CallObject (Method, Args, True);
end;
procedure setStatusTip(self : access Inst;statusTip_P : str) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setStatusTip");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,Unicode_FromString (statusTip_P));
  Result := Object_CallObject (Method, Args, True);
end;
procedure setText(self : access Inst;text_P : str) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setText");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,Unicode_FromString (text_P));
  Result := Object_CallObject (Method, Args, True);
end;
procedure setTextAlignment(self : access Inst;textAlignment_P : access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setTextAlignment");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,textAlignment_P.Python_Proxy);
  Result := Object_CallObject (Method, Args, True);
end;
procedure setToolTip(self : access Inst;toolTip_P : str) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setToolTip");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,Unicode_FromString (toolTip_P));
  Result := Object_CallObject (Method, Args, True);
end;
procedure setUserTristate(self : access Inst;tristate_P : bool) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setUserTristate");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,To_Python (tristate_P));
  Result := Object_CallObject (Method, Args, True);
end;
procedure setWhatsThis(self : access Inst;whatsThis_P : str) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setWhatsThis");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,Unicode_FromString (whatsThis_P));
  Result := Object_CallObject (Method, Args, True);
end;
function sizeHint(self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtCore.QSize.Class := new QtAda6.QtCore.QSize.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "sizeHint");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
procedure sortChildren(self : access Inst;column_P : int;order_P : access QtAda6.QtCore.Qt.SortOrder.Inst'Class) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "sortChildren");
  Args   := Tuple_New ( 2);
  Tuple_SetItem (Args, 0,Long_FromLong (column_P));
  Tuple_SetItem (Args, 1,order_P.Python_Proxy);
  Result := Object_CallObject (Method, Args, True);
end;
function statusTip(self : access Inst) return str is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "statusTip");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return As_String (Result);
end;
function takeChild(self : access Inst;row_P : int;column_P : int) return access QtAda6.QtGui.QStandardItem.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtGui.QStandardItem.Class := new QtAda6.QtGui.QStandardItem.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "takeChild");
  Args   := Tuple_New ( 2);
  Tuple_SetItem (Args, 0,Long_FromLong (row_P));
  Tuple_SetItem (Args, 1,Long_FromLong (column_P));
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
function takeRow(self : access Inst;row_P : int) return List_QtAda6_QtGui_QStandardItem is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "takeRow");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,Long_FromLong (row_P));
  Result := Object_CallObject (Method, Args, True);
  return null;
end;
function text(self : access Inst) return str is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "text");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return As_String (Result);
end;
function textAlignment(self : access Inst) return access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtCore.Qt.AlignmentFlag.Class := new QtAda6.QtCore.Qt.AlignmentFlag.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "textAlignment");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
function toolTip(self : access Inst) return str is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "toolTip");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return As_String (Result);
end;
function type_K(self : access Inst) return int is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "type");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return Long_AsLong (Result);
end;
function whatsThis(self : access Inst) return str is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "whatsThis");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return As_String (Result);
end;
procedure write(self : access Inst;out_K_P : access QtAda6.QtCore.QDataStream.Inst'Class) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "write");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,out_K_P.Python_Proxy);
  Result := Object_CallObject (Method, Args, True);
end;
end QtAda6.QtGui.QStandardItem;
