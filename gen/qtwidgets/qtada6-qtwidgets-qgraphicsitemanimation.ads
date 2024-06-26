-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qgraphicsitemanimation.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtWidgets.QGraphicsItem;
limited with QtAda6.QtCore.QPointF;
limited with QtAda6.QtCore.QPoint;
limited with QtAda6.QtGui.QPainterPath.Element;
limited with QtAda6.QtCore.QTimeLine;
limited with QtAda6.QtGui.QTransform;
with QtAda6.QtCore.QObject;
package QtAda6.QtWidgets.QGraphicsItemAnimation is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtCore.QObject.Inst with null record;
   type TUPLE_float_QtAda6_QtCore_QPointF is record
      C0 : float;
      C1 : access QtAda6.QtCore.QPointF.Inst'Class;
   end record;
   type LIST_TUPLE_float_QtAda6_QtCore_QPointF is array (Positive range <>) of TUPLE_float_QtAda6_QtCore_QPointF;
   type TUPLE_float_float is record
      C0 : float;
      C1 : float;
   end record;
   type LIST_TUPLE_float_float is array (Positive range <>) of TUPLE_float_float;
   procedure Finalize (Self : in out Class);
   function Create (parent_P : access QtAda6.QtCore.QObject.Inst'Class := null) return Class;
   procedure afterAnimationStep (self : access Inst; step_P : float);
   procedure beforeAnimationStep (self : access Inst; step_P : float);
   procedure clear (self : access Inst);
   function horizontalScaleAt (self : access Inst; step_P : float) return float;
   function horizontalShearAt (self : access Inst; step_P : float) return float;
   function item (self : access Inst) return access QtAda6.QtWidgets.QGraphicsItem.Inst'Class;
   function posAt (self : access Inst; step_P : float) return access QtAda6.QtCore.QPointF.Inst'Class;
   function posList (self : access Inst) return LIST_TUPLE_float_QtAda6_QtCore_QPointF;
   function rotationAt (self : access Inst; step_P : float) return float;
   function rotationList (self : access Inst) return LIST_TUPLE_float_float;
   function scaleList (self : access Inst) return LIST_TUPLE_float_QtAda6_QtCore_QPointF;
   procedure setItem (self : access Inst; item_P : access QtAda6.QtWidgets.QGraphicsItem.Inst'Class);
   procedure setPosAt (self : access Inst; step_P : float; pos_P : access QtAda6.QtCore.QPointF.Inst'Class);
   procedure setPosAt (self : access Inst; step_P : float; pos_P : access QtAda6.QtCore.QPoint.Inst'Class);
   procedure setPosAt (self : access Inst; step_P : float; pos_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class);
   procedure setRotationAt (self : access Inst; step_P : float; angle_P : float);
   procedure setScaleAt (self : access Inst; step_P : float; sx_P : float; sy_P : float);
   procedure setShearAt (self : access Inst; step_P : float; sh_P : float; sv_P : float);
   procedure setStep (self : access Inst; x_P : float);
   procedure setTimeLine (self : access Inst; timeLine_P : access QtAda6.QtCore.QTimeLine.Inst'Class);
   procedure setTranslationAt (self : access Inst; step_P : float; dx_P : float; dy_P : float);
   function shearList (self : access Inst) return LIST_TUPLE_float_QtAda6_QtCore_QPointF;
   function timeLine (self : access Inst) return access QtAda6.QtCore.QTimeLine.Inst'Class;
   function transformAt (self : access Inst; step_P : float) return access QtAda6.QtGui.QTransform.Inst'Class;
   function translationList (self : access Inst) return LIST_TUPLE_float_QtAda6_QtCore_QPointF;
   function verticalScaleAt (self : access Inst; step_P : float) return float;
   function verticalShearAt (self : access Inst; step_P : float) return float;
   function xTranslationAt (self : access Inst; step_P : float) return float;
   function yTranslationAt (self : access Inst; step_P : float) return float;
end QtAda6.QtWidgets.QGraphicsItemAnimation;
