-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qtextfragment.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtGui.QTextCharFormat;
limited with QtAda6.QtGui.QGlyphRun;
package QtAda6.QtGui.QTextFragment is
   type List_QtAda6_QtGui_QGlyphRun is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (o_P : access QtAda6.QtGui.QTextFragment.Inst'Class) return Class;
   procedure U_copy_U;
   function charFormat (self : access Inst) return access QtAda6.QtGui.QTextCharFormat.Inst'Class;
   function charFormatIndex (self : access Inst) return int;
   function contains (self : access Inst; position_P : int) return bool;
   function glyphRuns (self : access Inst; from_U_P : int; length_P : int) return List_QtAda6_QtGui_QGlyphRun;
   function isValid (self : access Inst) return bool;
   function length (self : access Inst) return int;
   function position (self : access Inst) return int;
   function text (self : access Inst) return str;
end QtAda6.QtGui.QTextFragment;
