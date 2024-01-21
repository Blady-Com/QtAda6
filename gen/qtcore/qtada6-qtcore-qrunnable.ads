-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qrunnable.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtCore.QRunnable is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function autoDelete (self : access Inst) return bool;
   function create (functionToRun_P : access Object'Class) return access QtAda6.QtCore.QRunnable.Inst'Class;
   procedure run (self : access Inst);
   procedure setAutoDelete (self : access Inst; autoDelete_P : bool);
end QtAda6.QtCore.QRunnable;
