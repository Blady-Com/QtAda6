-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qundogroup.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtGui.QUndoStack;
limited with QtAda6.QtGui.QAction;
with QtAda6.QtCore.QObject;
package QtAda6.QtGui.QUndoGroup is
type ClassVar_Signal is access Any;
type Optional_QtAda6_QtCore_QObject is access Any;
type List_QtAda6_QtGui_QUndoStack is access Any;
type Inst;
type Inst_Access is access all Inst;
type Class is access all Inst'Class;
type Inst is new QtAda6.QtCore.QObject.Inst with null record;
procedure Finalize (Self : in out Class);
activeStackChanged:ClassVar_Signal;-- activeStackChanged(QUndoStack*)
canRedoChanged:ClassVar_Signal;-- canRedoChanged(bool)
canUndoChanged:ClassVar_Signal;-- canUndoChanged(bool)
cleanChanged:ClassVar_Signal;-- cleanChanged(bool)
indexChanged:ClassVar_Signal;-- indexChanged(int)
redoTextChanged:ClassVar_Signal;-- redoTextChanged(QString)
undoTextChanged:ClassVar_Signal;-- undoTextChanged(QString)
function Create(parent_P : Optional_QtAda6_QtCore_QObject) return Class;
function activeStack(self : access Inst) return access QtAda6.QtGui.QUndoStack.Inst'Class;
procedure addStack(self : access Inst;stack_P : access QtAda6.QtGui.QUndoStack.Inst'Class);
function canRedo(self : access Inst) return bool;
function canUndo(self : access Inst) return bool;
function createRedoAction(self : access Inst;parent_P : access QtAda6.QtCore.QObject.Inst'Class;prefix_P : str) return access QtAda6.QtGui.QAction.Inst'Class;
function createUndoAction(self : access Inst;parent_P : access QtAda6.QtCore.QObject.Inst'Class;prefix_P : str) return access QtAda6.QtGui.QAction.Inst'Class;
function isClean(self : access Inst) return bool;
procedure redo(self : access Inst);
function redoText(self : access Inst) return str;
procedure removeStack(self : access Inst;stack_P : access QtAda6.QtGui.QUndoStack.Inst'Class);
procedure setActiveStack(self : access Inst;stack_P : access QtAda6.QtGui.QUndoStack.Inst'Class);
function stacks(self : access Inst) return List_QtAda6_QtGui_QUndoStack;
procedure undo(self : access Inst);
function undoText(self : access Inst) return str;
end QtAda6.QtGui.QUndoGroup;
