-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qtextlistformat.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtGui.QTextListFormat.Style;
with QtAda6.QtGui.QTextFormat;
package QtAda6.QtGui.QTextListFormat is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new QtAda6.QtGui.QTextFormat.Inst with null record;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (QTextListFormat_P : access QtAda6.QtGui.QTextListFormat.Inst'Class) return Class;
   function Create (fmt_P : access QtAda6.QtGui.QTextFormat.Inst'Class) return Class;
   procedure U_copy_U;
   function indent (self : access Inst) return int;
   function isValid (self : access Inst) return bool;
   function numberPrefix (self : access Inst) return str;
   function numberSuffix (self : access Inst) return str;
   procedure setIndent (self : access Inst; indent_P : int);
   procedure setNumberPrefix (self : access Inst; numberPrefix_P : str);
   procedure setNumberSuffix (self : access Inst; numberSuffix_P : str);
   procedure setStyle (self : access Inst; style_P : access QtAda6.QtGui.QTextListFormat.Style.Inst'Class);
   function style_F (self : access Inst) return access QtAda6.QtGui.QTextListFormat.Style.Inst'Class;
end QtAda6.QtGui.QTextListFormat;
