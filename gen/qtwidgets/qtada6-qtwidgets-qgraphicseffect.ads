-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qgraphicseffect.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QRectF;
limited with QtAda6.QtCore.QRect;
limited with QtAda6.QtGui.QPainter;
limited with QtAda6.QtCore.Qt.CoordinateSystem;
limited with QtAda6.QtWidgets.QGraphicsEffect.ChangeFlag;
limited with QtAda6.QtCore.QPoint;
limited with QtAda6.QtWidgets.QGraphicsEffect.PixmapPadMode;
limited with QtAda6.QtGui.QPixmap;
with QtAda6.QtCore.QObject;
package QtAda6.QtWidgets.QGraphicsEffect is
   type ClassVar_Signal is access Any;
   type Optional_QtAda6_QtCore_QObject is access Any;
   type Union_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect is access Any;
   type Optional_QtAda6_QtCore_QPoint is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new QtAda6.QtCore.QObject.Inst with null record;
   procedure Finalize (Self : in out Class);
   enabledChanged : ClassVar_Signal;-- enabledChanged(bool)
   function Create (parent_P : Optional_QtAda6_QtCore_QObject) return Class;
   function boundingRect (self : access Inst) return access QtAda6.QtCore.QRectF.Inst'Class;
   function boundingRectFor
     (self : access Inst; sourceRect_P : Union_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect)
      return access QtAda6.QtCore.QRectF.Inst'Class;
   procedure draw (self : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class);
   procedure drawSource (self : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class);
   function isEnabled (self : access Inst) return bool;
   procedure setEnabled (self : access Inst; enable_P : bool);
   function sourceBoundingRect
     (self : access Inst; system_P : access QtAda6.QtCore.Qt.CoordinateSystem.Inst'Class)
      return access QtAda6.QtCore.QRectF.Inst'Class;
   procedure sourceChanged
     (self : access Inst; flags_P : access QtAda6.QtWidgets.QGraphicsEffect.ChangeFlag.Inst'Class);
   function sourceIsPixmap (self : access Inst) return bool;
   function sourcePixmap
     (self     : access Inst; system_P : access QtAda6.QtCore.Qt.CoordinateSystem.Inst'Class;
      offset_P : Optional_QtAda6_QtCore_QPoint;
      mode_P   : access QtAda6.QtWidgets.QGraphicsEffect.PixmapPadMode.Inst'Class)
      return access QtAda6.QtGui.QPixmap.Inst'Class;
   procedure update (self : access Inst);
   procedure updateBoundingRect (self : access Inst);
end QtAda6.QtWidgets.QGraphicsEffect;
