-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qtextitem.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtGui.QFont;
limited with QtAda6.QtGui.QTextItem.RenderFlag;
package QtAda6.QtGui.QTextItem is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function ascent (self : access Inst) return float;
   function descent (self : access Inst) return float;
   function font (self : access Inst) return access QtAda6.QtGui.QFont.Inst'Class;
   function renderFlags (self : access Inst) return access QtAda6.QtGui.QTextItem.RenderFlag.Inst'Class;
   function text (self : access Inst) return str;
   function width (self : access Inst) return float;
end QtAda6.QtGui.QTextItem;
