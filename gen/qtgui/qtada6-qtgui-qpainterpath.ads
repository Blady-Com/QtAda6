-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qpainterpath.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QDataStream;
limited with QtAda6.QtGui.QTransform;
limited with QtAda6.QtCore.Qt.SizeMode;
limited with QtAda6.QtCore.QRectF;
limited with QtAda6.QtCore.QPointF;
limited with QtAda6.QtGui.QPainterPath.Element;
limited with QtAda6.QtCore.Qt.FillRule;
limited with QtAda6.QtGui.QPolygonF;
package QtAda6.QtGui.QPainterPath is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   type UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element is new Any;
   type UNION_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect is new Any;
   type UNION_QtAda6_QtGui_QPolygonF_SEQUENCE_QtAda6_QtCore_QRectF is new Any;
   type UNION_QtAda6_QtGui_QRegion_QtAda6_QtGui_QBitmap_QtAda6_QtGui_QPolygon_QtAda6_QtCore_QRect is new Any;
   type UNION_QtAda6_QtGui_QFont_str_SEQUENCE_str is new Any;
   subtype LIST_QtAda6_QtGui_QPolygonF is QtAda6.QtGui.QPolygonF.Class_Array;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (other_P : access QtAda6.QtGui.QPainterPath.Inst'Class) return Class;
   function Create
     (startPoint_P : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element) return Class;
   function U_add_U
     (self : access Inst; other_P : access QtAda6.QtGui.QPainterPath.Inst'Class)
      return access QtAda6.QtGui.QPainterPath.Inst'Class;
   function U_and_U
     (self : access Inst; other_P : access QtAda6.QtGui.QPainterPath.Inst'Class)
      return access QtAda6.QtGui.QPainterPath.Inst'Class;
   procedure U_copy_U;
   function U_iadd_U
     (self : access Inst; other_P : access QtAda6.QtGui.QPainterPath.Inst'Class)
      return access QtAda6.QtGui.QPainterPath.Inst'Class;
   function U_iand_U
     (self : access Inst; other_P : access QtAda6.QtGui.QPainterPath.Inst'Class)
      return access QtAda6.QtGui.QPainterPath.Inst'Class;
   function U_ior_U
     (self : access Inst; other_P : access QtAda6.QtGui.QPainterPath.Inst'Class)
      return access QtAda6.QtGui.QPainterPath.Inst'Class;
   function U_isub_U
     (self : access Inst; other_P : access QtAda6.QtGui.QPainterPath.Inst'Class)
      return access QtAda6.QtGui.QPainterPath.Inst'Class;
   function U_lshift_U
     (self : access Inst; arg_1_P : access QtAda6.QtCore.QDataStream.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class;
   function U_mul_U
     (self : access Inst; m_P : access QtAda6.QtGui.QTransform.Inst'Class)
      return access QtAda6.QtGui.QPainterPath.Inst'Class;
   function U_or_U
     (self : access Inst; other_P : access QtAda6.QtGui.QPainterPath.Inst'Class)
      return access QtAda6.QtGui.QPainterPath.Inst'Class;
   function U_rshift_U
     (self : access Inst; arg_1_P : access QtAda6.QtCore.QDataStream.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class;
   function U_sub_U
     (self : access Inst; other_P : access QtAda6.QtGui.QPainterPath.Inst'Class)
      return access QtAda6.QtGui.QPainterPath.Inst'Class;
   procedure addEllipse
     (self : access Inst; center_P : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element;
      rx_P : float; ry_P : float);
   procedure addEllipse (self : access Inst; rect_P : UNION_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect);
   procedure addEllipse (self : access Inst; x_P : float; y_P : float; w_P : float; h_P : float);
   procedure addPath (self : access Inst; path_P : access QtAda6.QtGui.QPainterPath.Inst'Class);
   procedure addPolygon (self : access Inst; polygon_P : UNION_QtAda6_QtGui_QPolygonF_SEQUENCE_QtAda6_QtCore_QRectF);
   procedure addRect (self : access Inst; rect_P : UNION_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect);
   procedure addRect (self : access Inst; x_P : float; y_P : float; w_P : float; h_P : float);
   procedure addRegion
     (self     : access Inst;
      region_P : UNION_QtAda6_QtGui_QRegion_QtAda6_QtGui_QBitmap_QtAda6_QtGui_QPolygon_QtAda6_QtCore_QRect);
   procedure addRoundedRect
     (self : access Inst; rect_P : UNION_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect; xRadius_P : float; yRadius_P : float;
      mode_P : access QtAda6.QtCore.Qt.SizeMode.Inst'Class := null);
   procedure addRoundedRect
     (self   : access Inst; x_P : float; y_P : float; w_P : float; h_P : float; xRadius_P : float; yRadius_P : float;
      mode_P : access QtAda6.QtCore.Qt.SizeMode.Inst'Class := null);
   procedure addText
     (self : access Inst; point_P : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element;
      f_P  : UNION_QtAda6_QtGui_QFont_str_SEQUENCE_str; text_P : str);
   procedure addText
     (self : access Inst; x_P : float; y_P : float; f_P : UNION_QtAda6_QtGui_QFont_str_SEQUENCE_str; text_P : str);
   function angleAtPercent (self : access Inst; t_P : float) return float;
   procedure arcMoveTo (self : access Inst; rect_P : UNION_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect; angle_P : float);
   procedure arcMoveTo (self : access Inst; x_P : float; y_P : float; w_P : float; h_P : float; angle_P : float);
   procedure arcTo
     (self        : access Inst; rect_P : UNION_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect; startAngle_P : float;
      arcLength_P : float);
   procedure arcTo
     (self        : access Inst; x_P : float; y_P : float; w_P : float; h_P : float; startAngle_P : float;
      arcLength_P : float);
   function boundingRect (self : access Inst) return access QtAda6.QtCore.QRectF.Inst'Class;
   function capacity (self : access Inst) return int;
   procedure clear (self : access Inst);
   procedure closeSubpath (self : access Inst);
   procedure connectPath (self : access Inst; path_P : access QtAda6.QtGui.QPainterPath.Inst'Class);
   function contains (self : access Inst; p_P : access QtAda6.QtGui.QPainterPath.Inst'Class) return bool;
   function contains
     (self : access Inst; pt_P : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element)
      return bool;
   function contains (self : access Inst; rect_P : UNION_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect) return bool;
   function controlPointRect (self : access Inst) return access QtAda6.QtCore.QRectF.Inst'Class;
   procedure cubicTo
     (self      : access Inst;
      ctrlPt1_P : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element;
      ctrlPt2_P : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element;
      endPt_P   : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element);
   procedure cubicTo
     (self     : access Inst; ctrlPt1x_P : float; ctrlPt1y_P : float; ctrlPt2x_P : float; ctrlPt2y_P : float;
      endPtx_P : float; endPty_P : float);
   function currentPosition (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class;
   function elementAt (self : access Inst; i_P : int) return access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
   function elementCount (self : access Inst) return int;
   function fillRule (self : access Inst) return access QtAda6.QtCore.Qt.FillRule.Inst'Class;
   function intersected
     (self : access Inst; r_P : access QtAda6.QtGui.QPainterPath.Inst'Class)
      return access QtAda6.QtGui.QPainterPath.Inst'Class;
   function intersects (self : access Inst; p_P : access QtAda6.QtGui.QPainterPath.Inst'Class) return bool;
   function intersects (self : access Inst; rect_P : UNION_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect) return bool;
   function isEmpty (self : access Inst) return bool;
   function length (self : access Inst) return float;
   procedure lineTo
     (self : access Inst; p_P : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element);
   procedure lineTo (self : access Inst; x_P : float; y_P : float);
   procedure moveTo
     (self : access Inst; p_P : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element);
   procedure moveTo (self : access Inst; x_P : float; y_P : float);
   function percentAtLength (self : access Inst; t_P : float) return float;
   function pointAtPercent (self : access Inst; t_P : float) return access QtAda6.QtCore.QPointF.Inst'Class;
   procedure quadTo
     (self : access Inst; ctrlPt_P : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element;
      endPt_P : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element);
   procedure quadTo (self : access Inst; ctrlPtx_P : float; ctrlPty_P : float; endPtx_P : float; endPty_P : float);
   procedure reserve (self : access Inst; size_P : int);
   procedure setElementPositionAt (self : access Inst; i_P : int; x_P : float; y_P : float);
   procedure setFillRule (self : access Inst; fillRule_P : access QtAda6.QtCore.Qt.FillRule.Inst'Class);
   function simplified (self : access Inst) return access QtAda6.QtGui.QPainterPath.Inst'Class;
   function slopeAtPercent (self : access Inst; t_P : float) return float;
   function subtracted
     (self : access Inst; r_P : access QtAda6.QtGui.QPainterPath.Inst'Class)
      return access QtAda6.QtGui.QPainterPath.Inst'Class;
   procedure swap (self : access Inst; other_P : access QtAda6.QtGui.QPainterPath.Inst'Class);
   function toFillPolygon
     (self : access Inst; matrix_P : access QtAda6.QtGui.QTransform.Inst'Class := null)
      return access QtAda6.QtGui.QPolygonF.Inst'Class;
   function toFillPolygons
     (self : access Inst; matrix_P : access QtAda6.QtGui.QTransform.Inst'Class := null)
      return LIST_QtAda6_QtGui_QPolygonF;
   function toReversed (self : access Inst) return access QtAda6.QtGui.QPainterPath.Inst'Class;
   function toSubpathPolygons
     (self : access Inst; matrix_P : access QtAda6.QtGui.QTransform.Inst'Class := null)
      return LIST_QtAda6_QtGui_QPolygonF;
   procedure translate (self : access Inst; dx_P : float; dy_P : float);
   procedure translate
     (self     : access Inst;
      offset_P : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element);
   function translated
     (self : access Inst; dx_P : float; dy_P : float) return access QtAda6.QtGui.QPainterPath.Inst'Class;
   function translated
     (self : access Inst; offset_P : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element)
      return access QtAda6.QtGui.QPainterPath.Inst'Class;
   function united
     (self : access Inst; r_P : access QtAda6.QtGui.QPainterPath.Inst'Class)
      return access QtAda6.QtGui.QPainterPath.Inst'Class;
end QtAda6.QtGui.QPainterPath;
