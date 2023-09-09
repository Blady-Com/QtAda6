-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qsystemsemaphore.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QSystemSemaphore.AccessMode;
limited with QtAda6.QtCore.QSystemSemaphore.SystemSemaphoreError;
package QtAda6.QtCore.QSystemSemaphore is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create
     (key_P : str; initialValue_P : int; mode_P : access QtAda6.QtCore.QSystemSemaphore.AccessMode.Inst'Class)
      return Class;
   function acquire (self : access Inst) return bool;
   function error_F (self : access Inst) return access QtAda6.QtCore.QSystemSemaphore.SystemSemaphoreError.Inst'Class;
   function errorString (self : access Inst) return str;
   function key (self : access Inst) return str;
   function release (self : access Inst; n_P : int) return bool;
   procedure setKey
     (self   : access Inst; key_P : str; initialValue_P : int;
      mode_P : access QtAda6.QtCore.QSystemSemaphore.AccessMode.Inst'Class);
end QtAda6.QtCore.QSystemSemaphore;
