-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qoverridecursorguard.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtGui.QOverrideCursorGuard is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function U_enter_U (self : access Inst) return access QtAda6.QtGui.QOverrideCursorGuard.Inst'Class;
   procedure U_exit_U
     (self : access Inst; arg_1_P : access Object'Class; arg_2_P : access Object'Class; arg_3_P : access Object'Class);
   procedure restoreOverrideCursor (self : access Inst);
end QtAda6.QtGui.QOverrideCursorGuard;
