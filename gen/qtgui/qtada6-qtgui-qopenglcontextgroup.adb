-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qopenglcontextgroup.adb
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
with QtAda6.QtGui.QOpenGLContext;
package body QtAda6.QtGui.QOpenGLContextGroup is
procedure Finalize (Self : in out Class) is
  procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
  begin
    Py.Invalidate (Self.Python_Proxy);
    Free (Inst_Access (Self));
  end;
function currentContextGroup return access QtAda6.QtGui.QOpenGLContextGroup.Inst'Class is
  Class,  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtGui.QOpenGLContextGroup.Class := new QtAda6.QtGui.QOpenGLContextGroup.Inst;
begin
  Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QOpenGLContextGroup");
  Method := Object_GetAttrString (Class, "currentContextGroup");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
function shares(self : access Inst) return List_QtAda6_QtGui_QOpenGLContext is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "shares");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return null;
end;
end QtAda6.QtGui.QOpenGLContextGroup;
