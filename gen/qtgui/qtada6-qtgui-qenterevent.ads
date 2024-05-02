-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qenterevent.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QPointF;
limited with QtAda6.QtGui.QPointingDevice;
limited with QtAda6.QtCore.QPoint;
limited with QtAda6.QtGui.QPainterPath.Element;
with QtAda6.QtGui.QSinglePointEvent;
package QtAda6.QtGui.QEnterEvent is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtGui.QSinglePointEvent.Inst with null record;
   procedure Finalize (Self : in out Class);
   function Create (arg_1_P : access QtAda6.QtGui.QEnterEvent.Inst'Class) return Class;
   function Create
     (localPos_P  : access QtAda6.QtCore.QPointF.Inst'Class; scenePos_P : access QtAda6.QtCore.QPointF.Inst'Class;
      globalPos_P : access QtAda6.QtCore.QPointF.Inst'Class;
      device_P    : access QtAda6.QtGui.QPointingDevice.Inst'Class := null) return Class;
   function Create
     (localPos_P  : access QtAda6.QtCore.QPointF.Inst'Class; scenePos_P : access QtAda6.QtCore.QPointF.Inst'Class;
      globalPos_P : access QtAda6.QtCore.QPoint.Inst'Class;
      device_P    : access QtAda6.QtGui.QPointingDevice.Inst'Class := null) return Class;
   function Create
     (localPos_P  : access QtAda6.QtCore.QPointF.Inst'Class; scenePos_P : access QtAda6.QtCore.QPointF.Inst'Class;
      globalPos_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      device_P    : access QtAda6.QtGui.QPointingDevice.Inst'Class := null) return Class;
   function Create
     (localPos_P  : access QtAda6.QtCore.QPointF.Inst'Class; scenePos_P : access QtAda6.QtCore.QPoint.Inst'Class;
      globalPos_P : access QtAda6.QtCore.QPointF.Inst'Class;
      device_P    : access QtAda6.QtGui.QPointingDevice.Inst'Class := null) return Class;
   function Create
     (localPos_P  : access QtAda6.QtCore.QPointF.Inst'Class; scenePos_P : access QtAda6.QtCore.QPoint.Inst'Class;
      globalPos_P : access QtAda6.QtCore.QPoint.Inst'Class;
      device_P    : access QtAda6.QtGui.QPointingDevice.Inst'Class := null) return Class;
   function Create
     (localPos_P  : access QtAda6.QtCore.QPointF.Inst'Class; scenePos_P : access QtAda6.QtCore.QPoint.Inst'Class;
      globalPos_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      device_P    : access QtAda6.QtGui.QPointingDevice.Inst'Class := null) return Class;
   function Create
     (localPos_P  : access QtAda6.QtCore.QPointF.Inst'Class;
      scenePos_P  : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      globalPos_P : access QtAda6.QtCore.QPointF.Inst'Class;
      device_P    : access QtAda6.QtGui.QPointingDevice.Inst'Class := null) return Class;
   function Create
     (localPos_P  : access QtAda6.QtCore.QPointF.Inst'Class;
      scenePos_P  : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      globalPos_P : access QtAda6.QtCore.QPoint.Inst'Class;
      device_P    : access QtAda6.QtGui.QPointingDevice.Inst'Class := null) return Class;
   function Create
     (localPos_P  : access QtAda6.QtCore.QPointF.Inst'Class;
      scenePos_P  : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      globalPos_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      device_P    : access QtAda6.QtGui.QPointingDevice.Inst'Class := null) return Class;
   function Create
     (localPos_P  : access QtAda6.QtCore.QPoint.Inst'Class; scenePos_P : access QtAda6.QtCore.QPointF.Inst'Class;
      globalPos_P : access QtAda6.QtCore.QPointF.Inst'Class;
      device_P    : access QtAda6.QtGui.QPointingDevice.Inst'Class := null) return Class;
   function Create
     (localPos_P  : access QtAda6.QtCore.QPoint.Inst'Class; scenePos_P : access QtAda6.QtCore.QPointF.Inst'Class;
      globalPos_P : access QtAda6.QtCore.QPoint.Inst'Class;
      device_P    : access QtAda6.QtGui.QPointingDevice.Inst'Class := null) return Class;
   function Create
     (localPos_P  : access QtAda6.QtCore.QPoint.Inst'Class; scenePos_P : access QtAda6.QtCore.QPointF.Inst'Class;
      globalPos_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      device_P    : access QtAda6.QtGui.QPointingDevice.Inst'Class := null) return Class;
   function Create
     (localPos_P  : access QtAda6.QtCore.QPoint.Inst'Class; scenePos_P : access QtAda6.QtCore.QPoint.Inst'Class;
      globalPos_P : access QtAda6.QtCore.QPointF.Inst'Class;
      device_P    : access QtAda6.QtGui.QPointingDevice.Inst'Class := null) return Class;
   function Create
     (localPos_P  : access QtAda6.QtCore.QPoint.Inst'Class; scenePos_P : access QtAda6.QtCore.QPoint.Inst'Class;
      globalPos_P : access QtAda6.QtCore.QPoint.Inst'Class;
      device_P    : access QtAda6.QtGui.QPointingDevice.Inst'Class := null) return Class;
   function Create
     (localPos_P  : access QtAda6.QtCore.QPoint.Inst'Class; scenePos_P : access QtAda6.QtCore.QPoint.Inst'Class;
      globalPos_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      device_P    : access QtAda6.QtGui.QPointingDevice.Inst'Class := null) return Class;
   function Create
     (localPos_P  : access QtAda6.QtCore.QPoint.Inst'Class;
      scenePos_P  : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      globalPos_P : access QtAda6.QtCore.QPointF.Inst'Class;
      device_P    : access QtAda6.QtGui.QPointingDevice.Inst'Class := null) return Class;
   function Create
     (localPos_P  : access QtAda6.QtCore.QPoint.Inst'Class;
      scenePos_P  : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      globalPos_P : access QtAda6.QtCore.QPoint.Inst'Class;
      device_P    : access QtAda6.QtGui.QPointingDevice.Inst'Class := null) return Class;
   function Create
     (localPos_P  : access QtAda6.QtCore.QPoint.Inst'Class;
      scenePos_P  : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      globalPos_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      device_P    : access QtAda6.QtGui.QPointingDevice.Inst'Class := null) return Class;
   function Create
     (localPos_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      scenePos_P : access QtAda6.QtCore.QPointF.Inst'Class; globalPos_P : access QtAda6.QtCore.QPointF.Inst'Class;
      device_P   : access QtAda6.QtGui.QPointingDevice.Inst'Class := null) return Class;
   function Create
     (localPos_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      scenePos_P : access QtAda6.QtCore.QPointF.Inst'Class; globalPos_P : access QtAda6.QtCore.QPoint.Inst'Class;
      device_P   : access QtAda6.QtGui.QPointingDevice.Inst'Class := null) return Class;
   function Create
     (localPos_P  : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      scenePos_P  : access QtAda6.QtCore.QPointF.Inst'Class;
      globalPos_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      device_P    : access QtAda6.QtGui.QPointingDevice.Inst'Class := null) return Class;
   function Create
     (localPos_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      scenePos_P : access QtAda6.QtCore.QPoint.Inst'Class; globalPos_P : access QtAda6.QtCore.QPointF.Inst'Class;
      device_P   : access QtAda6.QtGui.QPointingDevice.Inst'Class := null) return Class;
   function Create
     (localPos_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      scenePos_P : access QtAda6.QtCore.QPoint.Inst'Class; globalPos_P : access QtAda6.QtCore.QPoint.Inst'Class;
      device_P   : access QtAda6.QtGui.QPointingDevice.Inst'Class := null) return Class;
   function Create
     (localPos_P  : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      scenePos_P  : access QtAda6.QtCore.QPoint.Inst'Class;
      globalPos_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      device_P    : access QtAda6.QtGui.QPointingDevice.Inst'Class := null) return Class;
   function Create
     (localPos_P  : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      scenePos_P  : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      globalPos_P : access QtAda6.QtCore.QPointF.Inst'Class;
      device_P    : access QtAda6.QtGui.QPointingDevice.Inst'Class := null) return Class;
   function Create
     (localPos_P  : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      scenePos_P  : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      globalPos_P : access QtAda6.QtCore.QPoint.Inst'Class;
      device_P    : access QtAda6.QtGui.QPointingDevice.Inst'Class := null) return Class;
   function Create
     (localPos_P  : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      scenePos_P  : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      globalPos_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      device_P    : access QtAda6.QtGui.QPointingDevice.Inst'Class := null) return Class;
   function clone (self : access Inst) return access QtAda6.QtGui.QEnterEvent.Inst'Class;
   function globalPos (self : access Inst) return access QtAda6.QtCore.QPoint.Inst'Class;
   function globalX (self : access Inst) return int;
   function globalY (self : access Inst) return int;
   function localPos (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class;
   function pos (self : access Inst) return access QtAda6.QtCore.QPoint.Inst'Class;
   function screenPos (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class;
   function windowPos (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class;
   function x (self : access Inst) return int;
   function y (self : access Inst) return int;
end QtAda6.QtGui.QEnterEvent;
