-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qgestureevent.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.Qt.GestureType;
limited with QtAda6.QtCore.QPointF;
limited with QtAda6.QtCore.QPoint;
limited with QtAda6.QtGui.QPainterPath.Element;
limited with QtAda6.QtWidgets.QWidget;
with QtAda6.QtCore.QEvent;
with QtAda6.QtWidgets.QGesture;
package QtAda6.QtWidgets.QGestureEvent is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtCore.QEvent.Inst with null record;
   subtype SEQUENCE_QtAda6_QtWidgets_QGesture is QtAda6.QtWidgets.QGesture.Class_Array;
   subtype LIST_QtAda6_QtWidgets_QGesture is QtAda6.QtWidgets.QGesture.Class_Array;
   type UNION_QtAda6_QtCore_QPointFQtAda6_QtCore_QPointQtAda6_QtGui_QPainterPath_Element is new Any;
   procedure Finalize (Self : in out Class);
   function Create (gestures_P : SEQUENCE_QtAda6_QtWidgets_QGesture) return Class;
   procedure accept_K (self : access Inst);
   procedure accept_K (self : access Inst; arg_1_P : access QtAda6.QtCore.Qt.GestureType.Inst'Class);
   procedure accept_K (self : access Inst; arg_1_P : access QtAda6.QtWidgets.QGesture.Inst'Class);
   function activeGestures (self : access Inst) return LIST_QtAda6_QtWidgets_QGesture;
   function canceledGestures (self : access Inst) return LIST_QtAda6_QtWidgets_QGesture;
   function gesture
     (self : access Inst; type_K_P : access QtAda6.QtCore.Qt.GestureType.Inst'Class)
      return access QtAda6.QtWidgets.QGesture.Inst'Class;
   function gestures (self : access Inst) return LIST_QtAda6_QtWidgets_QGesture;
   procedure ignore (self : access Inst);
   procedure ignore (self : access Inst; arg_1_P : access QtAda6.QtCore.Qt.GestureType.Inst'Class);
   procedure ignore (self : access Inst; arg_1_P : access QtAda6.QtWidgets.QGesture.Inst'Class);
   function isAccepted (self : access Inst) return bool;
   function isAccepted (self : access Inst; arg_1_P : access QtAda6.QtCore.Qt.GestureType.Inst'Class) return bool;
   function isAccepted (self : access Inst; arg_1_P : access QtAda6.QtWidgets.QGesture.Inst'Class) return bool;
   function mapToGraphicsScene
     (self           : access Inst;
      gesturePoint_P : UNION_QtAda6_QtCore_QPointFQtAda6_QtCore_QPointQtAda6_QtGui_QPainterPath_Element)
      return access QtAda6.QtCore.QPointF.Inst'Class;
   procedure setAccepted (self : access Inst; accepted_P : bool);
   procedure setAccepted (self : access Inst; arg_1_P : access QtAda6.QtCore.Qt.GestureType.Inst'Class; arg_2_P : bool);
   procedure setAccepted (self : access Inst; arg_1_P : access QtAda6.QtWidgets.QGesture.Inst'Class; arg_2_P : bool);
   procedure setWidget (self : access Inst; widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class);
   function widget (self : access Inst) return access QtAda6.QtWidgets.QWidget.Inst'Class;
end QtAda6.QtWidgets.QGestureEvent;
