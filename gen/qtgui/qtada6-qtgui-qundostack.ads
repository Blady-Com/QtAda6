-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qundostack.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtGui.QUndoCommand;
limited with QtAda6.QtGui.QAction;
with QtAda6.QtCore.QObject;
with QtAda6.QtCore.Signal;
package QtAda6.QtGui.QUndoStack is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtCore.QObject.Inst with null record;
   subtype CLASSVAR_Signal is QtAda6.QtCore.Signal.Class;
   procedure Finalize (Self : in out Class);
   function canRedoChanged (self : access Inst) return CLASSVAR_Signal;-- canRedoChanged(bool)
   function canUndoChanged (self : access Inst) return CLASSVAR_Signal;-- canUndoChanged(bool)
   function cleanChanged (self : access Inst) return CLASSVAR_Signal;-- cleanChanged(bool)
   function indexChanged (self : access Inst) return CLASSVAR_Signal;-- indexChanged(int)
   function redoTextChanged (self : access Inst) return CLASSVAR_Signal;-- redoTextChanged(QString)
   function undoTextChanged (self : access Inst) return CLASSVAR_Signal;-- undoTextChanged(QString)
   function Create (parent_P : access QtAda6.QtCore.QObject.Inst'Class := null) return Class;
   procedure beginMacro (self : access Inst; text_P : str);
   function canRedo (self : access Inst) return bool;
   function canUndo (self : access Inst) return bool;
   function cleanIndex (self : access Inst) return int;
   procedure clear (self : access Inst);
   function command (self : access Inst; index_P : int) return access QtAda6.QtGui.QUndoCommand.Inst'Class;
   function count (self : access Inst) return int;
   function createRedoAction
     (self : access Inst; parent_P : access QtAda6.QtCore.QObject.Inst'Class; prefix_P : str := "")
      return access QtAda6.QtGui.QAction.Inst'Class;
   function createUndoAction
     (self : access Inst; parent_P : access QtAda6.QtCore.QObject.Inst'Class; prefix_P : str := "")
      return access QtAda6.QtGui.QAction.Inst'Class;
   procedure endMacro (self : access Inst);
   function index (self : access Inst) return int;
   function isActive (self : access Inst) return bool;
   function isClean (self : access Inst) return bool;
   procedure push (self : access Inst; cmd_P : access QtAda6.QtGui.QUndoCommand.Inst'Class);
   procedure redo (self : access Inst);
   function redoText (self : access Inst) return str;
   procedure resetClean (self : access Inst);
   procedure setActive (self : access Inst; active_P : bool := False);
   procedure setClean (self : access Inst);
   procedure setIndex (self : access Inst; idx_P : int);
   procedure setUndoLimit (self : access Inst; limit_P : int);
   function text (self : access Inst; idx_P : int) return str;
   procedure undo (self : access Inst);
   function undoLimit (self : access Inst) return int;
   function undoText (self : access Inst) return str;
end QtAda6.QtGui.QUndoStack;
