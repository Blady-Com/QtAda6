-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qgesture.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtWidgets.QGesture.GestureCancelPolicy;
limited with QtAda6.QtCore.Qt.GestureType;
limited with QtAda6.QtCore.QPointF;
limited with QtAda6.QtCore.QPoint;
limited with QtAda6.QtGui.QPainterPath.Element;
limited with QtAda6.QtCore.Qt.GestureState;
with QtAda6.QtCore.QObject;
package QtAda6.QtWidgets.QGesture is
   type Optional_QtAda6_QtCore_QObject is access Any;
   type Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new QtAda6.QtCore.QObject.Inst with null record;
   procedure Finalize (Self : in out Class);
   function Create (parent_P : Optional_QtAda6_QtCore_QObject) return Class;
   function gestureCancelPolicy_F
     (self : access Inst) return access QtAda6.QtWidgets.QGesture.GestureCancelPolicy.Inst'Class;
   function gestureType (self : access Inst) return access QtAda6.QtCore.Qt.GestureType.Inst'Class;
   function hasHotSpot (self : access Inst) return bool;
   function hotSpot (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class;
   procedure setGestureCancelPolicy
     (self : access Inst; policy_P : access QtAda6.QtWidgets.QGesture.GestureCancelPolicy.Inst'Class);
   procedure setHotSpot
     (self : access Inst; value_P : Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element);
   function state (self : access Inst) return access QtAda6.QtCore.Qt.GestureState.Inst'Class;
   procedure unsetHotSpot (self : access Inst);
end QtAda6.QtWidgets.QGesture;
