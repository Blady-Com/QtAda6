-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qtabletevent.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QEvent.Type_K;
limited with QtAda6.QtGui.QPointingDevice;
limited with QtAda6.QtCore.QPointF;
limited with QtAda6.QtCore.Qt.KeyboardModifier;
limited with QtAda6.QtCore.Qt.MouseButton;
limited with QtAda6.QtCore.QPoint;
limited with QtAda6.QtGui.QPainterPath.Element;
with QtAda6.QtGui.QSinglePointEvent;
package QtAda6.QtGui.QTabletEvent is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtGui.QSinglePointEvent.Inst with null record;
   procedure Finalize (Self : in out Class);
   function Create (arg_1_P : access QtAda6.QtGui.QTabletEvent.Inst'Class) return Class;
   function Create
     (t_P : access QtAda6.QtCore.QEvent.Type_K.Inst'Class; device_P : access QtAda6.QtGui.QPointingDevice.Inst'Class;
      pos_P      : access QtAda6.QtCore.QPointF.Inst'Class; globalPos_P : access QtAda6.QtCore.QPointF.Inst'Class;
      pressure_P : float; xTilt_P : float; yTilt_P : float; tangentialPressure_P : float; rotation_P : float;
      z_P        : float; keyState_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class;
      button_P   : access QtAda6.QtCore.Qt.MouseButton.Inst'Class;
      buttons_P  : access QtAda6.QtCore.Qt.MouseButton.Inst'Class) return Class;
   function Create
     (t_P : access QtAda6.QtCore.QEvent.Type_K.Inst'Class; device_P : access QtAda6.QtGui.QPointingDevice.Inst'Class;
      pos_P      : access QtAda6.QtCore.QPointF.Inst'Class; globalPos_P : access QtAda6.QtCore.QPoint.Inst'Class;
      pressure_P : float; xTilt_P : float; yTilt_P : float; tangentialPressure_P : float; rotation_P : float;
      z_P        : float; keyState_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class;
      button_P   : access QtAda6.QtCore.Qt.MouseButton.Inst'Class;
      buttons_P  : access QtAda6.QtCore.Qt.MouseButton.Inst'Class) return Class;
   function Create
     (t_P : access QtAda6.QtCore.QEvent.Type_K.Inst'Class; device_P : access QtAda6.QtGui.QPointingDevice.Inst'Class;
      pos_P       : access QtAda6.QtCore.QPointF.Inst'Class;
      globalPos_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class; pressure_P : float; xTilt_P : float;
      yTilt_P     : float; tangentialPressure_P : float; rotation_P : float; z_P : float;
      keyState_P  : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class;
      button_P    : access QtAda6.QtCore.Qt.MouseButton.Inst'Class;
      buttons_P   : access QtAda6.QtCore.Qt.MouseButton.Inst'Class) return Class;
   function Create
     (t_P : access QtAda6.QtCore.QEvent.Type_K.Inst'Class; device_P : access QtAda6.QtGui.QPointingDevice.Inst'Class;
      pos_P      : access QtAda6.QtCore.QPoint.Inst'Class; globalPos_P : access QtAda6.QtCore.QPointF.Inst'Class;
      pressure_P : float; xTilt_P : float; yTilt_P : float; tangentialPressure_P : float; rotation_P : float;
      z_P        : float; keyState_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class;
      button_P   : access QtAda6.QtCore.Qt.MouseButton.Inst'Class;
      buttons_P  : access QtAda6.QtCore.Qt.MouseButton.Inst'Class) return Class;
   function Create
     (t_P : access QtAda6.QtCore.QEvent.Type_K.Inst'Class; device_P : access QtAda6.QtGui.QPointingDevice.Inst'Class;
      pos_P      : access QtAda6.QtCore.QPoint.Inst'Class; globalPos_P : access QtAda6.QtCore.QPoint.Inst'Class;
      pressure_P : float; xTilt_P : float; yTilt_P : float; tangentialPressure_P : float; rotation_P : float;
      z_P        : float; keyState_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class;
      button_P   : access QtAda6.QtCore.Qt.MouseButton.Inst'Class;
      buttons_P  : access QtAda6.QtCore.Qt.MouseButton.Inst'Class) return Class;
   function Create
     (t_P : access QtAda6.QtCore.QEvent.Type_K.Inst'Class; device_P : access QtAda6.QtGui.QPointingDevice.Inst'Class;
      pos_P : access QtAda6.QtCore.QPoint.Inst'Class; globalPos_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      pressure_P : float; xTilt_P : float; yTilt_P : float; tangentialPressure_P : float; rotation_P : float;
      z_P        : float; keyState_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class;
      button_P   : access QtAda6.QtCore.Qt.MouseButton.Inst'Class;
      buttons_P  : access QtAda6.QtCore.Qt.MouseButton.Inst'Class) return Class;
   function Create
     (t_P : access QtAda6.QtCore.QEvent.Type_K.Inst'Class; device_P : access QtAda6.QtGui.QPointingDevice.Inst'Class;
      pos_P                : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      globalPos_P : access QtAda6.QtCore.QPointF.Inst'Class; pressure_P : float; xTilt_P : float; yTilt_P : float;
      tangentialPressure_P : float; rotation_P : float; z_P : float;
      keyState_P           : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class;
      button_P             : access QtAda6.QtCore.Qt.MouseButton.Inst'Class;
      buttons_P            : access QtAda6.QtCore.Qt.MouseButton.Inst'Class) return Class;
   function Create
     (t_P : access QtAda6.QtCore.QEvent.Type_K.Inst'Class; device_P : access QtAda6.QtGui.QPointingDevice.Inst'Class;
      pos_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class; globalPos_P : access QtAda6.QtCore.QPoint.Inst'Class;
      pressure_P : float; xTilt_P : float; yTilt_P : float; tangentialPressure_P : float; rotation_P : float;
      z_P        : float; keyState_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class;
      button_P   : access QtAda6.QtCore.Qt.MouseButton.Inst'Class;
      buttons_P  : access QtAda6.QtCore.Qt.MouseButton.Inst'Class) return Class;
   function Create
     (t_P : access QtAda6.QtCore.QEvent.Type_K.Inst'Class; device_P : access QtAda6.QtGui.QPointingDevice.Inst'Class;
      pos_P       : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      globalPos_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class; pressure_P : float; xTilt_P : float;
      yTilt_P     : float; tangentialPressure_P : float; rotation_P : float; z_P : float;
      keyState_P  : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class;
      button_P    : access QtAda6.QtCore.Qt.MouseButton.Inst'Class;
      buttons_P   : access QtAda6.QtCore.Qt.MouseButton.Inst'Class) return Class;
   function U_repr_U (self : access Inst) return access Object'Class;
   function clone (self : access Inst) return access QtAda6.QtGui.QTabletEvent.Inst'Class;
   function globalPos (self : access Inst) return access QtAda6.QtCore.QPoint.Inst'Class;
   function globalPosF (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class;
   function globalX (self : access Inst) return int;
   function globalY (self : access Inst) return int;
   function hiResGlobalX (self : access Inst) return float;
   function hiResGlobalY (self : access Inst) return float;
   function pos (self : access Inst) return access QtAda6.QtCore.QPoint.Inst'Class;
   function posF (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class;
   function pressure (self : access Inst) return float;
   function rotation (self : access Inst) return float;
   function tangentialPressure (self : access Inst) return float;
   function uniqueId (self : access Inst) return int;
   function x (self : access Inst) return int;
   function xTilt (self : access Inst) return float;
   function y (self : access Inst) return int;
   function yTilt (self : access Inst) return float;
   function z (self : access Inst) return float;
end QtAda6.QtGui.QTabletEvent;
