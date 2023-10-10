-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qundostack.adb
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
with QtAda6.QtGui.QUndoCommand;
with QtAda6.QtGui.QAction;
package body QtAda6.QtGui.QUndoStack is
procedure Finalize (Self : in out Class) is
  procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
  begin
    Py.Invalidate (Self.Python_Proxy);
    Free (Inst_Access (Self));
  end;
function Create(parent_P : Optional_QtAda6_QtCore_QObject) return Class is
  Class, Args : Handle;
begin
  Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QUndoStack");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,No_Value);
  return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
end;
procedure beginMacro(self : access Inst;text_P : str) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "beginMacro");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,Unicode_FromString (text_P));
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
function cleanIndex(self : access Inst) return int is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "cleanIndex");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return Long_AsLong (Result);
end;
procedure clear(self : access Inst) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "clear");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
end;
function command(self : access Inst;index_P : int) return access QtAda6.QtGui.QUndoCommand.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtGui.QUndoCommand.Class := new QtAda6.QtGui.QUndoCommand.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "command");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,Long_FromLong (index_P));
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
function count(self : access Inst) return int is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "count");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return Long_AsLong (Result);
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
procedure endMacro(self : access Inst) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "endMacro");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
end;
function index(self : access Inst) return int is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "index");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return Long_AsLong (Result);
end;
function isActive(self : access Inst) return bool is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "isActive");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return To_Ada (Result);
end;
function isClean(self : access Inst) return bool is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "isClean");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return To_Ada (Result);
end;
procedure push(self : access Inst;cmd_P : access QtAda6.QtGui.QUndoCommand.Inst'Class) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "push");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,cmd_P.Python_Proxy);
  Result := Object_CallObject (Method, Args, True);
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
procedure resetClean(self : access Inst) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "resetClean");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
end;
procedure setActive(self : access Inst;active_P : bool) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setActive");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,To_Python (active_P));
  Result := Object_CallObject (Method, Args, True);
end;
procedure setClean(self : access Inst) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setClean");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
end;
procedure setIndex(self : access Inst;idx_P : int) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setIndex");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,Long_FromLong (idx_P));
  Result := Object_CallObject (Method, Args, True);
end;
procedure setUndoLimit(self : access Inst;limit_P : int) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setUndoLimit");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,Long_FromLong (limit_P));
  Result := Object_CallObject (Method, Args, True);
end;
function text(self : access Inst;idx_P : int) return str is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "text");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,Long_FromLong (idx_P));
  Result := Object_CallObject (Method, Args, True);
  return As_String (Result);
end;
procedure undo(self : access Inst) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "undo");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
end;
function undoLimit(self : access Inst) return int is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "undoLimit");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return Long_AsLong (Result);
end;
function undoText(self : access Inst) return str is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "undoText");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return As_String (Result);
end;
end QtAda6.QtGui.QUndoStack;
