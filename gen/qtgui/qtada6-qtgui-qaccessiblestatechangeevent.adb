-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qaccessiblestatechangeevent.adb
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
with QtAda6.QtGui.QAccessible.State;
with QtAda6.QtCore.QObject;
package body QtAda6.QtGui.QAccessibleStateChangeEvent is
procedure Finalize (Self : in out Class) is
  procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
  begin
    Py.Invalidate (Self.Python_Proxy);
    Free (Inst_Access (Self));
  end;
function Create(iface_P : access QtAda6.QtGui.QAccessibleInterface.Inst'Class;state_P : access QtAda6.QtGui.QAccessible.State.Inst'Class) return Class is
  Class, Args : Handle;
begin
  Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessibleStateChangeEvent");
  Args   := Tuple_New ( 2);
  Tuple_SetItem (Args, 0,iface_P.Python_Proxy);
  Tuple_SetItem (Args, 1,state_P.Python_Proxy);
  return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
end;
function Create(obj_P : access QtAda6.QtCore.QObject.Inst'Class;state_P : access QtAda6.QtGui.QAccessible.State.Inst'Class) return Class is
  Class, Args : Handle;
begin
  Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessibleStateChangeEvent");
  Args   := Tuple_New ( 2);
  Tuple_SetItem (Args, 0,obj_P.Python_Proxy);
  Tuple_SetItem (Args, 1,state_P.Python_Proxy);
  return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
end;
function changedStates(self : access Inst) return access QtAda6.QtGui.QAccessible.State.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtGui.QAccessible.State.Class := new QtAda6.QtGui.QAccessible.State.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "changedStates");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
end QtAda6.QtGui.QAccessibleStateChangeEvent;
