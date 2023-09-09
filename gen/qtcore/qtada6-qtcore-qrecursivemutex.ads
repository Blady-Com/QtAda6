-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qrecursivemutex.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtCore.QRecursiveMutex is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   procedure lock (self : access Inst);
   function tryLock (self : access Inst; timeout_P : int) return bool;
   function try_lock (self : access Inst) return bool;
   procedure unlock (self : access Inst);
end QtAda6.QtCore.QRecursiveMutex;
