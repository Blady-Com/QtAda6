-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qshortcutevent.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtGui.QKeySequence;
limited with QtAda6.QtCore.QKeyCombination;
limited with QtAda6.QtGui.QKeySequence.StandardKey;
limited with QtAda6.QtGui.QShortcut;
with QtAda6.QtCore.QEvent;
package QtAda6.QtGui.QShortcutEvent is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtCore.QEvent.Inst with null record;
   type UNION_QtAda6_QtGui_QKeySequenceQtAda6_QtCore_QKeyCombinationQtAda6_QtGui_QKeySequence_StandardKeystrint is
     new Any;
   procedure Finalize (Self : in out Class);
   function Create (arg_1_P : access QtAda6.QtGui.QShortcutEvent.Inst'Class) return Class;
   function Create
     (key_P : UNION_QtAda6_QtGui_QKeySequenceQtAda6_QtCore_QKeyCombinationQtAda6_QtGui_QKeySequence_StandardKeystrint;
      id_P  : int; ambiguous_P : bool := False) return Class;
   function Create
     (key_P : UNION_QtAda6_QtGui_QKeySequenceQtAda6_QtCore_QKeyCombinationQtAda6_QtGui_QKeySequence_StandardKeystrint;
      shortcut_P : access QtAda6.QtGui.QShortcut.Inst'Class := null; ambiguous_P : bool := False) return Class;
   function clone (self : access Inst) return access QtAda6.QtGui.QShortcutEvent.Inst'Class;
   function isAmbiguous (self : access Inst) return bool;
   function key (self : access Inst) return access QtAda6.QtGui.QKeySequence.Inst'Class;
   function shortcutId (self : access Inst) return int;
end QtAda6.QtGui.QShortcutEvent;
