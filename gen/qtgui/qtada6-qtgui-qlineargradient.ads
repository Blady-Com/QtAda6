-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qlineargradient.ads
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
with QtAda6.QtGui.QGradient;
package QtAda6.QtGui.QLinearGradient is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtGui.QGradient.Inst with null record;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (QLinearGradient_P : access QtAda6.QtGui.QLinearGradient.Inst'Class) return Class;
   function Create
     (start_P : access QtAda6.QtCore.QPointF.Inst'Class; finalStop_P : access QtAda6.QtCore.QPointF.Inst'Class)
      return Class;
   function Create
     (start_P : access QtAda6.QtCore.QPointF.Inst'Class; finalStop_P : access QtAda6.QtCore.QPoint.Inst'Class)
      return Class;
   function Create
     (start_P     : access QtAda6.QtCore.QPointF.Inst'Class;
      finalStop_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class) return Class;
   function Create
     (start_P : access QtAda6.QtCore.QPoint.Inst'Class; finalStop_P : access QtAda6.QtCore.QPointF.Inst'Class)
      return Class;
   function Create
     (start_P : access QtAda6.QtCore.QPoint.Inst'Class; finalStop_P : access QtAda6.QtCore.QPoint.Inst'Class)
      return Class;
   function Create
     (start_P     : access QtAda6.QtCore.QPoint.Inst'Class;
      finalStop_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class) return Class;
   function Create
     (start_P     : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      finalStop_P : access QtAda6.QtCore.QPointF.Inst'Class) return Class;
   function Create
     (start_P     : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      finalStop_P : access QtAda6.QtCore.QPoint.Inst'Class) return Class;
   function Create
     (start_P     : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      finalStop_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class) return Class;
   function Create (xStart_P : float; yStart_P : float; xFinalStop_P : float; yFinalStop_P : float) return Class;
   procedure U_copy_U;
   function finalStop (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class;
   procedure setFinalStop (self : access Inst; stop_P : access QtAda6.QtCore.QPointF.Inst'Class);
   procedure setFinalStop (self : access Inst; stop_P : access QtAda6.QtCore.QPoint.Inst'Class);
   procedure setFinalStop (self : access Inst; stop_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class);
   procedure setFinalStop (self : access Inst; x_P : float; y_P : float);
   procedure setStart (self : access Inst; start_P : access QtAda6.QtCore.QPointF.Inst'Class);
   procedure setStart (self : access Inst; start_P : access QtAda6.QtCore.QPoint.Inst'Class);
   procedure setStart (self : access Inst; start_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class);
   procedure setStart (self : access Inst; x_P : float; y_P : float);
   function start (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class;
end QtAda6.QtGui.QLinearGradient;
