-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qconicalgradient.ads
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
package QtAda6.QtGui.QConicalGradient is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtGui.QGradient.Inst with null record;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (QConicalGradient_P : access QtAda6.QtGui.QConicalGradient.Inst'Class) return Class;
   function Create (center_P : access QtAda6.QtCore.QPointF.Inst'Class; startAngle_P : float) return Class;
   function Create (center_P : access QtAda6.QtCore.QPoint.Inst'Class; startAngle_P : float) return Class;
   function Create (center_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class; startAngle_P : float) return Class;
   function Create (cx_P : float; cy_P : float; startAngle_P : float) return Class;
   procedure U_copy_U;
   function angle (self : access Inst) return float;
   function center (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class;
   procedure setAngle (self : access Inst; angle_P : float);
   procedure setCenter (self : access Inst; center_P : access QtAda6.QtCore.QPointF.Inst'Class);
   procedure setCenter (self : access Inst; center_P : access QtAda6.QtCore.QPoint.Inst'Class);
   procedure setCenter (self : access Inst; center_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class);
   procedure setCenter (self : access Inst; x_P : float; y_P : float);
end QtAda6.QtGui.QConicalGradient;
