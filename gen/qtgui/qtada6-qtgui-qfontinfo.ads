-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qfontinfo.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtGui.QFont;
limited with QtAda6.QtGui.QFont.Style;
limited with QtAda6.QtGui.QFont.StyleHint;
package QtAda6.QtGui.QFontInfo is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   type SEQUENCE_str is array (Positive range <>) of str;
   procedure Finalize (Self : in out Class);
   function Create (arg_1_P : access QtAda6.QtGui.QFont.Inst'Class) return Class;
   function Create (arg_1_P : str) return Class;
   function Create (arg_1_P : SEQUENCE_str) return Class;
   function Create (arg_1_P : access QtAda6.QtGui.QFontInfo.Inst'Class) return Class;
-- function Create(arg_1_P : access QtAda6.QtGui.QFont.Inst'Class) return Class;
   procedure U_copy_U;
   function bold (self : access Inst) return bool;
   function exactMatch (self : access Inst) return bool;
   function family (self : access Inst) return str;
   function fixedPitch (self : access Inst) return bool;
   function italic (self : access Inst) return bool;
   function legacyWeight (self : access Inst) return int;
   function overline (self : access Inst) return bool;
   function pixelSize (self : access Inst) return int;
   function pointSize (self : access Inst) return int;
   function pointSizeF (self : access Inst) return float;
   function strikeOut (self : access Inst) return bool;
   function style (self : access Inst) return access QtAda6.QtGui.QFont.Style.Inst'Class;
   function styleHint (self : access Inst) return access QtAda6.QtGui.QFont.StyleHint.Inst'Class;
   function styleName (self : access Inst) return str;
   procedure swap (self : access Inst; other_P : access QtAda6.QtGui.QFontInfo.Inst'Class);
   procedure swap (self : access Inst; other_P : access QtAda6.QtGui.QFont.Inst'Class);
   function underline (self : access Inst) return bool;
   function weight (self : access Inst) return int;
end QtAda6.QtGui.QFontInfo;
