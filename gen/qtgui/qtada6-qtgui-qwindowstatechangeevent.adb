-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qwindowstatechangeevent.adb
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
with QtAda6.QtCore.QEvent;
with QtAda6.QtCore.Qt.WindowState;
package body QtAda6.QtGui.QWindowStateChangeEvent is
procedure Finalize (Self : in out Class) is
  procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
  begin
    Py.Invalidate (Self.Python_Proxy);
    Free (Inst_Access (Self));
  end;
function Create(arg_1_P : access QtAda6.QtGui.QWindowStateChangeEvent.Inst'Class) return Class is
  Class, Args : Handle;
begin
  Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QWindowStateChangeEvent");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,arg_1_P.Python_Proxy);
  return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
end;
function Create(oldState_P : access QtAda6.QtCore.Qt.WindowState.Inst'Class;isOverride_P : bool) return Class is
  Class, Args : Handle;
begin
  Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QWindowStateChangeEvent");
  Args   := Tuple_New ( 2);
  Tuple_SetItem (Args, 0,oldState_P.Python_Proxy);
  Tuple_SetItem (Args, 1,To_Python (isOverride_P));
  return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
end;
function U_repr_U(self : access Inst) return object is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "__repr__");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return (Python_Proxy => Result);
end;
function clone(self : access Inst) return access QtAda6.QtGui.QWindowStateChangeEvent.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtGui.QWindowStateChangeEvent.Class := new QtAda6.QtGui.QWindowStateChangeEvent.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "clone");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
function isOverride(self : access Inst) return bool is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "isOverride");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return To_Ada (Result);
end;
function oldState(self : access Inst) return access QtAda6.QtCore.Qt.WindowState.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtCore.Qt.WindowState.Class := new QtAda6.QtCore.Qt.WindowState.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "oldState");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
end QtAda6.QtGui.QWindowStateChangeEvent;
