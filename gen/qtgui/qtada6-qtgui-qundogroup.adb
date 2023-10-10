-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qundogroup.adb
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
with QtAda6.QtGui.QUndoStack;
with QtAda6.QtGui.QAction;
package body QtAda6.QtGui.QUndoGroup is
procedure Finalize (Self : in out Class) is
  procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
  begin
    Py.Invalidate (Self.Python_Proxy);
    Free (Inst_Access (Self));
  end;
function Create(parent_P : Optional_QtAda6_QtCore_QObject) return Class is
  Class, Args : Handle;
begin
  Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QUndoGroup");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,No_Value);
  return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
end;
function activeStack(self : access Inst) return access QtAda6.QtGui.QUndoStack.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtGui.QUndoStack.Class := new QtAda6.QtGui.QUndoStack.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "activeStack");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
procedure addStack(self : access Inst;stack_P : access QtAda6.QtGui.QUndoStack.Inst'Class) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "addStack");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,stack_P.Python_Proxy);
  Result := Object_CallObject (Method, Args, True);
end;
function canRedo(self : access Inst) return bool is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "canRedo");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return To_Ada (Result);
end;
function canUndo(self : access Inst) return bool is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "canUndo");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return To_Ada (Result);
end;
function createRedoAction(self : access Inst;parent_P : access QtAda6.QtCore.QObject.Inst'Class;prefix_P : str) return access QtAda6.QtGui.QAction.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtGui.QAction.Class := new QtAda6.QtGui.QAction.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "createRedoAction");
  Args   := Tuple_New ( 2);
  Tuple_SetItem (Args, 0,parent_P.Python_Proxy);
  Tuple_SetItem (Args, 1,Unicode_FromString (prefix_P));
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
function createUndoAction(self : access Inst;parent_P : access QtAda6.QtCore.QObject.Inst'Class;prefix_P : str) return access QtAda6.QtGui.QAction.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtGui.QAction.Class := new QtAda6.QtGui.QAction.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "createUndoAction");
  Args   := Tuple_New ( 2);
  Tuple_SetItem (Args, 0,parent_P.Python_Proxy);
  Tuple_SetItem (Args, 1,Unicode_FromString (prefix_P));
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
function isClean(self : access Inst) return bool is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "isClean");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return To_Ada (Result);
end;
procedure redo(self : access Inst) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "redo");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
end;
function redoText(self : access Inst) return str is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "redoText");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return As_String (Result);
end;
procedure removeStack(self : access Inst;stack_P : access QtAda6.QtGui.QUndoStack.Inst'Class) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "removeStack");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,stack_P.Python_Proxy);
  Result := Object_CallObject (Method, Args, True);
end;
procedure setActiveStack(self : access Inst;stack_P : access QtAda6.QtGui.QUndoStack.Inst'Class) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setActiveStack");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,stack_P.Python_Proxy);
  Result := Object_CallObject (Method, Args, True);
end;
function stacks(self : access Inst) return List_QtAda6_QtGui_QUndoStack is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "stacks");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return null;
end;
procedure undo(self : access Inst) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "undo");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
end;
function undoText(self : access Inst) return str is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "undoText");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return As_String (Result);
end;
end QtAda6.QtGui.QUndoGroup;
