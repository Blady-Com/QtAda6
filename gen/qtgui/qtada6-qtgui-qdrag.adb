-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qdrag.adb
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
with QtAda6.QtCore.QObject;
with QtAda6.QtCore.Qt.DropAction;
with QtAda6.QtGui.QPixmap;
with QtAda6.QtCore.QPoint;
with QtAda6.QtCore.QMimeData;
with QtAda6.QtGui.QImage;
package body QtAda6.QtGui.QDrag is
procedure Finalize (Self : in out Class) is
  procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
  begin
    Py.Invalidate (Self.Python_Proxy);
    Free (Inst_Access (Self));
  end;
function Create(dragSource_P : access QtAda6.QtCore.QObject.Inst'Class) return Class is
  Class, Args : Handle;
begin
  Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QDrag");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,dragSource_P.Python_Proxy);
  return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
end;
procedure cancel is
  Class,  Method, Args, Result : Handle;
begin
  Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QDrag");
  Method := Object_GetAttrString (Class, "cancel");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
end;
function defaultAction(self : access Inst) return access QtAda6.QtCore.Qt.DropAction.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtCore.Qt.DropAction.Class := new QtAda6.QtCore.Qt.DropAction.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "defaultAction");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
function dragCursor(self : access Inst;action_P : access QtAda6.QtCore.Qt.DropAction.Inst'Class) return access QtAda6.QtGui.QPixmap.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtGui.QPixmap.Class := new QtAda6.QtGui.QPixmap.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "dragCursor");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,action_P.Python_Proxy);
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
function exec(self : access Inst;supportedActions_P : access QtAda6.QtCore.Qt.DropAction.Inst'Class;defaultAction_P : access QtAda6.QtCore.Qt.DropAction.Inst'Class) return access QtAda6.QtCore.Qt.DropAction.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtCore.Qt.DropAction.Class := new QtAda6.QtCore.Qt.DropAction.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "exec");
  Args   := Tuple_New ( 2);
  Tuple_SetItem (Args, 0,supportedActions_P.Python_Proxy);
  Tuple_SetItem (Args, 1,defaultAction_P.Python_Proxy);
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
function exec(self : access Inst;supportedActions_P : access QtAda6.QtCore.Qt.DropAction.Inst'Class) return access QtAda6.QtCore.Qt.DropAction.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtCore.Qt.DropAction.Class := new QtAda6.QtCore.Qt.DropAction.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "exec");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,supportedActions_P.Python_Proxy);
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
function exec_U(self : access Inst;arg_1_P : access QtAda6.QtCore.Qt.DropAction.Inst'Class;arg_2_P : access QtAda6.QtCore.Qt.DropAction.Inst'Class) return access QtAda6.QtCore.Qt.DropAction.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtCore.Qt.DropAction.Class := new QtAda6.QtCore.Qt.DropAction.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "exec_");
  Args   := Tuple_New ( 2);
  Tuple_SetItem (Args, 0,arg_1_P.Python_Proxy);
  Tuple_SetItem (Args, 1,arg_2_P.Python_Proxy);
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
function exec_U(self : access Inst;supportedActions_P : access QtAda6.QtCore.Qt.DropAction.Inst'Class) return access QtAda6.QtCore.Qt.DropAction.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtCore.Qt.DropAction.Class := new QtAda6.QtCore.Qt.DropAction.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "exec_");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,supportedActions_P.Python_Proxy);
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
function hotSpot(self : access Inst) return access QtAda6.QtCore.QPoint.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtCore.QPoint.Class := new QtAda6.QtCore.QPoint.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "hotSpot");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
function mimeData(self : access Inst) return access QtAda6.QtCore.QMimeData.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtCore.QMimeData.Class := new QtAda6.QtCore.QMimeData.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "mimeData");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
function pixmap(self : access Inst) return access QtAda6.QtGui.QPixmap.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtGui.QPixmap.Class := new QtAda6.QtGui.QPixmap.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "pixmap");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
procedure setDragCursor(self : access Inst;cursor_P : Union_QtAda6_QtGui_QPixmap_QtAda6_QtGui_QImage_str;action_P : access QtAda6.QtCore.Qt.DropAction.Inst'Class) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setDragCursor");
  Args   := Tuple_New ( 2);
  Tuple_SetItem (Args, 0,No_Value);
  Tuple_SetItem (Args, 1,action_P.Python_Proxy);
  Result := Object_CallObject (Method, Args, True);
end;
procedure setHotSpot(self : access Inst;hotspot_P : access QtAda6.QtCore.QPoint.Inst'Class) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setHotSpot");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,hotspot_P.Python_Proxy);
  Result := Object_CallObject (Method, Args, True);
end;
procedure setMimeData(self : access Inst;data_P : access QtAda6.QtCore.QMimeData.Inst'Class) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setMimeData");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,data_P.Python_Proxy);
  Result := Object_CallObject (Method, Args, True);
end;
procedure setPixmap(self : access Inst;arg_1_P : Union_QtAda6_QtGui_QPixmap_QtAda6_QtGui_QImage_str) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setPixmap");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,No_Value);
  Result := Object_CallObject (Method, Args, True);
end;
function source(self : access Inst) return access QtAda6.QtCore.QObject.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtCore.QObject.Class := new QtAda6.QtCore.QObject.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "source");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
function supportedActions(self : access Inst) return access QtAda6.QtCore.Qt.DropAction.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtCore.Qt.DropAction.Class := new QtAda6.QtCore.Qt.DropAction.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "supportedActions");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
function target(self : access Inst) return access QtAda6.QtCore.QObject.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtCore.QObject.Class := new QtAda6.QtCore.QObject.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "target");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
end QtAda6.QtGui.QDrag;
