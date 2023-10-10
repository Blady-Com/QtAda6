-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qoverridecursorguard.adb
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
package body QtAda6.QtGui.QOverrideCursorGuard is
procedure Finalize (Self : in out Class) is
  procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
  begin
    Py.Invalidate (Self.Python_Proxy);
    Free (Inst_Access (Self));
  end;
function Create return Class is
  Class, Args : Handle;
begin
  Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QOverrideCursorGuard");
  Args   := Tuple_New ( 0);
  return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
end;
function U_enter_U(self : access Inst) return access QtAda6.QtGui.QOverrideCursorGuard.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtGui.QOverrideCursorGuard.Class := new QtAda6.QtGui.QOverrideCursorGuard.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "__enter__");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
procedure U_exit_U(self : access Inst;arg_1_P : object;arg_2_P : object;arg_3_P : object) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "__exit__");
  Args   := Tuple_New ( 3);
  Tuple_SetItem (Args, 0,arg_1_P.Python_Proxy);
  Tuple_SetItem (Args, 1,arg_2_P.Python_Proxy);
  Tuple_SetItem (Args, 2,arg_3_P.Python_Proxy);
  Result := Object_CallObject (Method, Args, True);
end;
procedure restoreOverrideCursor(self : access Inst) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "restoreOverrideCursor");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
end;
end QtAda6.QtGui.QOverrideCursorGuard;
