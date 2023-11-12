-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qdropevent.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QPointF;
limited with QtAda6.QtCore.QPoint;
limited with QtAda6.QtGui.QPainterPath.Element;
limited with QtAda6.QtCore.Qt.DropAction;
limited with QtAda6.QtCore.QMimeData;
limited with QtAda6.QtCore.Qt.MouseButton;
limited with QtAda6.QtCore.Qt.KeyboardModifier;
limited with QtAda6.QtCore.QEvent.Type_K;
limited with QtAda6.QtCore.QObject;
with QtAda6.QtCore.QEvent;
package QtAda6.QtGui.QDropEvent is
   type Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new QtAda6.QtCore.QEvent.Inst with null record;
   procedure Finalize (Self : in out Class);
   function Create (arg_1_P : access QtAda6.QtGui.QDropEvent.Inst'Class) return Class;
   function Create
     (pos_P       : Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element;
      actions_P   : access QtAda6.QtCore.Qt.DropAction.Inst'Class; data_P : access QtAda6.QtCore.QMimeData.Inst'Class;
      buttons_P   : access QtAda6.QtCore.Qt.MouseButton.Inst'Class;
      modifiers_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class;
      type_K_P    : access QtAda6.QtCore.QEvent.Type_K.Inst'Class) return Class;
   function U_repr_U (self : access Inst) return Object;
   procedure acceptProposedAction (self : access Inst);
   function buttons (self : access Inst) return access QtAda6.QtCore.Qt.MouseButton.Inst'Class;
   function clone (self : access Inst) return access QtAda6.QtGui.QDropEvent.Inst'Class;
   function dropAction (self : access Inst) return access QtAda6.QtCore.Qt.DropAction.Inst'Class;
   function keyboardModifiers (self : access Inst) return access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class;
   function mimeData (self : access Inst) return access QtAda6.QtCore.QMimeData.Inst'Class;
   function modifiers (self : access Inst) return access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class;
   function mouseButtons (self : access Inst) return access QtAda6.QtCore.Qt.MouseButton.Inst'Class;
   function pos (self : access Inst) return access QtAda6.QtCore.QPoint.Inst'Class;
   function posF (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class;
   function position (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class;
   function possibleActions (self : access Inst) return access QtAda6.QtCore.Qt.DropAction.Inst'Class;
   function proposedAction (self : access Inst) return access QtAda6.QtCore.Qt.DropAction.Inst'Class;
   procedure setDropAction (self : access Inst; action_P : access QtAda6.QtCore.Qt.DropAction.Inst'Class);
   function source (self : access Inst) return access QtAda6.QtCore.QObject.Inst'Class;
end QtAda6.QtGui.QDropEvent;
