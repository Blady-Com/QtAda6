-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qsizepolicy.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtWidgets.QSizePolicy.Policy;
limited with QtAda6.QtWidgets.QSizePolicy.ControlType;
limited with QtAda6.QtCore.QDataStream;
limited with QtAda6.QtCore.Qt.Orientation;
package QtAda6.QtWidgets.QSizePolicy is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create
     (horizontal_P : access QtAda6.QtWidgets.QSizePolicy.Policy.Inst'Class;
      vertical_P   : access QtAda6.QtWidgets.QSizePolicy.Policy.Inst'Class;
      type_K_P     : access QtAda6.QtWidgets.QSizePolicy.ControlType.Inst'Class := null) return Class;
   procedure U_copy_U;
   function U_lshift_U
     (self : access Inst; arg_1_P : access QtAda6.QtCore.QDataStream.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class;
   function U_rshift_U
     (self : access Inst; arg_1_P : access QtAda6.QtCore.QDataStream.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class;
   function controlType_F (self : access Inst) return access QtAda6.QtWidgets.QSizePolicy.ControlType.Inst'Class;
   function expandingDirections (self : access Inst) return access QtAda6.QtCore.Qt.Orientation.Inst'Class;
   function hasHeightForWidth (self : access Inst) return bool;
   function hasWidthForHeight (self : access Inst) return bool;
   function horizontalPolicy (self : access Inst) return access QtAda6.QtWidgets.QSizePolicy.Policy.Inst'Class;
   function horizontalStretch (self : access Inst) return int;
   function retainSizeWhenHidden (self : access Inst) return bool;
   procedure setControlType (self : access Inst; type_K_P : access QtAda6.QtWidgets.QSizePolicy.ControlType.Inst'Class);
   procedure setHeightForWidth (self : access Inst; b_P : bool);
   procedure setHorizontalPolicy (self : access Inst; d_P : access QtAda6.QtWidgets.QSizePolicy.Policy.Inst'Class);
   procedure setHorizontalStretch (self : access Inst; stretchFactor_P : int);
   procedure setRetainSizeWhenHidden (self : access Inst; retainSize_P : bool);
   procedure setVerticalPolicy (self : access Inst; d_P : access QtAda6.QtWidgets.QSizePolicy.Policy.Inst'Class);
   procedure setVerticalStretch (self : access Inst; stretchFactor_P : int);
   procedure setWidthForHeight (self : access Inst; b_P : bool);
   procedure transpose (self : access Inst);
   function transposed (self : access Inst) return access QtAda6.QtWidgets.QSizePolicy.Inst'Class;
   function verticalPolicy (self : access Inst) return access QtAda6.QtWidgets.QSizePolicy.Policy.Inst'Class;
   function verticalStretch (self : access Inst) return int;
end QtAda6.QtWidgets.QSizePolicy;
