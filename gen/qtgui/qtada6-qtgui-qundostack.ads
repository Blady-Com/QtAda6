-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qundostack.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtGui.QUndoCommand;
limited with QtAda6.QtGui.QAction;
with QtAda6.QtCore.QObject;
package QtAda6.QtGui.QUndoStack is
   type ClassVar_Signal is access Any;
   type Optional_QtAda6_QtCore_QObject is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new QtAda6.QtCore.QObject.Inst with null record;
   procedure Finalize (Self : in out Class);
   canRedoChanged  : ClassVar_Signal;-- canRedoChanged(bool)
   canUndoChanged  : ClassVar_Signal;-- canUndoChanged(bool)
   cleanChanged    : ClassVar_Signal;-- cleanChanged(bool)
   indexChanged    : ClassVar_Signal;-- indexChanged(int)
   redoTextChanged : ClassVar_Signal;-- redoTextChanged(QString)
   undoTextChanged : ClassVar_Signal;-- undoTextChanged(QString)
   function Create (parent_P : Optional_QtAda6_QtCore_QObject) return Class;
   procedure beginMacro (self : access Inst; text_P : str);
   function canRedo (self : access Inst) return bool;
   function canUndo (self : access Inst) return bool;
   function cleanIndex (self : access Inst) return int;
   procedure clear (self : access Inst);
   function command (self : access Inst; index_P : int) return access QtAda6.QtGui.QUndoCommand.Inst'Class;
   function count (self : access Inst) return int;
   function createRedoAction
     (self : access Inst; parent_P : access QtAda6.QtCore.QObject.Inst'Class; prefix_P : str)
      return access QtAda6.QtGui.QAction.Inst'Class;
   function createUndoAction
     (self : access Inst; parent_P : access QtAda6.QtCore.QObject.Inst'Class; prefix_P : str)
      return access QtAda6.QtGui.QAction.Inst'Class;
   procedure endMacro (self : access Inst);
   function index (self : access Inst) return int;
   function isActive (self : access Inst) return bool;
   function isClean (self : access Inst) return bool;
   procedure push (self : access Inst; cmd_P : access QtAda6.QtGui.QUndoCommand.Inst'Class);
   procedure redo (self : access Inst);
   function redoText (self : access Inst) return str;
   procedure resetClean (self : access Inst);
   procedure setActive (self : access Inst; active_P : bool);
   procedure setClean (self : access Inst);
   procedure setIndex (self : access Inst; idx_P : int);
   procedure setUndoLimit (self : access Inst; limit_P : int);
   function text (self : access Inst; idx_P : int) return str;
   procedure undo (self : access Inst);
   function undoLimit (self : access Inst) return int;
   function undoText (self : access Inst) return str;
end QtAda6.QtGui.QUndoStack;
