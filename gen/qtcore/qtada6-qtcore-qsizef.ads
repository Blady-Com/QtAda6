-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qsizef.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QSize;
limited with QtAda6.QtCore.QMarginsF;
limited with QtAda6.QtCore.QMargins;
limited with QtAda6.QtCore.Qt.AspectRatioMode;
package QtAda6.QtCore.QSizeF is
   type Union_QtAda6_QtCore_QSizeF_QtAda6_QtCore_QSize is access Any;
   type Union_QtAda6_QtCore_QMarginsF_QtAda6_QtCore_QMargins is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (QSizeF_P : Union_QtAda6_QtCore_QSizeF_QtAda6_QtCore_QSize) return Class;
   function Create (sz_P : access QtAda6.QtCore.QSize.Inst'Class) return Class;
   function Create (w_P : float; h_P : float) return Class;
   function U_add_U
     (self : access Inst; s2_P : Union_QtAda6_QtCore_QSizeF_QtAda6_QtCore_QSize)
      return access QtAda6.QtCore.QSizeF.Inst'Class;
   procedure U_copy_U;
   function U_iadd_U
     (self : access Inst; arg_1_P : Union_QtAda6_QtCore_QSizeF_QtAda6_QtCore_QSize)
      return access QtAda6.QtCore.QSizeF.Inst'Class;
   function U_imul_U (self : access Inst; c_P : float) return access QtAda6.QtCore.QSizeF.Inst'Class;
   function U_isub_U
     (self : access Inst; arg_1_P : Union_QtAda6_QtCore_QSizeF_QtAda6_QtCore_QSize)
      return access QtAda6.QtCore.QSizeF.Inst'Class;
   function U_mul_U (self : access Inst; c_P : float) return access QtAda6.QtCore.QSizeF.Inst'Class;
   function U_reduce_U (self : access Inst) return Object;
   function U_repr_U (self : access Inst) return Object;
   function U_sub_U
     (self : access Inst; s2_P : Union_QtAda6_QtCore_QSizeF_QtAda6_QtCore_QSize)
      return access QtAda6.QtCore.QSizeF.Inst'Class;
   function boundedTo
     (self : access Inst; arg_1_P : Union_QtAda6_QtCore_QSizeF_QtAda6_QtCore_QSize)
      return access QtAda6.QtCore.QSizeF.Inst'Class;
   function expandedTo
     (self : access Inst; arg_1_P : Union_QtAda6_QtCore_QSizeF_QtAda6_QtCore_QSize)
      return access QtAda6.QtCore.QSizeF.Inst'Class;
   function grownBy
     (self : access Inst; m_P : Union_QtAda6_QtCore_QMarginsF_QtAda6_QtCore_QMargins)
      return access QtAda6.QtCore.QSizeF.Inst'Class;
   function height (self : access Inst) return float;
   function isEmpty (self : access Inst) return bool;
   function isNull (self : access Inst) return bool;
   function isValid (self : access Inst) return bool;
   procedure scale
     (self   : access Inst; s_P : Union_QtAda6_QtCore_QSizeF_QtAda6_QtCore_QSize;
      mode_P : access QtAda6.QtCore.Qt.AspectRatioMode.Inst'Class);
   procedure scale
     (self : access Inst; w_P : float; h_P : float; mode_P : access QtAda6.QtCore.Qt.AspectRatioMode.Inst'Class);
   function scaled
     (self   : access Inst; s_P : Union_QtAda6_QtCore_QSizeF_QtAda6_QtCore_QSize;
      mode_P : access QtAda6.QtCore.Qt.AspectRatioMode.Inst'Class) return access QtAda6.QtCore.QSizeF.Inst'Class;
   function scaled
     (self : access Inst; w_P : float; h_P : float; mode_P : access QtAda6.QtCore.Qt.AspectRatioMode.Inst'Class)
      return access QtAda6.QtCore.QSizeF.Inst'Class;
   procedure setHeight (self : access Inst; h_P : float);
   procedure setWidth (self : access Inst; w_P : float);
   function shrunkBy
     (self : access Inst; m_P : Union_QtAda6_QtCore_QMarginsF_QtAda6_QtCore_QMargins)
      return access QtAda6.QtCore.QSizeF.Inst'Class;
   function toSize (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   function toTuple (self : access Inst) return Object;
   procedure transpose (self : access Inst);
   function transposed (self : access Inst) return access QtAda6.QtCore.QSizeF.Inst'Class;
   function width (self : access Inst) return float;
end QtAda6.QtCore.QSizeF;
