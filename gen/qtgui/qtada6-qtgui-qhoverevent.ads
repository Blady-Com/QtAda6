-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qhoverevent.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QEvent.Type_K;
limited with QtAda6.QtCore.Qt.KeyboardModifier;
limited with QtAda6.QtGui.QPointingDevice;
limited with QtAda6.QtCore.QPoint;
limited with QtAda6.QtCore.QPointF;
with QtAda6.QtGui.QSinglePointEvent;
package QtAda6.QtGui.QHoverEvent is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtGui.QSinglePointEvent.Inst with null record;
   type UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element is new Any;
   procedure Finalize (Self : in out Class);
   function Create (arg_1_P : access QtAda6.QtGui.QHoverEvent.Inst'Class) return Class;
   function Create
     (type_K_P    : access QtAda6.QtCore.QEvent.Type_K.Inst'Class;
      pos_P       : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element;
      oldPos_P    : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element;
      modifiers_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class := null;
      device_P    : access QtAda6.QtGui.QPointingDevice.Inst'Class      := null) return Class;
   function Create
     (type_K_P    : access QtAda6.QtCore.QEvent.Type_K.Inst'Class;
      scenePos_P  : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element;
      globalPos_P : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element;
      oldPos_P    : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element;
      modifiers_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class := null;
      device_P    : access QtAda6.QtGui.QPointingDevice.Inst'Class      := null) return Class;
   function clone (self : access Inst) return access QtAda6.QtGui.QHoverEvent.Inst'Class;
   function isUpdateEvent (self : access Inst) return bool;
   function oldPos (self : access Inst) return access QtAda6.QtCore.QPoint.Inst'Class;
   function oldPosF (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class;
   function pos (self : access Inst) return access QtAda6.QtCore.QPoint.Inst'Class;
   function posF (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class;
end QtAda6.QtGui.QHoverEvent;
