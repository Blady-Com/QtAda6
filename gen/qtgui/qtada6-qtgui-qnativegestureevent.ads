-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qnativegestureevent.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.Qt.NativeGestureType;
limited with QtAda6.QtGui.QPointingDevice;
limited with QtAda6.QtCore.QPointF;
limited with QtAda6.QtCore.QPoint;
with QtAda6.QtGui.QSinglePointEvent;
package QtAda6.QtGui.QNativeGestureEvent is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtGui.QSinglePointEvent.Inst with null record;
   type UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element is new Any;
   procedure Finalize (Self : in out Class);
   function Create (arg_1_P : access QtAda6.QtGui.QNativeGestureEvent.Inst'Class) return Class;
   function Create
     (type_K_P     : access QtAda6.QtCore.Qt.NativeGestureType.Inst'Class;
      dev_P        : access QtAda6.QtGui.QPointingDevice.Inst'Class; fingerCount_P : int;
      localPos_P   : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element;
      scenePos_P   : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element;
      globalPos_P : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element; value_P : float;
      delta_K_P    : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element;
      sequenceId_P : int := 0) return Class;
   function Create
     (type_K_P     : access QtAda6.QtCore.Qt.NativeGestureType.Inst'Class;
      dev_P        : access QtAda6.QtGui.QPointingDevice.Inst'Class;
      localPos_P   : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element;
      scenePos_P   : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element;
      globalPos_P : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element; value_P : float;
      sequenceId_P : int; intArgument_P : int) return Class;
   function clone (self : access Inst) return access QtAda6.QtGui.QNativeGestureEvent.Inst'Class;
   function delta_K (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class;
   function fingerCount (self : access Inst) return int;
   function gestureType (self : access Inst) return access QtAda6.QtCore.Qt.NativeGestureType.Inst'Class;
   function globalPos (self : access Inst) return access QtAda6.QtCore.QPoint.Inst'Class;
   function localPos (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class;
   function pos (self : access Inst) return access QtAda6.QtCore.QPoint.Inst'Class;
   function screenPos (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class;
   function value (self : access Inst) return float;
   function windowPos (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class;
end QtAda6.QtGui.QNativeGestureEvent;
