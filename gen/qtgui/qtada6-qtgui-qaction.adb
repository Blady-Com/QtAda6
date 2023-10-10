-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qaction.adb
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
with QtAda6.QtGui.QIcon;
with QtAda6.QtGui.QPixmap;
with QtAda6.QtGui.QActionGroup;
with QtAda6.QtGui.QAction.ActionEvent;
with QtAda6.QtCore.QEvent;
with QtAda6.QtGui.QFont;
with QtAda6.QtGui.QAction.MenuRole;
with QtAda6.QtGui.QAction.Priority;
with QtAda6.QtCore.Qt.Key;
with QtAda6.QtGui.QKeySequence;
with QtAda6.QtCore.QKeyCombination;
with QtAda6.QtGui.QKeySequence.StandardKey;
with QtAda6.QtCore.Qt.ShortcutContext;
package body QtAda6.QtGui.QAction is
procedure Finalize (Self : in out Class) is
  procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
  begin
    Py.Invalidate (Self.Python_Proxy);
    Free (Inst_Access (Self));
  end;
function Create(icon_P : Union_QtAda6_QtGui_QIcon_QtAda6_QtGui_QPixmap;text_P : str;parent_P : Optional_QtAda6_QtCore_QObject) return Class is
  Class, Args : Handle;
begin
  Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAction");
  Args   := Tuple_New ( 3);
  Tuple_SetItem (Args, 0,No_Value);
  Tuple_SetItem (Args, 1,Unicode_FromString (text_P));
  Tuple_SetItem (Args, 2,No_Value);
  return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
end;
function Create(parent_P : Optional_QtAda6_QtCore_QObject) return Class is
  Class, Args : Handle;
begin
  Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAction");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,No_Value);
  return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
end;
function Create(text_P : str;parent_P : Optional_QtAda6_QtCore_QObject) return Class is
  Class, Args : Handle;
begin
  Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAction");
  Args   := Tuple_New ( 2);
  Tuple_SetItem (Args, 0,Unicode_FromString (text_P));
  Tuple_SetItem (Args, 1,No_Value);
  return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
end;
function actionGroup(self : access Inst) return access QtAda6.QtGui.QActionGroup.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtGui.QActionGroup.Class := new QtAda6.QtGui.QActionGroup.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "actionGroup");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
procedure activate(self : access Inst;event_P : access QtAda6.QtGui.QAction.ActionEvent.Inst'Class) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "activate");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,event_P.Python_Proxy);
  Result := Object_CallObject (Method, Args, True);
end;
function associatedObjects(self : access Inst) return List_QtAda6_QtCore_QObject is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "associatedObjects");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return null;
end;
function autoRepeat(self : access Inst) return bool is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "autoRepeat");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return To_Ada (Result);
end;
function data(self : access Inst) return Any is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "data");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return Any_conv_P2A_is_not_supported;
end;
function event_F(self : access Inst;arg_1_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "event");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,arg_1_P.Python_Proxy);
  Result := Object_CallObject (Method, Args, True);
  return To_Ada (Result);
end;
function font(self : access Inst) return access QtAda6.QtGui.QFont.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtGui.QFont.Class := new QtAda6.QtGui.QFont.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "font");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
procedure hover(self : access Inst) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "hover");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
end;
function icon(self : access Inst) return access QtAda6.QtGui.QIcon.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtGui.QIcon.Class := new QtAda6.QtGui.QIcon.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "icon");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
function iconText(self : access Inst) return str is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "iconText");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return As_String (Result);
end;
function isCheckable(self : access Inst) return bool is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "isCheckable");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return To_Ada (Result);
end;
function isChecked(self : access Inst) return bool is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "isChecked");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return To_Ada (Result);
end;
function isEnabled(self : access Inst) return bool is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "isEnabled");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return To_Ada (Result);
end;
function isIconVisibleInMenu(self : access Inst) return bool is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "isIconVisibleInMenu");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return To_Ada (Result);
end;
function isSeparator(self : access Inst) return bool is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "isSeparator");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return To_Ada (Result);
end;
function isShortcutVisibleInContextMenu(self : access Inst) return bool is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "isShortcutVisibleInContextMenu");
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
function menu_F(self : access Inst) return access QtAda6.QtCore.QObject.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtCore.QObject.Class := new QtAda6.QtCore.QObject.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "menu");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
function menuRole_F(self : access Inst) return access QtAda6.QtGui.QAction.MenuRole.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtGui.QAction.MenuRole.Class := new QtAda6.QtGui.QAction.MenuRole.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "menuRole");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
function priority_F(self : access Inst) return access QtAda6.QtGui.QAction.Priority.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtGui.QAction.Priority.Class := new QtAda6.QtGui.QAction.Priority.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "priority");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
procedure resetEnabled(self : access Inst) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "resetEnabled");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
end;
procedure setActionGroup(self : access Inst;group_P : access QtAda6.QtGui.QActionGroup.Inst'Class) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setActionGroup");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,group_P.Python_Proxy);
  Result := Object_CallObject (Method, Args, True);
end;
procedure setAutoRepeat(self : access Inst;arg_1_P : bool) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setAutoRepeat");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,To_Python (arg_1_P));
  Result := Object_CallObject (Method, Args, True);
end;
procedure setCheckable(self : access Inst;arg_1_P : bool) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setCheckable");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,To_Python (arg_1_P));
  Result := Object_CallObject (Method, Args, True);
end;
procedure setChecked(self : access Inst;arg_1_P : bool) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setChecked");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,To_Python (arg_1_P));
  Result := Object_CallObject (Method, Args, True);
end;
procedure setData(self : access Inst;var_P : Any) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setData");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,Any_conv_A2P_is_not_supported);
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
procedure setFont(self : access Inst;font_P : Union_QtAda6_QtGui_QFont_str_Sequence_str) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setFont");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,No_Value);
  Result := Object_CallObject (Method, Args, True);
end;
procedure setIcon(self : access Inst;icon_P : Union_QtAda6_QtGui_QIcon_QtAda6_QtGui_QPixmap) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setIcon");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,No_Value);
  Result := Object_CallObject (Method, Args, True);
end;
procedure setIconText(self : access Inst;text_P : str) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setIconText");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,Unicode_FromString (text_P));
  Result := Object_CallObject (Method, Args, True);
end;
procedure setIconVisibleInMenu(self : access Inst;visible_P : bool) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setIconVisibleInMenu");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,To_Python (visible_P));
  Result := Object_CallObject (Method, Args, True);
end;
procedure setMenu(self : access Inst;arg_1_P : access QtAda6.QtCore.QObject.Inst'Class) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setMenu");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,arg_1_P.Python_Proxy);
  Result := Object_CallObject (Method, Args, True);
end;
procedure setMenuRole(self : access Inst;menuRole_P : access QtAda6.QtGui.QAction.MenuRole.Inst'Class) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setMenuRole");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,menuRole_P.Python_Proxy);
  Result := Object_CallObject (Method, Args, True);
end;
procedure setPriority(self : access Inst;priority_P : access QtAda6.QtGui.QAction.Priority.Inst'Class) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setPriority");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,priority_P.Python_Proxy);
  Result := Object_CallObject (Method, Args, True);
end;
procedure setSeparator(self : access Inst;b_P : bool) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setSeparator");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,To_Python (b_P));
  Result := Object_CallObject (Method, Args, True);
end;
procedure setShortcut(self : access Inst;arg_1_P : access QtAda6.QtCore.Qt.Key.Inst'Class) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setShortcut");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,arg_1_P.Python_Proxy);
  Result := Object_CallObject (Method, Args, True);
end;
procedure setShortcut(self : access Inst;shortcut_P : Union_QtAda6_QtGui_QKeySequence_QtAda6_QtCore_QKeyCombination_QtAda6_QtGui_QKeySequence_StandardKey_str_int) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setShortcut");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,No_Value);
  Result := Object_CallObject (Method, Args, True);
end;
procedure setShortcutContext(self : access Inst;context_P : access QtAda6.QtCore.Qt.ShortcutContext.Inst'Class) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setShortcutContext");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,context_P.Python_Proxy);
  Result := Object_CallObject (Method, Args, True);
end;
procedure setShortcutVisibleInContextMenu(self : access Inst;show_P : bool) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setShortcutVisibleInContextMenu");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,To_Python (show_P));
  Result := Object_CallObject (Method, Args, True);
end;
procedure setShortcuts(self : access Inst;arg_1_P : access QtAda6.QtGui.QKeySequence.StandardKey.Inst'Class) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setShortcuts");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,arg_1_P.Python_Proxy);
  Result := Object_CallObject (Method, Args, True);
end;
procedure setShortcuts(self : access Inst;shortcuts_P : Sequence_QtAda6_QtGui_QKeySequence) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setShortcuts");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,No_Value);
  Result := Object_CallObject (Method, Args, True);
end;
procedure setStatusTip(self : access Inst;statusTip_P : str) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setStatusTip");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,Unicode_FromString (statusTip_P));
  Result := Object_CallObject (Method, Args, True);
end;
procedure setText(self : access Inst;text_P : str) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setText");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,Unicode_FromString (text_P));
  Result := Object_CallObject (Method, Args, True);
end;
procedure setToolTip(self : access Inst;tip_P : str) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setToolTip");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,Unicode_FromString (tip_P));
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
procedure setWhatsThis(self : access Inst;what_P : str) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "setWhatsThis");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,Unicode_FromString (what_P));
  Result := Object_CallObject (Method, Args, True);
end;
function shortcut(self : access Inst) return access QtAda6.QtGui.QKeySequence.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtGui.QKeySequence.Class := new QtAda6.QtGui.QKeySequence.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "shortcut");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
function shortcutContext(self : access Inst) return access QtAda6.QtCore.Qt.ShortcutContext.Inst'Class is
  Method, Args, Result : Handle;
  Ret : constant QtAda6.QtCore.Qt.ShortcutContext.Class := new QtAda6.QtCore.Qt.ShortcutContext.Inst;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "shortcutContext");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  Ret.Python_Proxy := Result;
  return Ret;
end;
function shortcuts(self : access Inst) return List_QtAda6_QtGui_QKeySequence is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "shortcuts");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return null;
end;
function showStatusText(self : access Inst;object_P : Optional_QtAda6_QtCore_QObject) return bool is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "showStatusText");
  Args   := Tuple_New ( 1);
  Tuple_SetItem (Args, 0,No_Value);
  Result := Object_CallObject (Method, Args, True);
  return To_Ada (Result);
end;
function statusTip(self : access Inst) return str is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "statusTip");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return As_String (Result);
end;
function text(self : access Inst) return str is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "text");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return As_String (Result);
end;
procedure toggle(self : access Inst) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "toggle");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
end;
function toolTip(self : access Inst) return str is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "toolTip");
  Args   := Tuple_New ( 0);
  Result := Object_CallObject (Method, Args, True);
  return As_String (Result);
end;
procedure trigger(self : access Inst) is
  Method, Args, Result : Handle;
begin
  Method := Object_GetAttrString (self.Python_Proxy, "trigger");
  Args   := Tuple_New ( 0);
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
end QtAda6.QtGui.QAction;
