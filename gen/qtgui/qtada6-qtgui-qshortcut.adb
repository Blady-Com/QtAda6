-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qshortcut.adb
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
with QtAda6.QtGui.QKeySequence.StandardKey;
with QtAda6.QtCore.Qt.ShortcutContext;
with QtAda6.QtGui.QKeySequence;
with QtAda6.QtCore.QKeyCombination;
with QtAda6.QtCore.QEvent;
package body QtAda6.QtGui.QShortcut is
procedure Finalize (Self : in out Class) is
  procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
  begin
    Py.Invalidate (Self.Python_Proxy);
    Free (Inst_Access (Self));
  end;
function Create(arg_1_P : access QtAda6.QtGui.QKeySequence.StandardKey.Inst'Class;arg_2_P : access QtAda6.QtCore.QObject.Inst'Class;arg_3_P : Callable;arg_4_P : access QtAda6.QtCore.Qt.ShortcutContext.Inst'Class) return Class is
  Class, Args : Handle;
begin
  Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QShortcut");
  Args   := Tuple_New ( 4);
  Tuple_SetItem (Args, 0,arg_1_P.Python_Proxy);
  Tuple_SetItem (Args, 1,arg_2_P.Python_Proxy);
  Tuple_SetItem (Args, 2,Callable_conv_A2P_is_not_supported);
  Tuple_SetItem (Args, 3,arg_4_P.Python_Proxy);
  return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
end;
function Create(arg_1_P : Union_QtAda6_QtGui_QKeySequence_QtAda6_QtCore_QKeyCombination_QtAda6_QtGui_QKeySequence_StandardKey_str_int;arg_2_P : access QtAda6.QtCore.QObject.Inst'Class;arg_3_P : Callable;arg_4_P : access QtAda6.QtCore.Qt.ShortcutContext.Inst'Class) return Class is
  Class, Args : Handle;
begin
  Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QShortcut");
  Args   := Tuple_New ( 4);
  Tuple_SetItem (Args, 0,No_Value);
  Tuple_SetItem (Args, 1,arg_2_P.Python_Proxy);
  Tuple_SetItem (Args, 2,Callable_conv_A2P_is_not_supported);
  Tuple_SetItem (Args, 3,arg_4_P.Python_Proxy);
  return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
end;
function Create(key_P : access QtAda6.QtGui.QKeySequence.StandardKey.Inst'Class;parent_P : access QtAda6.QtCore.QObject.Inst'Class;member_P : Optional_bytes;ambiguousMember_P : Optional_bytes;context_P : access QtAda6.QtCore.Qt.ShortcutContext.Inst'Class) return Class is
  Class, Args : Handle;
begin
  Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QShortcut");
  Args   := Tuple_New ( 5);
  Tuple_SetItem (Args, 0,key_P.Python_Proxy);
  Tuple_SetItem (Args, 1,parent_P.Python_Proxy);
  Tuple_SetItem (Args, 2,No_Value);
  Tuple_SetItem (Args, 3,No_Value);
  Tuple_SetItem (Args, 4,context_P.Python_Proxy);
  return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
end;
function Create(key_P : Union_QtAda6_QtGui_QKeySequence_QtAda6_QtCore_QKeyCombination_QtAda6_QtGui_QKeySequence_StandardKey_str_int;parent_P : access QtAda6.QtCore.QObject.Inst'Class;member_P : Optional_bytes;ambiguousMember_P : Optional_bytes;context_P : access QtAda6.QtCore.Qt.ShortcutContext.Inst'Class) return Class is
  Class, Args : Handle;
begin
  Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QShortcut");
  Args   := Tuple_New ( 5);
  Tuple_SetItem (Args, 0,No_Value);
  Tuple_SetItem (Args, 1,parent_P.Python_Proxy);
  Tuple_SetItem (Args, 2,No_Value);
  Tuple_SetItem (Args, 3,No_Value);
  Tuple_SetItem (Args, 4,context_P.Python_Proxy);
  return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
end;
function Create(parent_P : access QtAda6.QtCore.QObject.Inst'Class) return Class is
  Class, Args : Handle;
begin
  Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QShortcut");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,parent_P.Python_Proxy);
  return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
end;
function autoRepeat(self : access Inst) return bool is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "autoRepeat");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return To_Ada (Result);
end;
function context(self : access Inst) return access QtAda6.QtCore.Qt.ShortcutContext.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtCore.Qt.ShortcutContext.Class := new QtAda6.QtCore.Qt.ShortcutContext.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "context");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
function event(self : access Inst;e_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "event");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,e_P.Python_Proxy);
  Result := Object_CallObject (Method, Args, True);
  return To_Ada (Result);
end;
function id(self : access Inst) return int is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "id");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return Long_AsLong (Result);
end;
function isEnabled(self : access Inst) return bool is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "isEnabled");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return To_Ada (Result);
end;
function key(self : access Inst) return access QtAda6.QtGui.QKeySequence.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtGui.QKeySequence.Class := new QtAda6.QtGui.QKeySequence.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "key");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
function keys(self : access Inst) return List_QtAda6_QtGui_QKeySequence is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "keys");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return null;
end;
procedure setAutoRepeat(self : access Inst;on_P : bool) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setAutoRepeat");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,To_Python (on_P));
  Result := Object_CallObject (Method, Args, True);
end;
procedure setContext(self : access Inst;context_P : access QtAda6.QtCore.Qt.ShortcutContext.Inst'Class) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setContext");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,context_P.Python_Proxy);
  Result := Object_CallObject (Method, Args, True);
end;
procedure setEnabled(self : access Inst;enable_P : bool) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setEnabled");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,To_Python (enable_P));
  Result := Object_CallObject (Method, Args, True);
end;
procedure setKey(self : access Inst;key_P : Union_QtAda6_QtGui_QKeySequence_QtAda6_QtCore_QKeyCombination_QtAda6_QtGui_QKeySequence_StandardKey_str_int) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setKey");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,No_Value);
  Result := Object_CallObject (Method, Args, True);
end;
procedure setKeys(self : access Inst;key_P : access QtAda6.QtGui.QKeySequence.StandardKey.Inst'Class) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setKeys");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,key_P.Python_Proxy);
  Result := Object_CallObject (Method, Args, True);
end;
procedure setKeys(self : access Inst;keys_P : Sequence_QtAda6_QtGui_QKeySequence) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setKeys");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,No_Value);
  Result := Object_CallObject (Method, Args, True);
end;
procedure setWhatsThis(self : access Inst;text_P : str) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setWhatsThis");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,Unicode_FromString (text_P));
  Result := Object_CallObject (Method, Args, True);
end;
function whatsThis(self : access Inst) return str is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "whatsThis");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return As_String (Result);
end;
end QtAda6.QtGui.QShortcut;
