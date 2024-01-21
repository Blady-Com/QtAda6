-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qmutex.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with QtAda6.QtCore.QBasicMutex;
package QtAda6.QtCore.QMutex is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtCore.QBasicMutex.Inst with null record;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function tryLock (self : access Inst) return bool;
   function tryLock (self : access Inst; timeout_P : int) return bool;
   function try_lock (self : access Inst) return bool;
end QtAda6.QtCore.QMutex;
