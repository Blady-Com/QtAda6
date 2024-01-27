-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qgraphicseffect.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
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
with QtAda6.QtCore.Signal;
package QtAda6.QtWidgets.QGraphicsEffect is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtCore.QObject.Inst with null record;
   subtype CLASSVAR_Signal is QtAda6.QtCore.Signal.Class;
   type UNION_QtAda6_QtCore_QRectFQtAda6_QtCore_QRect is new Any;
   procedure Finalize (Self : in out Class);
   function enabledChanged (self : access Inst) return CLASSVAR_Signal;-- enabledChanged(bool)
   function Create (parent_P : access QtAda6.QtCore.QObject.Inst'Class := null) return Class;
   function boundingRect (self : access Inst) return access QtAda6.QtCore.QRectF.Inst'Class;
   function boundingRectFor
     (self : access Inst; sourceRect_P : UNION_QtAda6_QtCore_QRectFQtAda6_QtCore_QRect)
      return access QtAda6.QtCore.QRectF.Inst'Class;
   procedure draw (self : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class);
   procedure drawSource (self : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class);
   function isEnabled (self : access Inst) return bool;
   procedure setEnabled (self : access Inst; enable_P : bool);
   function sourceBoundingRect
     (self : access Inst; system_P : access QtAda6.QtCore.Qt.CoordinateSystem.Inst'Class := null)
      return access QtAda6.QtCore.QRectF.Inst'Class;
   procedure sourceChanged
     (self : access Inst; flags_P : access QtAda6.QtWidgets.QGraphicsEffect.ChangeFlag.Inst'Class);
   function sourceIsPixmap (self : access Inst) return bool;
   function sourcePixmap
     (self     : access Inst; system_P : access QtAda6.QtCore.Qt.CoordinateSystem.Inst'Class := null;
      offset_P : access QtAda6.QtCore.QPoint.Inst'Class                           := null;
      mode_P   : access QtAda6.QtWidgets.QGraphicsEffect.PixmapPadMode.Inst'Class := null)
      return access QtAda6.QtGui.QPixmap.Inst'Class;
   procedure update (self : access Inst);
   procedure updateBoundingRect (self : access Inst);
end QtAda6.QtWidgets.QGraphicsEffect;
