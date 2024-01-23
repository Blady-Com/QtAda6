-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qmatrix3x3.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtGui.QMatrix3x3 is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (QMatrix3x3_P : access QtAda6.QtGui.QMatrix3x3.Inst'Class) return Class;
   function Create (arg_1_P : Iterable) return Class;
   function U_call_U (self : access Inst; row_P : int; column_P : int) return float;
   procedure U_copy_U;
   function U_iadd_U
     (self : access Inst; other_P : access QtAda6.QtGui.QMatrix3x3.Inst'Class)
      return access QtAda6.QtGui.QMatrix3x3.Inst'Class;
   function U_imul_U (self : access Inst; factor_P : float) return access QtAda6.QtGui.QMatrix3x3.Inst'Class;
   function U_isub_U
     (self : access Inst; other_P : access QtAda6.QtGui.QMatrix3x3.Inst'Class)
      return access QtAda6.QtGui.QMatrix3x3.Inst'Class;
   function U_reduce_U (self : access Inst) return access Object'Class;
   function U_repr_U (self : access Inst) return access Object'Class;
   function data (self : access Inst) return float;
   procedure fill (self : access Inst; value_P : float);
   function isIdentity (self : access Inst) return bool;
   procedure setToIdentity (self : access Inst);
   function transposed (self : access Inst) return access QtAda6.QtGui.QMatrix3x3.Inst'Class;
end QtAda6.QtGui.QMatrix3x3;
