-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qundoview.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtGui.QUndoGroup;
limited with QtAda6.QtWidgets.QWidget;
limited with QtAda6.QtGui.QUndoStack;
limited with QtAda6.QtGui.QIcon;
limited with QtAda6.QtGui.QPixmap;
with QtAda6.QtWidgets.QListView;
package QtAda6.QtWidgets.QUndoView is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtWidgets.QListView.Inst with null record;
   type UNION_QtAda6_QtGui_QIconQtAda6_QtGui_QPixmap is new Any;
   procedure Finalize (Self : in out Class);
   function Create
     (group_P  : access QtAda6.QtGui.QUndoGroup.Inst'Class;
      parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null) return Class;
   function Create (parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null) return Class;
   function Create
     (stack_P  : access QtAda6.QtGui.QUndoStack.Inst'Class;
      parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null) return Class;
   function cleanIcon (self : access Inst) return access QtAda6.QtGui.QIcon.Inst'Class;
   function emptyLabel (self : access Inst) return str;
   function group (self : access Inst) return access QtAda6.QtGui.QUndoGroup.Inst'Class;
   procedure setCleanIcon (self : access Inst; icon_P : UNION_QtAda6_QtGui_QIconQtAda6_QtGui_QPixmap);
   procedure setEmptyLabel (self : access Inst; label_P : str);
   procedure setGroup (self : access Inst; group_P : access QtAda6.QtGui.QUndoGroup.Inst'Class);
   procedure setStack (self : access Inst; stack_P : access QtAda6.QtGui.QUndoStack.Inst'Class);
   function stack (self : access Inst) return access QtAda6.QtGui.QUndoStack.Inst'Class;
end QtAda6.QtWidgets.QUndoView;
