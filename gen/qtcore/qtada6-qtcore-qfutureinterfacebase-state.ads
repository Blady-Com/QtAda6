-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qfutureinterfacebase-state.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Enum;
package QtAda6.QtCore.QFutureInterfaceBase.State is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Enum.Inst with null record;
   procedure Finalize (Self : in out Class);
   NoState    : QFutureInterfaceBase.State.Class;-- 0x0
   Running    : QFutureInterfaceBase.State.Class;-- 0x1
   Started    : QFutureInterfaceBase.State.Class;-- 0x2
   Finished   : QFutureInterfaceBase.State.Class;-- 0x4
   Canceled   : QFutureInterfaceBase.State.Class;-- 0x8
   Suspending : QFutureInterfaceBase.State.Class;-- 0x10
   Suspended  : QFutureInterfaceBase.State.Class;-- 0x20
   Throttled  : QFutureInterfaceBase.State.Class;-- 0x40
   Pending    : QFutureInterfaceBase.State.Class;-- 0x80
end QtAda6.QtCore.QFutureInterfaceBase.State;
