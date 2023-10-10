-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qaccessibletextcursorevent.adb
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
with QtAda6.QtCore.QObject;
package body QtAda6.QtGui.QAccessibleTextCursorEvent is
procedure Finalize (Self : in out Class) is
  procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
  begin
    Py.Invalidate (Self.Python_Proxy);
    Free (Inst_Access (Self));
  end;
function Create(iface_P : access QtAda6.QtGui.QAccessibleInterface.Inst'Class;cursorPos_P : int) return Class is
  Class, Args : Handle;
begin
  Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessibleTextCursorEvent");
  Args   := Tuple_New ( 2);
  Tuple_SetItem (Args, 0,iface_P.Python_Proxy);
  Tuple_SetItem (Args, 1,Long_FromLong (cursorPos_P));
  return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
end;
function Create(obj_P : access QtAda6.QtCore.QObject.Inst'Class;cursorPos_P : int) return Class is
  Class, Args : Handle;
begin
  Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessibleTextCursorEvent");
  Args   := Tuple_New ( 2);
  Tuple_SetItem (Args, 0,obj_P.Python_Proxy);
  Tuple_SetItem (Args, 1,Long_FromLong (cursorPos_P));
  return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
end;
function cursorPosition(self : access Inst) return int is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "cursorPosition");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return Long_AsLong (Result);
end;
procedure setCursorPosition(self : access Inst;position_P : int) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setCursorPosition");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,Long_FromLong (position_P));
  Result := Object_CallObject (Method, Args, True);
end;
end QtAda6.QtGui.QAccessibleTextCursorEvent;
