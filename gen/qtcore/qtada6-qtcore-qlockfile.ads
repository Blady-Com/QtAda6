-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qlockfile.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QLockFile.LockError;
package QtAda6.QtCore.QLockFile is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   type TUPLE_bool_int_str_str is record
      C0 : bool;
      C1 : int;
      C2 : str;
      C3 : str;
   end record;
   procedure Finalize (Self : in out Class);
   function Create (fileName_P : str) return Class;
   function error (self : access Inst) return access QtAda6.QtCore.QLockFile.LockError.Inst'Class;
   function fileName (self : access Inst) return str;
   function getLockInfo (self : access Inst) return TUPLE_bool_int_str_str;
   function isLocked (self : access Inst) return bool;
   function lock (self : access Inst) return bool;
   function removeStaleLockFile (self : access Inst) return bool;
   procedure setStaleLockTime (self : access Inst; arg_1_P : int);
   function staleLockTime (self : access Inst) return int;
   function tryLock (self : access Inst; timeout_P : int := 0) return bool;
   procedure unlock (self : access Inst);
end QtAda6.QtCore.QLockFile;
