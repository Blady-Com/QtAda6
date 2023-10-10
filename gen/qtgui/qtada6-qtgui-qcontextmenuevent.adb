-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qcontextmenuevent.adb
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
with QtAda6.QtGui.QInputEvent;
with QtAda6.QtGui.QContextMenuEvent.Reason;
with QtAda6.QtCore.QPoint;
with QtAda6.QtCore.Qt.KeyboardModifier;
package body QtAda6.QtGui.QContextMenuEvent is
procedure Finalize (Self : in out Class) is
  procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
  begin
    Py.Invalidate (Self.Python_Proxy);
    Free (Inst_Access (Self));
  end;
function Create(arg_1_P : access QtAda6.QtGui.QContextMenuEvent.Inst'Class) return Class is
  Class, Args : Handle;
begin
  Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QContextMenuEvent");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,arg_1_P.Python_Proxy);
  return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
end;
function Create(reason_P : access QtAda6.QtGui.QContextMenuEvent.Reason.Inst'Class;pos_P : access QtAda6.QtCore.QPoint.Inst'Class) return Class is
  Class, Args : Handle;
begin
  Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QContextMenuEvent");
  Args   := Tuple_New ( 2);
  Tuple_SetItem (Args, 0,reason_P.Python_Proxy);
  Tuple_SetItem (Args, 1,pos_P.Python_Proxy);
  return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
end;
function Create(reason_P : access QtAda6.QtGui.QContextMenuEvent.Reason.Inst'Class;pos_P : access QtAda6.QtCore.QPoint.Inst'Class;globalPos_P : access QtAda6.QtCore.QPoint.Inst'Class;modifiers_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class) return Class is
  Class, Args : Handle;
begin
  Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QContextMenuEvent");
  Args   := Tuple_New ( 4);
  Tuple_SetItem (Args, 0,reason_P.Python_Proxy);
  Tuple_SetItem (Args, 1,pos_P.Python_Proxy);
  Tuple_SetItem (Args, 2,globalPos_P.Python_Proxy);
  Tuple_SetItem (Args, 3,modifiers_P.Python_Proxy);
  return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
end;
function clone(self : access Inst) return access QtAda6.QtGui.QContextMenuEvent.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtGui.QContextMenuEvent.Class := new QtAda6.QtGui.QContextMenuEvent.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "clone");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
function globalPos(self : access Inst) return access QtAda6.QtCore.QPoint.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtCore.QPoint.Class := new QtAda6.QtCore.QPoint.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "globalPos");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
function globalX(self : access Inst) return int is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "globalX");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return Long_AsLong (Result);
end;
function globalY(self : access Inst) return int is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "globalY");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return Long_AsLong (Result);
end;
function pos(self : access Inst) return access QtAda6.QtCore.QPoint.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtCore.QPoint.Class := new QtAda6.QtCore.QPoint.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "pos");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
function reason_F(self : access Inst) return access QtAda6.QtGui.QContextMenuEvent.Reason.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtGui.QContextMenuEvent.Reason.Class := new QtAda6.QtGui.QContextMenuEvent.Reason.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "reason");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
function x(self : access Inst) return int is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "x");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return Long_AsLong (Result);
end;
function y(self : access Inst) return int is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "y");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return Long_AsLong (Result);
end;
end QtAda6.QtGui.QContextMenuEvent;
