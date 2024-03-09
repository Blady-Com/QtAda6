-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qgraphicsdropshadoweffect.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.Signal;
limited with QtAda6.QtCore.QObject;
limited with QtAda6.QtCore.QRectF;
limited with QtAda6.QtGui.QColor;
limited with QtAda6.QtGui.QPainter;
limited with QtAda6.QtCore.QPointF;
with QtAda6.QtWidgets.QGraphicsEffect;
package QtAda6.QtWidgets.QGraphicsDropShadowEffect is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtWidgets.QGraphicsEffect.Inst with null record;
   type UNION_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect is new Any;
   type UNION_QtAda6_QtGui_QColor_QtAda6_QtGui_QRgba64_Any_QtAda6_QtCore_Qt_GlobalColor_str_int is new Any;
   type UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element is new Any;
   procedure Finalize (Self : in out Class);
   function blurRadiusChanged
     (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- blurRadiusChanged(double)
   function colorChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- colorChanged(QColor)
   function offsetChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- offsetChanged(QPointF)
   function Create (parent_P : access QtAda6.QtCore.QObject.Inst'Class := null) return Class;
   function blurRadius (self : access Inst) return float;
   function boundingRectFor
     (self : access Inst; rect_P : UNION_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect)
      return access QtAda6.QtCore.QRectF.Inst'Class;
   function color (self : access Inst) return access QtAda6.QtGui.QColor.Inst'Class;
   procedure draw (self : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class);
   function offset (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class;
   procedure setBlurRadius (self : access Inst; blurRadius_P : float);
   procedure setColor
     (self    : access Inst;
      color_P : UNION_QtAda6_QtGui_QColor_QtAda6_QtGui_QRgba64_Any_QtAda6_QtCore_Qt_GlobalColor_str_int);
   procedure setOffset (self : access Inst; d_P : float);
   procedure setOffset (self : access Inst; dx_P : float; dy_P : float);
   procedure setOffset
     (self : access Inst; ofs_P : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element);
   procedure setXOffset (self : access Inst; dx_P : float);
   procedure setYOffset (self : access Inst; dy_P : float);
   function xOffset (self : access Inst) return float;
   function yOffset (self : access Inst) return float;
end QtAda6.QtWidgets.QGraphicsDropShadowEffect;
