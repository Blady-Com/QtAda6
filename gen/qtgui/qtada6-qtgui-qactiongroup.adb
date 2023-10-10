-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qactiongroup.adb
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
with QtAda6.QtGui.QAction;
with QtAda6.QtGui.QIcon;
with QtAda6.QtGui.QPixmap;
with QtAda6.QtGui.QActionGroup.ExclusionPolicy;
package body QtAda6.QtGui.QActionGroup is
procedure Finalize (Self : in out Class) is
  procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
  begin
    Py.Invalidate (Self.Python_Proxy);
    Free (Inst_Access (Self));
  end;
function Create(parent_P : access QtAda6.QtCore.QObject.Inst'Class) return Class is
  Class, Args : Handle;
begin
  Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QActionGroup");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,parent_P.Python_Proxy);
  return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
end;
function actions(self : access Inst) return List_QtAda6_QtGui_QAction is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "actions");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return null;
end;
function addAction(self : access Inst;a_P : access QtAda6.QtGui.QAction.Inst'Class) return access QtAda6.QtGui.QAction.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtGui.QAction.Class := new QtAda6.QtGui.QAction.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "addAction");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,a_P.Python_Proxy);
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
function addAction(self : access Inst;icon_P : Union_QtAda6_QtGui_QIcon_QtAda6_QtGui_QPixmap;text_P : str) return access QtAda6.QtGui.QAction.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtGui.QAction.Class := new QtAda6.QtGui.QAction.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "addAction");
  Args   := Tuple_New ( 2);
  Tuple_SetItem (Args, 0,No_Value);
  Tuple_SetItem (Args, 1,Unicode_FromString (text_P));
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
function addAction(self : access Inst;text_P : str) return access QtAda6.QtGui.QAction.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtGui.QAction.Class := new QtAda6.QtGui.QAction.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "addAction");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,Unicode_FromString (text_P));
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
function checkedAction(self : access Inst) return access QtAda6.QtGui.QAction.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtGui.QAction.Class := new QtAda6.QtGui.QAction.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "checkedAction");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
function exclusionPolicy_F(self : access Inst) return access QtAda6.QtGui.QActionGroup.ExclusionPolicy.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtGui.QActionGroup.ExclusionPolicy.Class := new QtAda6.QtGui.QActionGroup.ExclusionPolicy.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "exclusionPolicy");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
function isEnabled(self : access Inst) return bool is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "isEnabled");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return To_Ada (Result);
end;
function isExclusive(self : access Inst) return bool is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "isExclusive");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return To_Ada (Result);
end;
function isVisible(self : access Inst) return bool is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "isVisible");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return To_Ada (Result);
end;
procedure removeAction(self : access Inst;a_P : access QtAda6.QtGui.QAction.Inst'Class) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "removeAction");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,a_P.Python_Proxy);
  Result := Object_CallObject (Method, Args, True);
end;
procedure setDisabled(self : access Inst;b_P : bool) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setDisabled");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,To_Python (b_P));
  Result := Object_CallObject (Method, Args, True);
end;
procedure setEnabled(self : access Inst;arg_1_P : bool) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setEnabled");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,To_Python (arg_1_P));
  Result := Object_CallObject (Method, Args, True);
end;
procedure setExclusionPolicy(self : access Inst;policy_P : access QtAda6.QtGui.QActionGroup.ExclusionPolicy.Inst'Class) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setExclusionPolicy");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,policy_P.Python_Proxy);
  Result := Object_CallObject (Method, Args, True);
end;
procedure setExclusive(self : access Inst;arg_1_P : bool) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setExclusive");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,To_Python (arg_1_P));
  Result := Object_CallObject (Method, Args, True);
end;
procedure setVisible(self : access Inst;arg_1_P : bool) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setVisible");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,To_Python (arg_1_P));
  Result := Object_CallObject (Method, Args, True);
end;
end QtAda6.QtGui.QActionGroup;
