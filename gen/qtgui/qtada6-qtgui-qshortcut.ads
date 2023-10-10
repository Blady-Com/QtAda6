-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qshortcut.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtGui.QKeySequence.StandardKey;
limited with QtAda6.QtCore.Qt.ShortcutContext;
limited with QtAda6.QtGui.QKeySequence;
limited with QtAda6.QtCore.QKeyCombination;
limited with QtAda6.QtCore.QEvent;
with QtAda6.QtCore.QObject;
package QtAda6.QtGui.QShortcut is
type ClassVar_Signal is access Any;
type Union_QtAda6_QtGui_QKeySequence_QtAda6_QtCore_QKeyCombination_QtAda6_QtGui_QKeySequence_StandardKey_str_int is access Any;
type Optional_bytes is access Any;
type List_QtAda6_QtGui_QKeySequence is access Any;
type Sequence_QtAda6_QtGui_QKeySequence is access Any;
type Inst;
type Inst_Access is access all Inst;
type Class is access all Inst'Class;
type Inst is new QtAda6.QtCore.QObject.Inst with null record;
procedure Finalize (Self : in out Class);
activated:ClassVar_Signal;-- activated()
activatedAmbiguously:ClassVar_Signal;-- activatedAmbiguously()
function Create(arg_1_P : access QtAda6.QtGui.QKeySequence.StandardKey.Inst'Class;arg_2_P : access QtAda6.QtCore.QObject.Inst'Class;arg_3_P : Callable;arg_4_P : access QtAda6.QtCore.Qt.ShortcutContext.Inst'Class) return Class;
function Create(arg_1_P : Union_QtAda6_QtGui_QKeySequence_QtAda6_QtCore_QKeyCombination_QtAda6_QtGui_QKeySequence_StandardKey_str_int;arg_2_P : access QtAda6.QtCore.QObject.Inst'Class;arg_3_P : Callable;arg_4_P : access QtAda6.QtCore.Qt.ShortcutContext.Inst'Class) return Class;
function Create(key_P : access QtAda6.QtGui.QKeySequence.StandardKey.Inst'Class;parent_P : access QtAda6.QtCore.QObject.Inst'Class;member_P : Optional_bytes;ambiguousMember_P : Optional_bytes;context_P : access QtAda6.QtCore.Qt.ShortcutContext.Inst'Class) return Class;
function Create(key_P : Union_QtAda6_QtGui_QKeySequence_QtAda6_QtCore_QKeyCombination_QtAda6_QtGui_QKeySequence_StandardKey_str_int;parent_P : access QtAda6.QtCore.QObject.Inst'Class;member_P : Optional_bytes;ambiguousMember_P : Optional_bytes;context_P : access QtAda6.QtCore.Qt.ShortcutContext.Inst'Class) return Class;
function Create(parent_P : access QtAda6.QtCore.QObject.Inst'Class) return Class;
function autoRepeat(self : access Inst) return bool;
function context(self : access Inst) return access QtAda6.QtCore.Qt.ShortcutContext.Inst'Class;
function event(self : access Inst;e_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
function id(self : access Inst) return int;
function isEnabled(self : access Inst) return bool;
function key(self : access Inst) return access QtAda6.QtGui.QKeySequence.Inst'Class;
function keys(self : access Inst) return List_QtAda6_QtGui_QKeySequence;
procedure setAutoRepeat(self : access Inst;on_P : bool);
procedure setContext(self : access Inst;context_P : access QtAda6.QtCore.Qt.ShortcutContext.Inst'Class);
procedure setEnabled(self : access Inst;enable_P : bool);
procedure setKey(self : access Inst;key_P : Union_QtAda6_QtGui_QKeySequence_QtAda6_QtCore_QKeyCombination_QtAda6_QtGui_QKeySequence_StandardKey_str_int);
procedure setKeys(self : access Inst;key_P : access QtAda6.QtGui.QKeySequence.StandardKey.Inst'Class);
procedure setKeys(self : access Inst;keys_P : Sequence_QtAda6_QtGui_QKeySequence);
procedure setWhatsThis(self : access Inst;text_P : str);
function whatsThis(self : access Inst) return str;
end QtAda6.QtGui.QShortcut;
