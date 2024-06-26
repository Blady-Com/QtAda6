-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qrectf.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QRect;
limited with QtAda6.QtCore.QPointF;
limited with QtAda6.QtCore.QPoint;
limited with QtAda6.QtCore.QSizeF;
limited with QtAda6.QtCore.QSize;
limited with QtAda6.QtCore.QMarginsF;
limited with QtAda6.QtCore.QMargins;
package QtAda6.QtCore.QRectF is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (QRectF_P : access QtAda6.QtCore.QRectF.Inst'Class) return Class;
   function Create (QRectF_P : access QtAda6.QtCore.QRect.Inst'Class) return Class;
   function Create (left_P : float; top_P : float; width_P : float; height_P : float) return Class;
-- function Create(rect_P : access QtAda6.QtCore.QRect.Inst'Class) return Class;
   function Create
     (topleft_P : access QtAda6.QtCore.QPointF.Inst'Class; bottomRight_P : access QtAda6.QtCore.QPointF.Inst'Class)
      return Class;
   function Create
     (topleft_P : access QtAda6.QtCore.QPointF.Inst'Class; bottomRight_P : access QtAda6.QtCore.QPoint.Inst'Class)
      return Class;
   function Create
     (topleft_P : access QtAda6.QtCore.QPoint.Inst'Class; bottomRight_P : access QtAda6.QtCore.QPointF.Inst'Class)
      return Class;
   function Create
     (topleft_P : access QtAda6.QtCore.QPoint.Inst'Class; bottomRight_P : access QtAda6.QtCore.QPoint.Inst'Class)
      return Class;
   function Create
     (topleft_P : access QtAda6.QtCore.QPointF.Inst'Class; size_P : access QtAda6.QtCore.QSizeF.Inst'Class)
      return Class;
   function Create
     (topleft_P : access QtAda6.QtCore.QPointF.Inst'Class; size_P : access QtAda6.QtCore.QSize.Inst'Class) return Class;
   function Create
     (topleft_P : access QtAda6.QtCore.QPoint.Inst'Class; size_P : access QtAda6.QtCore.QSizeF.Inst'Class) return Class;
   function Create
     (topleft_P : access QtAda6.QtCore.QPoint.Inst'Class; size_P : access QtAda6.QtCore.QSize.Inst'Class) return Class;
   function U_add_U
     (self : access Inst; lhs_P : access QtAda6.QtCore.QMarginsF.Inst'Class)
      return access QtAda6.QtCore.QRectF.Inst'Class;
   function U_add_U
     (self : access Inst; lhs_P : access QtAda6.QtCore.QMargins.Inst'Class)
      return access QtAda6.QtCore.QRectF.Inst'Class;
-- function U_add_U(self : access Inst;rhs_P : access QtAda6.QtCore.QMarginsF.Inst'Class) return access QtAda6.QtCore.QRectF.Inst'Class;
-- function U_add_U(self : access Inst;rhs_P : access QtAda6.QtCore.QMargins.Inst'Class) return access QtAda6.QtCore.QRectF.Inst'Class;
   function U_and_U
     (self : access Inst; r_P : access QtAda6.QtCore.QRectF.Inst'Class) return access QtAda6.QtCore.QRectF.Inst'Class;
   function U_and_U
     (self : access Inst; r_P : access QtAda6.QtCore.QRect.Inst'Class) return access QtAda6.QtCore.QRectF.Inst'Class;
   procedure U_copy_U;
   function U_iadd_U
     (self : access Inst; margins_P : access QtAda6.QtCore.QMarginsF.Inst'Class)
      return access QtAda6.QtCore.QRectF.Inst'Class;
   function U_iadd_U
     (self : access Inst; margins_P : access QtAda6.QtCore.QMargins.Inst'Class)
      return access QtAda6.QtCore.QRectF.Inst'Class;
   function U_iand_U
     (self : access Inst; r_P : access QtAda6.QtCore.QRectF.Inst'Class) return access QtAda6.QtCore.QRectF.Inst'Class;
   function U_iand_U
     (self : access Inst; r_P : access QtAda6.QtCore.QRect.Inst'Class) return access QtAda6.QtCore.QRectF.Inst'Class;
   function U_ior_U
     (self : access Inst; r_P : access QtAda6.QtCore.QRectF.Inst'Class) return access QtAda6.QtCore.QRectF.Inst'Class;
   function U_ior_U
     (self : access Inst; r_P : access QtAda6.QtCore.QRect.Inst'Class) return access QtAda6.QtCore.QRectF.Inst'Class;
   function U_isub_U
     (self : access Inst; margins_P : access QtAda6.QtCore.QMarginsF.Inst'Class)
      return access QtAda6.QtCore.QRectF.Inst'Class;
   function U_isub_U
     (self : access Inst; margins_P : access QtAda6.QtCore.QMargins.Inst'Class)
      return access QtAda6.QtCore.QRectF.Inst'Class;
   function U_or_U
     (self : access Inst; r_P : access QtAda6.QtCore.QRectF.Inst'Class) return access QtAda6.QtCore.QRectF.Inst'Class;
   function U_or_U
     (self : access Inst; r_P : access QtAda6.QtCore.QRect.Inst'Class) return access QtAda6.QtCore.QRectF.Inst'Class;
   function U_reduce_U (self : access Inst) return access Object'Class;
   function U_repr_U (self : access Inst) return access Object'Class;
   function U_sub_U
     (self : access Inst; rhs_P : access QtAda6.QtCore.QMarginsF.Inst'Class)
      return access QtAda6.QtCore.QRectF.Inst'Class;
   function U_sub_U
     (self : access Inst; rhs_P : access QtAda6.QtCore.QMargins.Inst'Class)
      return access QtAda6.QtCore.QRectF.Inst'Class;
   procedure adjust (self : access Inst; x1_P : float; y1_P : float; x2_P : float; y2_P : float);
   function adjusted
     (self : access Inst; x1_P : float; y1_P : float; x2_P : float; y2_P : float)
      return access QtAda6.QtCore.QRectF.Inst'Class;
   function bottom (self : access Inst) return float;
   function bottomLeft (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class;
   function bottomRight (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class;
   function center (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class;
   function contains (self : access Inst; p_P : access QtAda6.QtCore.QPointF.Inst'Class) return bool;
   function contains (self : access Inst; p_P : access QtAda6.QtCore.QPoint.Inst'Class) return bool;
   function contains (self : access Inst; r_P : access QtAda6.QtCore.QRectF.Inst'Class) return bool;
   function contains (self : access Inst; r_P : access QtAda6.QtCore.QRect.Inst'Class) return bool;
   function contains (self : access Inst; x_P : float; y_P : float) return bool;
   function getCoords (self : access Inst) return access Object'Class;
   function getRect (self : access Inst) return access Object'Class;
   function height (self : access Inst) return float;
   function intersected
     (self : access Inst; other_P : access QtAda6.QtCore.QRectF.Inst'Class)
      return access QtAda6.QtCore.QRectF.Inst'Class;
   function intersected
     (self : access Inst; other_P : access QtAda6.QtCore.QRect.Inst'Class)
      return access QtAda6.QtCore.QRectF.Inst'Class;
   function intersects (self : access Inst; r_P : access QtAda6.QtCore.QRectF.Inst'Class) return bool;
   function intersects (self : access Inst; r_P : access QtAda6.QtCore.QRect.Inst'Class) return bool;
   function isEmpty (self : access Inst) return bool;
   function isNull (self : access Inst) return bool;
   function isValid (self : access Inst) return bool;
   function left (self : access Inst) return float;
   function marginsAdded
     (self : access Inst; margins_P : access QtAda6.QtCore.QMarginsF.Inst'Class)
      return access QtAda6.QtCore.QRectF.Inst'Class;
   function marginsAdded
     (self : access Inst; margins_P : access QtAda6.QtCore.QMargins.Inst'Class)
      return access QtAda6.QtCore.QRectF.Inst'Class;
   function marginsRemoved
     (self : access Inst; margins_P : access QtAda6.QtCore.QMarginsF.Inst'Class)
      return access QtAda6.QtCore.QRectF.Inst'Class;
   function marginsRemoved
     (self : access Inst; margins_P : access QtAda6.QtCore.QMargins.Inst'Class)
      return access QtAda6.QtCore.QRectF.Inst'Class;
   procedure moveBottom (self : access Inst; pos_P : float);
   procedure moveBottomLeft (self : access Inst; p_P : access QtAda6.QtCore.QPointF.Inst'Class);
   procedure moveBottomLeft (self : access Inst; p_P : access QtAda6.QtCore.QPoint.Inst'Class);
   procedure moveBottomRight (self : access Inst; p_P : access QtAda6.QtCore.QPointF.Inst'Class);
   procedure moveBottomRight (self : access Inst; p_P : access QtAda6.QtCore.QPoint.Inst'Class);
   procedure moveCenter (self : access Inst; p_P : access QtAda6.QtCore.QPointF.Inst'Class);
   procedure moveCenter (self : access Inst; p_P : access QtAda6.QtCore.QPoint.Inst'Class);
   procedure moveLeft (self : access Inst; pos_P : float);
   procedure moveRight (self : access Inst; pos_P : float);
   procedure moveTo (self : access Inst; p_P : access QtAda6.QtCore.QPointF.Inst'Class);
   procedure moveTo (self : access Inst; p_P : access QtAda6.QtCore.QPoint.Inst'Class);
   procedure moveTo (self : access Inst; x_P : float; y_P : float);
   procedure moveTop (self : access Inst; pos_P : float);
   procedure moveTopLeft (self : access Inst; p_P : access QtAda6.QtCore.QPointF.Inst'Class);
   procedure moveTopLeft (self : access Inst; p_P : access QtAda6.QtCore.QPoint.Inst'Class);
   procedure moveTopRight (self : access Inst; p_P : access QtAda6.QtCore.QPointF.Inst'Class);
   procedure moveTopRight (self : access Inst; p_P : access QtAda6.QtCore.QPoint.Inst'Class);
   function normalized (self : access Inst) return access QtAda6.QtCore.QRectF.Inst'Class;
   function right (self : access Inst) return float;
   procedure setBottom (self : access Inst; pos_P : float);
   procedure setBottomLeft (self : access Inst; p_P : access QtAda6.QtCore.QPointF.Inst'Class);
   procedure setBottomLeft (self : access Inst; p_P : access QtAda6.QtCore.QPoint.Inst'Class);
   procedure setBottomRight (self : access Inst; p_P : access QtAda6.QtCore.QPointF.Inst'Class);
   procedure setBottomRight (self : access Inst; p_P : access QtAda6.QtCore.QPoint.Inst'Class);
   procedure setCoords (self : access Inst; x1_P : float; y1_P : float; x2_P : float; y2_P : float);
   procedure setHeight (self : access Inst; h_P : float);
   procedure setLeft (self : access Inst; pos_P : float);
   procedure setRect (self : access Inst; x_P : float; y_P : float; w_P : float; h_P : float);
   procedure setRight (self : access Inst; pos_P : float);
   procedure setSize (self : access Inst; s_P : access QtAda6.QtCore.QSizeF.Inst'Class);
   procedure setSize (self : access Inst; s_P : access QtAda6.QtCore.QSize.Inst'Class);
   procedure setTop (self : access Inst; pos_P : float);
   procedure setTopLeft (self : access Inst; p_P : access QtAda6.QtCore.QPointF.Inst'Class);
   procedure setTopLeft (self : access Inst; p_P : access QtAda6.QtCore.QPoint.Inst'Class);
   procedure setTopRight (self : access Inst; p_P : access QtAda6.QtCore.QPointF.Inst'Class);
   procedure setTopRight (self : access Inst; p_P : access QtAda6.QtCore.QPoint.Inst'Class);
   procedure setWidth (self : access Inst; w_P : float);
   procedure setX (self : access Inst; pos_P : float);
   procedure setY (self : access Inst; pos_P : float);
   function size (self : access Inst) return access QtAda6.QtCore.QSizeF.Inst'Class;
   function toAlignedRect (self : access Inst) return access QtAda6.QtCore.QRect.Inst'Class;
   function toRect (self : access Inst) return access QtAda6.QtCore.QRect.Inst'Class;
   function top (self : access Inst) return float;
   function topLeft (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class;
   function topRight (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class;
   procedure translate (self : access Inst; dx_P : float; dy_P : float);
   procedure translate (self : access Inst; p_P : access QtAda6.QtCore.QPointF.Inst'Class);
   procedure translate (self : access Inst; p_P : access QtAda6.QtCore.QPoint.Inst'Class);
   function translated (self : access Inst; dx_P : float; dy_P : float) return access QtAda6.QtCore.QRectF.Inst'Class;
   function translated
     (self : access Inst; p_P : access QtAda6.QtCore.QPointF.Inst'Class) return access QtAda6.QtCore.QRectF.Inst'Class;
   function translated
     (self : access Inst; p_P : access QtAda6.QtCore.QPoint.Inst'Class) return access QtAda6.QtCore.QRectF.Inst'Class;
   function transposed (self : access Inst) return access QtAda6.QtCore.QRectF.Inst'Class;
   function united
     (self : access Inst; other_P : access QtAda6.QtCore.QRectF.Inst'Class)
      return access QtAda6.QtCore.QRectF.Inst'Class;
   function united
     (self : access Inst; other_P : access QtAda6.QtCore.QRect.Inst'Class)
      return access QtAda6.QtCore.QRectF.Inst'Class;
   function width (self : access Inst) return float;
   function x (self : access Inst) return float;
   function y (self : access Inst) return float;
end QtAda6.QtCore.QRectF;
