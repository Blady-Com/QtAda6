-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qreadwritelock.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QReadWriteLock.RecursionMode;
package QtAda6.QtCore.QReadWriteLock is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create (recursionMode_P : access QtAda6.QtCore.QReadWriteLock.RecursionMode.Inst'Class) return Class;
   procedure lockForRead (self : access Inst);
   procedure lockForWrite (self : access Inst);
   function tryLockForRead (self : access Inst) return bool;
   function tryLockForRead (self : access Inst; timeout_P : int) return bool;
   function tryLockForWrite (self : access Inst) return bool;
   function tryLockForWrite (self : access Inst; timeout_P : int) return bool;
   procedure unlock (self : access Inst);
end QtAda6.QtCore.QReadWriteLock;
