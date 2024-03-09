-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qgraphicsopacityeffect.ads
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
limited with QtAda6.QtGui.QPainter;
limited with QtAda6.QtGui.QBrush;
with QtAda6.QtWidgets.QGraphicsEffect;
package QtAda6.QtWidgets.QGraphicsOpacityEffect is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtWidgets.QGraphicsEffect.Inst with null record;
   type UNION_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap is
     new Any;
   procedure Finalize (Self : in out Class);
   function opacityChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- opacityChanged(double)
   function opacityMaskChanged
     (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- opacityMaskChanged(QBrush)
   function Create (parent_P : access QtAda6.QtCore.QObject.Inst'Class := null) return Class;
   procedure draw (self : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class);
   function opacity (self : access Inst) return float;
   function opacityMask (self : access Inst) return access QtAda6.QtGui.QBrush.Inst'Class;
   procedure setOpacity (self : access Inst; opacity_P : float);
   procedure setOpacityMask
     (self   : access Inst;
      mask_P : UNION_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap);
end QtAda6.QtWidgets.QGraphicsOpacityEffect;
