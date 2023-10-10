-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qpolygon.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with QtAda6.QtCore.QPoint;
limited with QtAda6.QtCore.QRect;
limited with QtAda6.QtCore.QDataStream;
limited with QtAda6.QtGui.QTransform;
limited with QtAda6.QtCore.Qt.FillRule;
limited with QtAda6.QtGui.QPolygonF;
package QtAda6.QtGui.QPolygon is
   type Union_QtAda6_QtGui_QPolygon_Sequence_QtAda6_QtCore_QPoint_QtAda6_QtCore_QRect is access Any;
   type Sequence_QtAda6_QtCore_QPoint is array (Positive range <>) of QtAda6.QtCore.QPoint.Class;
   type List_QtAda6_QtCore_QPoint is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create
     (QPolygon_P : Union_QtAda6_QtGui_QPolygon_Sequence_QtAda6_QtCore_QPoint_QtAda6_QtCore_QRect) return Class;
   function Create (r_P : access QtAda6.QtCore.QRect.Inst'Class; closed_P : bool) return Class;
   function Create (v_P : Sequence_QtAda6_QtCore_QPoint) return Class;
   function U_add_U (self : access Inst; l_P : Sequence_QtAda6_QtCore_QPoint) return List_QtAda6_QtCore_QPoint;
   procedure U_copy_U;
   procedure U_lshift_U (self : access Inst; arg_1_P : access QtAda6.QtCore.QPoint.Inst'Class);
   procedure U_lshift_U (self : access Inst; arg_1_P : Sequence_QtAda6_QtCore_QPoint);
   function U_lshift_U
     (self : access Inst; stream_P : access QtAda6.QtCore.QDataStream.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class;
   function U_mul_U
     (self : access Inst; m_P : access QtAda6.QtGui.QTransform.Inst'Class)
      return access QtAda6.QtGui.QPolygon.Inst'Class;
   function U_reduce_U (self : access Inst) return Object;
   function U_rshift_U
     (self : access Inst; stream_P : access QtAda6.QtCore.QDataStream.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class;
   procedure append (self : access Inst; arg_1_P : access QtAda6.QtCore.QPoint.Inst'Class);
   procedure append (self : access Inst; l_P : Sequence_QtAda6_QtCore_QPoint);
   function at_K (self : access Inst; i_P : int) return access QtAda6.QtCore.QPoint.Inst'Class;
   function back (self : access Inst) return access QtAda6.QtCore.QPoint.Inst'Class;
   function boundingRect (self : access Inst) return access QtAda6.QtCore.QRect.Inst'Class;
   function capacity (self : access Inst) return int;
   procedure clear (self : access Inst);
   function constData (self : access Inst) return access QtAda6.QtCore.QPoint.Inst'Class;
   function constFirst (self : access Inst) return access QtAda6.QtCore.QPoint.Inst'Class;
   function constLast (self : access Inst) return access QtAda6.QtCore.QPoint.Inst'Class;
   function containsPoint
     (self       : access Inst; pt_P : access QtAda6.QtCore.QPoint.Inst'Class;
      fillRule_P : access QtAda6.QtCore.Qt.FillRule.Inst'Class) return bool;
   function count (self : access Inst) return int;
   function data (self : access Inst) return access QtAda6.QtCore.QPoint.Inst'Class;
   function empty (self : access Inst) return bool;
   function first (self : access Inst) return access QtAda6.QtCore.QPoint.Inst'Class;
   function first (self : access Inst; n_P : int) return List_QtAda6_QtCore_QPoint;
   function fromList (list_P : Sequence_QtAda6_QtCore_QPoint) return List_QtAda6_QtCore_QPoint;
   function fromVector (vector_P : Sequence_QtAda6_QtCore_QPoint) return List_QtAda6_QtCore_QPoint;
   function front (self : access Inst) return access QtAda6.QtCore.QPoint.Inst'Class;
   procedure insert (self : access Inst; arg_1_P : int; arg_2_P : access QtAda6.QtCore.QPoint.Inst'Class);
   function intersected
     (self : access Inst; r_P : Union_QtAda6_QtGui_QPolygon_Sequence_QtAda6_QtCore_QPoint_QtAda6_QtCore_QRect)
      return access QtAda6.QtGui.QPolygon.Inst'Class;
   function intersects
     (self : access Inst; r_P : Union_QtAda6_QtGui_QPolygon_Sequence_QtAda6_QtCore_QPoint_QtAda6_QtCore_QRect)
      return bool;
   function isEmpty (self : access Inst) return bool;
   function isSharedWith (self : access Inst; other_P : Sequence_QtAda6_QtCore_QPoint) return bool;
   function last (self : access Inst) return access QtAda6.QtCore.QPoint.Inst'Class;
   function last (self : access Inst; n_P : int) return List_QtAda6_QtCore_QPoint;
   function length (self : access Inst) return int;
   function mid (self : access Inst; pos_P : int; len_P : int) return List_QtAda6_QtCore_QPoint;
   procedure move (self : access Inst; from_U_P : int; to_P : int);
   procedure pop_back (self : access Inst);
   procedure pop_front (self : access Inst);
   procedure prepend (self : access Inst; arg_1_P : access QtAda6.QtCore.QPoint.Inst'Class);
   procedure push_back (self : access Inst; arg_1_P : access QtAda6.QtCore.QPoint.Inst'Class);
   procedure push_front (self : access Inst; arg_1_P : access QtAda6.QtCore.QPoint.Inst'Class);
   procedure remove (self : access Inst; i_P : int; n_P : int);
   procedure removeAll (self : access Inst; arg_1_P : access QtAda6.QtCore.QPoint.Inst'Class);
   procedure removeAt (self : access Inst; i_P : int);
   procedure removeFirst (self : access Inst);
   procedure removeLast (self : access Inst);
   procedure removeOne (self : access Inst; arg_1_P : access QtAda6.QtCore.QPoint.Inst'Class);
   procedure reserve (self : access Inst; size_P : int);
   procedure resize (self : access Inst; size_P : int);
   procedure shrink_to_fit (self : access Inst);
   function size (self : access Inst) return int;
   function sliced (self : access Inst; pos_P : int) return List_QtAda6_QtCore_QPoint;
   function sliced (self : access Inst; pos_P : int; n_P : int) return List_QtAda6_QtCore_QPoint;
   procedure squeeze (self : access Inst);
   function subtracted
     (self : access Inst; r_P : Union_QtAda6_QtGui_QPolygon_Sequence_QtAda6_QtCore_QPoint_QtAda6_QtCore_QRect)
      return access QtAda6.QtGui.QPolygon.Inst'Class;
   procedure swap
     (self : access Inst; other_P : Union_QtAda6_QtGui_QPolygon_Sequence_QtAda6_QtCore_QPoint_QtAda6_QtCore_QRect);
   procedure swapItemsAt (self : access Inst; i_P : int; j_P : int);
   function takeAt (self : access Inst; i_P : int) return access QtAda6.QtCore.QPoint.Inst'Class;
   function toList (self : access Inst) return List_QtAda6_QtCore_QPoint;
   function toPolygonF (self : access Inst) return access QtAda6.QtGui.QPolygonF.Inst'Class;
   function toVector (self : access Inst) return List_QtAda6_QtCore_QPoint;
   procedure translate (self : access Inst; dx_P : int; dy_P : int);
   procedure translate (self : access Inst; offset_P : access QtAda6.QtCore.QPoint.Inst'Class);
   function translated (self : access Inst; dx_P : int; dy_P : int) return access QtAda6.QtGui.QPolygon.Inst'Class;
   function translated
     (self : access Inst; offset_P : access QtAda6.QtCore.QPoint.Inst'Class)
      return access QtAda6.QtGui.QPolygon.Inst'Class;
   function united
     (self : access Inst; r_P : Union_QtAda6_QtGui_QPolygon_Sequence_QtAda6_QtCore_QPoint_QtAda6_QtCore_QRect)
      return access QtAda6.QtGui.QPolygon.Inst'Class;
   function value (self : access Inst; i_P : int) return access QtAda6.QtCore.QPoint.Inst'Class;
end QtAda6.QtGui.QPolygon;
