-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qpaintengine.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
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
   type Union_QtAda6_QtGui_QImage_str is access Any;
   type Union_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect is access Any;
   type Union_QtAda6_QtCore_QLineF_QtAda6_QtCore_QLine is access Any;
   type Union_QtAda6_QtGui_QPixmap_QtAda6_QtGui_QImage_str is access Any;
   type Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element is access Any;
   type Union_QtAda6_QtGui_QRegion_QtAda6_QtGui_QBitmap_QtAda6_QtGui_QPolygon_QtAda6_QtCore_QRect is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create (features_P : access QtAda6.QtGui.QPaintEngine.PaintEngineFeature.Inst'Class) return Class;
   function begin_K (self : access Inst; pdev_P : access QtAda6.QtGui.QPaintDevice.Inst'Class) return bool;
   procedure clearDirty (self : access Inst; df_P : access QtAda6.QtGui.QPaintEngine.DirtyFlag.Inst'Class);
   function coordinateOffset (self : access Inst) return access QtAda6.QtCore.QPoint.Inst'Class;
   function createPixmap
     (self : access Inst; size_P : access QtAda6.QtCore.QSize.Inst'Class) return access QtAda6.QtGui.QPixmap.Inst'Class;
   function createPixmapFromImage
     (self    : access Inst; image_P : Union_QtAda6_QtGui_QImage_str;
      flags_P : access QtAda6.QtCore.Qt.ImageConversionFlag.Inst'Class) return access QtAda6.QtGui.QPixmap.Inst'Class;
   procedure drawEllipse (self : access Inst; r_P : access QtAda6.QtCore.QRect.Inst'Class);
   procedure drawEllipse (self : access Inst; r_P : Union_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect);
   procedure drawImage
     (self    : access Inst; r_P : Union_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect; pm_P : Union_QtAda6_QtGui_QImage_str;
      sr_P    : Union_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect;
      flags_P : access QtAda6.QtCore.Qt.ImageConversionFlag.Inst'Class);
   procedure drawLines (self : access Inst; lines_P : access QtAda6.QtCore.QLine.Inst'Class; lineCount_P : int);
   procedure drawLines
     (self : access Inst; lines_P : Union_QtAda6_QtCore_QLineF_QtAda6_QtCore_QLine; lineCount_P : int);
   procedure drawPath (self : access Inst; path_P : access QtAda6.QtGui.QPainterPath.Inst'Class);
   procedure drawPixmap
     (self : access Inst; r_P : Union_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect;
      pm_P : Union_QtAda6_QtGui_QPixmap_QtAda6_QtGui_QImage_str; sr_P : Union_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect);
   procedure drawPoints (self : access Inst; points_P : access QtAda6.QtCore.QPoint.Inst'Class; pointCount_P : int);
   procedure drawPoints
     (self : access Inst; points_P : Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element;
      pointCount_P : int);
   procedure drawPolygon
     (self   : access Inst; points_P : access QtAda6.QtCore.QPoint.Inst'Class; pointCount_P : int;
      mode_P : access QtAda6.QtGui.QPaintEngine.PolygonDrawMode.Inst'Class);
   procedure drawPolygon
     (self : access Inst; points_P : Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element;
      pointCount_P : int; mode_P : access QtAda6.QtGui.QPaintEngine.PolygonDrawMode.Inst'Class);
   procedure drawRects (self : access Inst; rects_P : access QtAda6.QtCore.QRect.Inst'Class; rectCount_P : int);
   procedure drawRects
     (self : access Inst; rects_P : Union_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect; rectCount_P : int);
   procedure drawTextItem
     (self : access Inst; p_P : Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element;
      textItem_P : access QtAda6.QtGui.QTextItem.Inst'Class);
   procedure drawTiledPixmap
     (self     : access Inst; r_P : Union_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect;
      pixmap_P : Union_QtAda6_QtGui_QPixmap_QtAda6_QtGui_QImage_str;
      s_P      : Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element);
   function end_K (self : access Inst) return bool;
   function hasFeature
     (self : access Inst; feature_P : access QtAda6.QtGui.QPaintEngine.PaintEngineFeature.Inst'Class) return bool;
   function isActive (self : access Inst) return bool;
   function isExtended (self : access Inst) return bool;
   function paintDevice (self : access Inst) return access QtAda6.QtGui.QPaintDevice.Inst'Class;
   function painter (self : access Inst) return access QtAda6.QtGui.QPainter.Inst'Class;
   procedure setActive (self : access Inst; newState_P : bool);
   procedure setDirty (self : access Inst; df_P : access QtAda6.QtGui.QPaintEngine.DirtyFlag.Inst'Class);
   procedure setSystemClip
     (self       : access Inst;
      baseClip_P : Union_QtAda6_QtGui_QRegion_QtAda6_QtGui_QBitmap_QtAda6_QtGui_QPolygon_QtAda6_QtCore_QRect);
   procedure setSystemRect (self : access Inst; rect_P : access QtAda6.QtCore.QRect.Inst'Class);
   procedure syncState (self : access Inst);
   function systemClip (self : access Inst) return access QtAda6.QtGui.QRegion.Inst'Class;
   function systemRect (self : access Inst) return access QtAda6.QtCore.QRect.Inst'Class;
   function testDirty (self : access Inst; df_P : access QtAda6.QtGui.QPaintEngine.DirtyFlag.Inst'Class) return bool;
   function type_K_F (self : access Inst) return access QtAda6.QtGui.QPaintEngine.Type_K.Inst'Class;
   procedure updateState (self : access Inst; state_P : access QtAda6.QtGui.QPaintEngineState.Inst'Class);
end QtAda6.QtGui.QPaintEngine;
