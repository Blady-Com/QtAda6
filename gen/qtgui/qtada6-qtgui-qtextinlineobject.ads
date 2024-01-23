-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qtextinlineobject.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtGui.QTextFormat;
limited with QtAda6.QtCore.QRectF;
limited with QtAda6.QtCore.Qt.LayoutDirection;
package QtAda6.QtGui.QTextInlineObject is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   procedure U_copy_U;
   function ascent (self : access Inst) return float;
   function descent (self : access Inst) return float;
   function format (self : access Inst) return access QtAda6.QtGui.QTextFormat.Inst'Class;
   function formatIndex (self : access Inst) return int;
   function height (self : access Inst) return float;
   function isValid (self : access Inst) return bool;
   function rect (self : access Inst) return access QtAda6.QtCore.QRectF.Inst'Class;
   procedure setAscent (self : access Inst; a_P : float);
   procedure setDescent (self : access Inst; d_P : float);
   procedure setWidth (self : access Inst; w_P : float);
   function textDirection (self : access Inst) return access QtAda6.QtCore.Qt.LayoutDirection.Inst'Class;
   function textPosition (self : access Inst) return int;
   function width (self : access Inst) return float;
end QtAda6.QtGui.QTextInlineObject;
