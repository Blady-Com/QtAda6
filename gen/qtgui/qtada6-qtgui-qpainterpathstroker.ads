-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qpainterpathstroker.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtGui.QPen;
limited with QtAda6.QtCore.Qt.PenStyle;
limited with QtAda6.QtGui.QColor;
limited with QtAda6.QtCore.Qt.PenCapStyle;
limited with QtAda6.QtGui.QPainterPath;
limited with QtAda6.QtCore.Qt.PenJoinStyle;
package QtAda6.QtGui.QPainterPathStroker is
   type Union_QtAda6_QtGui_QPen_QtAda6_QtCore_Qt_PenStyle_QtAda6_QtGui_QColor is access Any;
   type List_float is access Any;
   type Sequence_float is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (pen_P : Union_QtAda6_QtGui_QPen_QtAda6_QtCore_Qt_PenStyle_QtAda6_QtGui_QColor) return Class;
   function capStyle (self : access Inst) return access QtAda6.QtCore.Qt.PenCapStyle.Inst'Class;
   function createStroke
     (self : access Inst; path_P : access QtAda6.QtGui.QPainterPath.Inst'Class)
      return access QtAda6.QtGui.QPainterPath.Inst'Class;
   function curveThreshold (self : access Inst) return float;
   function dashOffset (self : access Inst) return float;
   function dashPattern (self : access Inst) return List_float;
   function joinStyle (self : access Inst) return access QtAda6.QtCore.Qt.PenJoinStyle.Inst'Class;
   function miterLimit (self : access Inst) return float;
   procedure setCapStyle (self : access Inst; style_P : access QtAda6.QtCore.Qt.PenCapStyle.Inst'Class);
   procedure setCurveThreshold (self : access Inst; threshold_P : float);
   procedure setDashOffset (self : access Inst; offset_P : float);
   procedure setDashPattern (self : access Inst; arg_1_P : access QtAda6.QtCore.Qt.PenStyle.Inst'Class);
   procedure setDashPattern (self : access Inst; dashPattern_P : Sequence_float);
   procedure setJoinStyle (self : access Inst; style_P : access QtAda6.QtCore.Qt.PenJoinStyle.Inst'Class);
   procedure setMiterLimit (self : access Inst; length_P : float);
   procedure setWidth (self : access Inst; width_P : float);
   function width (self : access Inst) return float;
end QtAda6.QtGui.QPainterPathStroker;
