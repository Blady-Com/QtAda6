-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qeventpoint.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtGui.QPointingDevice;
limited with QtAda6.QtGui.QEventPoint.State;
limited with QtAda6.QtCore.QPointF;
limited with QtAda6.QtCore.QPoint;
limited with QtAda6.QtGui.QPainterPath.Element;
limited with QtAda6.QtCore.QSizeF;
limited with QtAda6.QtGui.QPointingDeviceUniqueId;
limited with QtAda6.QtGui.QVector2D;
package QtAda6.QtGui.QEventPoint is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   type UNION_QtAda6_QtCore_QPointFQtAda6_QtCore_QPointQtAda6_QtGui_QPainterPath_Element is new Any;
   procedure Finalize (Self : in out Class);
   function Create (id_P : int := 0; device_P : access QtAda6.QtGui.QPointingDevice.Inst'Class := null) return Class;
   function Create (other_P : access QtAda6.QtGui.QEventPoint.Inst'Class) return Class;
   function Create
     (pointId_P        : int; state_P : access QtAda6.QtGui.QEventPoint.State.Inst'Class;
      scenePosition_P  : UNION_QtAda6_QtCore_QPointFQtAda6_QtCore_QPointQtAda6_QtGui_QPainterPath_Element;
      globalPosition_P : UNION_QtAda6_QtCore_QPointFQtAda6_QtCore_QPointQtAda6_QtGui_QPainterPath_Element) return Class;
   procedure U_copy_U;
   function device (self : access Inst) return access QtAda6.QtGui.QPointingDevice.Inst'Class;
   function ellipseDiameters (self : access Inst) return access QtAda6.QtCore.QSizeF.Inst'Class;
   function globalGrabPosition (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class;
   function globalLastPosition (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class;
   function globalPosition (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class;
   function globalPressPosition (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class;
   function grabPosition (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class;
   function id (self : access Inst) return int;
   function isAccepted (self : access Inst) return bool;
   function lastNormalizedPos (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class;
   function lastPos (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class;
   function lastPosition (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class;
   function lastScenePos (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class;
   function lastScreenPos (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class;
   function lastTimestamp (self : access Inst) return int;
   function normalizedPos (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class;
   function normalizedPosition (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class;
   function pos (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class;
   function position (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class;
   function pressPosition (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class;
   function pressTimestamp (self : access Inst) return int;
   function pressure (self : access Inst) return float;
   function rotation (self : access Inst) return float;
   function sceneGrabPosition (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class;
   function sceneLastPosition (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class;
   function scenePos (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class;
   function scenePosition (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class;
   function scenePressPosition (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class;
   function screenPos (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class;
   procedure setAccepted (self : access Inst; accepted_P : bool := False);
   function startNormalizedPos (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class;
   function startPos (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class;
   function startScenePos (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class;
   function startScreenPos (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class;
   function state_F (self : access Inst) return access QtAda6.QtGui.QEventPoint.State.Inst'Class;
   procedure swap (self : access Inst; other_P : access QtAda6.QtGui.QEventPoint.Inst'Class);
   function timeHeld (self : access Inst) return float;
   function timestamp (self : access Inst) return int;
   function uniqueId (self : access Inst) return access QtAda6.QtGui.QPointingDeviceUniqueId.Inst'Class;
   function velocity (self : access Inst) return access QtAda6.QtGui.QVector2D.Inst'Class;
end QtAda6.QtGui.QEventPoint;
