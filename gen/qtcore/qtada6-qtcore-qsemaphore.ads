-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qsemaphore.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtCore.QSemaphore is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create (n_P : int := 0) return Class;
   procedure acquire (self : access Inst; n_P : int := 0);
   function available (self : access Inst) return int;
   procedure release (self : access Inst; n_P : int := 0);
   function tryAcquire (self : access Inst; n_P : int; timeout_P : int) return bool;
   function tryAcquire (self : access Inst; n_P : int := 0) return bool;
   function try_acquire (self : access Inst) return bool;
end QtAda6.QtCore.QSemaphore;
