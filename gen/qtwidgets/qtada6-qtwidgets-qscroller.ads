-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qscroller.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QRectF;
limited with QtAda6.QtCore.QRect;
limited with QtAda6.QtCore.QPointF;
limited with QtAda6.QtWidgets.QScroller.ScrollerGestureType;
limited with QtAda6.QtCore.Qt.GestureType;
limited with QtAda6.QtWidgets.QScroller.Input;
limited with QtAda6.QtCore.QPoint;
limited with QtAda6.QtGui.QPainterPath.Element;
limited with QtAda6.QtWidgets.QScrollerProperties;
limited with QtAda6.QtWidgets.QScroller.State;
with QtAda6.QtCore.QObject;
package QtAda6.QtWidgets.QScroller is
   type ClassVar_Signal is access Any;
   type List_QtAda6_QtWidgets_QScroller is access Any;
   type Union_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect is access Any;
   type Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element is access Any;
   type Sequence_float is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new QtAda6.QtCore.QObject.Inst with null record;
   procedure Finalize (Self : in out Class);
   scrollerPropertiesChanged : ClassVar_Signal;-- scrollerPropertiesChanged(QScrollerProperties)
   stateChanged              : ClassVar_Signal;-- stateChanged(QScroller::State)
   function activeScrollers return List_QtAda6_QtWidgets_QScroller;
   procedure ensureVisible
     (self      : access Inst; rect_P : Union_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect; xmargin_P : float;
      ymargin_P : float);
   procedure ensureVisible
     (self : access Inst; rect_P : Union_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect; xmargin_P : float; ymargin_P : float;
      scrollTime_P : int);
   function finalPosition (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class;
   function grabGesture
     (target_P      : access QtAda6.QtCore.QObject.Inst'Class;
      gestureType_P : access QtAda6.QtWidgets.QScroller.ScrollerGestureType.Inst'Class)
      return access QtAda6.QtCore.Qt.GestureType.Inst'Class;
   function grabbedGesture
     (target_P : access QtAda6.QtCore.QObject.Inst'Class) return access QtAda6.QtCore.Qt.GestureType.Inst'Class;
   function handleInput
     (self        : access Inst; input_P : access QtAda6.QtWidgets.QScroller.Input.Inst'Class;
      position_P  : Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element;
      timestamp_P : int) return bool;
   function hasScroller (target_P : access QtAda6.QtCore.QObject.Inst'Class) return bool;
   function pixelPerMeter (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class;
   procedure resendPrepareEvent (self : access Inst);
   procedure scrollTo
     (self : access Inst; pos_P : Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element);
   procedure scrollTo
     (self : access Inst; pos_P : Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element;
      scrollTime_P : int);
   function scroller_F
     (target_P : access QtAda6.QtCore.QObject.Inst'Class) return access QtAda6.QtWidgets.QScroller.Inst'Class;
   function scrollerProperties (self : access Inst) return access QtAda6.QtWidgets.QScrollerProperties.Inst'Class;
   procedure setScrollerProperties
     (self : access Inst; prop_P : access QtAda6.QtWidgets.QScrollerProperties.Inst'Class);
   procedure setSnapPositionsX (self : access Inst; first_P : float; interval_P : float);
   procedure setSnapPositionsX (self : access Inst; positions_P : Sequence_float);
   procedure setSnapPositionsY (self : access Inst; first_P : float; interval_P : float);
   procedure setSnapPositionsY (self : access Inst; positions_P : Sequence_float);
   function state_F (self : access Inst) return access QtAda6.QtWidgets.QScroller.State.Inst'Class;
   procedure stop (self : access Inst);
   function target (self : access Inst) return access QtAda6.QtCore.QObject.Inst'Class;
   procedure ungrabGesture (target_P : access QtAda6.QtCore.QObject.Inst'Class);
   function velocity (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class;
end QtAda6.QtWidgets.QScroller;
