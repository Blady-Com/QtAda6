-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qtextimageformat.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtGui.QTextFormat;
with QtAda6.QtGui.QTextCharFormat;
package QtAda6.QtGui.QTextImageFormat is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new QtAda6.QtGui.QTextCharFormat.Inst with null record;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (QTextImageFormat_P : access QtAda6.QtGui.QTextImageFormat.Inst'Class) return Class;
   function Create (format_P : access QtAda6.QtGui.QTextFormat.Inst'Class) return Class;
   procedure U_copy_U;
   function height (self : access Inst) return float;
   function isValid (self : access Inst) return bool;
   function name (self : access Inst) return str;
   function quality (self : access Inst) return int;
   procedure setHeight (self : access Inst; height_P : float);
   procedure setName (self : access Inst; name_P : str);
   procedure setQuality (self : access Inst);
   procedure setQuality (self : access Inst; quality_P : int);
   procedure setWidth (self : access Inst; width_P : float);
   function width (self : access Inst) return float;
end QtAda6.QtGui.QTextImageFormat;
