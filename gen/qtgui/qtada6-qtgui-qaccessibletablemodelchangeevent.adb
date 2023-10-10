-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qaccessibletablemodelchangeevent.adb
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
with QtAda6.QtGui.QAccessibleEvent;
with QtAda6.QtGui.QAccessibleInterface;
with QtAda6.QtGui.QAccessibleTableModelChangeEvent.ModelChangeType;
with QtAda6.QtCore.QObject;
package body QtAda6.QtGui.QAccessibleTableModelChangeEvent is
procedure Finalize (Self : in out Class) is
  procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
  begin
    Py.Invalidate (Self.Python_Proxy);
    Free (Inst_Access (Self));
  end;
function Create(iface_P : access QtAda6.QtGui.QAccessibleInterface.Inst'Class;changeType_P : access QtAda6.QtGui.QAccessibleTableModelChangeEvent.ModelChangeType.Inst'Class) return Class is
  Class, Args : Handle;
begin
  Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessibleTableModelChangeEvent");
  Args   := Tuple_New ( 2);
  Tuple_SetItem (Args, 0,iface_P.Python_Proxy);
  Tuple_SetItem (Args, 1,changeType_P.Python_Proxy);
  return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
end;
function Create(obj_P : access QtAda6.QtCore.QObject.Inst'Class;changeType_P : access QtAda6.QtGui.QAccessibleTableModelChangeEvent.ModelChangeType.Inst'Class) return Class is
  Class, Args : Handle;
begin
  Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessibleTableModelChangeEvent");
  Args   := Tuple_New ( 2);
  Tuple_SetItem (Args, 0,obj_P.Python_Proxy);
  Tuple_SetItem (Args, 1,changeType_P.Python_Proxy);
  return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
end;
function firstColumn(self : access Inst) return int is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "firstColumn");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return Long_AsLong (Result);
end;
function firstRow(self : access Inst) return int is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "firstRow");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return Long_AsLong (Result);
end;
function lastColumn(self : access Inst) return int is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "lastColumn");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return Long_AsLong (Result);
end;
function lastRow(self : access Inst) return int is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "lastRow");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return Long_AsLong (Result);
end;
function modelChangeType_F(self : access Inst) return access QtAda6.QtGui.QAccessibleTableModelChangeEvent.ModelChangeType.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtGui.QAccessibleTableModelChangeEvent.ModelChangeType.Class := new QtAda6.QtGui.QAccessibleTableModelChangeEvent.ModelChangeType.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "modelChangeType");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
procedure setFirstColumn(self : access Inst;col_P : int) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setFirstColumn");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,Long_FromLong (col_P));
  Result := Object_CallObject (Method, Args, True);
end;
procedure setFirstRow(self : access Inst;row_P : int) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setFirstRow");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,Long_FromLong (row_P));
  Result := Object_CallObject (Method, Args, True);
end;
procedure setLastColumn(self : access Inst;col_P : int) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setLastColumn");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,Long_FromLong (col_P));
  Result := Object_CallObject (Method, Args, True);
end;
procedure setLastRow(self : access Inst;row_P : int) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setLastRow");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,Long_FromLong (row_P));
  Result := Object_CallObject (Method, Args, True);
end;
procedure setModelChangeType(self : access Inst;changeType_P : access QtAda6.QtGui.QAccessibleTableModelChangeEvent.ModelChangeType.Inst'Class) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setModelChangeType");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,changeType_P.Python_Proxy);
  Result := Object_CallObject (Method, Args, True);
end;
end QtAda6.QtGui.QAccessibleTableModelChangeEvent;
