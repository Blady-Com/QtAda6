-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qundocommand.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtGui.QUndoCommand is
type Optional_QtAda6_QtGui_QUndoCommand is access Any;
type Inst;
type Inst_Access is access all Inst;
type Class is access all Inst'Class;
type Inst is new Shiboken.Object with null record;
procedure Finalize (Self : in out Class);
function Create(parent_P : Optional_QtAda6_QtGui_QUndoCommand) return Class;
function Create(text_P : str;parent_P : Optional_QtAda6_QtGui_QUndoCommand) return Class;
function actionText(self : access Inst) return str;
function child(self : access Inst;index_P : int) return access QtAda6.QtGui.QUndoCommand.Inst'Class;
function childCount(self : access Inst) return int;
function id(self : access Inst) return int;
function isObsolete(self : access Inst) return bool;
function mergeWith(self : access Inst;other_P : access QtAda6.QtGui.QUndoCommand.Inst'Class) return bool;
procedure redo(self : access Inst);
procedure setObsolete(self : access Inst;obsolete_P : bool);
procedure setText(self : access Inst;text_P : str);
function text(self : access Inst) return str;
procedure undo(self : access Inst);
end QtAda6.QtGui.QUndoCommand;
