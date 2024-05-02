-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qgraphicsscenemoveevent.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QPointF;
limited with QtAda6.QtCore.QPoint;
limited with QtAda6.QtGui.QPainterPath.Element;
with QtAda6.QtWidgets.QGraphicsSceneEvent;
package QtAda6.QtWidgets.QGraphicsSceneMoveEvent is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtWidgets.QGraphicsSceneEvent.Inst with null record;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function newPos (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class;
   function oldPos (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class;
   procedure setNewPos (self : access Inst; pos_P : access QtAda6.QtCore.QPointF.Inst'Class);
   procedure setNewPos (self : access Inst; pos_P : access QtAda6.QtCore.QPoint.Inst'Class);
   procedure setNewPos (self : access Inst; pos_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class);
   procedure setOldPos (self : access Inst; pos_P : access QtAda6.QtCore.QPointF.Inst'Class);
   procedure setOldPos (self : access Inst; pos_P : access QtAda6.QtCore.QPoint.Inst'Class);
   procedure setOldPos (self : access Inst; pos_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class);
end QtAda6.QtWidgets.QGraphicsSceneMoveEvent;
