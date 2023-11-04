-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qgraphicsblureffect.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QObject;
limited with QtAda6.QtWidgets.QGraphicsBlurEffect.BlurHint;
limited with QtAda6.QtCore.QRectF;
limited with QtAda6.QtCore.QRect;
limited with QtAda6.QtGui.QPainter;
with QtAda6.QtWidgets.QGraphicsEffect;
package QtAda6.QtWidgets.QGraphicsBlurEffect is
   type ClassVar_Signal is access Any;
   type Optional_QtAda6_QtCore_QObject is access Any;
   type Union_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new QtAda6.QtWidgets.QGraphicsEffect.Inst with null record;
   procedure Finalize (Self : in out Class);
   blurHintsChanged  : ClassVar_Signal;-- blurHintsChanged(BlurHints)
   blurRadiusChanged : ClassVar_Signal;-- blurRadiusChanged(double)
   function Create (parent_P : Optional_QtAda6_QtCore_QObject) return Class;
   function blurHints (self : access Inst) return access QtAda6.QtWidgets.QGraphicsBlurEffect.BlurHint.Inst'Class;
   function blurRadius (self : access Inst) return float;
   function boundingRectFor
     (self : access Inst; rect_P : Union_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect)
      return access QtAda6.QtCore.QRectF.Inst'Class;
   procedure draw (self : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class);
   procedure setBlurHints
     (self : access Inst; hints_P : access QtAda6.QtWidgets.QGraphicsBlurEffect.BlurHint.Inst'Class);
   procedure setBlurRadius (self : access Inst; blurRadius_P : float);
end QtAda6.QtWidgets.QGraphicsBlurEffect;
