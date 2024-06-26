-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qsinglepointevent.ads
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
limited with QtAda6.QtCore.Qt.MouseButton;
limited with QtAda6.QtCore.Qt.KeyboardModifier;
limited with QtAda6.QtCore.Qt.MouseEventSource;
limited with QtAda6.QtCore.QPoint;
limited with QtAda6.QtGui.QPainterPath.Element;
limited with QtAda6.QtGui.QEventPoint;
limited with QtAda6.QtCore.QObject;
with QtAda6.QtGui.QPointerEvent;
package QtAda6.QtGui.QSinglePointEvent is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtGui.QPointerEvent.Inst with null record;
   procedure Finalize (Self : in out Class);
   function Create (arg_1_P : access QtAda6.QtGui.QSinglePointEvent.Inst'Class) return Class;
   function Create
     (type_K_P : access QtAda6.QtCore.QEvent.Type_K.Inst'Class; dev_P : access QtAda6.QtGui.QPointingDevice.Inst'Class;
      localPos_P  : access QtAda6.QtCore.QPointF.Inst'Class; scenePos_P : access QtAda6.QtCore.QPointF.Inst'Class;
      globalPos_P : access QtAda6.QtCore.QPointF.Inst'Class; button_P : access QtAda6.QtCore.Qt.MouseButton.Inst'Class;
      buttons_P   : access QtAda6.QtCore.Qt.MouseButton.Inst'Class;
      modifiers_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class;
      source_P    : access QtAda6.QtCore.Qt.MouseEventSource.Inst'Class := null) return Class;
   function Create
     (type_K_P : access QtAda6.QtCore.QEvent.Type_K.Inst'Class; dev_P : access QtAda6.QtGui.QPointingDevice.Inst'Class;
      localPos_P  : access QtAda6.QtCore.QPointF.Inst'Class; scenePos_P : access QtAda6.QtCore.QPointF.Inst'Class;
      globalPos_P : access QtAda6.QtCore.QPoint.Inst'Class; button_P : access QtAda6.QtCore.Qt.MouseButton.Inst'Class;
      buttons_P   : access QtAda6.QtCore.Qt.MouseButton.Inst'Class;
      modifiers_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class;
      source_P    : access QtAda6.QtCore.Qt.MouseEventSource.Inst'Class := null) return Class;
   function Create
     (type_K_P : access QtAda6.QtCore.QEvent.Type_K.Inst'Class; dev_P : access QtAda6.QtGui.QPointingDevice.Inst'Class;
      localPos_P  : access QtAda6.QtCore.QPointF.Inst'Class; scenePos_P : access QtAda6.QtCore.QPointF.Inst'Class;
      globalPos_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      button_P    : access QtAda6.QtCore.Qt.MouseButton.Inst'Class;
      buttons_P   : access QtAda6.QtCore.Qt.MouseButton.Inst'Class;
      modifiers_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class;
      source_P    : access QtAda6.QtCore.Qt.MouseEventSource.Inst'Class := null) return Class;
   function Create
     (type_K_P : access QtAda6.QtCore.QEvent.Type_K.Inst'Class; dev_P : access QtAda6.QtGui.QPointingDevice.Inst'Class;
      localPos_P  : access QtAda6.QtCore.QPointF.Inst'Class; scenePos_P : access QtAda6.QtCore.QPoint.Inst'Class;
      globalPos_P : access QtAda6.QtCore.QPointF.Inst'Class; button_P : access QtAda6.QtCore.Qt.MouseButton.Inst'Class;
      buttons_P   : access QtAda6.QtCore.Qt.MouseButton.Inst'Class;
      modifiers_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class;
      source_P    : access QtAda6.QtCore.Qt.MouseEventSource.Inst'Class := null) return Class;
   function Create
     (type_K_P : access QtAda6.QtCore.QEvent.Type_K.Inst'Class; dev_P : access QtAda6.QtGui.QPointingDevice.Inst'Class;
      localPos_P  : access QtAda6.QtCore.QPointF.Inst'Class; scenePos_P : access QtAda6.QtCore.QPoint.Inst'Class;
      globalPos_P : access QtAda6.QtCore.QPoint.Inst'Class; button_P : access QtAda6.QtCore.Qt.MouseButton.Inst'Class;
      buttons_P   : access QtAda6.QtCore.Qt.MouseButton.Inst'Class;
      modifiers_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class;
      source_P    : access QtAda6.QtCore.Qt.MouseEventSource.Inst'Class := null) return Class;
   function Create
     (type_K_P : access QtAda6.QtCore.QEvent.Type_K.Inst'Class; dev_P : access QtAda6.QtGui.QPointingDevice.Inst'Class;
      localPos_P  : access QtAda6.QtCore.QPointF.Inst'Class; scenePos_P : access QtAda6.QtCore.QPoint.Inst'Class;
      globalPos_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      button_P    : access QtAda6.QtCore.Qt.MouseButton.Inst'Class;
      buttons_P   : access QtAda6.QtCore.Qt.MouseButton.Inst'Class;
      modifiers_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class;
      source_P    : access QtAda6.QtCore.Qt.MouseEventSource.Inst'Class := null) return Class;
   function Create
     (type_K_P : access QtAda6.QtCore.QEvent.Type_K.Inst'Class; dev_P : access QtAda6.QtGui.QPointingDevice.Inst'Class;
      localPos_P  : access QtAda6.QtCore.QPointF.Inst'Class;
      scenePos_P  : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      globalPos_P : access QtAda6.QtCore.QPointF.Inst'Class; button_P : access QtAda6.QtCore.Qt.MouseButton.Inst'Class;
      buttons_P   : access QtAda6.QtCore.Qt.MouseButton.Inst'Class;
      modifiers_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class;
      source_P    : access QtAda6.QtCore.Qt.MouseEventSource.Inst'Class := null) return Class;
   function Create
     (type_K_P : access QtAda6.QtCore.QEvent.Type_K.Inst'Class; dev_P : access QtAda6.QtGui.QPointingDevice.Inst'Class;
      localPos_P  : access QtAda6.QtCore.QPointF.Inst'Class;
      scenePos_P  : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      globalPos_P : access QtAda6.QtCore.QPoint.Inst'Class; button_P : access QtAda6.QtCore.Qt.MouseButton.Inst'Class;
      buttons_P   : access QtAda6.QtCore.Qt.MouseButton.Inst'Class;
      modifiers_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class;
      source_P    : access QtAda6.QtCore.Qt.MouseEventSource.Inst'Class := null) return Class;
   function Create
     (type_K_P : access QtAda6.QtCore.QEvent.Type_K.Inst'Class; dev_P : access QtAda6.QtGui.QPointingDevice.Inst'Class;
      localPos_P  : access QtAda6.QtCore.QPointF.Inst'Class;
      scenePos_P  : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      globalPos_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      button_P    : access QtAda6.QtCore.Qt.MouseButton.Inst'Class;
      buttons_P   : access QtAda6.QtCore.Qt.MouseButton.Inst'Class;
      modifiers_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class;
      source_P    : access QtAda6.QtCore.Qt.MouseEventSource.Inst'Class := null) return Class;
   function Create
     (type_K_P : access QtAda6.QtCore.QEvent.Type_K.Inst'Class; dev_P : access QtAda6.QtGui.QPointingDevice.Inst'Class;
      localPos_P  : access QtAda6.QtCore.QPoint.Inst'Class; scenePos_P : access QtAda6.QtCore.QPointF.Inst'Class;
      globalPos_P : access QtAda6.QtCore.QPointF.Inst'Class; button_P : access QtAda6.QtCore.Qt.MouseButton.Inst'Class;
      buttons_P   : access QtAda6.QtCore.Qt.MouseButton.Inst'Class;
      modifiers_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class;
      source_P    : access QtAda6.QtCore.Qt.MouseEventSource.Inst'Class := null) return Class;
   function Create
     (type_K_P : access QtAda6.QtCore.QEvent.Type_K.Inst'Class; dev_P : access QtAda6.QtGui.QPointingDevice.Inst'Class;
      localPos_P  : access QtAda6.QtCore.QPoint.Inst'Class; scenePos_P : access QtAda6.QtCore.QPointF.Inst'Class;
      globalPos_P : access QtAda6.QtCore.QPoint.Inst'Class; button_P : access QtAda6.QtCore.Qt.MouseButton.Inst'Class;
      buttons_P   : access QtAda6.QtCore.Qt.MouseButton.Inst'Class;
      modifiers_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class;
      source_P    : access QtAda6.QtCore.Qt.MouseEventSource.Inst'Class := null) return Class;
   function Create
     (type_K_P : access QtAda6.QtCore.QEvent.Type_K.Inst'Class; dev_P : access QtAda6.QtGui.QPointingDevice.Inst'Class;
      localPos_P  : access QtAda6.QtCore.QPoint.Inst'Class; scenePos_P : access QtAda6.QtCore.QPointF.Inst'Class;
      globalPos_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      button_P    : access QtAda6.QtCore.Qt.MouseButton.Inst'Class;
      buttons_P   : access QtAda6.QtCore.Qt.MouseButton.Inst'Class;
      modifiers_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class;
      source_P    : access QtAda6.QtCore.Qt.MouseEventSource.Inst'Class := null) return Class;
   function Create
     (type_K_P : access QtAda6.QtCore.QEvent.Type_K.Inst'Class; dev_P : access QtAda6.QtGui.QPointingDevice.Inst'Class;
      localPos_P  : access QtAda6.QtCore.QPoint.Inst'Class; scenePos_P : access QtAda6.QtCore.QPoint.Inst'Class;
      globalPos_P : access QtAda6.QtCore.QPointF.Inst'Class; button_P : access QtAda6.QtCore.Qt.MouseButton.Inst'Class;
      buttons_P   : access QtAda6.QtCore.Qt.MouseButton.Inst'Class;
      modifiers_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class;
      source_P    : access QtAda6.QtCore.Qt.MouseEventSource.Inst'Class := null) return Class;
   function Create
     (type_K_P : access QtAda6.QtCore.QEvent.Type_K.Inst'Class; dev_P : access QtAda6.QtGui.QPointingDevice.Inst'Class;
      localPos_P  : access QtAda6.QtCore.QPoint.Inst'Class; scenePos_P : access QtAda6.QtCore.QPoint.Inst'Class;
      globalPos_P : access QtAda6.QtCore.QPoint.Inst'Class; button_P : access QtAda6.QtCore.Qt.MouseButton.Inst'Class;
      buttons_P   : access QtAda6.QtCore.Qt.MouseButton.Inst'Class;
      modifiers_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class;
      source_P    : access QtAda6.QtCore.Qt.MouseEventSource.Inst'Class := null) return Class;
   function Create
     (type_K_P : access QtAda6.QtCore.QEvent.Type_K.Inst'Class; dev_P : access QtAda6.QtGui.QPointingDevice.Inst'Class;
      localPos_P  : access QtAda6.QtCore.QPoint.Inst'Class; scenePos_P : access QtAda6.QtCore.QPoint.Inst'Class;
      globalPos_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      button_P    : access QtAda6.QtCore.Qt.MouseButton.Inst'Class;
      buttons_P   : access QtAda6.QtCore.Qt.MouseButton.Inst'Class;
      modifiers_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class;
      source_P    : access QtAda6.QtCore.Qt.MouseEventSource.Inst'Class := null) return Class;
   function Create
     (type_K_P : access QtAda6.QtCore.QEvent.Type_K.Inst'Class; dev_P : access QtAda6.QtGui.QPointingDevice.Inst'Class;
      localPos_P  : access QtAda6.QtCore.QPoint.Inst'Class;
      scenePos_P  : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      globalPos_P : access QtAda6.QtCore.QPointF.Inst'Class; button_P : access QtAda6.QtCore.Qt.MouseButton.Inst'Class;
      buttons_P   : access QtAda6.QtCore.Qt.MouseButton.Inst'Class;
      modifiers_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class;
      source_P    : access QtAda6.QtCore.Qt.MouseEventSource.Inst'Class := null) return Class;
   function Create
     (type_K_P : access QtAda6.QtCore.QEvent.Type_K.Inst'Class; dev_P : access QtAda6.QtGui.QPointingDevice.Inst'Class;
      localPos_P  : access QtAda6.QtCore.QPoint.Inst'Class;
      scenePos_P  : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      globalPos_P : access QtAda6.QtCore.QPoint.Inst'Class; button_P : access QtAda6.QtCore.Qt.MouseButton.Inst'Class;
      buttons_P   : access QtAda6.QtCore.Qt.MouseButton.Inst'Class;
      modifiers_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class;
      source_P    : access QtAda6.QtCore.Qt.MouseEventSource.Inst'Class := null) return Class;
   function Create
     (type_K_P : access QtAda6.QtCore.QEvent.Type_K.Inst'Class; dev_P : access QtAda6.QtGui.QPointingDevice.Inst'Class;
      localPos_P  : access QtAda6.QtCore.QPoint.Inst'Class;
      scenePos_P  : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      globalPos_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      button_P    : access QtAda6.QtCore.Qt.MouseButton.Inst'Class;
      buttons_P   : access QtAda6.QtCore.Qt.MouseButton.Inst'Class;
      modifiers_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class;
      source_P    : access QtAda6.QtCore.Qt.MouseEventSource.Inst'Class := null) return Class;
   function Create
     (type_K_P : access QtAda6.QtCore.QEvent.Type_K.Inst'Class; dev_P : access QtAda6.QtGui.QPointingDevice.Inst'Class;
      localPos_P  : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      scenePos_P  : access QtAda6.QtCore.QPointF.Inst'Class; globalPos_P : access QtAda6.QtCore.QPointF.Inst'Class;
      button_P    : access QtAda6.QtCore.Qt.MouseButton.Inst'Class;
      buttons_P   : access QtAda6.QtCore.Qt.MouseButton.Inst'Class;
      modifiers_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class;
      source_P    : access QtAda6.QtCore.Qt.MouseEventSource.Inst'Class := null) return Class;
   function Create
     (type_K_P : access QtAda6.QtCore.QEvent.Type_K.Inst'Class; dev_P : access QtAda6.QtGui.QPointingDevice.Inst'Class;
      localPos_P  : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      scenePos_P  : access QtAda6.QtCore.QPointF.Inst'Class; globalPos_P : access QtAda6.QtCore.QPoint.Inst'Class;
      button_P    : access QtAda6.QtCore.Qt.MouseButton.Inst'Class;
      buttons_P   : access QtAda6.QtCore.Qt.MouseButton.Inst'Class;
      modifiers_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class;
      source_P    : access QtAda6.QtCore.Qt.MouseEventSource.Inst'Class := null) return Class;
   function Create
     (type_K_P : access QtAda6.QtCore.QEvent.Type_K.Inst'Class; dev_P : access QtAda6.QtGui.QPointingDevice.Inst'Class;
      localPos_P  : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      scenePos_P  : access QtAda6.QtCore.QPointF.Inst'Class;
      globalPos_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      button_P    : access QtAda6.QtCore.Qt.MouseButton.Inst'Class;
      buttons_P   : access QtAda6.QtCore.Qt.MouseButton.Inst'Class;
      modifiers_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class;
      source_P    : access QtAda6.QtCore.Qt.MouseEventSource.Inst'Class := null) return Class;
   function Create
     (type_K_P : access QtAda6.QtCore.QEvent.Type_K.Inst'Class; dev_P : access QtAda6.QtGui.QPointingDevice.Inst'Class;
      localPos_P  : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      scenePos_P  : access QtAda6.QtCore.QPoint.Inst'Class; globalPos_P : access QtAda6.QtCore.QPointF.Inst'Class;
      button_P    : access QtAda6.QtCore.Qt.MouseButton.Inst'Class;
      buttons_P   : access QtAda6.QtCore.Qt.MouseButton.Inst'Class;
      modifiers_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class;
      source_P    : access QtAda6.QtCore.Qt.MouseEventSource.Inst'Class := null) return Class;
   function Create
     (type_K_P : access QtAda6.QtCore.QEvent.Type_K.Inst'Class; dev_P : access QtAda6.QtGui.QPointingDevice.Inst'Class;
      localPos_P  : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      scenePos_P  : access QtAda6.QtCore.QPoint.Inst'Class; globalPos_P : access QtAda6.QtCore.QPoint.Inst'Class;
      button_P    : access QtAda6.QtCore.Qt.MouseButton.Inst'Class;
      buttons_P   : access QtAda6.QtCore.Qt.MouseButton.Inst'Class;
      modifiers_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class;
      source_P    : access QtAda6.QtCore.Qt.MouseEventSource.Inst'Class := null) return Class;
   function Create
     (type_K_P : access QtAda6.QtCore.QEvent.Type_K.Inst'Class; dev_P : access QtAda6.QtGui.QPointingDevice.Inst'Class;
      localPos_P  : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      scenePos_P  : access QtAda6.QtCore.QPoint.Inst'Class;
      globalPos_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      button_P    : access QtAda6.QtCore.Qt.MouseButton.Inst'Class;
      buttons_P   : access QtAda6.QtCore.Qt.MouseButton.Inst'Class;
      modifiers_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class;
      source_P    : access QtAda6.QtCore.Qt.MouseEventSource.Inst'Class := null) return Class;
   function Create
     (type_K_P : access QtAda6.QtCore.QEvent.Type_K.Inst'Class; dev_P : access QtAda6.QtGui.QPointingDevice.Inst'Class;
      localPos_P  : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      scenePos_P  : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      globalPos_P : access QtAda6.QtCore.QPointF.Inst'Class; button_P : access QtAda6.QtCore.Qt.MouseButton.Inst'Class;
      buttons_P   : access QtAda6.QtCore.Qt.MouseButton.Inst'Class;
      modifiers_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class;
      source_P    : access QtAda6.QtCore.Qt.MouseEventSource.Inst'Class := null) return Class;
   function Create
     (type_K_P : access QtAda6.QtCore.QEvent.Type_K.Inst'Class; dev_P : access QtAda6.QtGui.QPointingDevice.Inst'Class;
      localPos_P  : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      scenePos_P  : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      globalPos_P : access QtAda6.QtCore.QPoint.Inst'Class; button_P : access QtAda6.QtCore.Qt.MouseButton.Inst'Class;
      buttons_P   : access QtAda6.QtCore.Qt.MouseButton.Inst'Class;
      modifiers_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class;
      source_P    : access QtAda6.QtCore.Qt.MouseEventSource.Inst'Class := null) return Class;
   function Create
     (type_K_P : access QtAda6.QtCore.QEvent.Type_K.Inst'Class; dev_P : access QtAda6.QtGui.QPointingDevice.Inst'Class;
      localPos_P  : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      scenePos_P  : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      globalPos_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      button_P    : access QtAda6.QtCore.Qt.MouseButton.Inst'Class;
      buttons_P   : access QtAda6.QtCore.Qt.MouseButton.Inst'Class;
      modifiers_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class;
      source_P    : access QtAda6.QtCore.Qt.MouseEventSource.Inst'Class := null) return Class;
   function Create
     (type_K_P : access QtAda6.QtCore.QEvent.Type_K.Inst'Class; dev_P : access QtAda6.QtGui.QPointingDevice.Inst'Class;
      point_P : access QtAda6.QtGui.QEventPoint.Inst'Class; button_P : access QtAda6.QtCore.Qt.MouseButton.Inst'Class;
      buttons_P   : access QtAda6.QtCore.Qt.MouseButton.Inst'Class;
      modifiers_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class;
      source_P    : access QtAda6.QtCore.Qt.MouseEventSource.Inst'Class) return Class;
   function button (self : access Inst) return access QtAda6.QtCore.Qt.MouseButton.Inst'Class;
   function buttons (self : access Inst) return access QtAda6.QtCore.Qt.MouseButton.Inst'Class;
   function clone (self : access Inst) return access QtAda6.QtGui.QSinglePointEvent.Inst'Class;
   function exclusivePointGrabber (self : access Inst) return access QtAda6.QtCore.QObject.Inst'Class;
   function globalPosition (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class;
   function isBeginEvent (self : access Inst) return bool;
   function isEndEvent (self : access Inst) return bool;
   function isUpdateEvent (self : access Inst) return bool;
   function position (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class;
   function scenePosition (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class;
   procedure setExclusivePointGrabber
     (self : access Inst; exclusiveGrabber_P : access QtAda6.QtCore.QObject.Inst'Class);
end QtAda6.QtGui.QSinglePointEvent;
