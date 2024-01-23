-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qpolygonf.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtGui.QPolygon;
limited with QtAda6.QtCore.QRectF;
limited with QtAda6.QtCore.QPoint;
limited with QtAda6.QtCore.QRect;
limited with QtAda6.QtCore.QDataStream;
limited with QtAda6.QtGui.QTransform;
limited with QtAda6.QtGui.QPainterPath.Element;
limited with QtAda6.QtCore.Qt.FillRule;
with QtAda6.QtCore.QPointF;
package QtAda6.QtGui.QPolygonF is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   type UNION_QtAda6_QtGui_QPolygonFSEQUENCE_QtAda6_QtCore_QRectF is new Any;
   type UNION_QtAda6_QtGui_QPolygonSEQUENCE_QtAda6_QtCore_QRect is new Any;
   type UNION_QtAda6_QtCore_QRectFQtAda6_QtCore_QRect is new Any;
   subtype SEQUENCE_QtAda6_QtCore_QPointF is QtAda6.QtCore.QPointF.Class_Array;
   subtype LIST_QtAda6_QtCore_QPointF is QtAda6.QtCore.QPointF.Class_Array;
   type UNION_QtAda6_QtCore_QPointFQtAda6_QtCore_QPointQtAda6_QtGui_QPainterPath_Element is new Any;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (QPolygonF_P : UNION_QtAda6_QtGui_QPolygonFSEQUENCE_QtAda6_QtCore_QRectF) return Class;
   function Create (a_P : UNION_QtAda6_QtGui_QPolygonSEQUENCE_QtAda6_QtCore_QRect) return Class;
   function Create (r_P : UNION_QtAda6_QtCore_QRectFQtAda6_QtCore_QRect) return Class;
   function Create (v_P : SEQUENCE_QtAda6_QtCore_QPointF) return Class;
   function U_add_U (self : access Inst; l_P : SEQUENCE_QtAda6_QtCore_QPointF) return LIST_QtAda6_QtCore_QPointF;
   procedure U_copy_U;
   function U_lshift_U
     (self : access Inst; stream_P : access QtAda6.QtCore.QDataStream.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class;
   function U_mul_U
     (self : access Inst; m_P : access QtAda6.QtGui.QTransform.Inst'Class)
      return access QtAda6.QtGui.QPolygonF.Inst'Class;
   function U_rshift_U
     (self : access Inst; stream_P : access QtAda6.QtCore.QDataStream.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class;
   procedure append
     (self : access Inst; arg_1_P : UNION_QtAda6_QtCore_QPointFQtAda6_QtCore_QPointQtAda6_QtGui_QPainterPath_Element);
   procedure append (self : access Inst; l_P : SEQUENCE_QtAda6_QtCore_QPointF);
   function at_K (self : access Inst; i_P : int) return access QtAda6.QtCore.QPointF.Inst'Class;
   function back (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class;
   function boundingRect (self : access Inst) return access QtAda6.QtCore.QRectF.Inst'Class;
   function capacity (self : access Inst) return int;
   procedure clear (self : access Inst);
   function constData (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class;
   function constFirst (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class;
   function constLast (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class;
   function containsPoint
     (self       : access Inst; pt_P : UNION_QtAda6_QtCore_QPointFQtAda6_QtCore_QPointQtAda6_QtGui_QPainterPath_Element;
      fillRule_P : access QtAda6.QtCore.Qt.FillRule.Inst'Class) return bool;
   function count (self : access Inst) return int;
   function data (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class;
   function empty (self : access Inst) return bool;
   function first (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class;
   function first (self : access Inst; n_P : int) return LIST_QtAda6_QtCore_QPointF;
   function fromList (list_P : SEQUENCE_QtAda6_QtCore_QPointF) return LIST_QtAda6_QtCore_QPointF;
   function fromVector (vector_P : SEQUENCE_QtAda6_QtCore_QPointF) return LIST_QtAda6_QtCore_QPointF;
   function front (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class;
   procedure insert
     (self    : access Inst; arg_1_P : int;
      arg_2_P : UNION_QtAda6_QtCore_QPointFQtAda6_QtCore_QPointQtAda6_QtGui_QPainterPath_Element);
   function intersected
     (self : access Inst; r_P : UNION_QtAda6_QtGui_QPolygonFSEQUENCE_QtAda6_QtCore_QRectF)
      return access QtAda6.QtGui.QPolygonF.Inst'Class;
   function intersects
     (self : access Inst; r_P : UNION_QtAda6_QtGui_QPolygonFSEQUENCE_QtAda6_QtCore_QRectF) return bool;
   function isClosed (self : access Inst) return bool;
   function isEmpty (self : access Inst) return bool;
   function isSharedWith (self : access Inst; other_P : SEQUENCE_QtAda6_QtCore_QPointF) return bool;
   function last (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class;
   function last (self : access Inst; n_P : int) return LIST_QtAda6_QtCore_QPointF;
   function length (self : access Inst) return int;
   function mid (self : access Inst; pos_P : int; len_P : int := 0) return LIST_QtAda6_QtCore_QPointF;
   procedure move (self : access Inst; from_U_P : int; to_P : int);
   procedure pop_back (self : access Inst);
   procedure pop_front (self : access Inst);
   procedure prepend
     (self : access Inst; arg_1_P : UNION_QtAda6_QtCore_QPointFQtAda6_QtCore_QPointQtAda6_QtGui_QPainterPath_Element);
   procedure push_back
     (self : access Inst; arg_1_P : UNION_QtAda6_QtCore_QPointFQtAda6_QtCore_QPointQtAda6_QtGui_QPainterPath_Element);
   procedure push_front
     (self : access Inst; arg_1_P : UNION_QtAda6_QtCore_QPointFQtAda6_QtCore_QPointQtAda6_QtGui_QPainterPath_Element);
   procedure remove (self : access Inst; i_P : int; n_P : int := 0);
   procedure removeAll
     (self : access Inst; arg_1_P : UNION_QtAda6_QtCore_QPointFQtAda6_QtCore_QPointQtAda6_QtGui_QPainterPath_Element);
   procedure removeAt (self : access Inst; i_P : int);
   procedure removeFirst (self : access Inst);
   procedure removeLast (self : access Inst);
   procedure removeOne
     (self : access Inst; arg_1_P : UNION_QtAda6_QtCore_QPointFQtAda6_QtCore_QPointQtAda6_QtGui_QPainterPath_Element);
   procedure reserve (self : access Inst; size_P : int);
   procedure resize (self : access Inst; size_P : int);
   procedure shrink_to_fit (self : access Inst);
   function size (self : access Inst) return int;
   function sliced (self : access Inst; pos_P : int) return LIST_QtAda6_QtCore_QPointF;
   function sliced (self : access Inst; pos_P : int; n_P : int) return LIST_QtAda6_QtCore_QPointF;
   procedure squeeze (self : access Inst);
   function subtracted
     (self : access Inst; r_P : UNION_QtAda6_QtGui_QPolygonFSEQUENCE_QtAda6_QtCore_QRectF)
      return access QtAda6.QtGui.QPolygonF.Inst'Class;
   procedure swap (self : access Inst; other_P : UNION_QtAda6_QtGui_QPolygonFSEQUENCE_QtAda6_QtCore_QRectF);
   procedure swapItemsAt (self : access Inst; i_P : int; j_P : int);
   function takeAt (self : access Inst; i_P : int) return access QtAda6.QtCore.QPointF.Inst'Class;
   function toList (self : access Inst) return LIST_QtAda6_QtCore_QPointF;
   function toPolygon (self : access Inst) return access QtAda6.QtGui.QPolygon.Inst'Class;
   function toVector (self : access Inst) return LIST_QtAda6_QtCore_QPointF;
   procedure translate (self : access Inst; dx_P : float; dy_P : float);
   procedure translate
     (self : access Inst; offset_P : UNION_QtAda6_QtCore_QPointFQtAda6_QtCore_QPointQtAda6_QtGui_QPainterPath_Element);
   function translated (self : access Inst; dx_P : float; dy_P : float) return access QtAda6.QtGui.QPolygonF.Inst'Class;
   function translated
     (self : access Inst; offset_P : UNION_QtAda6_QtCore_QPointFQtAda6_QtCore_QPointQtAda6_QtGui_QPainterPath_Element)
      return access QtAda6.QtGui.QPolygonF.Inst'Class;
   function united
     (self : access Inst; r_P : UNION_QtAda6_QtGui_QPolygonFSEQUENCE_QtAda6_QtCore_QRectF)
      return access QtAda6.QtGui.QPolygonF.Inst'Class;
   function value (self : access Inst; i_P : int) return access QtAda6.QtCore.QPointF.Inst'Class;
end QtAda6.QtGui.QPolygonF;
