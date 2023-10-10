-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qwheelevent.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QPointF;
limited with QtAda6.QtCore.QPoint;
limited with QtAda6.QtGui.QPainterPath.Element;
limited with QtAda6.QtCore.Qt.MouseButton;
limited with QtAda6.QtCore.Qt.KeyboardModifier;
limited with QtAda6.QtCore.Qt.ScrollPhase;
limited with QtAda6.QtCore.Qt.MouseEventSource;
limited with QtAda6.QtGui.QPointingDevice;
with QtAda6.QtGui.QSinglePointEvent;
package QtAda6.QtGui.QWheelEvent is
   type Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new QtAda6.QtGui.QSinglePointEvent.Inst with null record;
   procedure Finalize (Self : in out Class);
   function Create (arg_1_P : access QtAda6.QtGui.QWheelEvent.Inst'Class) return Class;
   function Create
     (pos_P        : Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element;
      globalPos_P  : Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element;
      pixelDelta_P : access QtAda6.QtCore.QPoint.Inst'Class; angleDelta_P : access QtAda6.QtCore.QPoint.Inst'Class;
      buttons_P    : access QtAda6.QtCore.Qt.MouseButton.Inst'Class;
      modifiers_P  : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class;
      phase_P      : access QtAda6.QtCore.Qt.ScrollPhase.Inst'Class; inverted_P : bool;
      source_P     : access QtAda6.QtCore.Qt.MouseEventSource.Inst'Class;
      device_P     : access QtAda6.QtGui.QPointingDevice.Inst'Class) return Class;
   function U_repr_U (self : access Inst) return Object;
   function angleDelta (self : access Inst) return access QtAda6.QtCore.QPoint.Inst'Class;
   function clone (self : access Inst) return access QtAda6.QtGui.QWheelEvent.Inst'Class;
   function hasPixelDelta (self : access Inst) return bool;
   function inverted (self : access Inst) return bool;
   function isBeginEvent (self : access Inst) return bool;
   function isEndEvent (self : access Inst) return bool;
   function isInverted (self : access Inst) return bool;
   function isUpdateEvent (self : access Inst) return bool;
   function phase (self : access Inst) return access QtAda6.QtCore.Qt.ScrollPhase.Inst'Class;
   function pixelDelta (self : access Inst) return access QtAda6.QtCore.QPoint.Inst'Class;
   function source (self : access Inst) return access QtAda6.QtCore.Qt.MouseEventSource.Inst'Class;
end QtAda6.QtGui.QWheelEvent;
