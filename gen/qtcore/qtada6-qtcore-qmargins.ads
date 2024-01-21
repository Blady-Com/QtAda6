-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qmargins.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QMarginsF;
package QtAda6.QtCore.QMargins is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (QMargins_P : access QtAda6.QtCore.QMargins.Inst'Class) return Class;
   function Create (left_P : int; top_P : int; right_P : int; bottom_P : int) return Class;
   function U_add_U (self : access Inst; lhs_P : int) return access QtAda6.QtCore.QMargins.Inst'Class;
   function U_add_U
     (self : access Inst; m2_P : access QtAda6.QtCore.QMargins.Inst'Class)
      return access QtAda6.QtCore.QMargins.Inst'Class;
-- function U_add_U(self : access Inst;rhs_P : int) return access QtAda6.QtCore.QMargins.Inst'Class;
   procedure U_copy_U;
   function U_iadd_U (self : access Inst; arg_1_P : int) return access QtAda6.QtCore.QMargins.Inst'Class;
   function U_iadd_U
     (self : access Inst; margins_P : access QtAda6.QtCore.QMargins.Inst'Class)
      return access QtAda6.QtCore.QMargins.Inst'Class;
   function U_imul_U (self : access Inst; arg_1_P : int) return access QtAda6.QtCore.QMargins.Inst'Class;
   function U_imul_U (self : access Inst; arg_1_P : float) return access QtAda6.QtCore.QMargins.Inst'Class;
   function U_isub_U (self : access Inst; arg_1_P : int) return access QtAda6.QtCore.QMargins.Inst'Class;
   function U_isub_U
     (self : access Inst; margins_P : access QtAda6.QtCore.QMargins.Inst'Class)
      return access QtAda6.QtCore.QMargins.Inst'Class;
   function U_mul_U (self : access Inst; factor_P : int) return access QtAda6.QtCore.QMargins.Inst'Class;
   function U_mul_U (self : access Inst; factor_P : float) return access QtAda6.QtCore.QMargins.Inst'Class;
   function U_neg_U (self : access Inst) return access QtAda6.QtCore.QMargins.Inst'Class;
   function U_or_U
     (self : access Inst; m2_P : access QtAda6.QtCore.QMargins.Inst'Class)
      return access QtAda6.QtCore.QMargins.Inst'Class;
   function U_pos_U (self : access Inst) return access QtAda6.QtCore.QMargins.Inst'Class;
   function U_sub_U
     (self : access Inst; m2_P : access QtAda6.QtCore.QMargins.Inst'Class)
      return access QtAda6.QtCore.QMargins.Inst'Class;
   function U_sub_U (self : access Inst; rhs_P : int) return access QtAda6.QtCore.QMargins.Inst'Class;
   function bottom (self : access Inst) return int;
   function isNull (self : access Inst) return bool;
   function left (self : access Inst) return int;
   function right (self : access Inst) return int;
   procedure setBottom (self : access Inst; bottom_P : int);
   procedure setLeft (self : access Inst; left_P : int);
   procedure setRight (self : access Inst; right_P : int);
   procedure setTop (self : access Inst; top_P : int);
   function toMarginsF (self : access Inst) return access QtAda6.QtCore.QMarginsF.Inst'Class;
   function top (self : access Inst) return int;
end QtAda6.QtCore.QMargins;
