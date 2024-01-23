-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qtextlength.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtGui.QTextLength.Type_K;
package QtAda6.QtGui.QTextLength is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (QTextLength_P : access QtAda6.QtGui.QTextLength.Inst'Class) return Class;
   function Create (type_K_P : access QtAda6.QtGui.QTextLength.Type_K.Inst'Class; value_P : float) return Class;
   procedure U_copy_U;
   function rawValue (self : access Inst) return float;
   function type_K_F (self : access Inst) return access QtAda6.QtGui.QTextLength.Type_K.Inst'Class;
   function value (self : access Inst; maximumLength_P : float) return float;
end QtAda6.QtGui.QTextLength;
