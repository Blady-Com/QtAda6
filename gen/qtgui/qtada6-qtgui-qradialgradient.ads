-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qradialgradient.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QPointF;
with QtAda6.QtGui.QGradient;
package QtAda6.QtGui.QRadialGradient is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtGui.QGradient.Inst with null record;
   type UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element is new Any;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (QRadialGradient_P : access QtAda6.QtGui.QRadialGradient.Inst'Class) return Class;
   function Create
     (center_P       : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element;
      centerRadius_P : float;
      focalPoint_P   : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element;
      focalRadius_P  : float) return Class;
   function Create
     (center_P : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element; radius_P : float)
      return Class;
   function Create
     (center_P : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element; radius_P : float;
      focalPoint_P : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element) return Class;
   function Create
     (cx_P : float; cy_P : float; centerRadius_P : float; fx_P : float; fy_P : float; focalRadius_P : float)
      return Class;
   function Create (cx_P : float; cy_P : float; radius_P : float) return Class;
   function Create (cx_P : float; cy_P : float; radius_P : float; fx_P : float; fy_P : float) return Class;
   procedure U_copy_U;
   function center (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class;
   function centerRadius (self : access Inst) return float;
   function focalPoint (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class;
   function focalRadius (self : access Inst) return float;
   function radius (self : access Inst) return float;
   procedure setCenter
     (self     : access Inst;
      center_P : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element);
   procedure setCenter (self : access Inst; x_P : float; y_P : float);
   procedure setCenterRadius (self : access Inst; radius_P : float);
   procedure setFocalPoint
     (self         : access Inst;
      focalPoint_P : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element);
   procedure setFocalPoint (self : access Inst; x_P : float; y_P : float);
   procedure setFocalRadius (self : access Inst; radius_P : float);
   procedure setRadius (self : access Inst; radius_P : float);
end QtAda6.QtGui.QRadialGradient;
