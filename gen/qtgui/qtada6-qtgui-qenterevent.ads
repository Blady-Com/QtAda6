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
limited with QtAda6.QtCore.QPoint;
limited with QtAda6.QtGui.QPainterPath.Element;
limited with QtAda6.QtGui.QPointingDevice;
with QtAda6.QtGui.QSinglePointEvent;
package QtAda6.QtGui.QEnterEvent is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtGui.QSinglePointEvent.Inst with null record;
   type UNION_QtAda6_QtCore_QPointFQtAda6_QtCore_QPointQtAda6_QtGui_QPainterPath_Element is new Any;
   procedure Finalize (Self : in out Class);
   function Create (arg_1_P : access QtAda6.QtGui.QEnterEvent.Inst'Class) return Class;
   function Create
     (localPos_P  : UNION_QtAda6_QtCore_QPointFQtAda6_QtCore_QPointQtAda6_QtGui_QPainterPath_Element;
      scenePos_P  : UNION_QtAda6_QtCore_QPointFQtAda6_QtCore_QPointQtAda6_QtGui_QPainterPath_Element;
      globalPos_P : UNION_QtAda6_QtCore_QPointFQtAda6_QtCore_QPointQtAda6_QtGui_QPainterPath_Element;
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
