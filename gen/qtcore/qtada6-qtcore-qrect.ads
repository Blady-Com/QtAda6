-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qrect.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QPoint;
limited with QtAda6.QtCore.QSize;
limited with QtAda6.QtCore.QMargins;
limited with QtAda6.QtCore.QRectF;
package QtAda6.QtCore.QRect is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (QRect_P : access QtAda6.QtCore.QRect.Inst'Class) return Class;
   function Create (left_P : int; top_P : int; width_P : int; height_P : int) return Class;
   function Create
     (topleft_P : access QtAda6.QtCore.QPoint.Inst'Class; bottomright_P : access QtAda6.QtCore.QPoint.Inst'Class)
      return Class;
   function Create
     (topleft_P : access QtAda6.QtCore.QPoint.Inst'Class; size_P : access QtAda6.QtCore.QSize.Inst'Class) return Class;
   function U_add_U
     (self : access Inst; margins_P : access QtAda6.QtCore.QMargins.Inst'Class)
      return access QtAda6.QtCore.QRect.Inst'Class;
   function U_and_U
     (self : access Inst; r_P : access QtAda6.QtCore.QRect.Inst'Class) return access QtAda6.QtCore.QRect.Inst'Class;
   procedure U_copy_U;
   function U_iadd_U
     (self : access Inst; margins_P : access QtAda6.QtCore.QMargins.Inst'Class)
      return access QtAda6.QtCore.QRect.Inst'Class;
   function U_iand_U
     (self : access Inst; r_P : access QtAda6.QtCore.QRect.Inst'Class) return access QtAda6.QtCore.QRect.Inst'Class;
   function U_ior_U
     (self : access Inst; r_P : access QtAda6.QtCore.QRect.Inst'Class) return access QtAda6.QtCore.QRect.Inst'Class;
   function U_isub_U
     (self : access Inst; margins_P : access QtAda6.QtCore.QMargins.Inst'Class)
      return access QtAda6.QtCore.QRect.Inst'Class;
   function U_or_U
     (self : access Inst; r_P : access QtAda6.QtCore.QRect.Inst'Class) return access QtAda6.QtCore.QRect.Inst'Class;
   function U_reduce_U (self : access Inst) return access Object'Class;
   function U_repr_U (self : access Inst) return access Object'Class;
   function U_sub_U
     (self : access Inst; rhs_P : access QtAda6.QtCore.QMargins.Inst'Class)
      return access QtAda6.QtCore.QRect.Inst'Class;
   procedure adjust (self : access Inst; x1_P : int; y1_P : int; x2_P : int; y2_P : int);
   function adjusted
     (self : access Inst; x1_P : int; y1_P : int; x2_P : int; y2_P : int) return access QtAda6.QtCore.QRect.Inst'Class;
   function bottom (self : access Inst) return int;
   function bottomLeft (self : access Inst) return access QtAda6.QtCore.QPoint.Inst'Class;
   function bottomRight (self : access Inst) return access QtAda6.QtCore.QPoint.Inst'Class;
   function center (self : access Inst) return access QtAda6.QtCore.QPoint.Inst'Class;
   function contains
     (self : access Inst; p_P : access QtAda6.QtCore.QPoint.Inst'Class; proper_P : bool := False) return bool;
   function contains
     (self : access Inst; r_P : access QtAda6.QtCore.QRect.Inst'Class; proper_P : bool := False) return bool;
   function contains (self : access Inst; x_P : int; y_P : int) return bool;
   function contains (self : access Inst; x_P : int; y_P : int; proper_P : bool) return bool;
   function getCoords (self : access Inst) return access Object'Class;
   function getRect (self : access Inst) return access Object'Class;
   function height (self : access Inst) return int;
   function intersected
     (self : access Inst; other_P : access QtAda6.QtCore.QRect.Inst'Class) return access QtAda6.QtCore.QRect.Inst'Class;
   function intersects (self : access Inst; r_P : access QtAda6.QtCore.QRect.Inst'Class) return bool;
   function isEmpty (self : access Inst) return bool;
   function isNull (self : access Inst) return bool;
   function isValid (self : access Inst) return bool;
   function left (self : access Inst) return int;
   function marginsAdded
     (self : access Inst; margins_P : access QtAda6.QtCore.QMargins.Inst'Class)
      return access QtAda6.QtCore.QRect.Inst'Class;
   function marginsRemoved
     (self : access Inst; margins_P : access QtAda6.QtCore.QMargins.Inst'Class)
      return access QtAda6.QtCore.QRect.Inst'Class;
   procedure moveBottom (self : access Inst; pos_P : int);
   procedure moveBottomLeft (self : access Inst; p_P : access QtAda6.QtCore.QPoint.Inst'Class);
   procedure moveBottomRight (self : access Inst; p_P : access QtAda6.QtCore.QPoint.Inst'Class);
   procedure moveCenter (self : access Inst; p_P : access QtAda6.QtCore.QPoint.Inst'Class);
   procedure moveLeft (self : access Inst; pos_P : int);
   procedure moveRight (self : access Inst; pos_P : int);
   procedure moveTo (self : access Inst; p_P : access QtAda6.QtCore.QPoint.Inst'Class);
   procedure moveTo (self : access Inst; x_P : int; t_P : int);
   procedure moveTop (self : access Inst; pos_P : int);
   procedure moveTopLeft (self : access Inst; p_P : access QtAda6.QtCore.QPoint.Inst'Class);
   procedure moveTopRight (self : access Inst; p_P : access QtAda6.QtCore.QPoint.Inst'Class);
   function normalized (self : access Inst) return access QtAda6.QtCore.QRect.Inst'Class;
   function right (self : access Inst) return int;
   procedure setBottom (self : access Inst; pos_P : int);
   procedure setBottomLeft (self : access Inst; p_P : access QtAda6.QtCore.QPoint.Inst'Class);
   procedure setBottomRight (self : access Inst; p_P : access QtAda6.QtCore.QPoint.Inst'Class);
   procedure setCoords (self : access Inst; x1_P : int; y1_P : int; x2_P : int; y2_P : int);
   procedure setHeight (self : access Inst; h_P : int);
   procedure setLeft (self : access Inst; pos_P : int);
   procedure setRect (self : access Inst; x_P : int; y_P : int; w_P : int; h_P : int);
   procedure setRight (self : access Inst; pos_P : int);
   procedure setSize (self : access Inst; s_P : access QtAda6.QtCore.QSize.Inst'Class);
   procedure setTop (self : access Inst; pos_P : int);
   procedure setTopLeft (self : access Inst; p_P : access QtAda6.QtCore.QPoint.Inst'Class);
   procedure setTopRight (self : access Inst; p_P : access QtAda6.QtCore.QPoint.Inst'Class);
   procedure setWidth (self : access Inst; w_P : int);
   procedure setX (self : access Inst; x_P : int);
   procedure setY (self : access Inst; y_P : int);
   function size (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   function span
     (p1_P : access QtAda6.QtCore.QPoint.Inst'Class; p2_P : access QtAda6.QtCore.QPoint.Inst'Class)
      return access QtAda6.QtCore.QRect.Inst'Class;
   function toRectF (self : access Inst) return access QtAda6.QtCore.QRectF.Inst'Class;
   function top (self : access Inst) return int;
   function topLeft (self : access Inst) return access QtAda6.QtCore.QPoint.Inst'Class;
   function topRight (self : access Inst) return access QtAda6.QtCore.QPoint.Inst'Class;
   procedure translate (self : access Inst; dx_P : int; dy_P : int);
   procedure translate (self : access Inst; p_P : access QtAda6.QtCore.QPoint.Inst'Class);
   function translated (self : access Inst; dx_P : int; dy_P : int) return access QtAda6.QtCore.QRect.Inst'Class;
   function translated
     (self : access Inst; p_P : access QtAda6.QtCore.QPoint.Inst'Class) return access QtAda6.QtCore.QRect.Inst'Class;
   function transposed (self : access Inst) return access QtAda6.QtCore.QRect.Inst'Class;
   function united
     (self : access Inst; other_P : access QtAda6.QtCore.QRect.Inst'Class) return access QtAda6.QtCore.QRect.Inst'Class;
   function width (self : access Inst) return int;
   function x (self : access Inst) return int;
   function y (self : access Inst) return int;
end QtAda6.QtCore.QRect;
