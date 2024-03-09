-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qpointerevent.ads
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
limited with QtAda6.QtCore.Qt.KeyboardModifier;
with QtAda6.QtGui.QEventPoint;
limited with QtAda6.QtCore.QObject;
limited with QtAda6.QtGui.QPointingDevice.PointerType;
with QtAda6.QtGui.QInputEvent;
package QtAda6.QtGui.QPointerEvent is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtGui.QInputEvent.Inst with null record;
   subtype SEQUENCE_QtAda6_QtGui_QEventPoint is QtAda6.QtGui.QEventPoint.Class_Array;
   subtype LIST_QtAda6_QtGui_QEventPoint is QtAda6.QtGui.QEventPoint.Class_Array;
   procedure Finalize (Self : in out Class);
   function Create (arg_1_P : access QtAda6.QtGui.QPointerEvent.Inst'Class) return Class;
   function Create
     (type_K_P : access QtAda6.QtCore.QEvent.Type_K.Inst'Class; dev_P : access QtAda6.QtGui.QPointingDevice.Inst'Class;
      modifiers_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class := null;
      points_P    : SEQUENCE_QtAda6_QtGui_QEventPoint                   := (2 .. 1 => <>)) return Class;
   function U_repr_U (self : access Inst) return access Object'Class;
   function addPassiveGrabber
     (self      : access Inst; point_P : access QtAda6.QtGui.QEventPoint.Inst'Class;
      grabber_P : access QtAda6.QtCore.QObject.Inst'Class) return bool;
   function allPointsAccepted (self : access Inst) return bool;
   function allPointsGrabbed (self : access Inst) return bool;
   procedure clearPassiveGrabbers (self : access Inst; point_P : access QtAda6.QtGui.QEventPoint.Inst'Class);
   function clone (self : access Inst) return access QtAda6.QtGui.QPointerEvent.Inst'Class;
   function exclusiveGrabber
     (self : access Inst; point_P : access QtAda6.QtGui.QEventPoint.Inst'Class)
      return access QtAda6.QtCore.QObject.Inst'Class;
   function isBeginEvent (self : access Inst) return bool;
   function isEndEvent (self : access Inst) return bool;
   function isUpdateEvent (self : access Inst) return bool;
   function point (self : access Inst; i_P : int) return access QtAda6.QtGui.QEventPoint.Inst'Class;
   function pointById (self : access Inst; id_P : int) return access QtAda6.QtGui.QEventPoint.Inst'Class;
   function pointCount (self : access Inst) return int;
   function pointerType (self : access Inst) return access QtAda6.QtGui.QPointingDevice.PointerType.Inst'Class;
   function pointingDevice (self : access Inst) return access QtAda6.QtGui.QPointingDevice.Inst'Class;
   function points (self : access Inst) return LIST_QtAda6_QtGui_QEventPoint;
   function removePassiveGrabber
     (self      : access Inst; point_P : access QtAda6.QtGui.QEventPoint.Inst'Class;
      grabber_P : access QtAda6.QtCore.QObject.Inst'Class) return bool;
   procedure setAccepted (self : access Inst; accepted_P : bool);
   procedure setExclusiveGrabber
     (self               : access Inst; point_P : access QtAda6.QtGui.QEventPoint.Inst'Class;
      exclusiveGrabber_P : access QtAda6.QtCore.QObject.Inst'Class);
   procedure setTimestamp (self : access Inst; timestamp_P : int);
end QtAda6.QtGui.QPointerEvent;
