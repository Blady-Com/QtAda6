-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qscrollevent.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtGui.QScrollEvent.ScrollState;
limited with QtAda6.QtCore.QPointF;
with QtAda6.QtCore.QEvent;
package QtAda6.QtGui.QScrollEvent is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtCore.QEvent.Inst with null record;
   type UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element is new Any;
   procedure Finalize (Self : in out Class);
   function Create (arg_1_P : access QtAda6.QtGui.QScrollEvent.Inst'Class) return Class;
   function Create
     (contentPos_P  : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element;
      overshoot_P   : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element;
      scrollState_P : access QtAda6.QtGui.QScrollEvent.ScrollState.Inst'Class) return Class;
   function clone (self : access Inst) return access QtAda6.QtGui.QScrollEvent.Inst'Class;
   function contentPos (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class;
   function overshootDistance (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class;
   function scrollState_F (self : access Inst) return access QtAda6.QtGui.QScrollEvent.ScrollState.Inst'Class;
end QtAda6.QtGui.QScrollEvent;
