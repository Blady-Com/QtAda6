-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qtimerevent.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with QtAda6.QtCore.QEvent;
package QtAda6.QtCore.QTimerEvent is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new QtAda6.QtCore.QEvent.Inst with null record;
   procedure Finalize (Self : in out Class);
   function Create (arg_1_P : access QtAda6.QtCore.QTimerEvent.Inst'Class) return Class;
   function Create (timerId_P : int) return Class;
   function clone (self : access Inst) return access QtAda6.QtCore.QTimerEvent.Inst'Class;
   function timerId (self : access Inst) return int;
end QtAda6.QtCore.QTimerEvent;
