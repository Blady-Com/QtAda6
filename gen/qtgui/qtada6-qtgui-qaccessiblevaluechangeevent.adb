-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qaccessiblevaluechangeevent.adb
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
package body QtAda6.QtGui.QAccessibleValueChangeEvent is
procedure Finalize (Self : in out Class) is
  procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
  begin
    Py.Invalidate (Self.Python_Proxy);
    Free (Inst_Access (Self));
  end;
function Create(iface_P : access QtAda6.QtGui.QAccessibleInterface.Inst'Class;val_P : Any) return Class is
  Class, Args : Handle;
begin
  Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessibleValueChangeEvent");
  Args   := Tuple_New ( 2);
  Tuple_SetItem (Args, 0,iface_P.Python_Proxy);
  Tuple_SetItem (Args, 1,Any_conv_A2P_is_not_supported);
  return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
end;
function Create(obj_P : access QtAda6.QtCore.QObject.Inst'Class;val_P : Any) return Class is
  Class, Args : Handle;
begin
  Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessibleValueChangeEvent");
  Args   := Tuple_New ( 2);
  Tuple_SetItem (Args, 0,obj_P.Python_Proxy);
  Tuple_SetItem (Args, 1,Any_conv_A2P_is_not_supported);
  return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
end;
procedure setValue(self : access Inst;val_P : Any) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setValue");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,Any_conv_A2P_is_not_supported);
  Result := Object_CallObject (Method, Args, True);
end;
function value(self : access Inst) return Any is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "value");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return Any_conv_P2A_is_not_supported;
end;
end QtAda6.QtGui.QAccessibleValueChangeEvent;
