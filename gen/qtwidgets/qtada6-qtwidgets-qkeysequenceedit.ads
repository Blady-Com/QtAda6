-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qkeysequenceedit.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtGui.QKeySequence;
limited with QtAda6.QtCore.QKeyCombination;
limited with QtAda6.QtGui.QKeySequence.StandardKey;
limited with QtAda6.QtCore.QEvent;
limited with QtAda6.QtGui.QFocusEvent;
limited with QtAda6.QtGui.QKeyEvent;
limited with QtAda6.QtCore.QTimerEvent;
with QtAda6.QtWidgets.QWidget;
package QtAda6.QtWidgets.QKeySequenceEdit is
   type ClassVar_Signal is access Any;
   type Union_QtAda6_QtGui_QKeySequence_QtAda6_QtCore_QKeyCombination_QtAda6_QtGui_QKeySequence_StandardKey_str_int is
     access Any;
   type Optional_QtAda6_QtWidgets_QWidget is access Any;
   type List_QtAda6_QtCore_QKeyCombination is access Any;
   type Sequence_QtAda6_QtCore_QKeyCombination is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new QtAda6.QtWidgets.QWidget.Inst with null record;
   procedure Finalize (Self : in out Class);
   editingFinished    : ClassVar_Signal;-- editingFinished()
   keySequenceChanged : ClassVar_Signal;-- keySequenceChanged(QKeySequence)
   function Create
     (keySequence_P : Union_QtAda6_QtGui_QKeySequence_QtAda6_QtCore_QKeyCombination_QtAda6_QtGui_QKeySequence_StandardKey_str_int;
      parent_P      : Optional_QtAda6_QtWidgets_QWidget) return Class;
   function Create (parent_P : Optional_QtAda6_QtWidgets_QWidget) return Class;
   procedure clear (self : access Inst);
   function event (self : access Inst; arg_1_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   function finishingKeyCombinations (self : access Inst) return List_QtAda6_QtCore_QKeyCombination;
   procedure focusOutEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QFocusEvent.Inst'Class);
   function isClearButtonEnabled (self : access Inst) return bool;
   procedure keyPressEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QKeyEvent.Inst'Class);
   procedure keyReleaseEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QKeyEvent.Inst'Class);
   function keySequence (self : access Inst) return access QtAda6.QtGui.QKeySequence.Inst'Class;
   function maximumSequenceLength (self : access Inst) return int;
   procedure setClearButtonEnabled (self : access Inst; enable_P : bool);
   procedure setFinishingKeyCombinations
     (self : access Inst; finishingKeyCombinations_P : Sequence_QtAda6_QtCore_QKeyCombination);
   procedure setKeySequence
     (self          : access Inst;
      keySequence_P : Union_QtAda6_QtGui_QKeySequence_QtAda6_QtCore_QKeyCombination_QtAda6_QtGui_QKeySequence_StandardKey_str_int);
   procedure setMaximumSequenceLength (self : access Inst; count_P : int);
   procedure timerEvent (self : access Inst; arg_1_P : access QtAda6.QtCore.QTimerEvent.Inst'Class);
end QtAda6.QtWidgets.QKeySequenceEdit;
