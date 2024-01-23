-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qrgba64.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtGui.QRgba64 is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (QRgba64_P : access QtAda6.QtGui.QRgba64.Inst'Class) return Class;
   procedure U_copy_U;
   function alpha (self : access Inst) return int;
   function alpha8 (self : access Inst) return int;
   function blue (self : access Inst) return int;
   function blue8 (self : access Inst) return int;
   function fromArgb32 (rgb_P : int) return access QtAda6.QtGui.QRgba64.Inst'Class;
   function fromRgba
     (red_P : int; green_P : int; blue_P : int; alpha_P : int) return access QtAda6.QtGui.QRgba64.Inst'Class;
   function fromRgba64 (c_P : int) return access QtAda6.QtGui.QRgba64.Inst'Class;
   function fromRgba64
     (red_P : int; green_P : int; blue_P : int; alpha_P : int) return access QtAda6.QtGui.QRgba64.Inst'Class;
   function green (self : access Inst) return int;
   function green8 (self : access Inst) return int;
   function isOpaque (self : access Inst) return bool;
   function isTransparent (self : access Inst) return bool;
   function premultiplied (self : access Inst) return access QtAda6.QtGui.QRgba64.Inst'Class;
   function red (self : access Inst) return int;
   function red8 (self : access Inst) return int;
   procedure setAlpha (self : access Inst; U_alpha_P : int);
   procedure setBlue (self : access Inst; U_blue_P : int);
   procedure setGreen (self : access Inst; U_green_P : int);
   procedure setRed (self : access Inst; U_red_P : int);
   function toArgb32 (self : access Inst) return int;
   function toRgb16 (self : access Inst) return int;
   function unpremultiplied (self : access Inst) return access QtAda6.QtGui.QRgba64.Inst'Class;
end QtAda6.QtGui.QRgba64;
