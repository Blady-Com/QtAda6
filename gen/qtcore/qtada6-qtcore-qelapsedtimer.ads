-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qelapsedtimer.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QElapsedTimer.ClockType;
package QtAda6.QtCore.QElapsedTimer is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (QElapsedTimer_P : access QtAda6.QtCore.QElapsedTimer.Inst'Class) return Class;
   procedure U_copy_U;
   function clockType_F return access QtAda6.QtCore.QElapsedTimer.ClockType.Inst'Class;
   function elapsed (self : access Inst) return int;
   function hasExpired (self : access Inst; timeout_P : int) return bool;
   procedure invalidate (self : access Inst);
   function isMonotonic return bool;
   function isValid (self : access Inst) return bool;
   function msecsSinceReference (self : access Inst) return int;
   function msecsTo (self : access Inst; other_P : access QtAda6.QtCore.QElapsedTimer.Inst'Class) return int;
   function nsecsElapsed (self : access Inst) return int;
   function restart (self : access Inst) return int;
   function secsTo (self : access Inst; other_P : access QtAda6.QtCore.QElapsedTimer.Inst'Class) return int;
   procedure start (self : access Inst);
end QtAda6.QtCore.QElapsedTimer;
