-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qgraphicsscenecontextmenuevent.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QEvent.Type_K;
limited with QtAda6.QtCore.Qt.KeyboardModifier;
limited with QtAda6.QtCore.QPointF;
limited with QtAda6.QtWidgets.QGraphicsSceneContextMenuEvent.Reason;
limited with QtAda6.QtCore.QPoint;
limited with QtAda6.QtGui.QPainterPath.Element;
with QtAda6.QtWidgets.QGraphicsSceneEvent;
package QtAda6.QtWidgets.QGraphicsSceneContextMenuEvent is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtWidgets.QGraphicsSceneEvent.Inst with null record;
   procedure Finalize (Self : in out Class);
   function Create (type_K_P : access QtAda6.QtCore.QEvent.Type_K.Inst'Class := null) return Class;
   function modifiers (self : access Inst) return access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class;
   function pos (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class;
   function reason_F
     (self : access Inst) return access QtAda6.QtWidgets.QGraphicsSceneContextMenuEvent.Reason.Inst'Class;
   function scenePos (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class;
   function screenPos (self : access Inst) return access QtAda6.QtCore.QPoint.Inst'Class;
   procedure setModifiers (self : access Inst; modifiers_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class);
   procedure setPos (self : access Inst; pos_P : access QtAda6.QtCore.QPointF.Inst'Class);
   procedure setPos (self : access Inst; pos_P : access QtAda6.QtCore.QPoint.Inst'Class);
   procedure setPos (self : access Inst; pos_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class);
   procedure setReason
     (self : access Inst; reason_P : access QtAda6.QtWidgets.QGraphicsSceneContextMenuEvent.Reason.Inst'Class);
   procedure setScenePos (self : access Inst; pos_P : access QtAda6.QtCore.QPointF.Inst'Class);
   procedure setScenePos (self : access Inst; pos_P : access QtAda6.QtCore.QPoint.Inst'Class);
   procedure setScenePos (self : access Inst; pos_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class);
   procedure setScreenPos (self : access Inst; pos_P : access QtAda6.QtCore.QPoint.Inst'Class);
end QtAda6.QtWidgets.QGraphicsSceneContextMenuEvent;
