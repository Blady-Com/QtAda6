-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qkeysequenceedit.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtGui.QKeySequence;
limited with QtAda6.QtGui.QKeySequence.StandardKey;
limited with QtAda6.QtCore.QEvent;
limited with QtAda6.QtGui.QFocusEvent;
limited with QtAda6.QtGui.QKeyEvent;
limited with QtAda6.QtCore.QTimerEvent;
with QtAda6.QtWidgets.QWidget;
with QtAda6.QtCore.Signal;
with QtAda6.QtCore.QKeyCombination;
package QtAda6.QtWidgets.QKeySequenceEdit is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtWidgets.QWidget.Inst with null record;
   subtype CLASSVAR_Signal is QtAda6.QtCore.Signal.Class;
   type UNION_QtAda6_QtGui_QKeySequenceQtAda6_QtCore_QKeyCombinationQtAda6_QtGui_QKeySequence_StandardKeystrint is
     new Any;
   subtype LIST_QtAda6_QtCore_QKeyCombination is QtAda6.QtCore.QKeyCombination.Class_Array;
   subtype SEQUENCE_QtAda6_QtCore_QKeyCombination is QtAda6.QtCore.QKeyCombination.Class_Array;
   procedure Finalize (Self : in out Class);
   function editingFinished (self : access Inst) return CLASSVAR_Signal;-- editingFinished()
   function keySequenceChanged (self : access Inst) return CLASSVAR_Signal;-- keySequenceChanged(QKeySequence)
   function Create
     (keySequence_P : UNION_QtAda6_QtGui_QKeySequenceQtAda6_QtCore_QKeyCombinationQtAda6_QtGui_QKeySequence_StandardKeystrint;
      parent_P      : access QtAda6.QtWidgets.QWidget.Inst'Class := null) return Class;
   function Create (parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null) return Class;
   procedure clear (self : access Inst);
   function event (self : access Inst; arg_1_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   function finishingKeyCombinations (self : access Inst) return LIST_QtAda6_QtCore_QKeyCombination;
   procedure focusOutEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QFocusEvent.Inst'Class);
   function isClearButtonEnabled (self : access Inst) return bool;
   procedure keyPressEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QKeyEvent.Inst'Class);
   procedure keyReleaseEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QKeyEvent.Inst'Class);
   function keySequence (self : access Inst) return access QtAda6.QtGui.QKeySequence.Inst'Class;
   function maximumSequenceLength (self : access Inst) return int;
   procedure setClearButtonEnabled (self : access Inst; enable_P : bool);
   procedure setFinishingKeyCombinations
     (self : access Inst; finishingKeyCombinations_P : SEQUENCE_QtAda6_QtCore_QKeyCombination);
   procedure setKeySequence
     (self          : access Inst;
      keySequence_P : UNION_QtAda6_QtGui_QKeySequenceQtAda6_QtCore_QKeyCombinationQtAda6_QtGui_QKeySequence_StandardKeystrint);
   procedure setMaximumSequenceLength (self : access Inst; count_P : int);
   procedure timerEvent (self : access Inst; arg_1_P : access QtAda6.QtCore.QTimerEvent.Inst'Class);
end QtAda6.QtWidgets.QKeySequenceEdit;
