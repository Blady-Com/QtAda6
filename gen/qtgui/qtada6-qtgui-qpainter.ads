-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qpainter.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtGui.QPaintDevice;
limited with QtAda6.QtGui.QBrush;
limited with QtAda6.QtCore.Qt.BGMode;
limited with QtAda6.QtCore.QRect;
limited with QtAda6.QtCore.QRectF;
limited with QtAda6.QtGui.QTextOption;
limited with QtAda6.QtCore.Qt.AlignmentFlag;
limited with QtAda6.QtCore.QPoint;
limited with QtAda6.QtGui.QPainterPath;
limited with QtAda6.QtGui.QRegion;
limited with QtAda6.QtGui.QTransform;
limited with QtAda6.QtGui.QPainter.CompositionMode;
limited with QtAda6.QtCore.QPointF;
limited with QtAda6.QtGui.QPolygon;
limited with QtAda6.QtGui.QPolygonF;
limited with QtAda6.QtGui.QPainterPath.Element;
limited with QtAda6.QtGui.QGlyphRun;
limited with QtAda6.QtGui.QImage;
limited with QtAda6.QtCore.Qt.ImageConversionFlag;
limited with QtAda6.QtCore.QLine;
limited with QtAda6.QtCore.QLineF;
limited with QtAda6.QtGui.QPicture;
limited with QtAda6.QtGui.QPixmap;
limited with QtAda6.QtGui.QPainter.PixmapFragment;
limited with QtAda6.QtGui.QPainter.PixmapFragmentHint;
limited with QtAda6.QtCore.Qt.FillRule;
limited with QtAda6.QtCore.Qt.SizeMode;
limited with QtAda6.QtGui.QStaticText;
limited with QtAda6.QtGui.QTextItem;
limited with QtAda6.QtCore.Qt.BrushStyle;
limited with QtAda6.QtCore.Qt.GlobalColor;
limited with QtAda6.QtGui.QColor;
limited with QtAda6.QtGui.QGradient;
limited with QtAda6.QtGui.QRgba64;
limited with QtAda6.QtGui.QGradient.Preset;
limited with QtAda6.QtGui.QFont;
limited with QtAda6.QtGui.QFontInfo;
limited with QtAda6.QtGui.QFontMetrics;
limited with QtAda6.QtCore.Qt.LayoutDirection;
limited with QtAda6.QtGui.QPaintEngine;
limited with QtAda6.QtGui.QPen;
limited with QtAda6.QtGui.QPainter.RenderHint;
limited with QtAda6.QtCore.Qt.ClipOperation;
limited with QtAda6.QtGui.QBitmap;
limited with QtAda6.QtCore.Qt.PenStyle;
limited with QtAda6.QtGui.QWindow;
package QtAda6.QtGui.QPainter is
   type Union_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect is access Any;
   type Union_QtAda6_QtGui_QTextOption_QtAda6_QtCore_Qt_AlignmentFlag is access Any;
   type Sequence_QtAda6_QtCore_QPointF is access Any;
   type Sequence_QtAda6_QtCore_QPoint is access Any;
   type Union_QtAda6_QtGui_QPolygon_Sequence_QtAda6_QtCore_QPoint_QtAda6_QtCore_QRect is access Any;
   type Union_QtAda6_QtGui_QPolygonF_Sequence_QtAda6_QtCore_QPointF_QtAda6_QtGui_QPolygon_QtAda6_QtCore_QRectF is
     access Any;
   type Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element is access Any;
   type Union_QtAda6_QtGui_QImage_str is access Any;
   type Union_QtAda6_QtCore_QLineF_QtAda6_QtCore_QLine is access Any;
   type Sequence_QtAda6_QtCore_QLineF is access Any;
   type Sequence_QtAda6_QtCore_QLine is access Any;
   type Union_QtAda6_QtGui_QPicture_int is access Any;
   type Union_QtAda6_QtGui_QPixmap_QtAda6_QtGui_QImage_str is access Any;
   type Sequence_QtAda6_QtCore_QRectF is access Any;
   type Sequence_QtAda6_QtCore_QRect is access Any;
   type Union_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap is
     access Any;
   type Union_QtAda6_QtGui_QColor_QtAda6_QtGui_QRgba64_Any_QtAda6_QtCore_Qt_GlobalColor_str_int is access Any;
   type Union_QtAda6_QtGui_QRegion_QtAda6_QtGui_QBitmap_QtAda6_QtGui_QPolygon_QtAda6_QtCore_QRect is access Any;
   type Union_QtAda6_QtGui_QFont_str_Sequence_str is access Any;
   type Union_QtAda6_QtGui_QPen_QtAda6_QtCore_Qt_PenStyle_QtAda6_QtGui_QColor is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (arg_1_P : access QtAda6.QtGui.QPaintDevice.Inst'Class) return Class;
   function Create (arg_1_P : access QtAda6.QtGui.QWindow.Inst'Class) return Class;
   function U_enter_U (self : access Inst) return access QtAda6.QtGui.QPainter.Inst'Class;
   procedure U_exit_U (self : access Inst; arg_1_P : Object; arg_2_P : Object; arg_3_P : Object);
   function background (self : access Inst) return access QtAda6.QtGui.QBrush.Inst'Class;
   function backgroundMode (self : access Inst) return access QtAda6.QtCore.Qt.BGMode.Inst'Class;
   function begin_K (self : access Inst; arg_1_P : access QtAda6.QtGui.QPaintDevice.Inst'Class) return bool;
   procedure beginNativePainting (self : access Inst);
   function boundingRect
     (self : access Inst; rect_P : access QtAda6.QtCore.QRect.Inst'Class; flags_P : int; text_P : str)
      return access QtAda6.QtCore.QRect.Inst'Class;
   function boundingRect
     (self : access Inst; rect_P : Union_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect; flags_P : int; text_P : str)
      return access QtAda6.QtCore.QRectF.Inst'Class;
   function boundingRect
     (self : access Inst; rect_P : Union_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect; text_P : str;
      o_P  : Union_QtAda6_QtGui_QTextOption_QtAda6_QtCore_Qt_AlignmentFlag)
      return access QtAda6.QtCore.QRectF.Inst'Class;
   function boundingRect
     (self : access Inst; x_P : int; y_P : int; w_P : int; h_P : int; flags_P : int; text_P : str)
      return access QtAda6.QtCore.QRect.Inst'Class;
   function brush (self : access Inst) return access QtAda6.QtGui.QBrush.Inst'Class;
   function brushOrigin (self : access Inst) return access QtAda6.QtCore.QPoint.Inst'Class;
   function clipBoundingRect (self : access Inst) return access QtAda6.QtCore.QRectF.Inst'Class;
   function clipPath (self : access Inst) return access QtAda6.QtGui.QPainterPath.Inst'Class;
   function clipRegion (self : access Inst) return access QtAda6.QtGui.QRegion.Inst'Class;
   function combinedTransform (self : access Inst) return access QtAda6.QtGui.QTransform.Inst'Class;
   function compositionMode_F (self : access Inst) return access QtAda6.QtGui.QPainter.CompositionMode.Inst'Class;
   function device (self : access Inst) return access QtAda6.QtGui.QPaintDevice.Inst'Class;
   function deviceTransform (self : access Inst) return access QtAda6.QtGui.QTransform.Inst'Class;
   procedure drawArc (self : access Inst; arg_1_P : access QtAda6.QtCore.QRect.Inst'Class; a_P : int; alen_P : int);
   procedure drawArc
     (self : access Inst; rect_P : Union_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect; a_P : int; alen_P : int);
   procedure drawArc (self : access Inst; x_P : int; y_P : int; w_P : int; h_P : int; a_P : int; alen_P : int);
   procedure drawChord (self : access Inst; arg_1_P : access QtAda6.QtCore.QRect.Inst'Class; a_P : int; alen_P : int);
   procedure drawChord
     (self : access Inst; rect_P : Union_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect; a_P : int; alen_P : int);
   procedure drawChord (self : access Inst; x_P : int; y_P : int; w_P : int; h_P : int; a_P : int; alen_P : int);
   procedure drawConvexPolygon (self : access Inst; arg_1_P : Sequence_QtAda6_QtCore_QPointF);
   procedure drawConvexPolygon (self : access Inst; arg_1_P : Sequence_QtAda6_QtCore_QPoint);
   procedure drawConvexPolygon (self : access Inst; arg_1_P : access QtAda6.QtGui.QPolygon.Inst'Class);
   procedure drawConvexPolygon
     (self : access Inst; polygon_P : Union_QtAda6_QtGui_QPolygon_Sequence_QtAda6_QtCore_QPoint_QtAda6_QtCore_QRect);
   procedure drawConvexPolygon
     (self      : access Inst;
      polygon_P : Union_QtAda6_QtGui_QPolygonF_Sequence_QtAda6_QtCore_QPointF_QtAda6_QtGui_QPolygon_QtAda6_QtCore_QRectF);
   procedure drawEllipse
     (self : access Inst; center_P : access QtAda6.QtCore.QPoint.Inst'Class; rx_P : int; ry_P : int);
   procedure drawEllipse
     (self : access Inst; center_P : Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element;
      rx_P : float; ry_P : float);
   procedure drawEllipse (self : access Inst; r_P : access QtAda6.QtCore.QRect.Inst'Class);
   procedure drawEllipse (self : access Inst; r_P : Union_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect);
   procedure drawEllipse (self : access Inst; x_P : int; y_P : int; w_P : int; h_P : int);
   procedure drawGlyphRun
     (self       : access Inst;
      position_P : Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element;
      glyphRun_P : access QtAda6.QtGui.QGlyphRun.Inst'Class);
   procedure drawImage
     (self : access Inst; p_P : access QtAda6.QtCore.QPoint.Inst'Class; image_P : Union_QtAda6_QtGui_QImage_str);
   procedure drawImage
     (self : access Inst; p_P : access QtAda6.QtCore.QPoint.Inst'Class; image_P : Union_QtAda6_QtGui_QImage_str;
      sr_P : access QtAda6.QtCore.QRect.Inst'Class; flags_P : access QtAda6.QtCore.Qt.ImageConversionFlag.Inst'Class);
   procedure drawImage
     (self    : access Inst; p_P : Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element;
      image_P : Union_QtAda6_QtGui_QImage_str);
   procedure drawImage
     (self    : access Inst; p_P : Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element;
      image_P : Union_QtAda6_QtGui_QImage_str; sr_P : Union_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect;
      flags_P : access QtAda6.QtCore.Qt.ImageConversionFlag.Inst'Class);
   procedure drawImage
     (self : access Inst; r_P : access QtAda6.QtCore.QRect.Inst'Class; image_P : Union_QtAda6_QtGui_QImage_str);
   procedure drawImage
     (self    : access Inst; r_P : Union_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect;
      image_P : Union_QtAda6_QtGui_QImage_str);
   procedure drawImage
     (self : access Inst; targetRect_P : access QtAda6.QtCore.QRect.Inst'Class; image_P : Union_QtAda6_QtGui_QImage_str;
      sourceRect_P : access QtAda6.QtCore.QRect.Inst'Class;
      flags_P      : access QtAda6.QtCore.Qt.ImageConversionFlag.Inst'Class);
   procedure drawImage
     (self    : access Inst; targetRect_P : Union_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect;
      image_P : Union_QtAda6_QtGui_QImage_str; sourceRect_P : Union_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect;
      flags_P : access QtAda6.QtCore.Qt.ImageConversionFlag.Inst'Class);
   procedure drawImage
     (self : access Inst; x_P : int; y_P : int; image_P : Union_QtAda6_QtGui_QImage_str; sx_P : int; sy_P : int;
      sw_P : int; sh_P : int; flags_P : access QtAda6.QtCore.Qt.ImageConversionFlag.Inst'Class);
   procedure drawLine (self : access Inst; line_P : access QtAda6.QtCore.QLine.Inst'Class);
   procedure drawLine (self : access Inst; line_P : Union_QtAda6_QtCore_QLineF_QtAda6_QtCore_QLine);
   procedure drawLine
     (self : access Inst; p1_P : access QtAda6.QtCore.QPoint.Inst'Class; p2_P : access QtAda6.QtCore.QPoint.Inst'Class);
   procedure drawLine
     (self : access Inst; p1_P : Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element;
      p2_P : Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element);
   procedure drawLine (self : access Inst; x1_P : int; y1_P : int; x2_P : int; y2_P : int);
   procedure drawLines (self : access Inst; lines_P : Sequence_QtAda6_QtCore_QLineF);
   procedure drawLines (self : access Inst; lines_P : Sequence_QtAda6_QtCore_QLine);
   procedure drawLines
     (self : access Inst; lines_P : Union_QtAda6_QtCore_QLineF_QtAda6_QtCore_QLine; lineCount_P : int);
   procedure drawLines (self : access Inst; pointPairs_P : Sequence_QtAda6_QtCore_QPointF);
   procedure drawLines (self : access Inst; pointPairs_P : Sequence_QtAda6_QtCore_QPoint);
   procedure drawPath (self : access Inst; path_P : access QtAda6.QtGui.QPainterPath.Inst'Class);
   procedure drawPicture
     (self : access Inst; p_P : access QtAda6.QtCore.QPoint.Inst'Class; picture_P : Union_QtAda6_QtGui_QPicture_int);
   procedure drawPicture
     (self      : access Inst; p_P : Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element;
      picture_P : Union_QtAda6_QtGui_QPicture_int);
   procedure drawPicture (self : access Inst; x_P : int; y_P : int; picture_P : Union_QtAda6_QtGui_QPicture_int);
   procedure drawPie (self : access Inst; arg_1_P : access QtAda6.QtCore.QRect.Inst'Class; a_P : int; alen_P : int);
   procedure drawPie
     (self : access Inst; rect_P : Union_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect; a_P : int; alen_P : int);
   procedure drawPie (self : access Inst; x_P : int; y_P : int; w_P : int; h_P : int; a_P : int; alen_P : int);
   procedure drawPixmap
     (self : access Inst; p_P : access QtAda6.QtCore.QPoint.Inst'Class;
      pm_P : Union_QtAda6_QtGui_QPixmap_QtAda6_QtGui_QImage_str);
   procedure drawPixmap
     (self : access Inst; p_P : access QtAda6.QtCore.QPoint.Inst'Class;
      pm_P : Union_QtAda6_QtGui_QPixmap_QtAda6_QtGui_QImage_str; sr_P : access QtAda6.QtCore.QRect.Inst'Class);
   procedure drawPixmap
     (self : access Inst; p_P : Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element;
      pm_P : Union_QtAda6_QtGui_QPixmap_QtAda6_QtGui_QImage_str);
   procedure drawPixmap
     (self : access Inst; p_P : Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element;
      pm_P : Union_QtAda6_QtGui_QPixmap_QtAda6_QtGui_QImage_str; sr_P : Union_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect);
   procedure drawPixmap
     (self : access Inst; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      pm_P : Union_QtAda6_QtGui_QPixmap_QtAda6_QtGui_QImage_str);
   procedure drawPixmap
     (self         : access Inst; targetRect_P : access QtAda6.QtCore.QRect.Inst'Class;
      pixmap_P     : Union_QtAda6_QtGui_QPixmap_QtAda6_QtGui_QImage_str;
      sourceRect_P : access QtAda6.QtCore.QRect.Inst'Class);
   procedure drawPixmap
     (self         : access Inst; targetRect_P : Union_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect;
      pixmap_P     : Union_QtAda6_QtGui_QPixmap_QtAda6_QtGui_QImage_str;
      sourceRect_P : Union_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect);
   procedure drawPixmap
     (self : access Inst; x_P : int; y_P : int; pm_P : Union_QtAda6_QtGui_QPixmap_QtAda6_QtGui_QImage_str);
   procedure drawPixmap
     (self : access Inst; x_P : int; y_P : int; pm_P : Union_QtAda6_QtGui_QPixmap_QtAda6_QtGui_QImage_str; sx_P : int;
      sy_P : int; sw_P : int; sh_P : int);
   procedure drawPixmap
     (self : access Inst; x_P : int; y_P : int; w_P : int; h_P : int;
      pm_P : Union_QtAda6_QtGui_QPixmap_QtAda6_QtGui_QImage_str);
   procedure drawPixmap
     (self : access Inst; x_P : int; y_P : int; w_P : int; h_P : int;
      pm_P : Union_QtAda6_QtGui_QPixmap_QtAda6_QtGui_QImage_str; sx_P : int; sy_P : int; sw_P : int; sh_P : int);
   procedure drawPixmapFragments
     (self : access Inst; fragments_P : access QtAda6.QtGui.QPainter.PixmapFragment.Inst'Class; fragmentCount_P : int;
      pixmap_P : Union_QtAda6_QtGui_QPixmap_QtAda6_QtGui_QImage_str;
      hints_P  : access QtAda6.QtGui.QPainter.PixmapFragmentHint.Inst'Class);
   procedure drawPoint (self : access Inst; p_P : access QtAda6.QtCore.QPoint.Inst'Class);
   procedure drawPoint
     (self : access Inst; pt_P : Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element);
   procedure drawPoint (self : access Inst; x_P : int; y_P : int);
   procedure drawPoints (self : access Inst; arg_1_P : Sequence_QtAda6_QtCore_QPointF);
   procedure drawPoints (self : access Inst; arg_1_P : Sequence_QtAda6_QtCore_QPoint);
   procedure drawPoints
     (self : access Inst; points_P : Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element;
      pointCount_P : int);
   procedure drawPoints
     (self : access Inst; points_P : Union_QtAda6_QtGui_QPolygon_Sequence_QtAda6_QtCore_QPoint_QtAda6_QtCore_QRect);
   procedure drawPoints
     (self     : access Inst;
      points_P : Union_QtAda6_QtGui_QPolygonF_Sequence_QtAda6_QtCore_QPointF_QtAda6_QtGui_QPolygon_QtAda6_QtCore_QRectF);
   procedure drawPointsNp
     (self : access Inst; x_P : shibokensupport.signature.mapping.ArrayLikeVariable;
      y_P  : shibokensupport.signature.mapping.ArrayLikeVariable);
   procedure drawPolygon
     (self    : access Inst; arg_1_P : Sequence_QtAda6_QtCore_QPointF;
      arg_2_P : access QtAda6.QtCore.Qt.FillRule.Inst'Class);
   procedure drawPolygon
     (self    : access Inst; arg_1_P : Sequence_QtAda6_QtCore_QPoint;
      arg_2_P : access QtAda6.QtCore.Qt.FillRule.Inst'Class);
   procedure drawPolygon
     (self : access Inst; polygon_P : Union_QtAda6_QtGui_QPolygon_Sequence_QtAda6_QtCore_QPoint_QtAda6_QtCore_QRect;
      fillRule_P : access QtAda6.QtCore.Qt.FillRule.Inst'Class);
   procedure drawPolygon
     (self       : access Inst;
      polygon_P : Union_QtAda6_QtGui_QPolygonF_Sequence_QtAda6_QtCore_QPointF_QtAda6_QtGui_QPolygon_QtAda6_QtCore_QRectF;
      fillRule_P : access QtAda6.QtCore.Qt.FillRule.Inst'Class);
   procedure drawPolyline (self : access Inst; arg_1_P : Sequence_QtAda6_QtCore_QPointF);
   procedure drawPolyline (self : access Inst; arg_1_P : Sequence_QtAda6_QtCore_QPoint);
   procedure drawPolyline
     (self : access Inst; polygon_P : Union_QtAda6_QtGui_QPolygon_Sequence_QtAda6_QtCore_QPoint_QtAda6_QtCore_QRect);
   procedure drawPolyline
     (self       : access Inst;
      polyline_P : Union_QtAda6_QtGui_QPolygonF_Sequence_QtAda6_QtCore_QPointF_QtAda6_QtGui_QPolygon_QtAda6_QtCore_QRectF);
   procedure drawRect (self : access Inst; rect_P : access QtAda6.QtCore.QRect.Inst'Class);
   procedure drawRect (self : access Inst; rect_P : Union_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect);
   procedure drawRect (self : access Inst; x1_P : int; y1_P : int; w_P : int; h_P : int);
   procedure drawRects (self : access Inst; rectangles_P : Sequence_QtAda6_QtCore_QRectF);
   procedure drawRects (self : access Inst; rectangles_P : Sequence_QtAda6_QtCore_QRect);
   procedure drawRects
     (self : access Inst; rects_P : Union_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect; rectCount_P : int);
   procedure drawRoundedRect
     (self   : access Inst; rect_P : access QtAda6.QtCore.QRect.Inst'Class; xRadius_P : float; yRadius_P : float;
      mode_P : access QtAda6.QtCore.Qt.SizeMode.Inst'Class);
   procedure drawRoundedRect
     (self : access Inst; rect_P : Union_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect; xRadius_P : float; yRadius_P : float;
      mode_P : access QtAda6.QtCore.Qt.SizeMode.Inst'Class);
   procedure drawRoundedRect
     (self   : access Inst; x_P : int; y_P : int; w_P : int; h_P : int; xRadius_P : float; yRadius_P : float;
      mode_P : access QtAda6.QtCore.Qt.SizeMode.Inst'Class);
   procedure drawStaticText
     (self : access Inst; left_P : int; top_P : int; staticText_P : access QtAda6.QtGui.QStaticText.Inst'Class);
   procedure drawStaticText
     (self         : access Inst; topLeftPosition_P : access QtAda6.QtCore.QPoint.Inst'Class;
      staticText_P : access QtAda6.QtGui.QStaticText.Inst'Class);
   procedure drawStaticText
     (self              : access Inst;
      topLeftPosition_P : Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element;
      staticText_P      : access QtAda6.QtGui.QStaticText.Inst'Class);
   procedure drawText (self : access Inst; p_P : access QtAda6.QtCore.QPoint.Inst'Class; s_P : str);
   procedure drawText
     (self : access Inst; p_P : Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element;
      s_P  : str);
   function drawText
     (self : access Inst; r_P : access QtAda6.QtCore.QRect.Inst'Class; flags_P : int; text_P : str)
      return access QtAda6.QtCore.QRect.Inst'Class;
   function drawText
     (self : access Inst; r_P : Union_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect; flags_P : int; text_P : str)
      return access QtAda6.QtCore.QRectF.Inst'Class;
   procedure drawText
     (self : access Inst; r_P : Union_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect; text_P : str;
      o_P  : Union_QtAda6_QtGui_QTextOption_QtAda6_QtCore_Qt_AlignmentFlag);
   procedure drawText (self : access Inst; x_P : int; y_P : int; s_P : str);
   procedure drawText (self : access Inst; x_P : int; y_P : int; w_P : int; h_P : int; flags_P : int; text_P : str);
   procedure drawTextItem
     (self : access Inst; p_P : access QtAda6.QtCore.QPoint.Inst'Class;
      ti_P : access QtAda6.QtGui.QTextItem.Inst'Class);
   procedure drawTextItem
     (self : access Inst; p_P : Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element;
      ti_P : access QtAda6.QtGui.QTextItem.Inst'Class);
   procedure drawTextItem (self : access Inst; x_P : int; y_P : int; ti_P : access QtAda6.QtGui.QTextItem.Inst'Class);
   procedure drawTiledPixmap
     (self    : access Inst; arg_1_P : access QtAda6.QtCore.QRect.Inst'Class;
      arg_2_P : Union_QtAda6_QtGui_QPixmap_QtAda6_QtGui_QImage_str; pos_P : access QtAda6.QtCore.QPoint.Inst'Class);
   procedure drawTiledPixmap
     (self     : access Inst; rect_P : Union_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect;
      pm_P     : Union_QtAda6_QtGui_QPixmap_QtAda6_QtGui_QImage_str;
      offset_P : Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element);
   procedure drawTiledPixmap
     (self    : access Inst; x_P : int; y_P : int; w_P : int; h_P : int;
      arg_5_P : Union_QtAda6_QtGui_QPixmap_QtAda6_QtGui_QImage_str; sx_P : int; sy_P : int);
   function end_K (self : access Inst) return bool;
   procedure endNativePainting (self : access Inst);
   procedure eraseRect (self : access Inst; arg_1_P : access QtAda6.QtCore.QRect.Inst'Class);
   procedure eraseRect (self : access Inst; arg_1_P : Union_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect);
   procedure eraseRect (self : access Inst; x_P : int; y_P : int; w_P : int; h_P : int);
   procedure fillPath
     (self    : access Inst; path_P : access QtAda6.QtGui.QPainterPath.Inst'Class;
      brush_P : Union_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap);
   procedure fillRect
     (self    : access Inst; arg_1_P : access QtAda6.QtCore.QRect.Inst'Class;
      arg_2_P : Union_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap);
   procedure fillRect
     (self    : access Inst; arg_1_P : access QtAda6.QtCore.QRect.Inst'Class;
      color_P : Union_QtAda6_QtGui_QColor_QtAda6_QtGui_QRgba64_Any_QtAda6_QtCore_Qt_GlobalColor_str_int);
   procedure fillRect
     (self    : access Inst; arg_1_P : Union_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect;
      arg_2_P : Union_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap);
   procedure fillRect
     (self    : access Inst; arg_1_P : Union_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect;
      color_P : Union_QtAda6_QtGui_QColor_QtAda6_QtGui_QRgba64_Any_QtAda6_QtCore_Qt_GlobalColor_str_int);
   procedure fillRect
     (self : access Inst; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      c_P  : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class);
   procedure fillRect (self : access Inst; r_P : access QtAda6.QtCore.QRect.Inst'Class; c_P : int);
   procedure fillRect
     (self     : access Inst; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      preset_P : access QtAda6.QtGui.QGradient.Preset.Inst'Class);
   procedure fillRect
     (self    : access Inst; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      style_P : access QtAda6.QtCore.Qt.BrushStyle.Inst'Class);
   procedure fillRect
     (self : access Inst; r_P : Union_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect;
      c_P  : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class);
   procedure fillRect
     (self     : access Inst; r_P : Union_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect;
      preset_P : access QtAda6.QtGui.QGradient.Preset.Inst'Class);
   procedure fillRect
     (self    : access Inst; r_P : Union_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect;
      style_P : access QtAda6.QtCore.Qt.BrushStyle.Inst'Class);
   procedure fillRect
     (self    : access Inst; x_P : int; y_P : int; w_P : int; h_P : int;
      arg_5_P : Union_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap);
   procedure fillRect
     (self : access Inst; x_P : int; y_P : int; w_P : int; h_P : int;
      c_P  : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class);
   procedure fillRect (self : access Inst; x_P : int; y_P : int; w_P : int; h_P : int; c_P : int);
   procedure fillRect
     (self    : access Inst; x_P : int; y_P : int; w_P : int; h_P : int;
      color_P : Union_QtAda6_QtGui_QColor_QtAda6_QtGui_QRgba64_Any_QtAda6_QtCore_Qt_GlobalColor_str_int);
   procedure fillRect
     (self     : access Inst; x_P : int; y_P : int; w_P : int; h_P : int;
      preset_P : access QtAda6.QtGui.QGradient.Preset.Inst'Class);
   procedure fillRect
     (self    : access Inst; x_P : int; y_P : int; w_P : int; h_P : int;
      style_P : access QtAda6.QtCore.Qt.BrushStyle.Inst'Class);
   function font (self : access Inst) return access QtAda6.QtGui.QFont.Inst'Class;
   function fontInfo (self : access Inst) return access QtAda6.QtGui.QFontInfo.Inst'Class;
   function fontMetrics (self : access Inst) return access QtAda6.QtGui.QFontMetrics.Inst'Class;
   function hasClipping (self : access Inst) return bool;
   function isActive (self : access Inst) return bool;
   function layoutDirection (self : access Inst) return access QtAda6.QtCore.Qt.LayoutDirection.Inst'Class;
   function opacity (self : access Inst) return float;
   function paintEngine (self : access Inst) return access QtAda6.QtGui.QPaintEngine.Inst'Class;
   function pen (self : access Inst) return access QtAda6.QtGui.QPen.Inst'Class;
   function renderHints (self : access Inst) return access QtAda6.QtGui.QPainter.RenderHint.Inst'Class;
   procedure resetTransform (self : access Inst);
   procedure restore (self : access Inst);
   procedure rotate (self : access Inst; a_P : float);
   procedure save (self : access Inst);
   procedure scale (self : access Inst; sx_P : float; sy_P : float);
   procedure setBackground
     (self : access Inst;
      bg_P : Union_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap);
   procedure setBackgroundMode (self : access Inst; mode_P : access QtAda6.QtCore.Qt.BGMode.Inst'Class);
   procedure setBrush
     (self    : access Inst;
      brush_P : Union_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap);
   procedure setBrush (self : access Inst; style_P : access QtAda6.QtCore.Qt.BrushStyle.Inst'Class);
   procedure setBrush (self : access Inst; brush_P : access QtAda6.QtGui.QColor.Inst'Class);
   procedure setBrushOrigin (self : access Inst; arg_1_P : access QtAda6.QtCore.QPoint.Inst'Class);
   procedure setBrushOrigin
     (self : access Inst; arg_1_P : Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element);
   procedure setBrushOrigin (self : access Inst; x_P : int; y_P : int);
   procedure setClipPath
     (self : access Inst; path_P : access QtAda6.QtGui.QPainterPath.Inst'Class;
      op_P : access QtAda6.QtCore.Qt.ClipOperation.Inst'Class);
   procedure setClipRect
     (self : access Inst; arg_1_P : access QtAda6.QtCore.QRect.Inst'Class;
      op_P : access QtAda6.QtCore.Qt.ClipOperation.Inst'Class);
   procedure setClipRect
     (self : access Inst; arg_1_P : Union_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect;
      op_P : access QtAda6.QtCore.Qt.ClipOperation.Inst'Class);
   procedure setClipRect
     (self : access Inst; x_P : int; y_P : int; w_P : int; h_P : int;
      op_P : access QtAda6.QtCore.Qt.ClipOperation.Inst'Class);
   procedure setClipRegion
     (self    : access Inst;
      arg_1_P : Union_QtAda6_QtGui_QRegion_QtAda6_QtGui_QBitmap_QtAda6_QtGui_QPolygon_QtAda6_QtCore_QRect;
      op_P    : access QtAda6.QtCore.Qt.ClipOperation.Inst'Class);
   procedure setClipping (self : access Inst; enable_P : bool);
   procedure setCompositionMode (self : access Inst; mode_P : access QtAda6.QtGui.QPainter.CompositionMode.Inst'Class);
   procedure setFont (self : access Inst; f_P : Union_QtAda6_QtGui_QFont_str_Sequence_str);
   procedure setLayoutDirection (self : access Inst; direction_P : access QtAda6.QtCore.Qt.LayoutDirection.Inst'Class);
   procedure setOpacity (self : access Inst; opacity_P : float);
   procedure setPen
     (self    : access Inst;
      color_P : Union_QtAda6_QtGui_QColor_QtAda6_QtGui_QRgba64_Any_QtAda6_QtCore_Qt_GlobalColor_str_int);
   procedure setPen (self : access Inst; pen_P : Union_QtAda6_QtGui_QPen_QtAda6_QtCore_Qt_PenStyle_QtAda6_QtGui_QColor);
   procedure setPen (self : access Inst; style_P : access QtAda6.QtCore.Qt.PenStyle.Inst'Class);
   procedure setPen (self : access Inst; style_P : access QtAda6.QtGui.QColor.Inst'Class);
   procedure setPen (self : access Inst; style_P : int);
   procedure setRenderHint
     (self : access Inst; hint_P : access QtAda6.QtGui.QPainter.RenderHint.Inst'Class; on_P : bool);
   procedure setRenderHints
     (self : access Inst; hints_P : access QtAda6.QtGui.QPainter.RenderHint.Inst'Class; on_P : bool);
   procedure setTransform
     (self : access Inst; transform_P : access QtAda6.QtGui.QTransform.Inst'Class; combine_P : bool);
   procedure setViewTransformEnabled (self : access Inst; enable_P : bool);
   procedure setViewport (self : access Inst; viewport_P : access QtAda6.QtCore.QRect.Inst'Class);
   procedure setViewport (self : access Inst; x_P : int; y_P : int; w_P : int; h_P : int);
   procedure setWindow (self : access Inst; window_P : access QtAda6.QtCore.QRect.Inst'Class);
   procedure setWindow (self : access Inst; x_P : int; y_P : int; w_P : int; h_P : int);
   procedure setWorldMatrixEnabled (self : access Inst; enabled_P : bool);
   procedure setWorldTransform
     (self : access Inst; matrix_P : access QtAda6.QtGui.QTransform.Inst'Class; combine_P : bool);
   procedure shear (self : access Inst; sh_P : float; sv_P : float);
   procedure strokePath
     (self  : access Inst; path_P : access QtAda6.QtGui.QPainterPath.Inst'Class;
      pen_P : Union_QtAda6_QtGui_QPen_QtAda6_QtCore_Qt_PenStyle_QtAda6_QtGui_QColor);
   function testRenderHint
     (self : access Inst; hint_P : access QtAda6.QtGui.QPainter.RenderHint.Inst'Class) return bool;
   function transform (self : access Inst) return access QtAda6.QtGui.QTransform.Inst'Class;
   procedure translate (self : access Inst; dx_P : float; dy_P : float);
   procedure translate (self : access Inst; offset_P : access QtAda6.QtCore.QPoint.Inst'Class);
   procedure translate
     (self     : access Inst;
      offset_P : Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element);
   function viewTransformEnabled (self : access Inst) return bool;
   function viewport (self : access Inst) return access QtAda6.QtCore.QRect.Inst'Class;
   function window (self : access Inst) return access QtAda6.QtCore.QRect.Inst'Class;
   function worldMatrixEnabled (self : access Inst) return bool;
   function worldTransform (self : access Inst) return access QtAda6.QtGui.QTransform.Inst'Class;
end QtAda6.QtGui.QPainter;
