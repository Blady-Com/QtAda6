-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qpoint.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QPointF;
package QtAda6.QtCore.QPoint is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (QPoint_P : access QtAda6.QtCore.QPoint.Inst'Class) return Class;
   function Create (xpos_P : int; ypos_P : int) return Class;
   function U_add_U
     (self : access Inst; p2_P : access QtAda6.QtCore.QPoint.Inst'Class) return access QtAda6.QtCore.QPoint.Inst'Class;
   procedure U_copy_U;
   function U_iadd_U
     (self : access Inst; p_P : access QtAda6.QtCore.QPoint.Inst'Class) return access QtAda6.QtCore.QPoint.Inst'Class;
   function U_imul_U (self : access Inst; factor_P : float) return access QtAda6.QtCore.QPoint.Inst'Class;
-- function U_imul_U(self : access Inst;factor_P : float) return access QtAda6.QtCore.QPoint.Inst'Class;
   function U_imul_U (self : access Inst; factor_P : int) return access QtAda6.QtCore.QPoint.Inst'Class;
   function U_isub_U
     (self : access Inst; p_P : access QtAda6.QtCore.QPoint.Inst'Class) return access QtAda6.QtCore.QPoint.Inst'Class;
   function U_mul_U (self : access Inst; factor_P : float) return access QtAda6.QtCore.QPoint.Inst'Class;
-- function U_mul_U(self : access Inst;factor_P : float) return access QtAda6.QtCore.QPoint.Inst'Class;
   function U_mul_U (self : access Inst; factor_P : int) return access QtAda6.QtCore.QPoint.Inst'Class;
   function U_neg_U (self : access Inst) return access QtAda6.QtCore.QPoint.Inst'Class;
   function U_pos_U (self : access Inst) return access QtAda6.QtCore.QPoint.Inst'Class;
   function U_reduce_U (self : access Inst) return Object;
   function U_repr_U (self : access Inst) return Object;
   function U_sub_U
     (self : access Inst; p2_P : access QtAda6.QtCore.QPoint.Inst'Class) return access QtAda6.QtCore.QPoint.Inst'Class;
   function dotProduct
     (p1_P : access QtAda6.QtCore.QPoint.Inst'Class; p2_P : access QtAda6.QtCore.QPoint.Inst'Class) return int;
   function isNull (self : access Inst) return bool;
   function manhattanLength (self : access Inst) return int;
   procedure setX (self : access Inst; x_P : int);
   procedure setY (self : access Inst; y_P : int);
   function toPointF (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class;
   function toTuple (self : access Inst) return Object;
   function transposed (self : access Inst) return access QtAda6.QtCore.QPoint.Inst'Class;
   function x (self : access Inst) return int;
   function y (self : access Inst) return int;
end QtAda6.QtCore.QPoint;
