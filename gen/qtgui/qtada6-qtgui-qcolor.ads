-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qcolor.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.Qt.GlobalColor;
limited with QtAda6.QtGui.QRgba64;
limited with QtAda6.QtGui.QColor.Spec;
limited with QtAda6.QtCore.QDataStream;
limited with QtAda6.QtGui.QColor.NameFormat;
package QtAda6.QtGui.QColor is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   type LIST_str is array (Positive range <>) of str;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (arg_1_P : Any) return Class;
   function Create (color_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class) return Class;
   function Create (name_P : str) return Class;
   function Create (r_P : int; g_P : int; b_P : int; a_P : int := 0) return Class;
   function Create (rgb_P : int) return Class;
   function Create (rgba64_P : access QtAda6.QtGui.QRgba64.Inst'Class) return Class;
   function Create
     (spec_P : access QtAda6.QtGui.QColor.Spec.Inst'Class; a1_P : int; a2_P : int; a3_P : int; a4_P : int;
      a5_P   : int := 0) return Class;
   procedure U_copy_U;
   function U_lshift_U
     (self : access Inst; arg_1_P : access QtAda6.QtCore.QDataStream.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class;
   function U_reduce_U (self : access Inst) return access Object'Class;
   function U_repr_U (self : access Inst) return access Object'Class;
   function U_rshift_U
     (self : access Inst; arg_1_P : access QtAda6.QtCore.QDataStream.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class;
   function U_setstate_U (self : access Inst; arg_1_P : access Object'Class) return access Object'Class;
   function U_str_U (self : access Inst) return access Object'Class;
   function alpha (self : access Inst) return int;
   function alphaF (self : access Inst) return float;
   function black (self : access Inst) return int;
   function blackF (self : access Inst) return float;
   function blue (self : access Inst) return int;
   function blueF (self : access Inst) return float;
   function colorNames return LIST_str;
   function convertTo
     (self : access Inst; colorSpec_P : access QtAda6.QtGui.QColor.Spec.Inst'Class)
      return access QtAda6.QtGui.QColor.Inst'Class;
   function cyan (self : access Inst) return int;
   function cyanF (self : access Inst) return float;
   function darker (self : access Inst; f_P : int := 0) return access QtAda6.QtGui.QColor.Inst'Class;
   function fromCmyk
     (c_P : int; m_P : int; y_P : int; k_P : int; a_P : int := 0) return access QtAda6.QtGui.QColor.Inst'Class;
   function fromCmykF
     (c_P : float; m_P : float; y_P : float; k_P : float; a_P : float := 0.0)
      return access QtAda6.QtGui.QColor.Inst'Class;
   function fromHsl (h_P : int; s_P : int; l_P : int; a_P : int := 0) return access QtAda6.QtGui.QColor.Inst'Class;
   function fromHslF
     (h_P : float; s_P : float; l_P : float; a_P : float := 0.0) return access QtAda6.QtGui.QColor.Inst'Class;
   function fromHsv (h_P : int; s_P : int; v_P : int; a_P : int := 0) return access QtAda6.QtGui.QColor.Inst'Class;
   function fromHsvF
     (h_P : float; s_P : float; v_P : float; a_P : float := 0.0) return access QtAda6.QtGui.QColor.Inst'Class;
   function fromRgb (r_P : int; g_P : int; b_P : int; a_P : int := 0) return access QtAda6.QtGui.QColor.Inst'Class;
   function fromRgb (rgb_P : int) return access QtAda6.QtGui.QColor.Inst'Class;
   function fromRgbF
     (r_P : float; g_P : float; b_P : float; a_P : float := 0.0) return access QtAda6.QtGui.QColor.Inst'Class;
   function fromRgba (rgba_P : int) return access QtAda6.QtGui.QColor.Inst'Class;
   function fromRgba64 (r_P : int; g_P : int; b_P : int; a_P : int := 0) return access QtAda6.QtGui.QColor.Inst'Class;
   function fromRgba64 (rgba_P : access QtAda6.QtGui.QRgba64.Inst'Class) return access QtAda6.QtGui.QColor.Inst'Class;
   function fromString (name_P : str) return access QtAda6.QtGui.QColor.Inst'Class;
   function getCmyk (self : access Inst) return access Object'Class;
   function getCmykF (self : access Inst) return access Object'Class;
   function getHsl (self : access Inst) return access Object'Class;
   function getHslF (self : access Inst) return access Object'Class;
   function getHsv (self : access Inst) return access Object'Class;
   function getHsvF (self : access Inst) return access Object'Class;
   function getRgb (self : access Inst) return access Object'Class;
   function getRgbF (self : access Inst) return access Object'Class;
   function green (self : access Inst) return int;
   function greenF (self : access Inst) return float;
   function hslHue (self : access Inst) return int;
   function hslHueF (self : access Inst) return float;
   function hslSaturation (self : access Inst) return int;
   function hslSaturationF (self : access Inst) return float;
   function hsvHue (self : access Inst) return int;
   function hsvHueF (self : access Inst) return float;
   function hsvSaturation (self : access Inst) return int;
   function hsvSaturationF (self : access Inst) return float;
   function hue (self : access Inst) return int;
   function hueF (self : access Inst) return float;
   function isValid (self : access Inst) return bool;
   function isValidColor (arg_1_P : str) return bool;
-- function isValidColor(name_P : str) return bool;
   function isValidColorName (arg_1_P : str) return bool;
   function lighter (self : access Inst; f_P : int := 0) return access QtAda6.QtGui.QColor.Inst'Class;
   function lightness (self : access Inst) return int;
   function lightnessF (self : access Inst) return float;
   function magenta (self : access Inst) return int;
   function magentaF (self : access Inst) return float;
   function name_F (self : access Inst; format_P : access QtAda6.QtGui.QColor.NameFormat.Inst'Class := null) return str;
   function red (self : access Inst) return int;
   function redF (self : access Inst) return float;
   function rgb (self : access Inst) return int;
   function rgba (self : access Inst) return int;
   function rgba64 (self : access Inst) return access QtAda6.QtGui.QRgba64.Inst'Class;
   function saturation (self : access Inst) return int;
   function saturationF (self : access Inst) return float;
   procedure setAlpha (self : access Inst; alpha_P : int);
   procedure setAlphaF (self : access Inst; alpha_P : float);
   procedure setBlue (self : access Inst; blue_P : int);
   procedure setBlueF (self : access Inst; blue_P : float);
   procedure setCmyk (self : access Inst; c_P : int; m_P : int; y_P : int; k_P : int; a_P : int := 0);
   procedure setCmykF (self : access Inst; c_P : float; m_P : float; y_P : float; k_P : float; a_P : float := 0.0);
   procedure setGreen (self : access Inst; green_P : int);
   procedure setGreenF (self : access Inst; green_P : float);
   procedure setHsl (self : access Inst; h_P : int; s_P : int; l_P : int; a_P : int := 0);
   procedure setHslF (self : access Inst; h_P : float; s_P : float; l_P : float; a_P : float := 0.0);
   procedure setHsv (self : access Inst; h_P : int; s_P : int; v_P : int; a_P : int := 0);
   procedure setHsvF (self : access Inst; h_P : float; s_P : float; v_P : float; a_P : float := 0.0);
   procedure setNamedColor (self : access Inst; name_P : str);
   procedure setRed (self : access Inst; red_P : int);
   procedure setRedF (self : access Inst; red_P : float);
   procedure setRgb (self : access Inst; r_P : int; g_P : int; b_P : int; a_P : int := 0);
   procedure setRgb (self : access Inst; rgb_P : int);
   procedure setRgbF (self : access Inst; r_P : float; g_P : float; b_P : float; a_P : float := 0.0);
   procedure setRgba (self : access Inst; rgba_P : int);
   procedure setRgba64 (self : access Inst; rgba_P : access QtAda6.QtGui.QRgba64.Inst'Class);
   function spec_F (self : access Inst) return access QtAda6.QtGui.QColor.Spec.Inst'Class;
   function toCmyk (self : access Inst) return access QtAda6.QtGui.QColor.Inst'Class;
   function toExtendedRgb (self : access Inst) return access QtAda6.QtGui.QColor.Inst'Class;
   function toHsl (self : access Inst) return access QtAda6.QtGui.QColor.Inst'Class;
   function toHsv (self : access Inst) return access QtAda6.QtGui.QColor.Inst'Class;
   function toRgb (self : access Inst) return access QtAda6.QtGui.QColor.Inst'Class;
   function toTuple (self : access Inst) return access Object'Class;
   function value (self : access Inst) return int;
   function valueF (self : access Inst) return float;
   function yellow (self : access Inst) return int;
   function yellowF (self : access Inst) return float;
end QtAda6.QtGui.QColor;
