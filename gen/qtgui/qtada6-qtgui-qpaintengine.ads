-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qpaintengine.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtGui.QPaintEngine.PaintEngineFeature;
limited with QtAda6.QtGui.QPaintDevice;
limited with QtAda6.QtGui.QPaintEngine.DirtyFlag;
limited with QtAda6.QtCore.QPoint;
limited with QtAda6.QtCore.QSize;
limited with QtAda6.QtGui.QPixmap;
limited with QtAda6.QtGui.QImage;
limited with QtAda6.QtCore.Qt.ImageConversionFlag;
limited with QtAda6.QtCore.QRect;
limited with QtAda6.QtCore.QRectF;
limited with QtAda6.QtCore.QLine;
limited with QtAda6.QtCore.QLineF;
limited with QtAda6.QtGui.QPainterPath;
limited with QtAda6.QtCore.QPointF;
limited with QtAda6.QtGui.QPainterPath.Element;
limited with QtAda6.QtGui.QPaintEngine.PolygonDrawMode;
limited with QtAda6.QtGui.QTextItem;
limited with QtAda6.QtGui.QPainter;
limited with QtAda6.QtGui.QRegion;
limited with QtAda6.QtGui.QBitmap;
limited with QtAda6.QtGui.QPolygon;
limited with QtAda6.QtGui.QPaintEngine.Type_K;
limited with QtAda6.QtGui.QPaintEngineState;
package QtAda6.QtGui.QPaintEngine is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create (features_P : access QtAda6.QtGui.QPaintEngine.PaintEngineFeature.Inst'Class := null) return Class;
   function begin_K (self : access Inst; pdev_P : access QtAda6.QtGui.QPaintDevice.Inst'Class) return bool;
   procedure clearDirty (self : access Inst; df_P : access QtAda6.QtGui.QPaintEngine.DirtyFlag.Inst'Class);
   function coordinateOffset (self : access Inst) return access QtAda6.QtCore.QPoint.Inst'Class;
   function createPixmap
     (self : access Inst; size_P : access QtAda6.QtCore.QSize.Inst'Class) return access QtAda6.QtGui.QPixmap.Inst'Class;
   function createPixmapFromImage
     (self    : access Inst; image_P : access QtAda6.QtGui.QImage.Inst'Class;
      flags_P : access QtAda6.QtCore.Qt.ImageConversionFlag.Inst'Class := null)
      return access QtAda6.QtGui.QPixmap.Inst'Class;
   function createPixmapFromImage
     (self : access Inst; image_P : str; flags_P : access QtAda6.QtCore.Qt.ImageConversionFlag.Inst'Class := null)
      return access QtAda6.QtGui.QPixmap.Inst'Class;
   procedure drawEllipse (self : access Inst; r_P : access QtAda6.QtCore.QRect.Inst'Class);
   procedure drawEllipse (self : access Inst; r_P : access QtAda6.QtCore.QRectF.Inst'Class);
-- procedure drawEllipse(self : access Inst;r_P : access QtAda6.QtCore.QRect.Inst'Class);
   procedure drawImage
     (self    : access Inst; r_P : access QtAda6.QtCore.QRectF.Inst'Class; pm_P : access QtAda6.QtGui.QImage.Inst'Class;
      sr_P    : access QtAda6.QtCore.QRectF.Inst'Class;
      flags_P : access QtAda6.QtCore.Qt.ImageConversionFlag.Inst'Class := null);
   procedure drawImage
     (self    : access Inst; r_P : access QtAda6.QtCore.QRectF.Inst'Class; pm_P : access QtAda6.QtGui.QImage.Inst'Class;
      sr_P    : access QtAda6.QtCore.QRect.Inst'Class;
      flags_P : access QtAda6.QtCore.Qt.ImageConversionFlag.Inst'Class := null);
   procedure drawImage
     (self    : access Inst; r_P : access QtAda6.QtCore.QRectF.Inst'Class; pm_P : str;
      sr_P    : access QtAda6.QtCore.QRectF.Inst'Class;
      flags_P : access QtAda6.QtCore.Qt.ImageConversionFlag.Inst'Class := null);
   procedure drawImage
     (self    : access Inst; r_P : access QtAda6.QtCore.QRectF.Inst'Class; pm_P : str;
      sr_P    : access QtAda6.QtCore.QRect.Inst'Class;
      flags_P : access QtAda6.QtCore.Qt.ImageConversionFlag.Inst'Class := null);
   procedure drawImage
     (self    : access Inst; r_P : access QtAda6.QtCore.QRect.Inst'Class; pm_P : access QtAda6.QtGui.QImage.Inst'Class;
      sr_P    : access QtAda6.QtCore.QRectF.Inst'Class;
      flags_P : access QtAda6.QtCore.Qt.ImageConversionFlag.Inst'Class := null);
   procedure drawImage
     (self    : access Inst; r_P : access QtAda6.QtCore.QRect.Inst'Class; pm_P : access QtAda6.QtGui.QImage.Inst'Class;
      sr_P    : access QtAda6.QtCore.QRect.Inst'Class;
      flags_P : access QtAda6.QtCore.Qt.ImageConversionFlag.Inst'Class := null);
   procedure drawImage
     (self    : access Inst; r_P : access QtAda6.QtCore.QRect.Inst'Class; pm_P : str;
      sr_P    : access QtAda6.QtCore.QRectF.Inst'Class;
      flags_P : access QtAda6.QtCore.Qt.ImageConversionFlag.Inst'Class := null);
   procedure drawImage
     (self    : access Inst; r_P : access QtAda6.QtCore.QRect.Inst'Class; pm_P : str;
      sr_P    : access QtAda6.QtCore.QRect.Inst'Class;
      flags_P : access QtAda6.QtCore.Qt.ImageConversionFlag.Inst'Class := null);
   procedure drawLines (self : access Inst; lines_P : access QtAda6.QtCore.QLine.Inst'Class; lineCount_P : int);
   procedure drawLines (self : access Inst; lines_P : access QtAda6.QtCore.QLineF.Inst'Class; lineCount_P : int);
-- procedure drawLines(self : access Inst;lines_P : access QtAda6.QtCore.QLine.Inst'Class;lineCount_P : int);
   procedure drawPath (self : access Inst; path_P : access QtAda6.QtGui.QPainterPath.Inst'Class);
   procedure drawPixmap
     (self : access Inst; r_P : access QtAda6.QtCore.QRectF.Inst'Class; pm_P : access QtAda6.QtGui.QPixmap.Inst'Class;
      sr_P : access QtAda6.QtCore.QRectF.Inst'Class);
   procedure drawPixmap
     (self : access Inst; r_P : access QtAda6.QtCore.QRectF.Inst'Class; pm_P : access QtAda6.QtGui.QPixmap.Inst'Class;
      sr_P : access QtAda6.QtCore.QRect.Inst'Class);
   procedure drawPixmap
     (self : access Inst; r_P : access QtAda6.QtCore.QRectF.Inst'Class; pm_P : access QtAda6.QtGui.QImage.Inst'Class;
      sr_P : access QtAda6.QtCore.QRectF.Inst'Class);
   procedure drawPixmap
     (self : access Inst; r_P : access QtAda6.QtCore.QRectF.Inst'Class; pm_P : access QtAda6.QtGui.QImage.Inst'Class;
      sr_P : access QtAda6.QtCore.QRect.Inst'Class);
   procedure drawPixmap
     (self : access Inst; r_P : access QtAda6.QtCore.QRectF.Inst'Class; pm_P : str;
      sr_P : access QtAda6.QtCore.QRectF.Inst'Class);
   procedure drawPixmap
     (self : access Inst; r_P : access QtAda6.QtCore.QRectF.Inst'Class; pm_P : str;
      sr_P : access QtAda6.QtCore.QRect.Inst'Class);
   procedure drawPixmap
     (self : access Inst; r_P : access QtAda6.QtCore.QRect.Inst'Class; pm_P : access QtAda6.QtGui.QPixmap.Inst'Class;
      sr_P : access QtAda6.QtCore.QRectF.Inst'Class);
   procedure drawPixmap
     (self : access Inst; r_P : access QtAda6.QtCore.QRect.Inst'Class; pm_P : access QtAda6.QtGui.QPixmap.Inst'Class;
      sr_P : access QtAda6.QtCore.QRect.Inst'Class);
   procedure drawPixmap
     (self : access Inst; r_P : access QtAda6.QtCore.QRect.Inst'Class; pm_P : access QtAda6.QtGui.QImage.Inst'Class;
      sr_P : access QtAda6.QtCore.QRectF.Inst'Class);
   procedure drawPixmap
     (self : access Inst; r_P : access QtAda6.QtCore.QRect.Inst'Class; pm_P : access QtAda6.QtGui.QImage.Inst'Class;
      sr_P : access QtAda6.QtCore.QRect.Inst'Class);
   procedure drawPixmap
     (self : access Inst; r_P : access QtAda6.QtCore.QRect.Inst'Class; pm_P : str;
      sr_P : access QtAda6.QtCore.QRectF.Inst'Class);
   procedure drawPixmap
     (self : access Inst; r_P : access QtAda6.QtCore.QRect.Inst'Class; pm_P : str;
      sr_P : access QtAda6.QtCore.QRect.Inst'Class);
   procedure drawPoints (self : access Inst; points_P : access QtAda6.QtCore.QPoint.Inst'Class; pointCount_P : int);
   procedure drawPoints (self : access Inst; points_P : access QtAda6.QtCore.QPointF.Inst'Class; pointCount_P : int);
-- procedure drawPoints(self : access Inst;points_P : access QtAda6.QtCore.QPoint.Inst'Class;pointCount_P : int);
   procedure drawPoints
     (self : access Inst; points_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class; pointCount_P : int);
   procedure drawPolygon
     (self   : access Inst; points_P : access QtAda6.QtCore.QPoint.Inst'Class; pointCount_P : int;
      mode_P : access QtAda6.QtGui.QPaintEngine.PolygonDrawMode.Inst'Class);
   procedure drawPolygon
     (self   : access Inst; points_P : access QtAda6.QtCore.QPointF.Inst'Class; pointCount_P : int;
      mode_P : access QtAda6.QtGui.QPaintEngine.PolygonDrawMode.Inst'Class);
-- procedure drawPolygon(self : access Inst;points_P : access QtAda6.QtCore.QPoint.Inst'Class;pointCount_P : int;mode_P : access QtAda6.QtGui.QPaintEngine.PolygonDrawMode.Inst'Class);
   procedure drawPolygon
     (self   : access Inst; points_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class; pointCount_P : int;
      mode_P : access QtAda6.QtGui.QPaintEngine.PolygonDrawMode.Inst'Class);
   procedure drawRects (self : access Inst; rects_P : access QtAda6.QtCore.QRect.Inst'Class; rectCount_P : int);
   procedure drawRects (self : access Inst; rects_P : access QtAda6.QtCore.QRectF.Inst'Class; rectCount_P : int);
-- procedure drawRects(self : access Inst;rects_P : access QtAda6.QtCore.QRect.Inst'Class;rectCount_P : int);
   procedure drawTextItem
     (self       : access Inst; p_P : access QtAda6.QtCore.QPointF.Inst'Class;
      textItem_P : access QtAda6.QtGui.QTextItem.Inst'Class);
   procedure drawTextItem
     (self       : access Inst; p_P : access QtAda6.QtCore.QPoint.Inst'Class;
      textItem_P : access QtAda6.QtGui.QTextItem.Inst'Class);
   procedure drawTextItem
     (self       : access Inst; p_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      textItem_P : access QtAda6.QtGui.QTextItem.Inst'Class);
   procedure drawTiledPixmap
     (self     : access Inst; r_P : access QtAda6.QtCore.QRectF.Inst'Class;
      pixmap_P : access QtAda6.QtGui.QPixmap.Inst'Class; s_P : access QtAda6.QtCore.QPointF.Inst'Class);
   procedure drawTiledPixmap
     (self     : access Inst; r_P : access QtAda6.QtCore.QRectF.Inst'Class;
      pixmap_P : access QtAda6.QtGui.QPixmap.Inst'Class; s_P : access QtAda6.QtCore.QPoint.Inst'Class);
   procedure drawTiledPixmap
     (self     : access Inst; r_P : access QtAda6.QtCore.QRectF.Inst'Class;
      pixmap_P : access QtAda6.QtGui.QPixmap.Inst'Class; s_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class);
   procedure drawTiledPixmap
     (self     : access Inst; r_P : access QtAda6.QtCore.QRectF.Inst'Class;
      pixmap_P : access QtAda6.QtGui.QImage.Inst'Class; s_P : access QtAda6.QtCore.QPointF.Inst'Class);
   procedure drawTiledPixmap
     (self     : access Inst; r_P : access QtAda6.QtCore.QRectF.Inst'Class;
      pixmap_P : access QtAda6.QtGui.QImage.Inst'Class; s_P : access QtAda6.QtCore.QPoint.Inst'Class);
   procedure drawTiledPixmap
     (self     : access Inst; r_P : access QtAda6.QtCore.QRectF.Inst'Class;
      pixmap_P : access QtAda6.QtGui.QImage.Inst'Class; s_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class);
   procedure drawTiledPixmap
     (self : access Inst; r_P : access QtAda6.QtCore.QRectF.Inst'Class; pixmap_P : str;
      s_P  : access QtAda6.QtCore.QPointF.Inst'Class);
   procedure drawTiledPixmap
     (self : access Inst; r_P : access QtAda6.QtCore.QRectF.Inst'Class; pixmap_P : str;
      s_P  : access QtAda6.QtCore.QPoint.Inst'Class);
   procedure drawTiledPixmap
     (self : access Inst; r_P : access QtAda6.QtCore.QRectF.Inst'Class; pixmap_P : str;
      s_P  : access QtAda6.QtGui.QPainterPath.Element.Inst'Class);
   procedure drawTiledPixmap
     (self     : access Inst; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      pixmap_P : access QtAda6.QtGui.QPixmap.Inst'Class; s_P : access QtAda6.QtCore.QPointF.Inst'Class);
   procedure drawTiledPixmap
     (self     : access Inst; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      pixmap_P : access QtAda6.QtGui.QPixmap.Inst'Class; s_P : access QtAda6.QtCore.QPoint.Inst'Class);
   procedure drawTiledPixmap
     (self     : access Inst; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      pixmap_P : access QtAda6.QtGui.QPixmap.Inst'Class; s_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class);
   procedure drawTiledPixmap
     (self : access Inst; r_P : access QtAda6.QtCore.QRect.Inst'Class; pixmap_P : access QtAda6.QtGui.QImage.Inst'Class;
      s_P  : access QtAda6.QtCore.QPointF.Inst'Class);
   procedure drawTiledPixmap
     (self : access Inst; r_P : access QtAda6.QtCore.QRect.Inst'Class; pixmap_P : access QtAda6.QtGui.QImage.Inst'Class;
      s_P  : access QtAda6.QtCore.QPoint.Inst'Class);
   procedure drawTiledPixmap
     (self : access Inst; r_P : access QtAda6.QtCore.QRect.Inst'Class; pixmap_P : access QtAda6.QtGui.QImage.Inst'Class;
      s_P  : access QtAda6.QtGui.QPainterPath.Element.Inst'Class);
   procedure drawTiledPixmap
     (self : access Inst; r_P : access QtAda6.QtCore.QRect.Inst'Class; pixmap_P : str;
      s_P  : access QtAda6.QtCore.QPointF.Inst'Class);
   procedure drawTiledPixmap
     (self : access Inst; r_P : access QtAda6.QtCore.QRect.Inst'Class; pixmap_P : str;
      s_P  : access QtAda6.QtCore.QPoint.Inst'Class);
   procedure drawTiledPixmap
     (self : access Inst; r_P : access QtAda6.QtCore.QRect.Inst'Class; pixmap_P : str;
      s_P  : access QtAda6.QtGui.QPainterPath.Element.Inst'Class);
   function end_K (self : access Inst) return bool;
   function hasFeature
     (self : access Inst; feature_P : access QtAda6.QtGui.QPaintEngine.PaintEngineFeature.Inst'Class) return bool;
   function isActive (self : access Inst) return bool;
   function isExtended (self : access Inst) return bool;
   function paintDevice (self : access Inst) return access QtAda6.QtGui.QPaintDevice.Inst'Class;
   function painter (self : access Inst) return access QtAda6.QtGui.QPainter.Inst'Class;
   procedure setActive (self : access Inst; newState_P : bool);
   procedure setDirty (self : access Inst; df_P : access QtAda6.QtGui.QPaintEngine.DirtyFlag.Inst'Class);
   procedure setSystemClip (self : access Inst; baseClip_P : access QtAda6.QtGui.QRegion.Inst'Class);
   procedure setSystemClip (self : access Inst; baseClip_P : access QtAda6.QtGui.QBitmap.Inst'Class);
   procedure setSystemClip (self : access Inst; baseClip_P : access QtAda6.QtGui.QPolygon.Inst'Class);
   procedure setSystemClip (self : access Inst; baseClip_P : access QtAda6.QtCore.QRect.Inst'Class);
   procedure setSystemRect (self : access Inst; rect_P : access QtAda6.QtCore.QRect.Inst'Class);
   procedure syncState (self : access Inst);
   function systemClip (self : access Inst) return access QtAda6.QtGui.QRegion.Inst'Class;
   function systemRect (self : access Inst) return access QtAda6.QtCore.QRect.Inst'Class;
   function testDirty (self : access Inst; df_P : access QtAda6.QtGui.QPaintEngine.DirtyFlag.Inst'Class) return bool;
   function type_K_F (self : access Inst) return access QtAda6.QtGui.QPaintEngine.Type_K.Inst'Class;
   procedure updateState (self : access Inst; state_P : access QtAda6.QtGui.QPaintEngineState.Inst'Class);
end QtAda6.QtGui.QPaintEngine;
