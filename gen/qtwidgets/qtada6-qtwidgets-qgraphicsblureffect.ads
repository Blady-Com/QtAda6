-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qgraphicsblureffect.ads
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
limited with QtAda6.QtWidgets.QGraphicsBlurEffect.BlurHint;
limited with QtAda6.QtCore.QRectF;
limited with QtAda6.QtGui.QPainter;
with QtAda6.QtWidgets.QGraphicsEffect;
package QtAda6.QtWidgets.QGraphicsBlurEffect is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtWidgets.QGraphicsEffect.Inst with null record;
   type UNION_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect is new Any;
   procedure Finalize (Self : in out Class);
   function blurHintsChanged
     (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- blurHintsChanged(BlurHints)
   function blurRadiusChanged
     (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- blurRadiusChanged(double)
   function Create (parent_P : access QtAda6.QtCore.QObject.Inst'Class := null) return Class;
   function blurHints (self : access Inst) return access QtAda6.QtWidgets.QGraphicsBlurEffect.BlurHint.Inst'Class;
   function blurRadius (self : access Inst) return float;
   function boundingRectFor
     (self : access Inst; rect_P : UNION_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect)
      return access QtAda6.QtCore.QRectF.Inst'Class;
   procedure draw (self : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class);
   procedure setBlurHints
     (self : access Inst; hints_P : access QtAda6.QtWidgets.QGraphicsBlurEffect.BlurHint.Inst'Class);
   procedure setBlurRadius (self : access Inst; blurRadius_P : float);
end QtAda6.QtWidgets.QGraphicsBlurEffect;
