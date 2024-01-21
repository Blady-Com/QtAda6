-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qsemaphorereleaser.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QSemaphore;
package QtAda6.QtCore.QSemaphoreReleaser is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (sem_P : access QtAda6.QtCore.QSemaphore.Inst'Class; n_P : int := 0) return Class;
   function cancel (self : access Inst) return access QtAda6.QtCore.QSemaphore.Inst'Class;
   function semaphore (self : access Inst) return access QtAda6.QtCore.QSemaphore.Inst'Class;
   procedure swap (self : access Inst; other_P : access QtAda6.QtCore.QSemaphoreReleaser.Inst'Class);
end QtAda6.QtCore.QSemaphoreReleaser;
