-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qgraphicsscenedragdropevent.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QEvent.Type_K;
limited with QtAda6.QtCore.Qt.MouseButton;
limited with QtAda6.QtCore.Qt.DropAction;
limited with QtAda6.QtCore.QMimeData;
limited with QtAda6.QtCore.Qt.KeyboardModifier;
limited with QtAda6.QtCore.QPointF;
limited with QtAda6.QtCore.QPoint;
limited with QtAda6.QtWidgets.QWidget;
with QtAda6.QtWidgets.QGraphicsSceneEvent;
package QtAda6.QtWidgets.QGraphicsSceneDragDropEvent is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtWidgets.QGraphicsSceneEvent.Inst with null record;
   type UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element is new Any;
   procedure Finalize (Self : in out Class);
   function Create (type_K_P : access QtAda6.QtCore.QEvent.Type_K.Inst'Class := null) return Class;
   procedure acceptProposedAction (self : access Inst);
   function buttons (self : access Inst) return access QtAda6.QtCore.Qt.MouseButton.Inst'Class;
   function dropAction (self : access Inst) return access QtAda6.QtCore.Qt.DropAction.Inst'Class;
   function mimeData (self : access Inst) return access QtAda6.QtCore.QMimeData.Inst'Class;
   function modifiers (self : access Inst) return access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class;
   function pos (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class;
   function possibleActions (self : access Inst) return access QtAda6.QtCore.Qt.DropAction.Inst'Class;
   function proposedAction (self : access Inst) return access QtAda6.QtCore.Qt.DropAction.Inst'Class;
   function scenePos (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class;
   function screenPos (self : access Inst) return access QtAda6.QtCore.QPoint.Inst'Class;
   procedure setButtons (self : access Inst; buttons_P : access QtAda6.QtCore.Qt.MouseButton.Inst'Class);
   procedure setDropAction (self : access Inst; action_P : access QtAda6.QtCore.Qt.DropAction.Inst'Class);
   procedure setModifiers (self : access Inst; modifiers_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class);
   procedure setPos
     (self : access Inst; pos_P : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element);
   procedure setPossibleActions (self : access Inst; actions_P : access QtAda6.QtCore.Qt.DropAction.Inst'Class);
   procedure setProposedAction (self : access Inst; action_P : access QtAda6.QtCore.Qt.DropAction.Inst'Class);
   procedure setScenePos
     (self : access Inst; pos_P : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element);
   procedure setScreenPos (self : access Inst; pos_P : access QtAda6.QtCore.QPoint.Inst'Class);
   function source (self : access Inst) return access QtAda6.QtWidgets.QWidget.Inst'Class;
end QtAda6.QtWidgets.QGraphicsSceneDragDropEvent;
