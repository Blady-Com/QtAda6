-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qgradient.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtGui.QGradient.Preset;
limited with QtAda6.QtGui.QGradient.CoordinateMode;
limited with QtAda6.QtGui.QGradient.InterpolationMode;
limited with QtAda6.QtGui.QGradient.Spread;
limited with QtAda6.QtGui.QGradient.Type_K;
package QtAda6.QtGui.QGradient is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   type UNION_QtAda6_QtGui_QGradient_QtAda6_QtGui_QGradient_Preset is new Any;
   type UNION_QtAda6_QtGui_QColor_QtAda6_QtGui_QRgba64_Any_QtAda6_QtCore_Qt_GlobalColor_str_int is new Any;
   type TUPLE_float_QtAda6_QtGui_QColor is new Any;
   type SEQUENCE_TUPLE_float_QtAda6_QtGui_QColor is array (Positive range <>) of TUPLE_float_QtAda6_QtGui_QColor;
   type LIST_TUPLE_float_QtAda6_QtGui_QColor is array (Positive range <>) of TUPLE_float_QtAda6_QtGui_QColor;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (QGradient_P : UNION_QtAda6_QtGui_QGradient_QtAda6_QtGui_QGradient_Preset) return Class;
   function Create (arg_1_P : access QtAda6.QtGui.QGradient.Preset.Inst'Class) return Class;
   procedure U_copy_U;
   function coordinateMode_F (self : access Inst) return access QtAda6.QtGui.QGradient.CoordinateMode.Inst'Class;
   function interpolationMode_F (self : access Inst) return access QtAda6.QtGui.QGradient.InterpolationMode.Inst'Class;
   procedure setColorAt
     (self    : access Inst; pos_P : float;
      color_P : UNION_QtAda6_QtGui_QColor_QtAda6_QtGui_QRgba64_Any_QtAda6_QtCore_Qt_GlobalColor_str_int);
   procedure setCoordinateMode (self : access Inst; mode_P : access QtAda6.QtGui.QGradient.CoordinateMode.Inst'Class);
   procedure setInterpolationMode
     (self : access Inst; mode_P : access QtAda6.QtGui.QGradient.InterpolationMode.Inst'Class);
   procedure setSpread (self : access Inst; spread_P : access QtAda6.QtGui.QGradient.Spread.Inst'Class);
   procedure setStops (self : access Inst; stops_P : SEQUENCE_TUPLE_float_QtAda6_QtGui_QColor);
   function spread_F (self : access Inst) return access QtAda6.QtGui.QGradient.Spread.Inst'Class;
   function stops (self : access Inst) return LIST_TUPLE_float_QtAda6_QtGui_QColor;
   function type_K_F (self : access Inst) return access QtAda6.QtGui.QGradient.Type_K.Inst'Class;
end QtAda6.QtGui.QGradient;
