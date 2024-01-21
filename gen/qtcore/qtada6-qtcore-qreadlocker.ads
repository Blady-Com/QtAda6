-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qreadlocker.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QReadWriteLock;
package QtAda6.QtCore.QReadLocker is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create (readWriteLock_P : access QtAda6.QtCore.QReadWriteLock.Inst'Class) return Class;
   function U_enter_U (self : access Inst) return access QtAda6.QtCore.QReadLocker.Inst'Class;
   procedure U_exit_U
     (self : access Inst; arg_1_P : access Object'Class; arg_2_P : access Object'Class; arg_3_P : access Object'Class);
   function readWriteLock (self : access Inst) return access QtAda6.QtCore.QReadWriteLock.Inst'Class;
   procedure relock (self : access Inst);
   procedure unlock (self : access Inst);
end QtAda6.QtCore.QReadLocker;
