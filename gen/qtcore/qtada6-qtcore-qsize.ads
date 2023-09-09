-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qsize.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QMargins;
limited with QtAda6.QtCore.Qt.AspectRatioMode;
limited with QtAda6.QtCore.QSizeF;
package QtAda6.QtCore.QSize is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (QSize_P : access QtAda6.QtCore.QSize.Inst'Class) return Class;
   function Create (w_P : int; h_P : int) return Class;
   function U_add_U
     (self : access Inst; s2_P : access QtAda6.QtCore.QSize.Inst'Class) return access QtAda6.QtCore.QSize.Inst'Class;
   procedure U_copy_U;
   function U_iadd_U
     (self : access Inst; arg_1_P : access QtAda6.QtCore.QSize.Inst'Class) return access QtAda6.QtCore.QSize.Inst'Class;
   function U_imul_U (self : access Inst; c_P : float) return access QtAda6.QtCore.QSize.Inst'Class;
   function U_isub_U
     (self : access Inst; arg_1_P : access QtAda6.QtCore.QSize.Inst'Class) return access QtAda6.QtCore.QSize.Inst'Class;
   function U_mul_U (self : access Inst; c_P : float) return access QtAda6.QtCore.QSize.Inst'Class;
   function U_reduce_U (self : access Inst) return Object;
   function U_repr_U (self : access Inst) return Object;
   function U_sub_U
     (self : access Inst; s2_P : access QtAda6.QtCore.QSize.Inst'Class) return access QtAda6.QtCore.QSize.Inst'Class;
   function boundedTo
     (self : access Inst; arg_1_P : access QtAda6.QtCore.QSize.Inst'Class) return access QtAda6.QtCore.QSize.Inst'Class;
   function expandedTo
     (self : access Inst; arg_1_P : access QtAda6.QtCore.QSize.Inst'Class) return access QtAda6.QtCore.QSize.Inst'Class;
   function grownBy
     (self : access Inst; m_P : access QtAda6.QtCore.QMargins.Inst'Class) return access QtAda6.QtCore.QSize.Inst'Class;
   function height (self : access Inst) return int;
   function isEmpty (self : access Inst) return bool;
   function isNull (self : access Inst) return bool;
   function isValid (self : access Inst) return bool;
   procedure scale
     (self   : access Inst; s_P : access QtAda6.QtCore.QSize.Inst'Class;
      mode_P : access QtAda6.QtCore.Qt.AspectRatioMode.Inst'Class);
   procedure scale
     (self : access Inst; w_P : int; h_P : int; mode_P : access QtAda6.QtCore.Qt.AspectRatioMode.Inst'Class);
   function scaled
     (self   : access Inst; s_P : access QtAda6.QtCore.QSize.Inst'Class;
      mode_P : access QtAda6.QtCore.Qt.AspectRatioMode.Inst'Class) return access QtAda6.QtCore.QSize.Inst'Class;
   function scaled
     (self : access Inst; w_P : int; h_P : int; mode_P : access QtAda6.QtCore.Qt.AspectRatioMode.Inst'Class)
      return access QtAda6.QtCore.QSize.Inst'Class;
   procedure setHeight (self : access Inst; h_P : int);
   procedure setWidth (self : access Inst; w_P : int);
   function shrunkBy
     (self : access Inst; m_P : access QtAda6.QtCore.QMargins.Inst'Class) return access QtAda6.QtCore.QSize.Inst'Class;
   function toSizeF (self : access Inst) return access QtAda6.QtCore.QSizeF.Inst'Class;
   function toTuple (self : access Inst) return Object;
   procedure transpose (self : access Inst);
   function transposed (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   function width (self : access Inst) return int;
end QtAda6.QtCore.QSize;
