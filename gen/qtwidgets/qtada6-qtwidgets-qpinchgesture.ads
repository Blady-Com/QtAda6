-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qpinchgesture.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QObject;
limited with QtAda6.QtCore.QPointF;
limited with QtAda6.QtWidgets.QPinchGesture.ChangeFlag;
with QtAda6.QtWidgets.QGesture;
package QtAda6.QtWidgets.QPinchGesture is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtWidgets.QGesture.Inst with null record;
   type UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element is new Any;
   procedure Finalize (Self : in out Class);
   function Create (parent_P : access QtAda6.QtCore.QObject.Inst'Class := null) return Class;
   function centerPoint (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class;
   function changeFlags (self : access Inst) return access QtAda6.QtWidgets.QPinchGesture.ChangeFlag.Inst'Class;
   function lastCenterPoint (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class;
   function lastRotationAngle (self : access Inst) return float;
   function lastScaleFactor (self : access Inst) return float;
   function rotationAngle (self : access Inst) return float;
   function scaleFactor (self : access Inst) return float;
   procedure setCenterPoint
     (self : access Inst; value_P : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element);
   procedure setChangeFlags (self : access Inst; value_P : access QtAda6.QtWidgets.QPinchGesture.ChangeFlag.Inst'Class);
   procedure setLastCenterPoint
     (self : access Inst; value_P : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element);
   procedure setLastRotationAngle (self : access Inst; value_P : float);
   procedure setLastScaleFactor (self : access Inst; value_P : float);
   procedure setRotationAngle (self : access Inst; value_P : float);
   procedure setScaleFactor (self : access Inst; value_P : float);
   procedure setStartCenterPoint
     (self : access Inst; value_P : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element);
   procedure setTotalChangeFlags
     (self : access Inst; value_P : access QtAda6.QtWidgets.QPinchGesture.ChangeFlag.Inst'Class);
   procedure setTotalRotationAngle (self : access Inst; value_P : float);
   procedure setTotalScaleFactor (self : access Inst; value_P : float);
   function startCenterPoint (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class;
   function totalChangeFlags (self : access Inst) return access QtAda6.QtWidgets.QPinchGesture.ChangeFlag.Inst'Class;
   function totalRotationAngle (self : access Inst) return float;
   function totalScaleFactor (self : access Inst) return float;
end QtAda6.QtWidgets.QPinchGesture;
