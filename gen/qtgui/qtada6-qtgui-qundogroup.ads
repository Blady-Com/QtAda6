-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qundogroup.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtGui.QUndoStack;
limited with QtAda6.QtGui.QAction;
with QtAda6.QtCore.QObject;
with QtAda6.QtCore.Signal;
package QtAda6.QtGui.QUndoGroup is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtCore.QObject.Inst with null record;
   subtype LIST_QtAda6_QtGui_QUndoStack is QtAda6.QtGui.QUndoStack.Class_Array;
   procedure Finalize (Self : in out Class);
   function activeStackChanged
     (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- activeStackChanged(QUndoStack*)
   function canRedoChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- canRedoChanged(bool)
   function canUndoChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- canUndoChanged(bool)
   function cleanChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- cleanChanged(bool)
   function indexChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- indexChanged(int)
   function redoTextChanged
     (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- redoTextChanged(QString)
   function undoTextChanged
     (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- undoTextChanged(QString)
   function Create (parent_P : access QtAda6.QtCore.QObject.Inst'Class := null) return Class;
   function activeStack (self : access Inst) return access QtAda6.QtGui.QUndoStack.Inst'Class;
   procedure addStack (self : access Inst; stack_P : access QtAda6.QtGui.QUndoStack.Inst'Class);
   function canRedo (self : access Inst) return bool;
   function canUndo (self : access Inst) return bool;
   function createRedoAction
     (self : access Inst; parent_P : access QtAda6.QtCore.QObject.Inst'Class; prefix_P : str := "")
      return access QtAda6.QtGui.QAction.Inst'Class;
   function createUndoAction
     (self : access Inst; parent_P : access QtAda6.QtCore.QObject.Inst'Class; prefix_P : str := "")
      return access QtAda6.QtGui.QAction.Inst'Class;
   function isClean (self : access Inst) return bool;
   procedure redo (self : access Inst);
   function redoText (self : access Inst) return str;
   procedure removeStack (self : access Inst; stack_P : access QtAda6.QtGui.QUndoStack.Inst'Class);
   procedure setActiveStack (self : access Inst; stack_P : access QtAda6.QtGui.QUndoStack.Inst'Class);
   function stacks (self : access Inst) return LIST_QtAda6_QtGui_QUndoStack;
   procedure undo (self : access Inst);
   function undoText (self : access Inst) return str;
end QtAda6.QtGui.QUndoGroup;
