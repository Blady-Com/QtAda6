-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qgraphicsscenemouseevent.ads
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
limited with QtAda6.QtCore.QPointF;
limited with QtAda6.QtCore.QPoint;
limited with QtAda6.QtCore.Qt.MouseEventFlag;
limited with QtAda6.QtCore.Qt.KeyboardModifier;
limited with QtAda6.QtGui.QPainterPath.Element;
limited with QtAda6.QtCore.Qt.MouseEventSource;
with QtAda6.QtWidgets.QGraphicsSceneEvent;
package QtAda6.QtWidgets.QGraphicsSceneMouseEvent is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtWidgets.QGraphicsSceneEvent.Inst with null record;
   type UNION_QtAda6_QtCore_QPointFQtAda6_QtCore_QPointQtAda6_QtGui_QPainterPath_Element is new Any;
   procedure Finalize (Self : in out Class);
   function Create (type_K_P : access QtAda6.QtCore.QEvent.Type_K.Inst'Class := null) return Class;
   function button (self : access Inst) return access QtAda6.QtCore.Qt.MouseButton.Inst'Class;
   function buttonDownPos
     (self : access Inst; button_P : access QtAda6.QtCore.Qt.MouseButton.Inst'Class)
      return access QtAda6.QtCore.QPointF.Inst'Class;
   function buttonDownScenePos
     (self : access Inst; button_P : access QtAda6.QtCore.Qt.MouseButton.Inst'Class)
      return access QtAda6.QtCore.QPointF.Inst'Class;
   function buttonDownScreenPos
     (self : access Inst; button_P : access QtAda6.QtCore.Qt.MouseButton.Inst'Class)
      return access QtAda6.QtCore.QPoint.Inst'Class;
   function buttons (self : access Inst) return access QtAda6.QtCore.Qt.MouseButton.Inst'Class;
   function flags (self : access Inst) return access QtAda6.QtCore.Qt.MouseEventFlag.Inst'Class;
   function lastPos (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class;
   function lastScenePos (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class;
   function lastScreenPos (self : access Inst) return access QtAda6.QtCore.QPoint.Inst'Class;
   function modifiers (self : access Inst) return access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class;
   function pos (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class;
   function scenePos (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class;
   function screenPos (self : access Inst) return access QtAda6.QtCore.QPoint.Inst'Class;
   procedure setButton (self : access Inst; button_P : access QtAda6.QtCore.Qt.MouseButton.Inst'Class);
   procedure setButtonDownPos
     (self  : access Inst; button_P : access QtAda6.QtCore.Qt.MouseButton.Inst'Class;
      pos_P : UNION_QtAda6_QtCore_QPointFQtAda6_QtCore_QPointQtAda6_QtGui_QPainterPath_Element);
   procedure setButtonDownScenePos
     (self  : access Inst; button_P : access QtAda6.QtCore.Qt.MouseButton.Inst'Class;
      pos_P : UNION_QtAda6_QtCore_QPointFQtAda6_QtCore_QPointQtAda6_QtGui_QPainterPath_Element);
   procedure setButtonDownScreenPos
     (self  : access Inst; button_P : access QtAda6.QtCore.Qt.MouseButton.Inst'Class;
      pos_P : access QtAda6.QtCore.QPoint.Inst'Class);
   procedure setButtons (self : access Inst; buttons_P : access QtAda6.QtCore.Qt.MouseButton.Inst'Class);
   procedure setFlags (self : access Inst; arg_1_P : access QtAda6.QtCore.Qt.MouseEventFlag.Inst'Class);
   procedure setLastPos
     (self : access Inst; pos_P : UNION_QtAda6_QtCore_QPointFQtAda6_QtCore_QPointQtAda6_QtGui_QPainterPath_Element);
   procedure setLastScenePos
     (self : access Inst; pos_P : UNION_QtAda6_QtCore_QPointFQtAda6_QtCore_QPointQtAda6_QtGui_QPainterPath_Element);
   procedure setLastScreenPos (self : access Inst; pos_P : access QtAda6.QtCore.QPoint.Inst'Class);
   procedure setModifiers (self : access Inst; modifiers_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class);
   procedure setPos
     (self : access Inst; pos_P : UNION_QtAda6_QtCore_QPointFQtAda6_QtCore_QPointQtAda6_QtGui_QPainterPath_Element);
   procedure setScenePos
     (self : access Inst; pos_P : UNION_QtAda6_QtCore_QPointFQtAda6_QtCore_QPointQtAda6_QtGui_QPainterPath_Element);
   procedure setScreenPos (self : access Inst; pos_P : access QtAda6.QtCore.QPoint.Inst'Class);
   procedure setSource (self : access Inst; source_P : access QtAda6.QtCore.Qt.MouseEventSource.Inst'Class);
   function source (self : access Inst) return access QtAda6.QtCore.Qt.MouseEventSource.Inst'Class;
end QtAda6.QtWidgets.QGraphicsSceneMouseEvent;
