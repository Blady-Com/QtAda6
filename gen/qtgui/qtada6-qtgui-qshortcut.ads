-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qshortcut.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtGui.QKeySequence.StandardKey;
limited with QtAda6.QtCore.Qt.ShortcutContext;
limited with QtAda6.QtCore.QKeyCombination;
limited with QtAda6.QtCore.QEvent;
with QtAda6.QtCore.QObject;
with QtAda6.QtCore.Signal;
with QtAda6.QtGui.QKeySequence;
package QtAda6.QtGui.QShortcut is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtCore.QObject.Inst with null record;
   subtype CLASSVAR_Signal is QtAda6.QtCore.Signal.Class;
   type CALLABLE is new Any;
   type UNION_QtAda6_QtGui_QKeySequenceQtAda6_QtCore_QKeyCombinationQtAda6_QtGui_QKeySequence_StandardKeystrint is
     new Any;
   subtype LIST_QtAda6_QtGui_QKeySequence is QtAda6.QtGui.QKeySequence.Class_Array;
   subtype SEQUENCE_QtAda6_QtGui_QKeySequence is QtAda6.QtGui.QKeySequence.Class_Array;
   procedure Finalize (Self : in out Class);
   function activated (self : access Inst) return CLASSVAR_Signal;-- activated()
   function activatedAmbiguously (self : access Inst) return CLASSVAR_Signal;-- activatedAmbiguously()
   function Create
     (arg_1_P : access QtAda6.QtGui.QKeySequence.StandardKey.Inst'Class;
      arg_2_P : access QtAda6.QtCore.QObject.Inst'Class; arg_3_P : CALLABLE;
      arg_4_P : access QtAda6.QtCore.Qt.ShortcutContext.Inst'Class := null) return Class;
   function Create
     (arg_1_P : UNION_QtAda6_QtGui_QKeySequenceQtAda6_QtCore_QKeyCombinationQtAda6_QtGui_QKeySequence_StandardKeystrint;
      arg_2_P : access QtAda6.QtCore.QObject.Inst'Class; arg_3_P : CALLABLE;
      arg_4_P : access QtAda6.QtCore.Qt.ShortcutContext.Inst'Class := null) return Class;
   function Create
     (key_P     : access QtAda6.QtGui.QKeySequence.StandardKey.Inst'Class;
      parent_P  : access QtAda6.QtCore.QObject.Inst'Class; member_P : bytes := ""; ambiguousMember_P : bytes := "";
      context_P : access QtAda6.QtCore.Qt.ShortcutContext.Inst'Class := null) return Class;
   function Create
     (key_P : UNION_QtAda6_QtGui_QKeySequenceQtAda6_QtCore_QKeyCombinationQtAda6_QtGui_QKeySequence_StandardKeystrint;
      parent_P  : access QtAda6.QtCore.QObject.Inst'Class; member_P : bytes := ""; ambiguousMember_P : bytes := "";
      context_P : access QtAda6.QtCore.Qt.ShortcutContext.Inst'Class := null) return Class;
   function Create (parent_P : access QtAda6.QtCore.QObject.Inst'Class) return Class;
   function autoRepeat (self : access Inst) return bool;
   function context (self : access Inst) return access QtAda6.QtCore.Qt.ShortcutContext.Inst'Class;
   function event (self : access Inst; e_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   function id (self : access Inst) return int;
   function isEnabled (self : access Inst) return bool;
   function key (self : access Inst) return access QtAda6.QtGui.QKeySequence.Inst'Class;
   function keys (self : access Inst) return LIST_QtAda6_QtGui_QKeySequence;
   procedure setAutoRepeat (self : access Inst; on_P : bool);
   procedure setContext (self : access Inst; context_P : access QtAda6.QtCore.Qt.ShortcutContext.Inst'Class);
   procedure setEnabled (self : access Inst; enable_P : bool);
   procedure setKey
     (self  : access Inst;
      key_P : UNION_QtAda6_QtGui_QKeySequenceQtAda6_QtCore_QKeyCombinationQtAda6_QtGui_QKeySequence_StandardKeystrint);
   procedure setKeys (self : access Inst; key_P : access QtAda6.QtGui.QKeySequence.StandardKey.Inst'Class);
   procedure setKeys (self : access Inst; keys_P : SEQUENCE_QtAda6_QtGui_QKeySequence);
   procedure setWhatsThis (self : access Inst; text_P : str);
   function whatsThis (self : access Inst) return str;
end QtAda6.QtGui.QShortcut;
