-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qtextblock-iterator.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtGui.QTextFragment;
package QtAda6.QtGui.QTextBlock.iterator is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   procedure U_copy_U;
   function U_iadd_U (self : access Inst; arg_1_P : int) return access QtAda6.QtGui.QTextBlock.iterator.Inst'Class;
   function U_isub_U (self : access Inst; arg_1_P : int) return access QtAda6.QtGui.QTextBlock.iterator.Inst'Class;
   function U_iter_U (self : access Inst) return access Object'Class;
   function U_next_U (self : access Inst) return access Object'Class;
   function atEnd (self : access Inst) return bool;
   function fragment (self : access Inst) return access QtAda6.QtGui.QTextFragment.Inst'Class;
end QtAda6.QtGui.QTextBlock.iterator;
