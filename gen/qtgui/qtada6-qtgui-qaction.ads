-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qaction.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtGui.QIcon;
limited with QtAda6.QtGui.QPixmap;
limited with QtAda6.QtGui.QActionGroup;
limited with QtAda6.QtGui.QAction.ActionEvent;
limited with QtAda6.QtCore.QEvent;
limited with QtAda6.QtGui.QFont;
limited with QtAda6.QtGui.QAction.MenuRole;
limited with QtAda6.QtGui.QAction.Priority;
limited with QtAda6.QtCore.Qt.Key;
limited with QtAda6.QtGui.QKeySequence;
limited with QtAda6.QtCore.QKeyCombination;
limited with QtAda6.QtGui.QKeySequence.StandardKey;
limited with QtAda6.QtCore.Qt.ShortcutContext;
with QtAda6.QtCore.QObject;
package QtAda6.QtGui.QAction is
type ClassVar_Signal is access Any;
type Union_QtAda6_QtGui_QIcon_QtAda6_QtGui_QPixmap is access Any;
type Optional_QtAda6_QtCore_QObject is access Any;
type List_QtAda6_QtCore_QObject is access Any;
type Union_QtAda6_QtGui_QFont_str_Sequence_str is access Any;
type Union_QtAda6_QtGui_QKeySequence_QtAda6_QtCore_QKeyCombination_QtAda6_QtGui_QKeySequence_StandardKey_str_int is access Any;
type Sequence_QtAda6_QtGui_QKeySequence is access Any;
type List_QtAda6_QtGui_QKeySequence is access Any;
type Inst;
type Inst_Access is access all Inst;
type Class is access all Inst'Class;
type Inst is new QtAda6.QtCore.QObject.Inst with null record;
procedure Finalize (Self : in out Class);
changed:ClassVar_Signal;-- changed()
checkableChanged:ClassVar_Signal;-- checkableChanged(bool)
enabledChanged:ClassVar_Signal;-- enabledChanged(bool)
hovered:ClassVar_Signal;-- hovered()
toggled:ClassVar_Signal;-- toggled(bool)
triggered:ClassVar_Signal;-- triggered()
visibleChanged:ClassVar_Signal;-- visibleChanged()
function Create(icon_P : Union_QtAda6_QtGui_QIcon_QtAda6_QtGui_QPixmap;text_P : str;parent_P : Optional_QtAda6_QtCore_QObject) return Class;
function Create(parent_P : Optional_QtAda6_QtCore_QObject) return Class;
function Create(text_P : str;parent_P : Optional_QtAda6_QtCore_QObject) return Class;
function actionGroup(self : access Inst) return access QtAda6.QtGui.QActionGroup.Inst'Class;
procedure activate(self : access Inst;event_P : access QtAda6.QtGui.QAction.ActionEvent.Inst'Class);
function associatedObjects(self : access Inst) return List_QtAda6_QtCore_QObject;
function autoRepeat(self : access Inst) return bool;
function data(self : access Inst) return Any;
function event_F(self : access Inst;arg_1_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
function font(self : access Inst) return access QtAda6.QtGui.QFont.Inst'Class;
procedure hover(self : access Inst);
function icon(self : access Inst) return access QtAda6.QtGui.QIcon.Inst'Class;
function iconText(self : access Inst) return str;
function isCheckable(self : access Inst) return bool;
function isChecked(self : access Inst) return bool;
function isEnabled(self : access Inst) return bool;
function isIconVisibleInMenu(self : access Inst) return bool;
function isSeparator(self : access Inst) return bool;
function isShortcutVisibleInContextMenu(self : access Inst) return bool;
function isVisible(self : access Inst) return bool;
function menu_F(self : access Inst) return access QtAda6.QtCore.QObject.Inst'Class;
function menuRole_F(self : access Inst) return access QtAda6.QtGui.QAction.MenuRole.Inst'Class;
function priority_F(self : access Inst) return access QtAda6.QtGui.QAction.Priority.Inst'Class;
procedure resetEnabled(self : access Inst);
procedure setActionGroup(self : access Inst;group_P : access QtAda6.QtGui.QActionGroup.Inst'Class);
procedure setAutoRepeat(self : access Inst;arg_1_P : bool);
procedure setCheckable(self : access Inst;arg_1_P : bool);
procedure setChecked(self : access Inst;arg_1_P : bool);
procedure setData(self : access Inst;var_P : Any);
procedure setDisabled(self : access Inst;b_P : bool);
procedure setEnabled(self : access Inst;arg_1_P : bool);
procedure setFont(self : access Inst;font_P : Union_QtAda6_QtGui_QFont_str_Sequence_str);
procedure setIcon(self : access Inst;icon_P : Union_QtAda6_QtGui_QIcon_QtAda6_QtGui_QPixmap);
procedure setIconText(self : access Inst;text_P : str);
procedure setIconVisibleInMenu(self : access Inst;visible_P : bool);
procedure setMenu(self : access Inst;arg_1_P : access QtAda6.QtCore.QObject.Inst'Class);
procedure setMenuRole(self : access Inst;menuRole_P : access QtAda6.QtGui.QAction.MenuRole.Inst'Class);
procedure setPriority(self : access Inst;priority_P : access QtAda6.QtGui.QAction.Priority.Inst'Class);
procedure setSeparator(self : access Inst;b_P : bool);
procedure setShortcut(self : access Inst;arg_1_P : access QtAda6.QtCore.Qt.Key.Inst'Class);
procedure setShortcut(self : access Inst;shortcut_P : Union_QtAda6_QtGui_QKeySequence_QtAda6_QtCore_QKeyCombination_QtAda6_QtGui_QKeySequence_StandardKey_str_int);
procedure setShortcutContext(self : access Inst;context_P : access QtAda6.QtCore.Qt.ShortcutContext.Inst'Class);
procedure setShortcutVisibleInContextMenu(self : access Inst;show_P : bool);
procedure setShortcuts(self : access Inst;arg_1_P : access QtAda6.QtGui.QKeySequence.StandardKey.Inst'Class);
procedure setShortcuts(self : access Inst;shortcuts_P : Sequence_QtAda6_QtGui_QKeySequence);
procedure setStatusTip(self : access Inst;statusTip_P : str);
procedure setText(self : access Inst;text_P : str);
procedure setToolTip(self : access Inst;tip_P : str);
procedure setVisible(self : access Inst;arg_1_P : bool);
procedure setWhatsThis(self : access Inst;what_P : str);
function shortcut(self : access Inst) return access QtAda6.QtGui.QKeySequence.Inst'Class;
function shortcutContext(self : access Inst) return access QtAda6.QtCore.Qt.ShortcutContext.Inst'Class;
function shortcuts(self : access Inst) return List_QtAda6_QtGui_QKeySequence;
function showStatusText(self : access Inst;object_P : Optional_QtAda6_QtCore_QObject) return bool;
function statusTip(self : access Inst) return str;
function text(self : access Inst) return str;
procedure toggle(self : access Inst);
function toolTip(self : access Inst) return str;
procedure trigger(self : access Inst);
function whatsThis(self : access Inst) return str;
end QtAda6.QtGui.QAction;