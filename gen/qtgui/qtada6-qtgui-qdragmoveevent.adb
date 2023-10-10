-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qdragmoveevent.adb
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
with QtAda6.QtGui.QDropEvent;
with QtAda6.QtCore.QPoint;
with QtAda6.QtCore.Qt.DropAction;
with QtAda6.QtCore.QMimeData;
with QtAda6.QtCore.Qt.MouseButton;
with QtAda6.QtCore.Qt.KeyboardModifier;
with QtAda6.QtCore.QEvent.Type_K;
with QtAda6.QtCore.QRect;
package body QtAda6.QtGui.QDragMoveEvent is
procedure Finalize (Self : in out Class) is
  procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
  begin
    Py.Invalidate (Self.Python_Proxy);
    Free (Inst_Access (Self));
  end;
function Create(arg_1_P : access QtAda6.QtGui.QDragMoveEvent.Inst'Class) return Class is
  Class, Args : Handle;
begin
  Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QDragMoveEvent");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,arg_1_P.Python_Proxy);
  return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
end;
function Create(pos_P : access QtAda6.QtCore.QPoint.Inst'Class;actions_P : access QtAda6.QtCore.Qt.DropAction.Inst'Class;data_P : access QtAda6.QtCore.QMimeData.Inst'Class;buttons_P : access QtAda6.QtCore.Qt.MouseButton.Inst'Class;modifiers_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class;type_K_P : access QtAda6.QtCore.QEvent.Type_K.Inst'Class) return Class is
  Class, Args : Handle;
begin
  Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QDragMoveEvent");
  Args   := Tuple_New ( 6);
  Tuple_SetItem (Args, 0,pos_P.Python_Proxy);
  Tuple_SetItem (Args, 1,actions_P.Python_Proxy);
  Tuple_SetItem (Args, 2,data_P.Python_Proxy);
  Tuple_SetItem (Args, 3,buttons_P.Python_Proxy);
  Tuple_SetItem (Args, 4,modifiers_P.Python_Proxy);
  Tuple_SetItem (Args, 5,type_K_P.Python_Proxy);
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
procedure accept_K(self : access Inst) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "accept");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
end;
procedure accept_K(self : access Inst;r_P : access QtAda6.QtCore.QRect.Inst'Class) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "accept");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,r_P.Python_Proxy);
  Result := Object_CallObject (Method, Args, True);
end;
function answerRect(self : access Inst) return access QtAda6.QtCore.QRect.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtCore.QRect.Class := new QtAda6.QtCore.QRect.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "answerRect");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
function clone(self : access Inst) return access QtAda6.QtGui.QDragMoveEvent.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtGui.QDragMoveEvent.Class := new QtAda6.QtGui.QDragMoveEvent.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "clone");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
procedure ignore(self : access Inst) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "ignore");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
end;
procedure ignore(self : access Inst;r_P : access QtAda6.QtCore.QRect.Inst'Class) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "ignore");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,r_P.Python_Proxy);
  Result := Object_CallObject (Method, Args, True);
end;
end QtAda6.QtGui.QDragMoveEvent;
