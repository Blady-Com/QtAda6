-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qdragleaveevent.adb
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
package body QtAda6.QtGui.QDragLeaveEvent is
procedure Finalize (Self : in out Class) is
  procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
  begin
    Py.Invalidate (Self.Python_Proxy);
    Free (Inst_Access (Self));
  end;
function Create return Class is
  Class, Args : Handle;
begin
  Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QDragLeaveEvent");
  Args   := Tuple_New ( 0);
  return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
end;
function Create(arg_1_P : access QtAda6.QtGui.QDragLeaveEvent.Inst'Class) return Class is
  Class, Args : Handle;
begin
  Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QDragLeaveEvent");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,arg_1_P.Python_Proxy);
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
function clone(self : access Inst) return access QtAda6.QtGui.QDragLeaveEvent.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtGui.QDragLeaveEvent.Class := new QtAda6.QtGui.QDragLeaveEvent.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "clone");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
end QtAda6.QtGui.QDragLeaveEvent;
